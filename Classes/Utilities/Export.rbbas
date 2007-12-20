#tag Class
Protected Class Export
	#tag Method, Flags = &h0
		 Shared Function CreateInstance() As Boolean
		  // Creates a new instance of the Export class together with a modal dialog to handle the action.
		  Dim ret As Boolean = False
		  
		  If Nil = Instance Then
		    Instance = new Export
		    ret = True
		  End If
		  
		  return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub GetInstance(ByRef Instance As Export)
		  // Returns the Export object. If there's no instance a NilObjectException is raised
		  
		  If Nil <> Instance Then
		    Instance = Instance
		  Else
		    Dim err As new NilObjectException
		    Raise err
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function DestroyInstance() As Boolean
		  // Destroys an existing instance of Export.
		  Dim ret As Boolean = False
		  
		  If Nil <> Instance Then
		    Instance = Nil
		    ret = True
		  End If
		  
		  return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Constructor()
		  // first initialize local variables that will then be used by the ExportDialog Window
		  DialogWindow = new ExportDialog
		  DialogWindow.myExport = Me
		  DialogWindow.Show
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StartExport()
		  Dim expFolder As FolderItem = new FolderItem(DialogWindow.edt_dest_html_file_folder.Text)
		  
		  If Nil = expFolder Then Exit Sub
		  
		  // Cleanup
		  SourceFolder = Nil
		  DestFolder = Nil
		  While UBound(SourceFileList) >= 0
		    SourceFileList.Remove(UBound(SourceFileList))
		  Wend
		  
		  If DialogWindow.rad_dest_html_file_folder.Value Then
		    StartExportHtmlFileFolder(expFolder)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub StartExportHtmlFileFolder(expFolder As FolderItem)
		  Dim sourceValid As Boolean = True
		  DestFolder = new FolderItem(DialogWindow.edt_dest_html_file_folder.Text)
		  DialogWindow.edt_log.Text = ""
		  
		  If DestFolder = Nil Then
		    LogError("Destination Folder is not valid")
		    Exit Sub
		  End If
		  
		  // build list of songs to export
		  If DialogWindow.rad_source_song.Value Then
		    If Not SourceCurrentSong Then
		      sourceValid = False
		    end if
		  ElseIf DialogWindow.rad_source_folder.Value Then
		    If Not SourceCurrentFolder Then
		      sourceValid = False
		    End If
		  Else
		    If Not SourceAll Then
		      sourceValid = False
		    End If
		  End If
		  
		  If Not sourceValid Then
		    LogError("Export failed, source not available.")
		    Exit Sub
		  End If
		  
		  
		  // Create Destination folders if required
		  If Not DialogWindow.rad_source_song.Value And DialogWindow.chk_dest_html_file_folder_structure.Value Then
		    If Not CreateDestinationFolders Then
		      LogError("Export failed when creating subfolders.")
		      Exit Sub
		    End If
		  End If
		  
		  // Export HTML files
		  If Not CreateDestinationFiles Then
		    LogError("No files have been exported.")
		    Exit Sub
		  End If
		  
		  // Copy stylesheet
		  Dim CSSFile As FolderItem = App.AppFolder.Child("OpenSong Settings").Child("style.css")
		  CSSFile.CopyFileTo(DestFolder)
		  LogInfo("CSS File has been copied.")
		  
		  // Create index
		  If Not DialogWindow.rad_source_song.Value Then
		    If Not CreateIndex Then
		      LogError("Index could not be created.")
		      Exit Sub
		    End If
		  End If
		  
		  LogInfo("Export finished!")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub WriteHTMLIndexHeader(output As TextOutputStream, title As String, cssFile As String)
		  output.WriteLine "<html><head>"
		  output.WriteLine "<meta http-equiv=""Content-type"" content=""text/html;charset=UTF-8"" />"
		  output.WriteLine "<title>" + title + "</title><link rel=""stylesheet"" href=""" + cssFile + """ type=""text/css""/></head>"
		  output.WriteLine "<body><div id=""title"">" + title + "</div><ul id=""song_list"">"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub LogError(text As String)
		  DialogWindow.edt_log.AppendText("Error: " + text + EndOfLine)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub LogInfo(text As String)
		  DialogWindow.edt_log.AppendText(text + EndOfLine)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function WriteHTMLSong(inputFile As FolderItem, outputFolder As FolderItem) As Boolean
		  If inputFile = Nil Or outputFolder = Nil Or Not outputFolder.Directory Then
		    Return False
		  End If
		  
		  Try
		    Dim outputFile As FolderItem = outputFolder.Child(MakeSafeURLName(inputFile.Name, False) + ".html")
		    Dim songFileOutput As TextOutputStream = outputFile.CreateTextFile
		    Dim songXML As XmlDocument = SmartML.XDocFromFile(inputFile)
		    
		    songFileOutput.Write(SongML.ToHTML(songXML.DocumentElement))
		    Return True
		    
		  Catch
		    LogError("WriteHTMLSong failed.")
		    Return False
		  End
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub WriteHTMLIndexFooter(output As TextOutputStream)
		  output .WriteLine "</ul><p><a class=""opensong"" href=""http://www.opensong.org/"">" _
		  + App.T.Translate("about/created_with_opensong") + "</a></p>"
		  output .Write "</body></html>"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SourceCurrentSong() As Boolean
		  Dim retval As Boolean = False
		  Dim i As Integer
		  
		  // get the selected song's folderItem
		  SourceFolder = New FolderDB(App.DocsFolder.Child("Songs"))
		  For i = 0 To MainWindow.lst_songs_songs.ListCount
		    If MainWindow.lst_songs_songs.Selected(i) Then
		      SourceFileList.Append( _
		      SourceFolder.GetFile( _
		      MainWindow.lst_songs_songs.CellTag(i, 0).StringValue + "/" + _
		      MainWindow.lst_songs_songs.List(i) ))
		      Exit For i
		    End If
		  Next
		  
		  If UBound(SourceFileList) < 0 Or Nil = SourceFileList(0) Then
		    LogError("Current song's index is not valid or file does not exist.")
		  Else
		    LogInfo("Current Song set as source: " + SourceFileList(0).AbsolutePath + ".")
		    retval = True
		  End If
		  
		  Return retval
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SourceCurrentFolder() As Boolean
		  Dim retval As Boolean = False
		  Dim FolderNames() As String = MainWindow.Songs.GetFolders
		  Dim Path As String
		  
		  SourceFolder = MainWindow.Songs
		  
		  // Verify if all folders or the main folder is selected
		  If FolderNames(1) = DialogWindow.edt_source_folder.Text Then
		    // All Folders
		    Return SourceAll
		  ElseIf FolderNames(2) = DialogWindow.edt_source_folder.Text Then
		    Path = ""
		  Else
		    Path = DialogWindow.edt_source_folder.Text
		    If Not SourceFolder.GetRootFolder.Child(Path).Exists Then
		      LogError ("Could not find source folder.")
		      Return False
		    End If
		    Path = Path + "/"
		  End If
		  
		  Dim FileNames() As String = SourceFolder.GetFiles(DialogWindow.edt_source_folder.Text)
		  FileNames.Sort
		  
		  For Each FileName As String In FileNames
		    SourceFileList.Append(SourceFolder.GetFile(Path + FileName))
		  Next
		  
		  If Ubound(SourceFileList) > 0 And Nil <> SourceFolder Then
		    LogInfo("Exporting songs from current folder.")
		    retval = True
		  Else
		    LogError("Folder doesn't contain files.")
		  End If
		  
		  Return retval
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SourceAll() As Boolean
		  Dim retval As Boolean = False
		  
		  SourceFolder = New FolderDB(App.DocsFolder.Child("Songs"))
		  
		  Dim FolderNames() As String = SourceFolder.GetFolders()
		  
		  // Some preprocessing, the first two entries aren't used
		  // The third entry is the Main Folder, which is shifted at the end
		  Dim MainFolderName As String = FolderNames(2)
		  FolderNames.Remove(0)
		  FolderNames.Remove(0)
		  FolderNames.Remove(0)
		  FolderNames.Sort
		  FolderNames.Append(MainFolderName)
		  
		  // we have to go recursively through all folders
		  For Each FolderName As String in FolderNames
		    Dim FileNames() As String = SourceFolder.GetFiles(FolderName)
		    FileNames.Sort
		    
		    For Each FileName As String In FileNames
		      Dim File As FolderItem = SourceFolder.GetFile(FolderName + "/" + FileName)
		      // Append File if it exists and is valid XML
		      If File <> Nil Then
		        If Nil <> SmartML.XDocFromFile(File) Then
		          SourceFileList.Append(File)
		        End If
		      End If
		    Next
		  Next
		  
		  If Ubound(SourceFileList) > 0 And Nil <> SourceFolder Then
		    LogInfo("Exporting songs from folder " + SourceFolder.GetRootFolder.AbsolutePath)
		    retval = True
		  Else
		    LogError("Root folder doesn't contain files.")
		  End If
		  
		  Return retval
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CreateDestinationFolders() As Boolean
		  Dim FolderList() As String
		  
		  Dim SourceFolderLength As Integer = Len(SourceFolder.GetRootFolder.AbsolutePath)
		  
		  For Each SourceFile As FolderItem In SourceFileList
		    Dim FullFileName As String = Mid(SourceFile.AbsolutePath, SourceFolderLength + 1)
		    FullFilename = ReplaceAll(FullFilename, "\", "/") 'For Win32
		    
		    Dim FolderName() As String = Split(FullFileName, "/")
		    
		    If UBound(FolderName) > 0 Then
		      Dim CurrentFolder As FolderItem = DestFolder
		      For i As Integer = 0 To UBound(FolderName) - 1
		        Dim tempString As String = FolderName(i)
		        tempString = MakeSafeURLName(tempString, False)
		        CurrentFolder = CurrentFolder.Child(tempString)
		        If Not CurrentFolder.Exists Then
		          CurrentFolder.CreateAsFolder()
		        End If
		      Next
		    End If
		  Next
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CreateDestinationFiles() As Boolean
		  Dim exported As Boolean = False
		  
		  // go through all input Files
		  For Each inputFile As FolderItem In SourceFileList
		    
		    // Verify that the destination folder has been created (dest folder is URL encoded)
		    // TODO: handle nesting depth > 1
		    Dim OutputFolderName As String = ""
		    Dim OutputFolder As FolderItem = DestFolder
		    Dim CssFile As String = "style.css"
		    
		    // Set correct output folder if required
		    If                  inputFile.Parent.AbsolutePath <> SourceFolder.GetRootFolder.AbsolutePath _
		      And DialogWindow.chk_dest_html_file_folder_structure.Value _
		      And Not DialogWindow.rad_source_song.Value _
		      Then
		      CssFile = "../" + CssFile
		      OutputFolderName = inputFile.Parent.Name
		      OutputFolderName = MakeSafeURLName(OutputFolderName, false)
		      OutputFolder = DestFolder.Child(OutputFolderName)
		      If Not OutputFolder.Exists Or Not OutputFolder.Directory Then
		        LogError("Output Folder " + OutputFolderName + " does not exist.")
		        Continue
		      End If
		    End If
		    
		    // Write HTML File
		    Dim outputFileName As String = MakeSafeURLName(inputFile.Name, false) + ".html"
		    Dim outputFile As FolderItem = OutputFolder.Child(outputFileName)
		    Dim outputFileStream As TextOutputStream = outputFile.CreateTextFile
		    Dim SongXML As XmlDocument = SmartML.XDocFromFile(inputFile)
		    
		    outputFileStream.Write(SongML.ToHTML(SongXML.DocumentElement, CssFile))
		    outputFileStream.Close
		    LogInfo(outputFile.AbsolutePath + " has been written.")
		    exported = True
		  Next
		  
		  Return exported
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CreateIndex() As Boolean
		  Dim retval As Boolean = False
		  Dim TopIndexFile As FolderItem = DestFolder.Child("index.html")
		  Dim TopIndexOStream As TextOutputStream = TopIndexFile.CreateTextFile()
		  
		  WriteHTMLIndexHeader(TopIndexOStream, App.T.Translate("songs_mode/songs/@caption"), "style.css")
		  
		  // Create subfolder index files if needed
		  Dim SubIndexFileList() As FolderItem
		  Dim SubIndexOStreamList() As TextOutputStream
		  Dim SourceFolderLength As Integer = Len(SourceFolder.GetRootFolder.AbsolutePath)
		  
		  If DialogWindow.chk_dest_html_file_folder_sub_index.Value Then
		    // Create sub indices
		    If DialogWindow.chk_dest_html_file_folder_structure.Value Then
		      // If subfolders exist, place index files in subfolders
		      Dim FirstMainFolderFile As Boolean = True
		      For Each SourceFile As FolderItem In SourceFileList
		        Dim FullFileName As String = Mid(SourceFile.AbsolutePath, SourceFolderLength + 1)
		        FullFilename = ReplaceAll(FullFilename, "\", "/") 'For Win32
		        
		        Dim FolderName() As String = Split(FullFileName, "/")
		        
		        If UBound(FolderName) > 0 Then
		          Dim SubIndexFile As FolderItem = DestFolder
		          Dim CssPrefix As String = ""
		          
		          For i As Integer = 0 To UBound(FolderName) - 1
		            Dim tempString As String = FolderName(i)
		            tempString = MakeSafeURLName(tempString, False)
		            SubIndexFile = SubIndexFile.Child(tempString)
		            CssPrefix = CssPrefix + "../"
		          Next
		          
		          If Not SubIndexFile.Exists Then
		            LogError("Folder " + SubIndexFile.AbsolutePath + " for index file missing.")
		            Continue
		          End If
		          
		          SubIndexFile = SubIndexFile.Child("index.html")
		          
		          // Check if the file is already created in our index
		          Dim indexNr As Integer = -1
		          For i As Integer = 0 To UBound(SubIndexFileList)
		            If SubIndexFileList(i).AbsolutePath = SubIndexFile.AbsolutePath Then
		              indexNr = i
		              Exit For i
		            End If
		          Next
		          
		          If -1 = indexNr Then
		            // Add entry if we found a new item
		            SubIndexFileList.Append(SubIndexFile)
		            SubIndexOStreamList.Append(SubIndexFile.CreateTextFile)
		            indexNr = UBound(SubIndexFileList)
		            WriteHTMLIndexHeader(SubIndexOStreamList(indexNr), SubIndexFile.Parent.Name, CssPrefix + "style.css")
		            // Update top index with this index
		            Dim indexLocation As String = ReplaceAll(Mid(SubIndexFile.AbsolutePath, SourceFolderLength), "\", "/")
		            WriteHTMLIndexEntry(TopIndexOStream, indexLocation, "Index: /" + indexLocation)
		          End If
		          
		          If indexNr >= 0 Then
		            // Add this file to its corresponding index
		            WriteHTMLIndexEntry(SubIndexOStreamList(indexNr), SourceFile.Name + ".html", SourceFile.Name)
		          End If
		        Else
		          If FirstMainFolderFile Then
		            FirstMainFolderFile = False
		            TopIndexOStream.WriteLine("<br><br>")
		          End If
		          
		          // File in top folder - add to Top index
		          WriteHTMLIndexEntry(TopIndexOStream, SourceFile.Name + ".html", SourceFile.Name)
		        End If
		      Next
		    Else
		      // No subfolders created - create sub index files as index_<folder>.html
		      Dim FirstMainFolderFile As Boolean = True
		      For Each SourceFile As FolderItem In SourceFileList
		        Dim FullFileName As String = Mid(SourceFile.AbsolutePath, SourceFolderLength + 1)
		        FullFilename = ReplaceAll(FullFilename, "\", "/") 'For Win32
		        
		        Dim FolderName() As String = Split(FullFileName, "/")
		        
		        If UBound(FolderName) > 0 Then
		          Dim Suffix As String = FolderName(0)
		          Dim SubIndexFile As FolderItem = DestFolder
		          
		          For i As Integer = 1 To UBound(FolderName) - 1
		            Dim tempString As String = FolderName(i)
		            tempString = MakeSafeURLName(tempString, False)
		            Suffix = Suffix + "_" + tempString
		          Next
		          
		          SubIndexFile = SubIndexFile.Child("index_" + Suffix + ".html")
		          
		          // Check if the file is already created in our index
		          Dim indexNr As Integer = -1
		          For i As Integer = 0 To UBound(SubIndexFileList)
		            If SubIndexFileList(i).AbsolutePath = SubIndexFile.AbsolutePath Then
		              indexNr = i
		              Exit For i
		            End If
		          Next
		          
		          If -1 = indexNr Then
		            // Add entry if we found a new item
		            SubIndexFileList.Append(SubIndexFile)
		            SubIndexOStreamList.Append(SubIndexFile.CreateTextFile)
		            indexNr = UBound(SubIndexFileList)
		            WriteHTMLIndexHeader(SubIndexOStreamList(indexNr), Suffix, "style.css")
		            // Update top index with this index
		            WriteHTMLIndexEntry(TopIndexOStream, SubIndexFile.Name, "Index: /" + ReplaceAll(Suffix, "_", "/"))
		          End If
		          
		          If indexNr >= 0 Then
		            // Add this file to its corresponding index
		            WriteHTMLIndexEntry(SubIndexOStreamList(indexNr), SourceFile.Name + ".html", SourceFile.Name)
		          End If
		        Else
		          If FirstMainFolderFile Then
		            FirstMainFolderFile = False
		            TopIndexOStream.WriteLine("<br><br>")
		          End If
		          
		          // File in top folder - add to Top index
		          WriteHTMLIndexEntry(TopIndexOStream, SourceFile.Name + ".html", SourceFile.Name)
		        End If
		      Next
		    End If
		    
		    // Close indices
		    For Each oStream As TextOutputStream In SubIndexOStreamList
		      WriteHTMLIndexFooter(oStream)
		      oStream.Close
		    Next
		    
		    retval = True
		  Else
		    // Only one top index file
		    If DialogWindow.chk_dest_html_file_folder_structure.Value Then
		      // Files are in subfolders
		      For Each SourceFile As FolderItem In SourceFileList
		        Dim FileName As String = ReplaceAll(Mid(SourceFile.AbsolutePath, SourceFolderLength + 1), "\", "/")
		        WriteHTMLIndexEntry(TopIndexOStream, FileName + ".html", FileName)
		      Next
		    Else
		      // All files are in top folder
		      For Each SourceFile As FolderItem In SourceFileList
		        WriteHTMLIndexEntry(TopIndexOStream, SourceFile.Name + ".html", SourceFile.Name)
		      Next
		    End If
		    retval = True
		  End If
		  
		  WriteHTMLIndexFooter(TopIndexOStream)
		  TopIndexOStream.Close
		  
		  Return retval
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub WriteHTMLIndexEntry(output As TextOutputStream, path As String, name As String)
		  output.WriteLine "<li><a href=""" + MakeSafeURLName(path, True)+ """>" + name + "</a></li>"
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Description
		This class implements the logic to export one song, song folder or all songs into an external format (currently only HTML is supported).
		The user settings are kept in a Dialog Window.
	#tag EndNote


	#tag Property, Flags = &h1
		Protected Shared Instance As Export = Nil
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected DialogWindow As ExportDialog = Nil
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SourceFolder As FolderDB
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SourceFileList() As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected DestFolder As FolderItem = Nil
	#tag EndProperty


	#tag Constant, Name = SOURCE_CURRENT_SONG, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SOURCE_CURRENT_FOLDER, Type = Double, Dynamic = False, Default = \"1\r", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SOURCE_ALL, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DESTINATION_HTML_FILE_FOLDER, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
