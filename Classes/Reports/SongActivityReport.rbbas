#tag Class
Protected Class SongActivityReport
Inherits Report
	#tag Method, Flags = &h0
		Sub AddSong(Song As LogEntry)
		  Songs.Append Song
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear()
		  //
		  // Clear out all the songs
		  //
		  // Ed Palmer, January 2006
		  Dim i As Integer
		  App.DebugWriter.Write "LeadSheetReport.Clear: Enter"
		  For i = 1 To UBound(Songs)
		    Songs.Remove 0
		  Next i
		  App.DebugWriter.Write "LeadSheetReport.Clear: Exit"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Generate(Zoom As Double = 1.0, MyPages As Group2D = Nil) As Boolean
		  //
		  // This method is mostly taken from PrintWindow's souce code
		  // for PrintLeadSheets.  It's moved here so we don't
		  // open the PrintWindow before everything is ready
		  // to preview.
		  //
		  // Ed Palmer, January 2006
		  //
		  App.DebugWriter.Write "SongActivityReport.Generate: Enter, Zoom = " + str(Zoom)
		  
		  Dim i as Integer
		  Dim j As Integer
		  Dim f As FolderItem
		  Dim s As XmlDocument
		  Dim Song As Group2D
		  Dim pic As Picture
		  Dim ProgressWindowVisible As Boolean = False
		  Dim SongsWithErrors As New XmlDocument
		  Dim SongWithErrors As XmlNode
		  Dim ErrorChild As XmlNode
		  
		  Dim RunningPage As Integer = 1
		  
		  Dim Page As Group2D
		  Dim l, firstBase, runningBase, bottom, lineCount, leftEdge As Integer
		  Dim LastHeadingIndex As Integer // Position in Pages group of last heading for widow control
		  Dim LastHeadingLine As Integer
		  Dim x, y As Integer
		  Dim Height, Width As Integer
		  Dim NewPageNeeded As Boolean
		  
		  //
		  // If MyPages is Nil, then use the Pages object from the superclass
		  //
		  
		  If MyPages = Nil Then MyPages = Pages
		  
		  pic = NewPicture(Round(PrintableWidth * 72 * Zoom), Round(PrintableHeight * 72 * Zoom), 32)
		  
		  //Clear out the arrays
		  
		  i = MyPages.Count - 1
		  while i > -1
		    MyPages.Remove i
		    i = i - 1
		  wend
		  
		  // Build the pages for the songs
		  // Show progress window if we have a few
		  If UBound(Songs) > 100 Then
		    '++JRC Add status message
		    ProgressWindow.lbl_status.Text =  App.T.Translate("progress_status/lead_sheets") + "..."
		    '--
		    
		    ProgressWindow.SetMaximum(UBound(Songs))
		    ProgressWindow.SetProgress 0
		    ProgressWindow.ShowWithin MainWindow
		    ProgressWindowVisible = True
		    ProgressWindow.CanCancel True
		    App.MouseCursor = System.Cursors.Wait
		  End If
		  
		  'x = 0 // Graphics object passed in will be printable area only
		  'y = 0 // Old code had to offset for margins.
		  
		  Height = pic.Graphics.Height
		  Width = pic.Graphics.Width
		  NewPageNeeded = True
		  
		  For i = 1 to UBound(Songs)
		    If ProgressWindowVisible Then
		      If Not ProgressWindow.SetProgress(i) Then
		        ProgressWindow.Close
		        Return False
		      End If
		      If ProgressWindowVisible Then ProgressWindow.SetStatus Songs(i).Title
		      
		    End If
		    
		    If NewPageNeeded Then
		      If Page <> Nil Then MyPages.Append Page
		      Page = New Group2D
		      NewPageNeeded = False
		      firstBase = y + Draw_Header(pic.Graphics, 0, 0, width, zoom, Page)
		      leftEdge = 0
		      App.DebugWriter.Write "SongML::Draw: Back from DrawHeader, returned val = " + str(firstBase)
		      runningbase = firstBase + 10
		      LastHeadingIndex = -1
		    End If
		    
		    runningBase = Draw_LogEntry(i, pic.Graphics, x, runningBase, Zoom, RunningPage, Page)
		    
		    'If returned value is greater than the hieght of the page,
		    'flag for a new page, and roll-back counter to the
		    'log entry that put us over
		    If runningBase > Height Then
		      NewPageNeeded = True
		      i = i - 1
		    End If
		    
		    // Unroll the returned Group2D into individual pages
		    'For j = 0 to Song.Count - 1
		    'MyPages.Append Song.Item(j)
		    'Next
		    'If Sequential Then RunningPage = RunningPage + Song.Count
		    
		    
		  Next
		  
		  // If there's a partial page, add it to the pages
		  If Page <> Nil Then
		    If Page.Count > 0 Then MyPages.Append Page
		  End If
		  
		  Scale = Zoom
		  
		  If ProgressWindowVisible Then
		    ProgressWindow.close
		    App.MouseCursor = Nil
		  End If
		  
		  App.DebugWriter.Write "SongActivityReport.Generate: Pages.Count = " + str(MyPages.Count)
		  App.DebugWriter.Write "SongActivityReport.Generate: Exit"
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPage(PageNumber As Integer, Zoom As Double) As Object2D
		  //
		  // Returns a Object2D corresponding to a particular page, or Nil if out of bounds
		  //
		  // Ed Palmer, January 2006
		  App.DebugWriter.Write "LeadSheetReport.GetPage: Enter/Exit, Page, Zoom = " + str(PageNumber) + ", " + str(zoom)
		  If PageNumber < 1 Or PageNumber > Pages.Count + 1 Then
		    Return Nil
		  Else
		    Pages.Item(PageNumber - 1).Scale = Zoom
		    Return Pages.Item(PageNumber - 1)
		  End If
		  //++
		  // 2-1-06...this was what it started out as.  Unfortunately, the PrintWindow
		  // kept crashing.  Hypothesis: Generate was pulling an object right out from
		  // underneath a variable that had a pointer to it in PrintWindow (it wasn't PageObj,
		  // because when I removed the references to it in PrintWindow the problem was
		  // still there.
		  //
		  // The other issue that cropped up was changing pagination, apparently due to
		  // rounding in the scaling calculations courtesy of RB's string handling.  To calculate
		  // string height and width, the graphics object is used, which only supports Integer
		  // font sizes.  However, the StringShape has Double font sizes.  What fun.
		  //
		  // For now, just set the scale property to the zoom and accept some scaling
		  // errors.  Thus, the "Else" clause in the above If.
		  // EMP :-(
		  //--
		  
		  'If Scale = Zoom Then // This is easy
		  'App.DebugWriter.Write "LeadSheetReport.GetPage: Exit with Scale = Zoom"
		  'Return Pages.Item(PageNumber - 1)
		  'Else // It's not so easy
		  'If Generate(Zoom) Then
		  'App.DebugWriter.Write "LeadSheetReport.GetPage: Exit after Generate"
		  'Return Pages.Item(PageNumber - 1)
		  'Else // Something went wrong, assume Pages isn't valid anymore
		  'Return Nil
		  'End If
		  'End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSong(Index As Integer = 1) As LogEntry
		  //
		  // Returns the song at a specific index in the Songs
		  //
		  // NOTE: Using 1-based here, but array is 0-based
		  //
		  // Ed Palmer, January 2006
		  //
		  If Index < 1 Or Index > UBound(Songs) Then Return Nil
		  
		  Return Songs(Index - 1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSongCount() As Integer
		  //
		  // Return the number of songs currently in the object
		  //
		  // Ed Palmer, January 2006
		  //
		  
		  Return UBound(Songs) + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveSong(Index As Integer = 1)
		  //
		  // Removes the song at the specified index
		  // from Songs array.
		  //
		  // NOTE: Index is 1-based
		  //
		  // Ed Palmer, January 2006
		  //
		  If Index < 1 Or Index > UBound(Songs) + 1 Then Return
		  Songs.Remove Index - 1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Setup() As Boolean
		  App.DebugWriter.Write "LeadSheetReport.Setup: Enter"
		  ps = App.GetPrinterSetup
		  If ps = Nil Then
		    ps = App.GetPrinterSetup(True, Window(0))
		    If ps = Nil Then Return False // User doesn't want to print
		  End If
		  Sequential = False
		  Scale = 1.0
		  Clear
		  Pages = New Group2D
		  PrintableWidth = CalcPrintableWidth
		  PrintableHeight = CalcPrintableHeight
		  App.DebugWriter.Write "LeadSheetReport.Setup: Exit"
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Draw_LogEntry(index as Integer, g As Graphics, x as Integer, y as Integer, zoom As Double, StartPage As Integer = 1, Page As Group2D) As Integer
		  Dim l, firstBase, runningBase, bottom, lineCount, leftEdge, i As Integer
		  Dim Height, Width As Integer
		  Dim Entry As Group2D
		  Dim LastHeadingIndex As Integer // Position in Pages group of last heading for widow control
		  Dim LastHeadingLine As Integer
		  Dim lineObj As CurveShape
		  Dim linewidth,  lineheight As Integer
		  Dim MaxAscent As Double
		  Dim MaxHeight As Double
		  Dim tempFont As FontFace
		  Dim date As String
		  Dim time As String
		  Dim Activity As String
		  Dim Title As String
		  Dim Author As String
		  Dim CCLI As String
		  Dim HasChords As String
		  
		  tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "lyrics")
		  g.TextFont = tempFont.Name
		  tempFont.Size = Round(tempFont.Size * zoom)
		  'g.Italic = tempFont.Italic
		  g.ForeColor = tempFont.ForeColor
		  
		  
		  tempFont.OntoGraphics g
		  
		  Height = g.Height
		  Width = g.Width
		  
		  
		  'Top of table
		  lineObj = New CurveShape
		  lineobj.x = x
		  lineobj.y = y
		  lineobj.x2 = x + width
		  lineobj.y2 = y
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  lineheight = y + g.TextHeight
		  
		  
		  'Log Entry descriptions in bold
		  tempFont.Bold = true
		  
		  date = "Date"
		  Time = "Time"
		  Activity = "Activity"
		  Title = "Title"
		  Title = Songs(0).Title
		  
		  
		  'Left side of table
		  lineObj = New CurveShape
		  lineobj.x = x
		  lineobj.y = y
		  lineobj.x2 = x
		  lineobj.y2 =y + (g.TextHeight * 4)
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  'Date
		  Page.Append GraphicsX.DrawStringShapeV(date, x + (g.StringWidth(date) / 2) + 1,  lineheight-1, tempFont, 1) //font has already been scaled
		  
		  'set Separator position to Max Date String length
		  'so that the table lines up
		  linewidth = x + g.StringWidth(MaxDateStr)
		  
		  'separator
		  lineObj = New CurveShape
		  lineobj.x = linewidth
		  lineobj.y = y
		  lineobj.x2 = linewidth
		  lineobj.y2 = y + g.TextHeight
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  'Time
		  Page.Append GraphicsX.DrawStringShapeV(Time, linewidth + (g.StringWidth(time) / 2) + 1,  lineheight-1, tempFont, 1) //font has already been scaled
		  
		  'set Separator position to Max Time String length
		  'so that the table lines up
		  linewidth = linewidth + g.StringWidth(MaxTimeStr)
		  
		  'separator
		  lineObj = New CurveShape
		  lineobj.x = linewidth
		  lineobj.y = y
		  lineobj.x2 = linewidth
		  lineobj.y2 = y + g.TextHeight
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  'Activity
		  Page.Append GraphicsX.DrawStringShapeV(Activity, linewidth + (g.StringWidth(Activity) / 2) + 1,  lineheight-1, tempFont, 1) //font has already been scaled
		  
		  'set Separator position to Max Activity String length
		  'so that the table lines up
		  linewidth = linewidth + g.StringWidth(MaxActivityStr)
		  
		  'separator
		  lineObj = New CurveShape
		  lineobj.x = linewidth
		  lineobj.y = y
		  lineobj.x2 = linewidth
		  lineobj.y2 = y + g.TextHeight
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  'Title
		  Page.Append GraphicsX.DrawStringShapeV(Title, linewidth + (g.StringWidth(Title) / 2) + 1,  lineheight-1, tempFont, 1) //font has already been scaled
		  
		  'set Separator position to Max Title String length
		  'so that the table lines up
		  linewidth = linewidth + (g.StringWidth(MaxTitleStr) * MaxTitleLen)
		  
		  'Right side of table
		  lineObj = New CurveShape
		  lineobj.x = x + width
		  lineobj.y = y
		  lineobj.x2 = x + width
		  lineobj.y2 =y +  (g.TextHeight * 4)
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  'spearator
		  lineObj = New CurveShape
		  lineobj.x = x
		  lineobj.y = lineheight
		  lineobj.x2 = x + width
		  lineobj.y2 = lineheight
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  lineheight = lineheight + g.TextHeight
		  
		  'Log Entry not bolded
		  tempFont.Bold = false
		  date = Songs(index).DateAndTime.ShortDate
		  Time = Songs(index).DateAndTime.ShortTime
		  Activity =  NthField(App.T.Translate("song_activity/description"), "|", Songs(index).Description)
		  Title = Songs(index).Title
		  
		  'Date
		  Page.Append GraphicsX.DrawStringShapeV(date, x + (g.StringWidth(date) / 2) + 1,  lineheight-1, tempFont, 1) //font has already been scaled
		  
		  linewidth = x + g.StringWidth(MaxDateStr)
		  
		  'separator
		  lineObj = New CurveShape
		  lineobj.x = linewidth
		  lineobj.y = lineheight - g.TextHeight
		  lineobj.x2 = linewidth
		  lineobj.y2 = lineheight
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  'Time
		  Page.Append GraphicsX.DrawStringShapeV(Time, linewidth + (g.StringWidth(time) / 2) + 1,  lineheight-1, tempFont, 1) //font has already been scaled
		  
		  linewidth = linewidth + g.StringWidth(MaxTimeStr)
		  
		  'separator
		  lineObj = New CurveShape
		  lineobj.x = linewidth
		  lineobj.y = lineheight - g.TextHeight
		  lineobj.x2 = linewidth
		  lineobj.y2 = lineheight
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  'Activity
		  Page.Append GraphicsX.DrawStringShapeV(Activity, linewidth + (g.StringWidth(Activity) / 2) + 1,  lineheight-1, tempFont, 1) //font has already been scaled
		  
		  linewidth = linewidth + g.StringWidth(MaxActivityStr)
		  
		  'separator
		  lineObj = New CurveShape
		  lineobj.x = linewidth
		  lineobj.y = lineheight - g.TextHeight
		  lineobj.x2 = linewidth
		  lineobj.y2 = lineheight
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  'Title
		  Page.Append GraphicsX.DrawStringShapeV(Title, linewidth + (g.StringWidth(Title) / 2) + 1,  lineheight-1, tempFont, 1) //font has already been scaled
		  
		  linewidth = linewidth + (g.StringWidth(MaxTitleStr) * MaxTitleLen)
		  
		  'spearator
		  lineObj = New CurveShape
		  lineobj.x = x
		  lineobj.y = lineheight
		  lineobj.x2 = x + width
		  lineobj.y2 = lineheight
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  lineheight = lineheight + g.TextHeight
		  
		  'Log Entry descriptions in bold
		  tempFont.Bold = true
		  
		  Author = "Author"
		  
		  'Author
		  Page.Append GraphicsX.DrawStringShapeV(Author, x + (g.StringWidth(Author) / 2) + 1,  lineheight-1, tempFont, 1) //font has already been scaled
		  
		  linewidth = x + (g.StringWidth(MaxAuthorStr) * MaxAuthorLen)
		  
		  'separator
		  lineObj = New CurveShape
		  lineobj.x = linewidth
		  lineobj.y = lineheight - g.TextHeight
		  lineobj.x2 = linewidth
		  lineobj.y2 = lineheight
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  CCLI = "CCLI #"
		  
		  'CCLI #
		  Page.Append GraphicsX.DrawStringShapeV(CCLI, linewidth + (g.StringWidth(CCLI) / 2) + 1,  lineheight-1, tempFont, 1) //font has already been scaled
		  
		  linewidth = linewidth + g.StringWidth(MaxCCLIStr)
		  
		  'separator
		  lineObj = New CurveShape
		  lineobj.x = linewidth
		  lineobj.y = lineheight - g.TextHeight
		  lineobj.x2 = linewidth
		  lineobj.y2 = lineheight
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  HasChords = MaxChordsStr
		  
		  'Has Chords
		  Page.Append GraphicsX.DrawStringShapeV(HasChords, linewidth + (g.StringWidth(HasChords) / 2) + 1,  lineheight-1, tempFont, 1) //font has already been scaled
		  
		  linewidth = linewidth + g.StringWidth(MaxChordsStr)
		  
		  'separator
		  lineObj = New CurveShape
		  lineobj.x = x
		  lineobj.y = lineheight
		  lineobj.x2 = x + width
		  lineobj.y2 = lineheight
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  lineheight = lineheight + g.TextHeight
		  
		  'Log Entry not bolded
		  tempFont.Bold = false
		  Author = Songs(index).Author
		  CCLI = Songs(index).CCLISongNumber
		  If Songs(index).HasChords Then
		    HasChords =  App.T.Translate("shared/yes")
		  Else
		    HasChords =  App.T.Translate("shared/no")
		  End If
		  
		  'Author
		  Page.Append GraphicsX.DrawStringShapeV(Author, x + (g.StringWidth(Author) / 2) + 1,  lineheight-1, tempFont, 1) //font has already been scaled
		  
		  linewidth = x + (g.StringWidth(MaxAuthorStr) * MaxAuthorLen)
		  
		  'separator
		  lineObj = New CurveShape
		  lineobj.x = linewidth
		  lineobj.y = lineheight - g.TextHeight
		  lineobj.x2 = linewidth
		  lineobj.y2 = lineheight
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  'CCLI #
		  Page.Append GraphicsX.DrawStringShapeV(CCLI, linewidth + (g.StringWidth(CCLI) / 2) + 1,  lineheight-1, tempFont, 1) //font has already been scaled
		  
		  linewidth = linewidth + g.StringWidth(MaxCCLIStr)
		  
		  'separator
		  lineObj = New CurveShape
		  lineobj.x = linewidth
		  lineobj.y = lineheight - g.TextHeight
		  lineobj.x2 = linewidth
		  lineobj.y2 = lineheight
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  'Has Chords
		  Page.Append GraphicsX.DrawStringShapeV(HasChords, linewidth + (g.StringWidth(HasChords) / 2) + 1,  lineheight-1, tempFont, 1) //font has already been scaled
		  
		  linewidth = linewidth + g.StringWidth(MaxChordsStr)
		  
		  
		  'bottom of table
		  lineObj = New CurveShape
		  lineobj.x = x
		  lineobj.y = lineheight
		  lineobj.x2 = x + width
		  lineobj.y2 = lineheight
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Page.Insert 0, lineObj  // Put the line behind everything else
		  
		  
		  Return lineheight + 5
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Draw_Header(g As Graphics, x As Integer, y As Integer, width As Integer, zoom As Double, Page As Group2D) As Integer
		  Dim titleFont As FontFace
		  Dim title As String
		  Dim MaxAscent As Double
		  Dim MaxHeight As Double
		  Dim height As Integer = 0
		  Dim lineheight As Integer
		  Dim Header As New Group2D
		  Dim lineObj As CurveShape
		  Dim EM_Width As Double
		  Dim titleWidth As Double
		  
		  
		  title = "Song Activity Report"
		  titleFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "title")
		  
		  titleFont.Size = Round(titleFont.Size * zoom)
		  
		  'Title
		  titleFont.OntoGraphics g
		  EM_Width = g.StringWidth("M") 'for spacing between elements
		  titleWidth = g.StringWidth(title) + EM_Width
		  MaxAscent = g.TextAscent
		  MaxHeight = g.TextHeight
		  
		  height = MaxAscent
		  Header.Append GraphicsX.DrawStringShapeV(title, x + (g.StringWidth(title) / 2), y + height, titleFont, 1) //title font has already been scaled
		  
		  height = MaxHeight
		  
		  Page.Append Header
		  Return height + 2
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Dim s As LogEntry
		  
		  s = New LogEntry(Nil)
		  
		  s.Author = "Author"
		  s.CCLISongNumber = "CCLI #"
		  s.Title = "Title"
		  
		  AddSong s
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		#tag Note
			Specifies if the songs should be numbered sequentially.
			If False, page numbers restart at 1 with each song.
		#tag EndNote
		Protected Sequential As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			The list of songs to print
		#tag EndNote
		Songs() As LogEntry
	#tag EndProperty


	#tag Constant, Name = MaxDateStr, Type = String, Dynamic = False, Default = \"12/30/9999 ", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MaxTimeStr, Type = String, Dynamic = False, Default = \"12:55 PM  ", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MaxActivityStr, Type = String, Dynamic = False, Default = \"Presented ", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MaxTitleStr, Type = String, Dynamic = False, Default = \"M", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MaxTitleLen, Type = Double, Dynamic = False, Default = \"20", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MaxAuthorLen, Type = Double, Dynamic = False, Default = \"40", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MaxAuthorStr, Type = String, Dynamic = False, Default = \"M", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MaxCCLIStr, Type = String, Dynamic = False, Default = \"9999999999", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MaxChordsStr, Type = String, Dynamic = False, Default = \"Has Chords", Scope = Public
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
		#tag ViewProperty
			Name="LeftMargin"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="Report"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrintableHeight"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="Report"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrintableWidth"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="Report"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TopMargin"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="Report"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
