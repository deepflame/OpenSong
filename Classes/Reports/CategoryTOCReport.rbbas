#tag Class
Protected Class CategoryTOCReport
Inherits TOCReport
	#tag Method, Flags = &h0
		Sub AddSong(SongName As String)
		  Songs.Append SongName
		  ThemesProcessed = False
		  SongsProcessed = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear()
		  ThemesProcessed = False
		  SongsProcessed = False
		  ClearArray(Songs)
		  ClearArray(ThemesList)
		  ClearArray(Categorized)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Clear
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Generate(Zoom As Double = 1.0, MyPages As Group2D = Nil) As Boolean
		  Dim Status As Boolean
		  
		  App.DebugWriter.Write _
		  StringUtils.Sprintf("CategoryTOCReport.Generate: Enter:  Zoom = %6.4f", Zoom)
		  
		  If MyPages = Nil Then MyPages = Pages
		  
		  If Not ThemesProcessed Then
		    Status = ProcessThemes
		    If Not Status Then
		      App.DebugWriter.Write "CategoryTOCReport.Generate: Exit (ProcessThemes failed)."
		      Return Status
		    End If
		  End If
		  
		  Indent = 72 * .25 // One quarter inch indent
		  CategoryAlign = "left"
		  ReportName = App.T.Translate("print/categorized/@caption")
		  
		  App.MouseCursor = WatchCursor
		  Status = PrintTOCPages(Categorized, MyPages, Zoom)
		  App.MouseCursor = Nil
		  If Not Status Then
		    App.DebugWriter.Write "CategoryTOCReport.Generate: PrintTOCPages failed", 1
		  End If
		  App.DebugWriter.Write "CategoryTOCReport.Generate: Exit"
		  Return Status
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Prepare() As Boolean
		  //
		  // Go through all the steps to take the input data (list of songs)
		  // and get it ready for Generate
		  //
		  // Ed Palmer, 4 Feb 2006
		  //
		  
		  Dim status As Boolean
		  App.DebugWriter.Write "CategoryTOCReport.Prepare: Enter"
		  
		  If Not SongsProcessed Then
		    Status = ProcessSongs
		    If Not Status Then
		      App.DebugWriter.Write "CategoryTOCReport.Prepare: Exit: ProcessSongs failed."
		      Return Status
		    End If
		  End If
		  
		  If Not ThemesProcessed Then
		    Status = ProcessThemes
		    If Not Status Then
		      App.DebugWriter.Write "CategoryTOCReport.Prepare: Exit: ProcessThemes failed."
		      Return Status
		    End If
		  End If
		  
		  App.DebugWriter.Write "CategoryTOCReport.Prepare: Exit"
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ProcessSongs() As Boolean
		  //
		  // Process the Songs array into the Themes array
		  //
		  // Code from PrintWindow.PrintCATTOC in 0.9.9
		  //
		  //++EMP 09/05
		  // Documenting what's here -- code changes from original 0.9.9 code are shown in-line
		  //
		  // This is the head routine for printing a CATegorized Table Of Contents
		  // In V0.9.9 this was PrintWindow.PrintCATTOC
		  //
		  Dim i, j, songCount As Integer
		  Dim curr As XmlDocument
		  Dim f As FolderItem
		  Dim themes, theme As String
		  
		  App.DebugWriter.Write "CategoryTOCReport.ProcessSongs: Enter"
		  
		  If UBound(Songs) <= 0 Then Return False // Nothing to do
		  //
		  // On entry, Songs array is set up with a list of all the songs to be considered.
		  //
		  songCount = UBound(Songs) + 1
		  
		  App.MouseCursor = WatchCursor  //We may be here awhile...
		  ClearArray(ThemesList)
		  ThemesProcessed = False
		  SongsProcessed = False
		  '++JRC Add status message
		  ProgressWindow.lbl_status.Text =  App.T.Translate("progress_status/process_songs") + "..."
		  '--
		  
		  ProgressWindow.SetMaximum(songCount) 'EMP 09/05
		  ProgressWindow.SetProgress(0)
		  ProgressWindow.CanCancel True
		  ProgressWindow.Show
		  //
		  // This pulls out the themes from each song in Songs
		  // The themes string has all the themes from the song in
		  // Songs(i), separated by semi-colons.
		  // It then splits the themes string and appends new
		  // entries to Songs array in the form THEME|||SONGNAME
		  //
		  For i = 0 To songCount - 1
		    If Not ProgressWindow.SetProgress(i) Then // User cancelled
		      ClearArray ThemesList
		      SongsProcessed = False
		      ProgressWindow.Close
		      Return SongsProcessed
		    End If
		    If i mod 10 = 0 Then App.DebugWriter.Write "CategoryTOCReport.ProcessSongs on song "+ str(i) + ", " + Songs(i)
		    f = MainWindow.Songs.GetFile(Songs(i))
		    If f <> Nil And f.Exists Then
		      curr = SmartML.XDocFromFile(f)
		      If curr <> Nil Then
		        themes = SmartML.GetValue(curr.DocumentElement, "theme")
		        themes = themes + ";" + SmartML.GetValue(curr.DocumentElement, "alttheme", False)
		        For j = 1 To CountFields(themes, ";")
		          theme = Trim(NthField(themes, ";", j))
		          If Len(theme) > 0 Then
		            ThemesList.Append theme + "|||" + SmartML.GetValue(curr.DocumentElement, "title")
		          End If
		        Next j
		      Else
		        App.DebugWriter.Write "CategoryTOCReport.ProcessSongs: Error loading " + f.AbsolutePath
		        InputBox.Message App.T.Translate("errors/bad_format", f.AbsolutePath)
		      End If
		    End if
		    
		  Next i
		  
		  ProgressWindow.Close
		  App.MouseCursor = Nil
		  SongsProcessed = True
		  App.DebugWriter.Write "CategoryTOCReport.ProcessSongs: Exit"
		  Return SongsProcessed
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ProcessThemes() As Boolean
		  //
		  // Take the ThemesList array and convert it into the
		  // Categorized array to send to PrintTOCPages
		  //
		  // Mostly taken from V0.9.9's PrintWindow.PrintCATTOC
		  //
		  //
		  Dim i As Integer
		  Dim cat, lastCat As String
		  Dim division As Integer
		  
		  App.DebugWriter.Write "CategoryTOCReport.ProcessThemes: Enter"
		  // First, make sure we're ready to go
		  
		  If ThemesProcessed Then Return True // We don't need to do this over.
		  
		  If Not SongsProcessed Then
		    If Not ProcessSongs Then Return False
		  End If
		  
		  App.MouseCursor = WatchCursor
		  
		  // Invalidate the Categorized array
		  ClearArray(Categorized)
		  ThemesProcessed = False
		  
		  ProgressWindow.SetMaximum(UBound(ThemesList) + 1)
		  ProgressWindow.SetProgress(0) 'EMP 09/05
		  ProgressWindow.Show
		  
		  '++JRC Heapsort now has it's own ProgressWindow 
		  'lets just show the status of the Theme Processing in this function
		  // Sort the themes
		  
		  Heapsort ThemesList
		  '++JRC
		  ProgressWindow.lbl_status.Text =  App.T.Translate("progress_status/process_themes") + "..."
		  '--
		  If Not ProgressWindow.SetProgress(UBound(ThemesList) / 2) Then // User has requested to cancel
		    ClearArray Categorized
		    ThemesProcessed = False
		    ProgressWindow.Close
		    Return ThemesProcessed
		  End If
		  //
		  // Every time a new category is found, insert a header
		  // row that is "-CATEGORY" and modify
		  // the elements that follow (i.e., songs that are part of the category)
		  // to be only the song name.
		  //
		  
		  lastCat = ""
		  For i = 0 To UBound(ThemesList)
		    division = InStr(ThemesList(i), "|||")
		    cat = Left(ThemesList(i), division-1)
		    If cat = "" Then cat = "Other"
		    If cat <> lastCat Then
		      Categorized.Append "-" + cat
		      lastCat = cat
		    End If
		    Categorized.Append Mid(ThemesList(i), division+3)
		    ProgressWindow.SetProgress(Ubound(ThemesList) /2 + i * 2)
		  Next i
		  
		  ProgressWindow.Close
		  App.MouseCursor = Nil
		  ThemesProcessed = True
		  App.DebugWriter.Write "CategoryTOCReport.ProcessThemes: Exit"
		  Return ThemesProcessed
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		#tag Note
			The final categorized list, created by processing Themes().  This array is
			in the form needed for TOCReport.PrintTOCPages
			
		#tag EndNote
		Protected Categorized() As String
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			List of songs to examine for the report
			
		#tag EndNote
		Protected Songs() As String
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Indicates if the Songs array has been transformed into the Themes array
			
		#tag EndNote
		Protected SongsProcessed As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			The Songs array, but manipulated so each entry is
			THEME|||SONG
			
		#tag EndNote
		Protected ThemesList() As String
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Indicates if the Themes array has been processed  into the Categorized array
			
		#tag EndNote
		Protected ThemesProcessed As Boolean
	#tag EndProperty


End Class
#tag EndClass
