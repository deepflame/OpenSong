#tag Module
Protected Module FileUtils
	#tag Method, Flags = &h1
		Protected Function AbsolutePathSeparator() As String
		  #If TargetMacOS
		    Return ":"
		  #elseif TargetWin32
		    Return "\"
		  #elseif TargetLinux
		    Return "/"
		  #Endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function AbsolutePathToFolderItem(path As String) As FolderItem
		  'Dim i, l As Integer
		  'Dim f As FolderItem
		  'path = ReplaceAll(path, "\", "/")
		  'l = CountFields(path, "/")
		  'f = GetFolderItem(NthField(path, "/", 1))
		  'For i = 2 To l
		  'If f <> Nil Then f = f.Child(NthField(path, "/", i))
		  'Next i
		  'Return f
		  
		  Dim f As FolderItem
		  If IsPathAbsolute(path) Then
		    f = GetFolderItem(Path, FolderItem.PathTypeAbsolute)
		  Else
		    App.DebugWriter.Write("FileUtils.AbsolutePathToFolderItem: IsPathAbsolute reported invalid path: '" + path + "'", 1)
		    f = Nil
		  End If
		  
		  Return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CopyFile(fromItem As FolderItem, toItem As FolderItem, overwrite As String = "NEVER") As Boolean
		  If fromItem Is Nil or toItem Is Nil Then
		    SetLastError(Nil)
		    Return False
		  End If
		  
		  If (Not fromItem.Parent.Exists) Then
		    LastError = App.T.Translate("errors/fileutils/filenotfound", GetDisplayFullPath(fromItem.Parent))
		    Return False
		  End If
		  If (Not toItem.Parent.Exists) Then
		    LastError = App.T.Translate("errors/fileutils/filenotfound", GetDisplayFullPath(toItem.Parent))
		    Return False
		  End If
		  
		  If fromItem.Directory Then
		    LastError = App.T.Translate("errors/fileutils/notaregularfile", GetDisplayFullPath(fromItem))
		    Return False
		  End If
		  
		  If Not fromItem.Exists Then
		    LastError = App.T.Translate("errors/fileutils/filenotfound", GetDisplayFullPath(fromItem))
		    Return False
		  End If
		  
		  If toItem.Directory Then
		    toItem = toItem.Child(fromItem.Name)
		  End If
		  
		  If _
		    (overwrite = kOverwriteAlways) Or _
		    (overwrite = kOverwriteNever And Not toItem.Exists) Or _
		    (overwrite = kOverwriteNewer And ((Not toItem.Exists) Or toItem.ModificationDate.TotalSeconds < fromItem.ModificationDate.TotalSeconds)) Then
		    If toItem.Exists Then toItem.Delete
		    If toItem.Exists Then
		      SetLastError(toItem)
		      Return False
		    End If
		    fromItem.CopyFileTo toItem.Parent
		    If Not toItem.Exists Then
		      SetLastError(toItem)
		      Return False
		    End If
		  End If
		  
		  SetLastError(toItem)
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CopyPath(fromFolder As FolderItem, toFolder As FolderItem, overwrite As String = "NEVER") As Boolean
		  Dim i As Integer
		  Dim fromItem, toItem As FolderItem
		  
		  If toFolder = Nil Then Return False
		  
		  If Not toFolder.Exists Then toFolder.CreateAsFolder
		  
		  If Not toFolder.Exists Then Return False
		  
		  For i = 1 To fromFolder.Count
		    fromItem = fromFolder.Item(i)
		    toItem = toFolder.Child(fromItem.Name)
		    
		    If fromItem.Directory Then
		      If Left(fromItem.Name, 1) <> "." Then
		        If Not toItem.Exists Then toItem.CreateAsFolder
		        If Not toItem.Exists Then Return False
		        If Not CopyPath(fromItem, toItem) Then Return False
		      End If
		    Else ' not a directory
		      If Left(fromItem.Name, 1) <> "." Then
		        If Not CopyFile(fromItem, toItem, overwrite) Then Return False
		      End If
		    End If
		  Next i
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CreateFolder(f As FolderItem) As Boolean
		  
		  If f = Nil Then
		    SetLastError(f)
		    Return False
		  End If
		  
		  If f.Exists Then
		    If f.Directory Then
		      SetLastError(f)
		      Return True
		    Else
		      LastError = App.T.Translate("errors/fileutils/notdirectory", GetDisplayFullPath(f))
		      Return False
		    End If
		  Else
		    If f.Parent Is Nil Then
		      SetLastError(Nil)
		      Return False
		    Else
		      f.CreateAsFolder
		      SetLastError(f)
		      #if TargetLinux
		        //
		        // Linux has been found to return ENOENT even if CreateAsFolder
		        // is successful. Trap this and do the right thing.
		        //
		        If (f.LastErrorCode <> 0) And f.Exists And f.Directory And f.IsWriteable Then
		          App.DebugWriter.Write "FileUtils.CreateFolder: Got an error after successfully creating " +_
		          f.URLPath + ", code was " + CStr(f.LastErrorCode), 1
		          LastError = ""
		          Return True
		        End If
		      #endif
		      
		      Return f.LastErrorCode = 0
		    End If
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FormatFolderName(Extends f As Folderitem, maxLen As Integer = 60) As String
		  //++
		  // Format a foldername for display
		  // If longer than maxLen, eliminate elements of the path with
		  // an ellipsis until shorter.  Always show f's name unless it is longer than maxlen
		  //--
		  Dim path As String
		  Dim name As String
		  Dim nameLen As Integer
		  #if TargetMacOS
		    Const SEP = ":"
		  #elseif TargetWin32
		    Const SEP = "\"
		  #elseif TargetLinux
		    Const SEP = "/"
		  #endif
		  
		  If f = Nil Then Return ""
		  
		  path = GetDisplayFullPath(f)
		  name = f.DisplayName
		  nameLen = Len(name) + 3 // 3 for the ...
		  Dim leaf As String
		  
		  If Len(path) <= maxLen Then Return path
		  
		  Dim elements() As String
		  elements = Split(path, SEP)
		  Select Case UBound(elements)
		  Case -1 //This is strange...
		    Return ""
		  Case 0 // Unqualified filename
		    path = Left(name, (maxlen / 2) - 2) + "..." + Right(name, (maxlen / 2) - 1)
		  Case 1 // Root and filename
		    path = Left(elements(0), maxlen - nameLen) + "..." + name
		  Case Else // Multiple parent folders
		    path = elements(0)  + "..."
		    leaf = elements.Pop //take off the filename
		    While UBound(elements) > 0
		      leaf = elements.pop
		      If path.len + leaf.len + name.len + 2 > maxlen Then Exit While
		      name = leaf + SEP + name
		    Wend
		    path = path + SEP + name
		  End Select
		  
		  Return path
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetDisplayFullPath(f As Folderitem) As String
		  //++
		  // AbsolutePath and ShellPath may not be pretty
		  // This uses the display name to build something more
		  // user-friendly.
		  //--
		  Dim Path As String
		  Dim Separator As String
		  Dim LeadingSeparator As Boolean
		  Dim p As FolderItem
		  
		  #if TargetWin32
		    Separator = "\"
		    LeadingSeparator = False
		  #Elseif TargetLinux
		    Separator = "/"
		    LeadingSeparator = True
		  #Elseif TargetCarbon
		    Separator = ":"
		    LeadingSeparator = True
		  #ElseIf TargetMacOS
		    Separator = ":"
		    LeadingSeparator = True
		  #Endif
		  
		  If f = Nil Then Return ""
		  
		  p = f
		  While p <> Nil
		    path = p.DisplayName + Separator + Path
		    p = p.Parent
		  Wend
		  
		  Path = Left(Path, Len(Path) - 1) // Kill trailing separator
		  If LeadingSeparator Then Path = Separator + Path
		  
		  Return Path
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsChild(child As FolderItem, parent As FolderItem) As Boolean
		  If child = Nil Then Return False
		  If parent = Nil Then Return False
		  
		  While child <> Nil
		    If child.Parent = parent Then Return True
		    child = child.Parent
		  Wend
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsFileVisible(Extends f As FolderItem) As Boolean
		  //++
		  // Most of this is borrowed from a posting on the RB NUG mailing list
		  // at http://support.realsoftware.com/listarchives/realbasic-nug/2004-12/msg00244.html
		  //
		  // Apparently there are multiple ways on OS X to define visibility and RB
		  // doesn't check them all.
		  //
		  // Ed Palmer, November 2006
		  //--
		  
		  #if TargetCarbon
		    Dim sysx As Integer
		    Dim fp as FolderItem
		    Dim ts as TextInputStream
		    Dim HideFiles As String
		  #endif
		  
		  If f.Visible Then
		    
		    #if TargetCarbon
		      If System.Gestalt("sysv", sysx) And sysx > &h1000 Then
		        If Left(f.Name, 1) = "." Then Return False
		        fp = f.Parent
		        If fp = Nil Then Return True
		        fp = fp.Child(".hidden")
		        If fp <> Nil And fp.Exists And fp.IsReadable Then
		          ts = fp.OpenAsTextFile
		          HideFiles = Chr(10) + ts.ReadAll + Chr(10)
		          If InStr(HideFiles, Chr(10) + f.Name + Chr(10)) > 0 Then Return False
		        End If
		      End If
		    #endif
		    // Non-Carbon apps (Windows, Linux, Classic) just fall to here
		    //
		    // OpenSong uses files that start with an underscore for
		    // internal functions.  We define these as not being visible.
		    //
		    If Left(f.Name, 1) <> "_" Then Return True
		  End If
		  
		  Return False
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsPathAbsolute(path As String) As Boolean
		  //++
		  // Take advantage of the fact that GetFolderItem will
		  // successfully handle a full path in absolute format,
		  // but doesn't handle a relative path.
		  //--
		  Dim f As FolderItem
		  
		  If Path = "" Then Return False
		  
		  f = GetFolderItem(Path, FolderItem.PathTypeAbsolute)
		  
		  Return True
		  
		Catch e
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsSafeFileName(name As String) As Boolean
		  Dim c As String
		  Dim i, leng As Integer
		  leng = Len(name)
		  For i = 1 To leng
		    c = Mid(name, i, 1)
		    If InStr("\/:*?""<>|", c) <> 0 Then Return False
		  Next
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MakeSafeFileName(name As String) As String
		  Dim c, ret As String
		  Dim i, leng As Integer
		  leng = Len(name)
		  
		  For i = 1 To leng
		    c = Mid(name, i, 1)
		    If c = "\" Or c = "/" Or c = ":" Or c = "*" Or c = "?" Or c = """" Or c = "<" Or c = ">" Or c = "|" Then
		    Else
		      ret = ret + c
		    End If
		  Next
		  
		  Return Trim(ret)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MakeSafeURLName(name As String, urlencode As Boolean) As String
		  Dim c As TextConverter
		  
		  'Replace spaces in the file name
		  name = ReplaceAll(name, " ", "_")
		  
		  'Convert UTF8 to ISOLatin1 to get rid of UTF's 2-Byte sequences
		  'This workaround is at least required for Internet Explorer that's not able to find
		  'files with special characters when the filename has been decoded from URL to UTF8.
		  c = GetTextConverter(Encodings.UTF8, Encodings.SystemDefault)
		  name = c.convert(name)
		  
		  If urlencode Then
		    'Create the URL for the HTML document
		    name = EncodeURLComponent(name)
		  End If
		  
		  Return name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function RelativePathToFolderItem(parent As FolderItem, path As String) As FolderItem
		  Dim i, count As Integer
		  Dim folder As String
		  
		  App.DebugWriter.Write "FileUtils.RelativePathToFolderItem: parent is '" + parent.URLPath + "'", 5
		  App.DebugWriter.Write "FileUtils.RelativePathToFolderItem: path is '" + path + "'", 5
		  path = ReplaceAll(path, "\", "/")
		  App.DebugWriter.Write "FileUtils.RelativePathToFolderItem: path after ReplaceAll '" + path + "'", 5
		  count = CountFields(path, "/")
		  App.DebugWriter.Write "FileUtils.RelativePathToFolderItem: count of leaf nodes is " + CStr(count), 5
		  
		  For i = 1 To count
		    folder = NthField(path, "/", i)
		    App.DebugWriter.Write "FileUtils.RelativePathToFolderItem: On leaf number " + Cstr(i) + " looking for child '" + folder + "'", 5
		    If folder.Len > 0 Then
		      parent = parent.Child(folder)
		      If parent = Nil Then Return Nil
		    End If
		  Next i
		  App.DebugWriter.Write "FileUtils.RelativePathToFolderItem: Returning path '" + parent.URLPath + "'", 5
		  Return parent
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetLastError(f As FolderItem)
		  
		  If f = Nil Then
		    LastError = App.T.Translate("errors/fileutils/nilobjecterror")
		    Return
		  End If
		  
		  Select Case f.LastErrorCode
		  Case 0 // Success
		    LastError = ""
		  Case FolderItem.AccessDenied
		    LastError = App.T.Translate("errors/fileutils/accessdenied", GetDisplayFullPath(f))
		  Case FolderItem.DestDoesNotExistError
		    LastError = App.T.Translate("errors/fileutils/destdoesnotexisterror", GetDisplayFullPath(f))
		  Case FolderItem.FileInUse
		    LastError = App.T.Translate("errors/fileutils/fileinuse", GetDisplayFullPath(f))
		  Case FolderItem.FileNotFound
		    LastError = App.T.Translate("errors/fileutils/filenotfound", GetDisplayFullPath(f))
		  Case FolderItem.InvalidName
		    LastError = App.T.Translate("errors/fileutils/invalidname", f.AbsolutePath)
		  Case FolderItem.NotEnoughMemory
		    LastError = App.T.Translate("errors/fileutils/notenoughmemory", GetDisplayFullPath(f))
		  Case Else
		    LastError = App.T.Translate("errors/fileutils/unknownerror", GetDisplayFullPath(f))
		  End Select
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected LastError As String
	#tag EndProperty


	#tag Constant, Name = kOverwriteAlways, Type = String, Dynamic = False, Default = \"ALWAYS", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kOverwriteNever, Type = String, Dynamic = False, Default = \"NEVER", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kOverwriteNewer, Type = String, Dynamic = False, Default = \"NEWER", Scope = Protected
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
