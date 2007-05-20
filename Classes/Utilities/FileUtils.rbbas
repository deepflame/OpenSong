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
		  Dim i, l As Integer
		  Dim f As FolderItem
		  path = ReplaceAll(path, "\", "/")
		  l = CountFields(path, "/")
		  f = GetFolderItem(NthField(path, "/", 1))
		  For i = 2 To l
		    If f <> Nil Then f = f.Child(NthField(path, "/", i))
		  Next i
		  Return f
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
		        If _
		          (overwrite = "ALWAYS") Or _
		          (overwrite = "NEVER" And Not toItem.Exists) Or _
		          (overwrite = "NEWER" And ((Not toItem.Exists) Or toItem.ModificationDate.TotalSeconds < fromItem.ModificationDate.TotalSeconds)) Then
		          If toItem.Exists Then toItem.Delete
		          If toItem.Exists Then Return False
		          fromItem.CopyFileTo toFolder
		          If Not toItem.Exists Then Return False
		        End If
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
		      LastError = App.T.Translate("fileutils/errors/notdirectory", GetDisplayFullPath(f))
		      Return False
		    End If
		  Else
		    f.CreateAsFolder
		    SetLastError(f)
		    Return f.LastErrorCode = 0
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FormatFolderName(Extends f As Folderitem, maxLen As Integer = 60) As String
		  //++
		  // Format a foldername for display
		  // If longer than maxLen, eliminate elements of the path with
		  // an ellipsis until shorter.  Always show f's name unless it is longer than 60
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
		  
		  path = f.AbsolutePath
		  name = f.DisplayName
		  nameLen = Len(name) + 3 // 3 for the ...
		  
		  If Len(path) <= maxLen Then Return path
		  
		  Dim parentPath As String
		  Dim p As FolderItem
		  Dim temp As String
		  
		  p = f.Parent
		  
		  If p = Nil Then Return Left(name, maxLen - 3) + "..."
		  
		  parentPath = p.AbsolutePath
		  
		  If Right(parentPath, 1) = SEP Then
		    parentPath = Left(parentPath, len(parentPath) - 1)
		  End If
		  
		  parentPath = Left(parentPath, maxLen - nameLen)
		  
		  parentPath = Left(parentPath, StringUtils.InStrReverse(parentPath, SEP)) + "..." + SEP
		  
		  Return parentPath + name
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
		Protected Function IsPathAbsolute(Path As String) As Boolean
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
		  
		  path = ReplaceAll(path, "\", "/")
		  count = CountFields(path, "/")
		  
		  For i = 1 To count
		    folder = NthField(path, "/", i)
		    If folder.Len > 0 Then
		      parent = parent.Child(folder)
		      If parent = Nil Then Return Nil
		    End If
		  Next i
		  
		  Return parent
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetLastError(f As FolderItem)
		  
		  If f = Nil Then
		    LastError = App.T.Translate("fileutils/errors/nilobjecterror")
		    Return
		  End If
		  
		  Select Case f.LastErrorCode
		  Case 0 // Success
		    LastError = ""
		  Case FolderItem.AccessDenied
		    LastError = App.T.Translate("fileutils/errors/accessdenied", GetDisplayFullPath(f))
		  Case FolderItem.DestDoesNotExistError
		    LastError = App.T.Translate("fileutils/errors/destdoesnotexisterror", GetDisplayFullPath(f))
		  Case FolderItem.FileInUse
		    LastError = App.T.Translate("fileutils/errors/fileinuse", GetDisplayFullPath(f))
		  Case FolderItem.FileNotFound
		    LastError = App.T.Translate("fileutils/errors/filenotfound", GetDisplayFullPath(f))
		  Case FolderItem.InvalidName
		    LastError = App.T.Translate("fileutils/errors/invalidname", f.AbsolutePath)
		  Case FolderItem.NotEnoughMemory
		    LastError = App.T.Translate("fileutils/errors/notenoughmemory", GetDisplayFullPath(f))
		  Case Else
		    LastError = App.T.Translate("fileutils/errors/unknownerror", GetDisplayFullPath(f))
		  End Select
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected LastError As String
	#tag EndProperty


End Module
#tag EndModule
