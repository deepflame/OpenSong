#tag Class
Protected Class FolderDB
	#tag Method, Flags = &h0
		Function AddFile(path As String) As FolderItem
		  Dim f As FolderItem
		  
		  Dim lastSlash As Integer
		  
		  path = CleanPath(path)
		  
		  f = FileUtils.RelativePathToFolderItem(Folder, path)
		  
		  If f.Exists Then
		    ErrorCode = 3
		    ErrorString = "File already exists."
		    Return Nil
		  End If
		  
		  Return f
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AddFolder(path As String) As FolderItem
		  Dim f As FolderItem
		  path = CleanPath(path)
		  f = FileUtils.RelativePathToFolderItem(Folder, path)
		  
		  If Not (f Is Nil) Then
		    If f.Exists Then
		      ErrorCode = 1
		      ErrorString = "Folder already exists."
		      Return Nil
		    End If
		    
		    f.CreateAsFolder
		    If Not f.Exists Then
		      ErrorCode = 2
		      ErrorString = "Could not create folder."
		      Return Nil
		    End If
		  End If
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
		  If App.T Is Nil Then
		    FilterAll = "( All )"
		    FilterMain = "( Main )"
		  Else
		    FilterAll = "( " + App.T.Translate("songs_mode/song_folders/filter_all/@caption") + " )"
		    FilterMain = "( " + App.T.Translate("songs_mode/song_folders/filter_main/@caption") + " )"
		  End If
		  Load folder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteFile(path As String) As Boolean
		  Dim f As FolderItem
		  path = CleanPath(path)
		  
		  f = FileUtils.RelativePathToFolderItem(Folder, path)
		  
		  If f = Nil Then Return True
		  If Not f.Exists Then Return True
		  f.Delete
		  If f.Exists Then
		    ErrorCode = 9
		    ErrorString = "Could not delete file."
		    Return False
		  End If
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteFolder(path As String) As Boolean
		  Dim f As FolderItem
		  path = CleanPath(path)
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
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFile(path As String) As FolderItem
		  
		  Dim cacheSlots(0) As Integer
		  Dim f As FolderItem
		  App.DebugWriter.Write "FolderDB.GetFile: Looking for '" + path + "'", 5
		  path = CleanPath(path)
		  App.DebugWriter.Write "FolderDB.GetFile: Path after CleanPath is '" + path + "'", 5
		  f = FileUtils.RelativePathToFolderItem(Folder, path)
		  If f <> Nil Then
		    If Not f.Exists Then App.DebugWriter.Write "FolderDB.GetFile: File does not exist: '" + f.URLPath + "'", 5
		  End If
		  If f = Nil Or Not f.Exists Then
		    ErrorCode = 8
		    ErrorString = "Could not find file."
		    f = Nil
		  End If
		  Return f
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFiles(pathFilter As String, fileBox As ListBox = Nil) As String()
		  
		  Dim songList(0) As String
		  
		  Dim i, slashPos As Integer
		  Dim showAll As Boolean
		  Dim fullName, pathName, fileName As String
		  
		  showAll = False
		  If InStr(pathFilter, FilterAll) = 1 Or Len(pathFilter) = 0 Then
		    showAll = True
		    pathFilter = ""
		  ElseIf InStr(pathFilter, FilterMain) = 1 Or pathFilter = "." Then
		    pathFilter = ""
		  Else
		    pathFilter = pathFilter + "/"
		  End If
		  If filebox <> Nil Then filebox.DeleteAllRows
		  songList = GetFilesInFolder(pathFilter, fileBox, showAll)
		  Heapsort songList
		  
		  If fileBox <> Nil Then
		    filebox.SortedColumn = 0
		    filebox.Sort
		  else
		    'TH - only do a HeapSort if fileBox is Nil, as we don't use it if filling a listbox
		    'this speeds up the SongPicker by factor of 3
		    Heapsort songList
		  End If
		  
		  Return songList
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFolders(popup As PopupMenu = Nil) As String()
		  Dim temp() As String
		  
		  #If TargetWin32
		    temp = GetFoldersWin()
		  #elseIf TargetMacOS
		    temp = GetFoldersMac()
		  #else
		    temp = GetFoldersGeneric(Folder)
		  #endif
		  
		  temp.Sort
		  
		  If popup <> Nil Then
		    popup.DeleteAllRows
		    For Each s As String In Temp
		      popup.AddRow s
		    Next
		    popup.InsertRow 0, FilterAll
		    popup.InsertRow 1, FilterMain
		  Else
		    temp.Insert 0, ""
		    temp.Insert 1, FilterAll
		    temp.Insert 2, FilterMain
		  End If
		  
		  Return temp
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
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MoveFile(path As String, destFolder As String) As Boolean
		  Dim i, cacheSlots(0) As Integer
		  Dim f, fo As FolderItem
		  Dim found As Boolean
		  
		  destFolder = CleanPath(destFolder)
		  path = CleanPath(path)
		  
		  fo = FileUtils.RelativePathToFolderItem(Folder, destFolder)
		  If fo = Nil Or Not fo.Exists Then
		    ErrorCode = 6
		    ErrorString = "Could not find folder."
		    Return False
		  End If
		  
		  If Not fo.Directory Then
		    ErrorCode = 6
		    ErrorString = "Destination folder is a regular file."
		    Return False
		  End If
		  i = 1
		  f = FileUtils.RelativePathToFolderItem(Folder, path)
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
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RefreshCache() As Boolean
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RenameFile(path As String, newName As String) As Boolean
		  Dim f As FolderItem
		  Dim g As FolderItem
		  
		  path = CleanPath(path)
		  // Check for a path character in the new string.
		  If Instr(newName, "/") > 0 Or Instr(newName, ":") > 0 Or Instr(newName, "\") > 0 Then
		    ErrorCode = 0
		    ErrorString = App.T.Translate("errors/no_path_allowed")
		    Return False
		  End If
		  
		  f = FileUtils.RelativePathToFolderItem(Folder, path)
		  If f = Nil Or Not f.Exists Then
		    ErrorCode = 10
		    ErrorString = "Source for rename does not exist"
		    Return False
		  End If
		  
		  g = f.Parent.Child(newName)
		  
		  If g.Exists Then
		    ErrorCode = 3
		    ErrorString = App.T.Translate("errors/already_exists", newName)
		    Return False
		  End If
		  
		  f.Name = newName
		  If f.Name <> newName Then
		    ErrorCode = 10
		    ErrorString = App.T.Translate("errors/rename_error")
		    Return False
		  End If
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Save() As Boolean
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBuiltinFilters(filterAll As String, filterMain As String)
		  Me.FilterAll = filterAll
		  Me.FilterMain = filterMain
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetFilesInFolder(path As String, list As listbox = Nil, recurse As Boolean = False) As String()
		  #If TargetWin32
		    Return GetFilesInFolderWin(path, list, recurse)
		  #elseif TargetMacOS
		    Return GetFilesInFolderMac(path, list, recurse)
		  #else
		    Return GetFilesInFolderGeneric(path, list, recurse)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetFoldersGeneric(f As FolderItem, toplevel As Boolean = True) As String()
		  Dim childNames() As String
		  Dim temp() As String
		  Dim i As Integer
		  Dim last As Integer
		  Dim fi As FolderItem
		  
		  last = f.Count
		  For i = 1 To last
		    fi = f.Item(i)
		    If fi.Directory Then
		      If toplevel Then
		        childNames.Append fi.Name
		      Else
		        childNames.Append f.Name + "/" + fi.Name
		      End If
		      
		      ReDim temp(-1)
		      temp = GetFoldersGeneric(fi, False)
		      
		      For Each s As String in temp
		        If toplevel Then
		          childNames.Append s
		        Else
		          childNames.Append f.Name + "/" + s
		        End If
		      Next
		    End If
		  Next
		  
		  Return childNames
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetFilesInFolderWin(path As String, list As ListBox = Nil, recurse As Boolean = False) As String()
		  #If Not TargetWin32
		    Return GetFilesInFolderGeneric(path, list, recurse)
		  #EndIf
		  
		  Dim fileDict() As Dictionary
		  Dim startPath As String
		  
		  startPath = Folder.AbsolutePath
		  If Right(startPath, 1) <> "\" Then
		    startPath = startPath + "\"
		  End If
		  startPath = startPath + ReplaceAll(path, "/", "\")
		  win32GetFileList(fileDict, startPath, "", "*.*", recurse)
		  
		  Dim fileList() As String
		  Dim last As Integer
		  last = UBound(fileDict)
		  
		  For i As Integer = 0 To last
		    If list <> Nil Then
		      'we currently don't use array if the list is Nil
		      list.AddRow fileDict(i).Value("Name")
		      list.CellTag(list.LastIndex, 0) = ReplaceAll(path + fileDict(i).Value("Path"), "\", "/")
		    else
		      'list is Nil, array WILL be used
		      fileList.Append fileDict(i).Value("Name")
		    End If
		  Next
		  
		  Return fileList
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub win32GetFileList(ByRef FileList() as dictionary, path as String, relativepath as String, filter as String, recursive as boolean = false)
		  #If TargetWin32
		    // This function is based on a function by Aaron Ballman ...
		    //      http://forums.realbasic.com/viewtopic.php?t=13692
		    
		    // Parameters: FileList() is an array that gets passed in
		    //                      path is the path to search
		    //                      relativepath is the subfolder path  (used internally for recursion)
		    //                      filter is the file filter e.g. *.*
		    //                      recursive (true / false)
		    
		    // Returns: dictionary array with the following values:
		    //                        Path (Relative), Name, Size (bytes),
		    //                        ModifiedDate, CreatedDate, AccessedDate,
		    //                        Hidden, System, Folder, ReadOnly
		    
		    Soft Declare Function FindFirstFileW Lib "Kernel32" ( path as WString, data as Ptr ) as Integer
		    Soft Declare Function FindNextFileW Lib "Kernel32" ( handle as Integer, data as Ptr ) as Boolean
		    Soft Declare Function FileTimeToLocalFileTime Lib "Kernel32" ( filetime as Ptr,localfiletime as Ptr) as Integer
		    Soft Declare Function FileTimeToSystemTime Lib "Kernel32" ( filetime as Ptr,systemtime as Ptr) as Integer
		    
		    Declare Sub FindClose Lib "Kernel32" ( handle as Integer )
		    
		    dim temp as Dictionary
		    dim handle, result, x as Integer
		    dim tempdate as Date
		    
		    dim data,tempft,templt,tempst as MemoryBlock
		    
		    data = new MemoryBlock( 592 )
		    tempft = new MemoryBlock(8)  // FileTime Holder
		    templt = new MemoryBlock(8) // FileLocalTime Holder
		    tempst = new MemoryBlock(16) // SystemTime Holder
		    
		    dim maxdword,tempattr as Uint64
		    maxdword = 4294967296
		    
		    if right(path,1) <> "\" then
		      path = path + "\"
		    end if
		    
		    handle = FindFirstFileW( path + filter, data )
		    
		    if handle <> -1 then
		      // Loop over all of the items in using the handle and the find data
		      dim done as Boolean
		      
		      do
		        // Add the current item
		        temp = new Dictionary
		        temp.value("Name") = data.WString(44)
		        
		        if temp.value("Name") <> "." AND temp.value("Name") <> ".." then
		          
		          temp.value("Path") = relativepath
		          
		          temp.value("Size") = (data.Long(28) * maxdword) + data.Long(32)
		          
		          tempft = data.MidB(4,8)
		          
		          result = FileTimeToLocalFileTime(tempft,templt)
		          result = FileTimeToSystemTime(templt,tempst)
		          
		          tempdate = new Date
		          tempdate.Year = tempst.short(0)
		          tempdate.Month = tempst.short(2)
		          tempdate.Day = tempst.short(6)
		          tempdate.Hour = tempst.short(8)
		          tempdate.Minute = tempst.short(10)
		          tempdate.Second = tempst.short(12)
		          
		          temp.value("CreatedDate") = tempdate
		          
		          tempft = data.MidB(12,8)
		          
		          result = FileTimeToLocalFileTime(tempft,templt)
		          result = FileTimeToSystemTime(templt,tempst)
		          
		          tempdate = new Date
		          tempdate.Year = tempst.short(0)
		          tempdate.Month = tempst.short(2)
		          tempdate.Day = tempst.short(6)
		          tempdate.Hour = tempst.short(8)
		          tempdate.Minute = tempst.short(10)
		          tempdate.Second = tempst.short(12)
		          
		          temp.value("AccessedDate") = tempdate
		          
		          tempft = data.MidB(20,8)
		          
		          result = FileTimeToLocalFileTime(tempft,templt)
		          result = FileTimeToSystemTime(templt,tempst)
		          
		          tempdate = new Date
		          tempdate.Year = tempst.short(0)
		          tempdate.Month = tempst.short(2)
		          tempdate.Day = tempst.short(6)
		          tempdate.Hour = tempst.short(8)
		          tempdate.Minute = tempst.short(10)
		          tempdate.Second = tempst.short(12)
		          
		          temp.value("ModifiedDate") = tempdate
		          
		          tempattr = data.Long(0)
		          
		          if BitCheck(tempattr,1) then
		            temp.value("ReadOnly") = true
		          else
		            temp.value("ReadOnly") = false
		          end if
		          
		          if BitCheck(tempattr,2) then
		            temp.value("Hidden") = true
		          else
		            temp.value("Hidden") = false
		          end if
		          
		          if BitCheck(tempattr,3) then
		            temp.value("System") = true
		          else
		            temp.value("System") = false
		          end if
		          
		          if BitCheck(tempattr,5) then
		            temp.value("Folder") = true
		          else
		            temp.value("Folder") = false
		          end if
		          
		          // Add the current item to our list
		          If Not temp.Value("Hidden").BooleanValue _
		            And Left(temp.Value("Name"), 1) <> "_" _
		            And Left(temp.Value("Name"), 1) <> "." _
		            Then
		            If Not temp.Value("Folder").BooleanValue Then
		              FileList.Append( temp )
		            ElseIf recursive Then
		              win32GetFileList(FileList, path+temp.value("Name")+"\",relativepath+temp.value("Name")+"\",filter,recursive)
		            end if
		          End If
		        end if
		        
		        // Loop to the next item
		        done = FindNextFileW( handle, data )
		        
		      loop until not done
		      
		      FindClose( handle )
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function BitCheck(number as uint64, offset as integer) As Boolean
		  
		  // by Mike Bailey ... http://forums.realbasic.com/viewtopic.php?t=4637
		  
		  dim bit as integer
		  bit = bitwise.shiftLeft( 1, offset-1 )
		  return (bitwise.bitAnd( number, bit ) > 0)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub win32GetFolderList(ByRef FileList() as dictionary, path as String, relativepath as String, filter as String, recursive as boolean = false)
		  #If TargetWin32
		    // This function is based on a function by Aaron Ballman ...
		    //      http://forums.realbasic.com/viewtopic.php?t=13692
		    
		    // Parameters: FileList() is an array that gets passed in
		    //                      path is the path to search
		    //                      relativepath is the subfolder path  (used internally for recursion)
		    //                      filter is the file filter e.g. *.*
		    //                      recursive (true / false)
		    
		    // Returns: dictionary array with the following values:
		    //                        Path (Relative), Name, Size (bytes),
		    //                        ModifiedDate, CreatedDate, AccessedDate,
		    //                        Hidden, System, Folder, ReadOnly
		    
		    Soft Declare Function FindFirstFileW Lib "Kernel32" ( path as WString, data as Ptr ) as Integer
		    Soft Declare Function FindNextFileW Lib "Kernel32" ( handle as Integer, data as Ptr ) as Boolean
		    Soft Declare Function FileTimeToLocalFileTime Lib "Kernel32" ( filetime as Ptr,localfiletime as Ptr) as Integer
		    Soft Declare Function FileTimeToSystemTime Lib "Kernel32" ( filetime as Ptr,systemtime as Ptr) as Integer
		    
		    Declare Sub FindClose Lib "Kernel32" ( handle as Integer )
		    
		    dim temp as Dictionary
		    dim handle, result, x as Integer
		    dim tempdate as Date
		    
		    dim data,tempft,templt,tempst as MemoryBlock
		    
		    data = new MemoryBlock( 592 )
		    tempft = new MemoryBlock(8)  // FileTime Holder
		    templt = new MemoryBlock(8) // FileLocalTime Holder
		    tempst = new MemoryBlock(16) // SystemTime Holder
		    
		    dim maxdword,tempattr as Uint64
		    maxdword = 4294967296
		    
		    if right(path,1) <> "\" then
		      path = path + "\"
		    end if
		    
		    handle = FindFirstFileW( path + filter, data )
		    
		    if handle <> -1 then
		      // Loop over all of the items in using the handle and the find data
		      dim done as Boolean
		      
		      do
		        // Add the current item
		        temp = new Dictionary
		        temp.value("Name") = data.WString(44)
		        
		        if temp.value("Name") <> "." AND temp.value("Name") <> ".." then
		          
		          temp.value("Path") = relativepath
		          
		          temp.value("Size") = (data.Long(28) * maxdword) + data.Long(32)
		          
		          tempft = data.MidB(4,8)
		          
		          result = FileTimeToLocalFileTime(tempft,templt)
		          result = FileTimeToSystemTime(templt,tempst)
		          
		          tempdate = new Date
		          tempdate.Year = tempst.short(0)
		          tempdate.Month = tempst.short(2)
		          tempdate.Day = tempst.short(6)
		          tempdate.Hour = tempst.short(8)
		          tempdate.Minute = tempst.short(10)
		          tempdate.Second = tempst.short(12)
		          
		          temp.value("CreatedDate") = tempdate
		          
		          tempft = data.MidB(12,8)
		          
		          result = FileTimeToLocalFileTime(tempft,templt)
		          result = FileTimeToSystemTime(templt,tempst)
		          
		          tempdate = new Date
		          tempdate.Year = tempst.short(0)
		          tempdate.Month = tempst.short(2)
		          tempdate.Day = tempst.short(6)
		          tempdate.Hour = tempst.short(8)
		          tempdate.Minute = tempst.short(10)
		          tempdate.Second = tempst.short(12)
		          
		          temp.value("AccessedDate") = tempdate
		          
		          tempft = data.MidB(20,8)
		          
		          result = FileTimeToLocalFileTime(tempft,templt)
		          result = FileTimeToSystemTime(templt,tempst)
		          
		          tempdate = new Date
		          tempdate.Year = tempst.short(0)
		          tempdate.Month = tempst.short(2)
		          tempdate.Day = tempst.short(6)
		          tempdate.Hour = tempst.short(8)
		          tempdate.Minute = tempst.short(10)
		          tempdate.Second = tempst.short(12)
		          
		          temp.value("ModifiedDate") = tempdate
		          
		          tempattr = data.Long(0)
		          
		          if BitCheck(tempattr,1) then
		            temp.value("ReadOnly") = true
		          else
		            temp.value("ReadOnly") = false
		          end if
		          
		          if BitCheck(tempattr,2) then
		            temp.value("Hidden") = true
		          else
		            temp.value("Hidden") = false
		          end if
		          
		          if BitCheck(tempattr,3) then
		            temp.value("System") = true
		          else
		            temp.value("System") = false
		          end if
		          
		          if BitCheck(tempattr,5) then
		            temp.value("Folder") = true
		          else
		            temp.value("Folder") = false
		          end if
		          
		          // only append visible folders
		          If temp.Value("Folder").BooleanValue _
		            And Not temp.Value("Hidden").BooleanValue _
		            And Left(temp.Value("Name"), 1) <> "." _
		            Then
		            // Add the current item to our list
		            FileList.Append( temp )
		            
		            If recursive Then
		              win32GetFolderList(FileList, path+temp.value("Name")+"\",relativepath+temp.value("Name")+"\",filter,recursive)
		            End If
		          End If
		          
		        end if
		        
		        // Loop to the next item
		        done = FindNextFileW( handle, data )
		        
		      loop until not done
		      
		      FindClose( handle )
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetFoldersWin() As String()
		  #If Not TargetWin32
		    Return GetFoldersGeneric(Folder)
		  #EndIf
		  
		  Dim fileDict() As Dictionary
		  win32GetFolderList(fileDict, Folder.AbsolutePath, "", "*.*", True)
		  
		  Dim ret() As String
		  
		  For Each d As Dictionary In fileDict
		    ret.Append(ReplaceAll((d.Value("Path") + d.Value("Name")), "\", "/"))
		  Next
		  
		  Return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetFilesInFolderMac(path As String, list As listbox = Nil, recurse As Boolean = False) As String()
		  #If Not TargetMacOS
		    Return GetFilesInFolderGeneric(path, list, recurse)
		  #endif
		  Dim f As FolderItem
		  Dim fileDict() As Dictionary
		  Dim fileList() As String
		  Dim ref As FSRef
		  
		  f = FileUtils.RelativePathToFolderItem(Folder, path)
		  
		  ref = New FSRef(f)
		  
		  fileDict = ref.Iterate(recurse, path)
		  
		  If list <> Nil Then
		    list.DeleteAllRows
		  End If
		  
		  For Each d As Dictionary in fileDict
		    If Not d.Value("Folder").BooleanValue Then
		      fileList.Append d.Value("Name").StringValue
		      If List <> Nil Then
		        list.AddRow d.Value("Name").StringValue
		        list.CellTag(list.LastIndex, 0) = d.Value("Path").StringValue
		      End If
		    End If
		  Next
		  
		  If List <> Nil Then
		    list.SortedColumn = 0
		    list.Sort
		  End If
		  'TH - we appear to do this twice, once here and once in GetFiles
		  'Heapsort fileList

		  Return fileList
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetFoldersMac() As String()
		  #if Not TargetMacOS
		    Return GetFoldersGeneric(Folder)
		  #endif
		  
		  Dim fileDict() As Dictionary
		  Dim folderList() As String
		  Dim ref As FSRef
		  Dim s As String
		  
		  ref = New FSRef(Folder)
		  
		  fileDict = ref.Iterate(True)
		  
		  For Each d As Dictionary In fileDict
		    If d.Value("Folder").BooleanValue Then
		      s = d.Value("Path").StringValue + d.Value("Name")
		      folderList.Append s
		    End If
		  Next
		  
		  Return folderList
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetFilesInFolderGeneric(path As String, list As listbox = Nil, recurse As Boolean = False) As String()
		  
		  Dim fileList() As String
		  Dim f As FolderItem
		  Dim fi As FolderItem
		  Dim last As Integer
		  Dim childFolders() As FolderItem
		  
		  f = FileUtils.RelativePathToFolderItem(Folder, path)
		  
		  If Not f.Directory Then Return fileList
		  
		  last = f.Count
		  For i As Integer = 1 To last
		    fi = f.item(i)
		    If Not fi.IsFileVisible Then Continue
		    If fi.Directory Then
		      childFolders.Append fi
		      Continue
		    End If
		    fileList.Append fi.Name
		    If list <> Nil Then
		      list.AddRow fi.Name
		      list.CellTag(list.LastIndex, 0) = path
		    End If
		  Next
		  
		  If recurse Then
		    For i As Integer = 0 To UBound(childFolders)
		      Dim temp() As String
		      temp = GetFilesInFolder(path + childFolders(i).Name + "/", list, recurse)
		      For j As Integer = 0 To UBound(temp)
		        fileList.Append temp(j)
		      Next
		    Next
		  End If
		  
		  Return fileList
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CopyFile(path As String, destFolder As String) As Boolean
		  Dim i, cacheSlots(0) As Integer
		  Dim f, fo As FolderItem
		  Dim found As Boolean
		  
		  destFolder = CleanPath(destFolder)
		  path = CleanPath(path)
		  
		  fo = FileUtils.RelativePathToFolderItem(Folder, destFolder)
		  If fo = Nil Or Not fo.Exists Then
		    ErrorCode = 6
		    ErrorString = "Could not find folder."
		    Return False
		  End If
		  
		  If Not fo.Directory Then
		    ErrorCode = 6
		    ErrorString = "Destination folder is a regular file."
		    Return False
		  End If
		  i = 1
		  f = FileUtils.RelativePathToFolderItem(Folder, path)
		  If f = Nil Or Not f.Exists Then
		    ErrorCode = 8
		    ErrorString = "Could not find file."
		    Return False
		  End If
		  
		  f.CopyFileTo fo
		  
		  If f.LastErrorCode <> 0 Then
		    If f.Exists And fo.Exists Then // File with that name already in destination folder
		      ErrorCode = 13
		      ErrorString = "Destination file exists."
		    Else
		      ErrorCode = 12
		      ErrorString = "Could not copy file."
		    End If
		    Return False
		  End If
		  Return True
		  
		End Function
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

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			Return App.MainPreferences.GetValueB(Prefs.kUseOldFolderDB)
			End Get
		#tag EndGetter
		Protected UsingOldFolderDB As Boolean
	#tag EndComputedProperty


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
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
