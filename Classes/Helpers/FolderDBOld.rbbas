#tag Class
Protected Class FolderDBOld
Inherits FolderDB
	#tag Method, Flags = &h0
		Function AddFile(path As String) As FolderItem
		  Dim f As FolderItem
		  
		  Dim lastSlash As Integer
		  
		  path = CleanPath(path)
		  lastSlash = StringUtils.InStrReverse(path, "/")
		  
		  'f = GetFile(Mid(path, lastSlash+1))
		  f = GetFile(path)
		  If f <> Nil And f.Exists Then
		    ErrorCode = 3
		    ErrorString = "File already exists."
		    Return Nil
		  End if
		  
		  f = FileUtils.RelativePathToFolderItem(Folder, path)
		  If f = Nil Then
		    ErrorCode = 4
		    ErrorString = "Could not find path to new file."
		    Return Nil
		  ElseIf f.Exists Then
		    ErrorCode = 3
		    ErrorString = "File already exists."
		    Return Nil
		  End If
		  
		  //++
		  // EMP, 4 Feb 06
		  // Switched to use heapsort instead of bubblesort
		  //--
		  Cache.Append Mid(path, lastSlash + 1) + "/" + Left(path, lastSlash)
		  'Cache.Sort
		  NumFiles = NumFiles + 1
		  Heapsort Cache
		  
		  If Not Save Then Return Nil
		  
		  Return f
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AddFolder(path As String) As FolderItem
		  Dim f As FolderItem
		  f = FileUtils.RelativePathToFolderItem(Folder, path)
		  If f = Nil Or f.Exists Then
		    ErrorCode = 1
		    ErrorString = "Folder already exists."
		    Return Nil
		  End If
		  
		  Dim i, slashPos As Integer
		  For i = 1 To UBound(Cache)
		    slashPos = InStr(Cache(i), "/")
		    If InStr(Cache(i), path) = slashPos Then
		      ErrorCode = 1
		      ErrorString = "Folder already exists."
		      Return Nil
		    End If
		  Next i
		  
		  f.CreateAsFolder
		  If Not f.Exists Then
		    ErrorCode = 2
		    ErrorString = "Could not create folder."
		    Return Nil
		  End If
		  
		  Cache.Append "/" + path + "/"
		  'Cache.Sort
		  NumFiles = NumFiles + 1
		  Heapsort cache
		  
		  If Not Save Then Return Nil
		  
		  Return f
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddFolderToCache(folder As FolderItem, path As String = "/")
		  //++
		  // April 2007: Change to process folders last
		  //--
		  
		  Dim x As Integer
		  Dim s As String
		  Dim f As FolderItem
		  Dim count As Integer
		  
		  Dim j As integer
		  Dim fname As String
		  Dim subfolders() As FolderItem
		  
		  count = Folder.Count
		  fname = Folder.Name
		  
		  j = 0
		  ProgressWindow.SetMaximum(count)
		  ProgressWindow.SetProgress(j)
		  ProgressWindow.Show
		  ProgressWindow.SetStatus  App.T.Translate("progress_status/folder", fName) + "..."
		  
		  For x = 1 to count
		    '++JRC
		    j = j + 1
		    ProgressWindow.SetMaximum(count)
		    ProgressWindow.SetStatus App.T.Translate("progress_status/folder", fName) + "..."
		    ProgressWindow.SetProgress(j)
		    '--
		    
		    f = folder.Item(x)
		    s = f.Name
		    If InStr("._", Left(s, 1)) = 0 And f.Visible Then
		      If f.Directory Then
		        subfolders.Append f
		      Else
		        Cache.Append s + path
		        NumFiles = NumFiles + 1
		      End If
		    End If
		  Next x
		  // Handle the directories
		  For x = 0 To UBound(subfolders)
		    f = subfolders(x)
		    s = f.name
		    Cache.Append path + s + "/"
		    NumFiles = NumFiles + 1
		    AddFolderToCache f, path + s + "/"
		  Next x
		  ProgressWindow.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CachePathToPath(cachePath As String) As String
		  Dim slashPos As Integer = InStr(cachePath, "/")
		  Return Mid(cachePath, slashPos+1) + Left(cachePath, slashPos-1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CleanPath(path As String) As String
		  path = ReplaceAll(path, FilterAll + "/", "")
		  path = ReplaceAll(path, FilterMain, "")
		  Return path
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(folder As FolderItem)
		  FilterAll = "( All )"
		  FilterMain = "( Main )"
		  Load folder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteFile(path As String) As Boolean
		  Dim i, cacheSlots(0) As Integer
		  Dim f As FolderItem
		  Dim found As Boolean
		  
		  cacheSlots = GetFileEx(path)
		  If UBound(cacheSlots) = 0 Then Return False
		  
		  For i = UBound(cacheSlots) DownTo 1
		    f = FileUtils.RelativePathToFolderItem(Folder, CachePathToPath(Cache(cacheSlots(i))))
		    f.Delete
		    If f.Exists Then
		      ErrorCode = 9
		      ErrorString = "Could not delete file."
		      Return False
		    Else
		      Cache.Remove cacheSlots(i)
		      If Not Save Then Return False
		      Return True
		    End If
		  Next i
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteFolder(path As String) As Boolean
		  Dim f As FolderItem
		  
		  f = FileUtils.RelativePathToFolderItem(Folder, path)
		  If f = Nil Or Not f.Exists Then
		    ErrorCode = 6
		    ErrorString = "Could not find folder."
		    Return False
		  End If
		  
		  If f.Count > 0 Then
		    ErrorCode = 11
		    ErrorString = "Folder is not empty."
		    Return False
		  End If
		  
		  f.Delete
		  If f.Exists Then
		    ErrorCode = 7
		    ErrorString = "Could not delete folder."
		    Return False
		  End If
		  
		  Dim found As Boolean
		  
		  Dim i, slashPos As Integer
		  path = "/" + path + "/"
		  
		  For i = 1 To UBound(Cache)
		    slashPos = InStr(Cache(i), "/")
		    If StrComp(Mid(Cache(i), slashPos, path.Len), path, 1) = 0 Then
		      found = True
		      Cache.Remove i
		      i = i - 1
		    End If
		  Next i
		  
		  If Not Save Then Return False
		  
		  If Not found Then
		    ErrorCode = 6
		    ErrorString = "Could not find folder."
		    'Return False ' Actually, if we can't find it in the cache, it is a problem, but not a big one.
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFile(path As String) As FolderItem
		  Dim cacheSlots(0) As Integer
		  Dim f As FolderItem
		  
		  If Left(path, 1) = "_" Then ' must be a temp file or something
		    f = Folder.Child(path)
		    If f = Nil Or Not f.Exists Then
		      ErrorCode = 8
		      ErrorString = "Could not find file."
		    End If
		    Return f
		  End If
		  
		  cacheSlots = GetFileEx(path)
		  If UBound(cacheSlots) = 0 Then Return Nil
		  Return FileUtils.RelativePathToFolderItem(Folder, CachePathToPath(Cache(cacheSlots(1))))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetFileEx(path As String) As Integer()
		  Dim i as Integer
		  Dim matches(0) As Integer
		  Dim f As FolderItem
		  Dim name As String
		  
		  path = CleanPath(path)
		  
		  i = StringUtils.InStrReverse(path, "/")
		  If i > 0 Then
		    name = Mid(path, i+1)
		    path = Left(path, i)
		  Else
		    name = path
		    path = ""
		  End If
		  Dim NameAndPath As String
		  NameAndPath = name + "/" + path
		  //++EMP 19 Feb 2006
		  // Changed loop to start at 0 to correct issue with MainWindow.ActionSongNew
		  // and new entry landing in slot 0 of the cache.
		  // July 2007: Remove calls to Lowercase since RB uses case-insensitive compares
		  //--
		  For i = 0 To UBound(Cache)
		    'If Lowercase(Cache(i)) = name + "/" + path Or _
		    '(path.Len = 0 And Left(Cache(i), name.Len+1) = name + "/") Or _
		    '(path.Len = 1 And Cache(i) = name + "/") Then
		    If Cache(i) = NameAndPath Then
		      f = FileUtils.RelativePathToFolderItem(Folder, CachePathToPath(Cache(i)))
		      If f <> Nil And f.Exists Then
		        matches.Append i
		      Else
		        Cache.Remove i ' self-repair
		        i = i - 1
		      End If
		    End If
		  Next i
		  
		  If UBound(matches) = 0 Then
		    ErrorCode = 8
		    ErrorString = "Could not find file."
		    Return matches
		  End If
		  
		  Return matches
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFiles(pathFilter As String, fileBox As ListBox = Nil) As String()
		  
		  Dim songList(0) As String
		  
		  Dim i, slashPos As Integer
		  Dim showAll As Boolean
		  Dim fullName, pathName, fileName As String
		  
		  If fileBox <> Nil Then fileBox.DeleteAllRows
		  
		  If InStr(pathFilter, FilterAll) = 1 Or Len(pathFilter) = 0 Then showAll = True
		  If InStr(pathFilter, FilterMain) = 1 Then
		    pathFilter = ""
		  Else
		    pathFilter = pathFilter + "/"
		  End If
		  
		  For i = 1 To UBound(Cache)
		    fullName = Cache(i)
		    slashPos = InStr(fullName, "/")
		    pathName = Mid(fullName, slashPos+1)
		    If showAll Or InStr(pathName, pathFilter) = 1 Or (pathName.Len = 0 And pathFilter.Len = 0) Then
		      fileName = Left(fullName, slashPos-1)
		      If Len(fileName) > 0 Then
		        If fileBox <> Nil Then
		          fileBox.AddRow ConvertEncoding(fileName, Encodings.UTF8)
		          fileBox.CellTag(fileBox.LastIndex, 0) = pathName
		        Else
		          songList.Append fileName
		        End If
		      End If
		    End If
		  Next i
		  
		  ' No sorting needed now as cache sorts by file name then path?
		  If fileBox <> Nil Then fileBox.ScrollPosition = 0
		  
		  Return songList
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFolders(popup As PopupMenu = Nil) As String()
		  Dim folders As New Dictionary
		  Dim ret(0) As String
		  
		  Dim i As Integer
		  Dim folderName As String
		  
		  If popup <> Nil Then popup.DeleteAllRows
		  
		  For i = 1 To UBound(Cache)
		    folderName = Cache(i)
		    If Left(folderName, 1) = "/" Then
		      folderName = Mid(folderName, 2, Len(FolderName)-2)
		      If folders.HasKey(folderName) Then
		        folders.Value(folderName) = folders.Value(folderName).IntegerValue + 1
		      Else
		        folders.Value(folderName) = 1
		      End If
		    End If
		  Next i
		  
		  For i = 0 To folders.Count - 1
		    ret.Append folders.Key(i)
		  Next i
		  ret.Sort
		  
		  If popup <> Nil Then
		    popup.InsertRow 0, FilterAll
		    popup.InsertRow 1, FilterMain
		  Else
		    ret.Insert 1, FilterAll
		    ret.Insert 2, FilterMain
		  End If
		  
		  If popup <> Nil Then
		    For i = 1 To UBound(ret)
		      popup.AddRow ret(i)
		    Next i
		  End If
		  
		  Return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetRootFolder() As FolderItem
		  //++
		  // Returns a FolderItem pointing to the top folder in the FolderDB object
		  //
		  // This is what was passed to the Constructor
		  //--
		  
		  Return Folder
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load(folder As FolderItem)
		  Me.Folder = folder
		  
		  Dim input As TextInputStream
		  
		  input = folder.Child("_cache").OpenAsTextFile
		  If input = Nil Then
		    If Not RefreshCache Then
		      MsgBox ErrorString
		    End If
		  Else
		    ReDim Cache(0)
		    NumFiles = 0
		    While Not input.EOF
		      Cache.Append input.ReadLine
		      NumFiles = NumFiles + 1
		    Wend
		    input.Close
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MoveFile(path As String, destFolder As String) As Boolean
		  Dim i, cacheSlots(0) As Integer
		  Dim f, fo As FolderItem
		  Dim found As Boolean
		  
		  cacheSlots = GetFileEx(path)
		  If UBound(cacheSlots) = 0 Then Return False
		  destFolder = CleanPath(destFolder)
		  
		  fo = FileUtils.RelativePathToFolderItem(Folder, destFolder)
		  If fo = Nil Or Not fo.Exists Then
		    ErrorCode = 6
		    ErrorString = "Could not find folder."
		    Return False
		  End If
		  
		  i = 1
		  f = FileUtils.RelativePathToFolderItem(Folder, CachePathToPath(Cache(cacheSlots(i))))
		  If f = Nil Or Not f.Exists Then
		    ErrorCode = 8
		    ErrorString = "Could not find file."
		    Return False
		  End If
		  
		  f.MoveFileTo fo
		  
		  If f.LastErrorCode <> 0 Then
		    If f.Exists And fo.Exists Then // File with that name already in destination folder
		      ErrorCode = 13
		      ErrorString = "Destination file exists."
		    Else
		      ErrorCode = 12
		      ErrorString = "Could not move file."
		    End If
		    Return False
		  End If
		  If destFolder.Len > 0 Then destFolder = destFolder + "/"
		  Cache(cacheSlots(i)) = f.Name + "/" + destFolder
		  Heapsort cache
		  If Not Save Then Return False
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RefreshCache() As Boolean
		  ReDim Cache(0)
		  Dim s As String
		  
		  NumFiles = 0
		  App.MouseCursor = WatchCursor
		  
		  AddFolderToCache Folder
		  
		  'Cache.Sort
		  Heapsort Cache
		  
		  If Not Save Then
		    ErrorCode = 5
		    ErrorString = "Could not write to main folder."
		    Return False
		  End If
		  
		  App.MouseCursor = Nil
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RenameFile(path As String, newName As String) As Boolean
		  Dim i, cacheSlots(0) As Integer
		  Dim f As FolderItem
		  Dim found As Boolean
		  Dim oldPath As String
		  Dim tmpPath As String
		  
		  // Check for a path character in the new string.
		  If Instr(newName, "/") > 0 Or Instr(newName, ":") > 0 Or Instr(newName, "\") > 0 Then
		    ErrorCode = 0
		    ErrorString = App.T.Translate("errors/no_path_allowed")
		    Return False
		  End If
		  
		  // Take the path from the "from" file, otherwise it's possible to get a false 'file exists'
		  tmpPath = ""
		  i = StringUtils.InStrReverse(path, "/")
		  If i > 0 Then tmpPath = Left(path,  i)
		  
		  f = GetFile(tmpPath + newName)
		  If f <> Nil And f.Exists And Lowercase(Mid(path, StringUtils.InStrReverse(path, "/")+1)) <> Lowercase(newName) Then
		    ErrorCode = 3
		    ErrorString = App.T.Translate("errors/already_exists", newName)
		    Return False
		  End If
		  
		  cacheSlots = GetFileEx(path)
		  If UBound(cacheSlots) = 0 Then Return False
		  
		  For i = UBound(cacheSlots) DownTo 1
		    oldPath = Mid(Cache(cacheSlots(i)), InStr(Cache(cacheSlots(i)), "/"))
		    f = FileUtils.RelativePathToFolderItem(Folder, oldPath + newName)
		    If f <> Nil And f.Exists And Lowercase(Mid(path, StringUtils.InStrReverse(path, "/")+1)) <> Lowercase(newName) Then
		      ErrorCode = 3
		      ErrorString = App.T.Translate("errors/already_exists", newName)
		      Return False
		    End If
		    f = FileUtils.RelativePathToFolderItem(Folder, CachePathToPath(Cache(cacheSlots(i))))
		    f.Name = newName
		    If f.Name <> newName Then
		      ErrorCode = 10
		      ErrorString = App.T.Translate("errors/rename_error")
		      Return False
		    Else
		      Cache(cacheSlots(i)) = newName + oldPath
		      Heapsort cache
		      If Not Save Then Return False
		      Return True
		    End If
		  Next i
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Save() As Boolean
		  Dim output As TextOutputStream
		  output = Folder.Child("_cache").CreateTextFile
		  
		  If output = Nil Then
		    ErrorCode = 5
		    ErrorString = "Could not write to main folder."
		    Return False
		  End If
		  
		  Dim x As Integer
		  For x = 1 To UBound(Cache)
		    output.WriteLine Cache(x)
		  Next x
		  
		  output.Close
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBuiltinFilters(filterAll As String, filterMain As String)
		  Me.FilterAll = filterAll
		  Me.FilterMain = filterMain
		End Sub
	#tag EndMethod


	#tag Note, Name = Description
		Accesses the songs folder as a go-between
		Implements folder caching to speed up load times dramatically
	#tag EndNote


	#tag Property, Flags = &h1
		Protected Cache(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ErrorCode As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ErrorString As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected FilterAll As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected FilterMain As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Folder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		NumFiles As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="FolderDB"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			Type="String"
			InheritedFrom="FolderDB"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="FolderDB"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
