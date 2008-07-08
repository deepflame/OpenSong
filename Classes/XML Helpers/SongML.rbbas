#tag Module
Module SongML
	#tag Method, Flags = &h21
		Private Function BuildHeading(Tag As String, Heading As String) As String
		  //++
		  // Save some repetitive work building headings
		  //
		  // Tag is the tag for the translator.  All that's needed is verse, chorus, etc.
		  //
		  //--
		  
		  Dim translate As String
		  
		  Dim result As String
		  
		  translate = "songml/" + tag + "/@caption"
		  If instr(translate, "//") > 0 Then Return "" // Tag was null string
		  
		  result = " " + App.T.Translate(translate) + " "
		  If Len(result) = 2 Then Return "" // No such tag
		  
		  If Len(Heading) > 1 Then
		    Return result + Mid(Heading, 2)
		  Else
		    Return result
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function BuildSubtitle(songElement As XmlNode, style As XmlNode = Nil) As String
		  //++
		  // Create a string with the appropriate subtitles and return.
		  //
		  // This was originally part of ToSetML, but the method was getting unwieldy so it was time
		  // to split it out
		  //--
		  
		  //++EMP, 12/05
		  // Converted to support multiple subtitles
		  Dim Subtitles(-1) As String
		  Dim SubtitleOptions As String
		  Dim SubtitleText As String
		  Dim Separator As String
		  Dim CurrSubtitle As Integer
		  Dim AddDescriptions As Boolean
		  Dim ThisSubtitle As String
		  Dim Caption As String
		  Dim CopyrightSymbol As String
		  Dim DesiredSubtitles(-1) As String
		  
		  CopyrightSymbol = ConvertEncoding(App.T.Translate("songml/symbol/@caption"), Encodings.UTF8)
		  
		  //Check for a direct override on subtitles in the style for the slide
		  '++JRC: Fixed, style is not passed in songElement so use second parameter instead
		  //++EMP: Descriptions weren't being added properly because of incorrect XML paths.  Cleaned up and fixed.
		  If style <> Nil Then
		    SubtitleOptions = SmartML.GetValue(style, "style/song_subtitle", False)
		    AddDescriptions = SmartML.GetValueB(style, "style/subtitle/@descriptive", False)
		  Else // Use the default style
		    SubtitleOptions = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "default_style/song_subtitle", False)
		    AddDescriptions = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "default_style/subtitle/@descriptive", False)
		  End If
		  '--
		  //--
		  DesiredSubtitles = Split(SubtitleOptions, "|")
		  Separator = App.T.Translate("songml/separator/@caption")
		  If Separator = "|NL|" Then Separator = Chr(10)
		  
		  For CurrSubtitle = 0 To UBound(DesiredSubtitles)
		    
		    Select Case DesiredSubtitles(CurrSubtitle)
		      
		    Case "copyright"
		      Caption = ""
		      ThisSubtitle = SmartML.GetValue(songElement, "copyright")
		      'Don't add the caption if the copyright symbol is already in the subtitle text
		      'Assuming that the presence of the copyright symbol means the field is
		      'complete within the text.
		      '(Had to force UTF-8 for this string, otherwise the symbol wasn't handled properly on display)
		      ThisSubtitle = ConvertEncoding(ThisSubtitle, Encodings.UTF8)
		      If ThisSubtitle <> "" And InStr(ThisSubtitle, CopyrightSymbol) = 0 Then
		        Caption = App.T.Translate("songml/copyright/@caption")
		        Caption.Append ConvertEncoding(" "+ CopyrightSymbol, Encodings.UTF8)
		      End If
		      
		    Case "hymn_number"
		      ThisSubtitle = SmartML.GetValue(songElement, "hymn_number")
		      Caption = App.T.Translate("songml/hymn_number/@caption")
		      
		    Case "author"
		      ThisSubtitle = SmartML.GetValue(songElement, "author")
		      Caption = App.T.Translate("songml/author/@caption")
		      
		    Case "ccli_number" //The song's CCLI number, not the church license
		      ThisSubtitle = SmartML.GetValue(songElement, "ccli")
		      Caption = App.T.Translate("songml/ccli_number/@caption")
		      
		    Case "ccli_license" //The church license
		      ThisSubtitle = SmartML.GetValue(App.MyMainSettings.DocumentElement, "ccli/@number")
		      Caption =  App.T.Translate("songml/ccli_license/@caption")
		      
		    Case Else
		      App.DebugWriter.Write Chr(9)  + "Unexpected subtitle requested: " + Subtitles(CurrSubtitle)
		      Continue
		      
		    End Select
		    
		    If Trim(ThisSubtitle).Len > 0 Then
		      If AddDescriptions And Caption <> ""  Then
		        ThisSubtitle = Caption + " " + ThisSubtitle
		      End If
		      
		      Subtitles.Append ThisSubtitle
		    End If
		    
		  Next CurrSubtitle
		  
		  Return Join(Subtitles, Separator)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CleanLyrics(songDoc As XmlDocument)
		  Dim original_lyrics As String
		  original_lyrics = SmartML.GetValue(songDoc.DocumentElement, "lyrics")
		  original_lyrics = ReplaceAll(original_lyrics, "|", " ")
		  SmartML.SetValue(songDoc.DocumentElement, "lyrics", original_lyrics)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CloneStyle(fromNode As XmlNode, toNode As XmlNode)
		  SmartML.CloneAttributes fromNode, toNode
		  SmartML.CloneChildren fromNode, toNode
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ColonTrim(s As String) As String
		  s = Trim(s)
		  If Right(s, 1) = ";" Then s = Left(s, s.Len-1)
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DeflateString(lyrics As String) As String
		  Return ReplaceAll(ReplaceAll(lyrics, "_", ""), "|", Chr(10)).CleanSpaces
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Draw(songDoc As XmlDocument, g As Graphics, x As Integer, y As Integer, width As Integer, height As Integer, zoom As Double)
		  Dim section, slices(0), lines(0), temp As String
		  
		  Dim l, firstBase, runningBase, bottom, lineCount, leftEdge As Integer
		  
		  CleanLyrics songDoc
		  
		  firstBase = y + Draw_Header(songDoc, g, x, y, width, zoom)
		  bottom = y + height - Draw_Footer(songDoc, g, x, y + height, width, zoom)
		  runningbase = firstBase
		  
		  LyricsToLines songDoc, lines
		  
		  For l = 1 To UBound(lines)
		    '
		    ' New page?
		    '
		    If runningBase + firstBase > bottom then
		      //if PrintWindow.IsOutputToPrinter then g.NextPage else g = PrintWindow.NewPage
		      firstBase = y + Draw_Header(songDoc, g, x, y, width, zoom)
		      bottom = y + height - Draw_Footer(songDoc, g, x, y + height, width, zoom)
		      runningbase = firstBase
		    End If
		    If Left(lines(l), 1) = "." And l < UBound(lines) And InStr("123456789 ", Left(lines(l+1), 1)) > 0 Then
		      
		      ' --------------- CHORDS W/ LYRICS ---------------
		      lineCount = LinesToSlices(lines, l, slices, False)
		      runningBase = runningBase + Draw_ChordLyricLine(songDoc, g, x+leftEdge, runningBase, zoom, section, slices, lineCount)
		      l = l + lineCount - 1 ' l will increment again b/c of the For loop
		      
		    ElseIf Left(lines(l), 3) = "---" Then
		      
		      ' ------------------- NEW COLUMN -------------------
		      '++JRC: If leftEdge is greater than 0 then we already have two columns
		      'so lets move to the next page
		      if leftEdge > 0 then
		        leftEdge = 0
		        //if PrintWindow.IsOutputToPrinter then g.NextPage else g = PrintWindow.NewPage
		        firstBase = y + Draw_Header(songDoc, g, x, y, width, zoom)
		        bottom = y + height - Draw_Footer(songDoc, g, x, y + height, width, zoom)
		        runningbase = firstBase
		      else
		        runningBase = firstBase
		        leftEdge = width / 2
		      end if
		      '--
		    ElseIf Left(lines(l), 1) = "." Then
		      
		      ' -------------- CHORDS W/O LYRICS --------------
		      lineCount = LinesToSlices(lines, l, slices, True)
		      runningBase = runningBase + Draw_SoloChordLine(songDoc, g, x+leftEdge, runningBase, zoom, slices)
		      
		    ElseIf Left(lines(l), 1) = ";" Then
		      
		      ' ---------------------- COMMENT ----------------------
		      temp = lines(l)
		      runningBase = runningBase + Draw_CommentLine(g, x+leftEdge, runningBase, zoom, temp)
		      
		    ElseIf Left(lines(l), 1) = "[" Then
		      
		      ' ----------------------- HEADING -----------------------
		      section = Trim(Mid(lines(l), 2, Len(lines(l))-2))
		      runningBase = runningBase + Draw_HeadingLine(g, x+leftEdge, runningBase, zoom, section)
		      
		    Else
		      
		      ' -------------- LYRICS W/O CHORDS --------------
		      temp = lines(l)
		      runningBase = runningBase + Draw_SoloLyricLine(g, x+leftEdge, runningBase, zoom, section, temp, width)
		      
		    End If
		  Next l
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Draw(songDoc As XmlDocument, g As Graphics, zoom As Double, StartPage As Integer = 1) As Group2D
		  // Mostly the same code as the bitmap version.
		  // Returns a Group2D where each element is a Group2D representing a page
		  // Added optional parameter to allow for running page numbers if multiple songs are being printed
		  // Ed Palmer, 12/05
		  //--
		  
		  Dim section, slices(0), lines(0), temp As String
		  
		  Dim l, firstBase, runningBase, bottom, lineCount, leftEdge, i As Integer
		  
		  Dim Height, Width As Integer
		  
		  Dim x, y As Integer
		  x = 0 // Graphics object passed in will be printable area only
		  y = 0 // Old code had to offset for margins.
		  
		  Dim Pages As Group2D
		  Dim Page As Group2D
		  Dim NewPage As Group2D
		  Dim Multicolumn As Boolean = False
		  Dim ColumnLeft As Integer // Left point for the second column
		  Dim ColumnWidth As Integer // Width of a column
		  Dim gutter As Integer // Space between columns
		  Dim LyricFont As FontFace // Font used for lyrics
		  Dim LastHeadingIndex As Integer // Position in Pages group of last heading for widow control
		  Dim LastHeadingLine As Integer
		  Dim LastLine As Integer
		  Dim ElementHeight As Integer
		  Dim Element As Group2D
		  Dim NewPageNeeded As Boolean
		  Dim NewColumnNeeded As Boolean
		  
		  Pages = New Group2D
		  Element = New Group2D
		  
		  Height = g.Height
		  Width = g.Width
		  ColumnWidth = Width // Assume single column for now
		  NewPageNeeded = True
		  NewColumnNeeded = False
		  
		  App.DebugWriter.Write "SongML::Draw: w, h, zoom = " + str(x) + ", " + str(y) + ", " + str(width) + ", " + str(height) + ", " + str(zoom)
		  CleanLyrics songDoc
		  
		  LyricsToLines songDoc, lines
		  LyricFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "lyrics")
		  // That was the easy stuff.  Now it gets harder. First, spin through and see if there's a column change directive.
		  
		  For l = 0 to UBound(lines)
		    If Left(lines(l), 3) = "---" Then 'Multicolumn, flag and calculate
		      Multicolumn = True
		      LyricFont.OntoGraphics g
		      g.TextSize = Round(g.TextSize * zoom) // Adjust for zoom factor
		      Gutter = g.StringWidth("MM") // Two M gutter -- TODO: Part of page setup
		      ColumnWidth = (Width - gutter) / 2
		      ColumnLeft = Width - ColumnWidth
		    End If
		  Next l
		  
		  For l = 1 To UBound(lines)
		    'App.DebugWriter.Write "SongML.Draw: Top of loop, l, line(l) = " + str(l) + " " + lines(l)
		    
		    If NewColumnNeeded Then
		      NewColumnNeeded = False
		      If leftEdge > 0 Then
		        NewPageNeeded = True
		      Else
		        runningBase = firstBase
		        leftEdge = ColumnLeft
		        ElementHeight = 0
		        LastHeadingIndex = -1
		      End If
		    End If
		    
		    If NewPageNeeded Then
		      If Page <> Nil Then Pages.Append Page
		      Page = New Group2D
		      NewPageNeeded = False
		      firstBase = y + Draw_Header(songDoc, g, 0, 0, width, zoom, Page)
		      leftEdge = 0
		      App.DebugWriter.Write "SongML::Draw: Back from DrawHeader, returned val = " + str(firstBase)
		      bottom = y + height - Draw_Footer(songDoc, g, 0, height, width, zoom, Pages.Count + StartPage, Page)
		      App.DebugWriter.Write "SongML::Draw: Back from DrawFooter, height - returned val = " + str(bottom)
		      runningbase = firstBase
		      LastHeadingIndex = -1
		    End If
		    
		    If Left(lines(l), 1) = "." And l < UBound(lines) And InStr("123456789 ", Left(lines(l+1), 1)) > 0 Then
		      
		      ' --------------- CHORDS W/ LYRICS ---------------
		      lineCount = LinesToSlices(lines, l, slices, False)
		      ElementHeight = Draw_ChordLyricLine(songDoc, g, x+leftEdge, runningBase, ColumnWidth, zoom, section, slices, lineCount, Page)
		      LastLine = l //save where we started in case of page change
		      l = l + lineCount - 1 ' l will increment again b/c of the For loop
		      
		    ElseIf Left(lines(l), 3) = "-__" Then
		      ' ------------------- SEPARATOR LINE -------------------
		      ElementHeight = Draw_Separator(g, x+leftEdge, runningBase, ColumnWidth, zoom, LyricFont, Page)
		      LastLine = l
		      
		    ElseIf Left(lines(l), 3) = "---" Then
		      ' ------------------- NEW COLUMN -------------------
		      // Am I already on the second column?  If so, new page
		      //++ Bug 1455482: Fix corner case where column directive
		      // is seen when a column/page break was just taken and
		      // generates too much white space
		      //
		      ElementHeight = 0
		      If runningbase <> firstBase Then
		        If (leftEdge = ColumnLeft) Then 'New Page
		          NewPageNeeded = True
		        Else // New column
		          NewColumnNeeded = True
		        End If
		      Else
		        l = l + 1 // If we don't print it, eat it.
		      End If
		      LastLine = l
		      
		    ElseIf Left(lines(l), 3) = "-!!" Then
		      ' ------------------- NEW PAGE -------------------
		      // Only do this if we are not at the start of a page
		      ElementHeight = 0
		      If Not ((leftEdge = 0) And (runningBase = firstBase)) Then
		        NewPageNeeded = True
		      End If
		      LastLine = l
		      
		    ElseIf Left(lines(l), 1) = "." Then
		      
		      ' -------------- CHORDS W/O LYRICS --------------
		      lineCount = LinesToSlices(lines, l, slices, True)
		      ElementHeight = Draw_SoloChordLine(songDoc, g, x+leftEdge, runningBase, ColumnWidth, zoom, slices, Page)
		      LastLine = l
		    ElseIf Left(lines(l), 1) = ";" Then
		      
		      ' ---------------------- COMMENT ----------------------
		      temp = lines(l)
		      ElementHeight = Draw_CommentLine(g, x+leftEdge, runningBase, ColumnWidth, zoom, temp, Page)
		      LastLine = l
		    ElseIf Left(lines(l), 1) = "[" Then
		      
		      ' ----------------------- HEADING -----------------------
		      section = Trim(Mid(lines(l), 2, Len(lines(l))-2))
		      'App.DebugWriter.Write "SongML::Draw: Calling Heading Line for '" + section + "', runningBase is " + str(runningBase)
		      ElementHeight = Draw_HeadingLine(g, x+leftEdge, runningBase, ColumnWidth, zoom, section, Page)
		      LastHeadingIndex = Page.Count - 1 // Used for widow control on page change
		      LastHeadingLine = l // Ditto
		      LastLine = l
		      'App.DebugWriter.Write "SongML::Draw: Back from heading line, runningBase is " + str(runningBase)
		    Else
		      
		      ' -------------- LYRICS W/O CHORDS --------------
		      temp = lines(l)
		      ElementHeight = Draw_SoloLyricLine(g, x+leftEdge, runningBase, zoom, section, temp, ColumnWidth, Page)
		      LastLine = l
		    End If
		    
		    // Check for page/column change needed
		    App.DebugWriter.Write "SongML.Draw: Check at bottom of page, runningBase, ElementHeight, bottom = " _
		    + str(runningBase) + ", " + str(ElementHeight) + ", " + str(bottom)
		    If runningBase + ElementHeight >= bottom Then // This element put us over
		      App.DebugWriter.Write "SongML.Draw: looking to go to a new column/page"
		      // Widow control: see if the header was the previous element or two
		      If (Page.Count - LastHeadingIndex < 3) And (LastHeadingIndex > 0) Then
		        For i = page.count - 1 downto LastHeadingIndex
		          Page.Remove i
		        Next
		        l = LastHeadingLine - 1 //position before the heading line
		      Else
		        Page.Remove Page.Count - 1 //pull out the element that put us over
		        l = LastLine - 1 // position before it
		      End If
		      
		      If MultiColumn Then
		        NewColumnNeeded = True
		      Else
		        NewPageNeeded = True
		      End If
		      
		    Else // Everything fit on the page/column, continue
		      runningBase = runningBase + ElementHeight
		    End If
		  Next l
		  
		  // If there's a partial page, add it to the pages
		  If Page <> Nil Then
		    If Page.Count > 0 Then Pages.Append Page
		  End If
		  Return Pages
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Draw_ChordLyricLine(songDoc As XmlDocument, g As Graphics, x As Integer, y As Integer, zoom As Double, section As String, ByRef slices() As String, lineCount As Integer) As Integer
		  Dim sliceCount As Integer
		  sliceCount = UBound(slices) / lineCount
		  
		  Dim lineWidths(0), dashStarts(0), lineTop, lineLeft, nextLeft, dashWidth As Integer
		  Dim i, j, oldY As Integer
		  ReDim lineWidths(linecount+1) ' We put in an extra in case of capo chords
		  ReDim dashStarts(linecount) ' We don't need dashstarts(1) b/c it is the chords line; oh well
		  Dim capoChord As String
		  
		  Dim tempFont As FontFace
		  
		  oldY = y
		  
		  If lineCount > 2 Then
		    x = x + Draw_LinePrefixes(songDoc, g, x, y, zoom, slices, lineCount)
		  End If ' End of writing of verse numbers
		  
		  nextLeft = x
		  
		  For i = 0 To sliceCount - 1 ' Loop through each slice
		    lineTop = y
		    lineLeft = nextLeft
		    For j = 1 To lineCount ' Loop through the lines and print
		      If i = 0 Then slices(i*lineCount+j) = Mid(slices(i*lineCount+j), 2)
		      If j = 1 Then ' Chord line
		        tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "chords")
		        g.TextFont = tempFont.Name
		        g.TextSize = tempFont.Size * zoom
		        g.Bold = tempFont.Bold
		        g.Italic = tempFont.Italic
		        g.Underline = tempFont.Underline
		        g.ForeColor = tempFont.ForeColor
		        slices(i*lineCount+j) = RTrim(slices(i*lineCount+j))
		        lineWidths(j) = g.StringWidth(slices(i*lineCount+j)) + (g.TextAscent/2)
		        
		        If lineLeft + lineWidths(j) > nextLeft Then nextLeft = lineLeft + lineWidths(j)
		        lineTop = lineTop + g.TextHeight
		        g.DrawString slices(i*lineCount+j), lineLeft, lineTop + g.TextHeight - g.TextAscent
		        
		        ' Place Capo Chord
		        If SmartML.GetValueB(SmartML.GetNode(songDoc.DocumentElement, "capo"), "@print") Then
		          If MainWindow.pop_song_accidentals.ListIndex = 0 Then
		            capoChord = SingleTranspose(slices(i*lineCount+j), 12-SmartML.GetValueN(songDoc.DocumentElement, "capo"), True)
		          Else
		            capoChord = SingleTranspose(slices(i*lineCount+j), 12-SmartML.GetValueN(songDoc.DocumentElement, "capo"), False)
		          End If
		          tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "capo_chords")
		          g.TextFont = tempFont.Name
		          g.TextSize = tempFont.Size * zoom
		          g.Bold = tempFont.Bold
		          g.Italic = tempFont.Italic
		          g.Underline = tempFont.Underline
		          g.ForeColor = tempFont.ForeColor
		          lineWidths(lineCount+1) = g.StringWidth(capoChord) + (g.TextAscent/2)
		          
		          If lineLeft + lineWidths(lineCount+1) > nextLeft Then nextLeft = lineLeft + lineWidths(lineCount+1)
		          lineTop = lineTop + g.TextHeight
		          g.DrawString capoChord, lineLeft, lineTop + g.TextHeight - g.TextAscent
		          
		        End If
		      Else ' Lyric line
		        tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "lyrics")
		        g.TextFont = tempFont.Name
		        g.TextSize = tempFont.Size * zoom
		        g.Bold = tempFont.Bold
		        g.Italic = tempFont.Italic
		        g.Underline = tempFont.Underline
		        g.ForeColor = tempFont.ForeColor
		        If Left(section,1) = "C" Then
		          g.Bold = True
		        Else
		          g.Bold = tempFont.Bold
		        End If
		        slices(i*lineCount+j) = ReplaceAll(slices(i*lineCount+j), "_", "")
		        slices(i*lineCount+j) = slices(i*lineCount+j).CleanSpaces
		        lineWidths(j) = g.StringWidth(slices(i*lineCount+j))
		        If lineLeft + lineWidths(j) > nextLeft Then nextLeft = lineLeft + lineWidths(j)
		        lineTop = lineTop + g.TextHeight
		        g.DrawString slices(i*lineCount+j), lineLeft, lineTop
		        
		        ' Check for dashes - this chord starts with a non-space
		        dashWidth = g.StringWidth("-")
		        If i > 0 And Len(slices(i*lineCount+j)) > 0 And Left(slices(i*lineCount+j), 1) <> " " Then
		          If dashStarts(j) < lineLeft - dashWidth Then g.DrawString "-", dashStarts(j) + ((lineLeft-dashStarts(j))/2) - (dashWidth/2), lineTop
		        End If
		        
		        If Len(slices(i*lineCount+j)) = 0 Then
		          ' Leave dashstarts(j) alone if this slice is empty
		        ElseIf Right(slices(i*lineCount+j), 1) <> " " Then
		          ' If this line ends with a character, we may need to dash this slice
		          dashStarts(j) = lineLeft + lineWidths(j)
		        Else
		          ' It ends with a space. No chance of dashing.
		          dashStarts(j) = g.Width
		        End If
		        
		      End If
		    Next j
		  Next i
		  
		  Return lineTop - oldY
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Draw_ChordLyricLine(songDoc As XmlDocument, g As Graphics, x As Integer, y As Integer, width as Integer, zoom As Double, section As String, ByRef slices() As String, lineCount As Integer, ByRef Page As Group2D) As Integer
		  //
		  // Overloaded version that has been modified to work with Graphics2D objects instead of bitmaps
		  //
		  // Responsible for appending a Group2D to the Page parameter with any output
		  //
		  // Vertical calculations assume passed y is upper limit of bounding box
		  //
		  // Ed Palmer, 12/05
		  //--
		  
		  Dim sliceCount As Integer
		  Dim OutputGraphics As New Group2D
		  Dim s As StringShape
		  
		  sliceCount = UBound(slices) / lineCount
		  
		  Dim lineWidths(0), dashStarts(0), lineTop, lineLeft, nextLeft, dashWidth As Integer
		  Dim i, j, oldY As Integer
		  ReDim lineWidths(linecount+1) ' We put in an extra in case of capo chords
		  ReDim dashStarts(linecount) ' We don't need dashstarts(1) b/c it is the chords line; oh well
		  Dim capoChord As String
		  
		  Dim tempFont As FontFace
		  
		  oldY = y
		  
		  If lineCount > 2 Then
		    x = x + Draw_LinePrefixes(songDoc, g, x, y, width, zoom, slices, lineCount, OutputGraphics)
		  End If ' End of writing of verse numbers
		  
		  nextLeft = x
		  
		  For i = 0 To sliceCount - 1 ' Loop through each slice
		    lineTop = y
		    lineLeft = nextLeft
		    For j = 1 To lineCount ' Loop through the lines and print
		      If i = 0 Then slices(i*lineCount+j) = Mid(slices(i*lineCount+j), 2)
		      If j = 1 Then ' Chord line
		        tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "chords")
		        g.TextFont = tempFont.Name
		        g.TextSize = Round(tempFont.Size * zoom)
		        g.Bold = tempFont.Bold
		        g.Italic = tempFont.Italic
		        g.Underline = tempFont.Underline
		        g.ForeColor = tempFont.ForeColor
		        slices(i*lineCount+j) = RTrim(slices(i*lineCount+j))
		        //lineWidths(j) = g.StringWidth(slices(i*lineCount+j)) + (g.TextAscent/2)
		        lineWidths(j) = g.StringWidth(slices(i*lineCount+j) + "M")
		        
		        If lineLeft + lineWidths(j) > nextLeft Then nextLeft = lineLeft + lineWidths(j)
		        
		        // g.DrawString slices(i*lineCount+j), lineLeft, lineTop + g.TextHeight - g.TextAscent
		        s = New StringShape
		        tempFont.OntoStringShape s, zoom
		        // TODO: Wrap this if too wide
		        s.X = lineLeft + (g.StringWidth(slices(i * lineCount + j)) / 2)
		        s.Y = linetop + g.TextAscent // Set baseline
		        s.Text = slices(i * lineCount + j)
		        OutputGraphics.Append s
		        lineTop = lineTop + g.TextHeight //Next line
		        
		        ' Place Capo Chord
		        If SmartML.GetValueB(SmartML.GetNode(songDoc.DocumentElement, "capo"), "@print") Then
		          If MainWindow.pop_song_accidentals.ListIndex = 0 Then
		            capoChord = SingleTranspose(slices(i*lineCount+j), 12-SmartML.GetValueN(songDoc.DocumentElement, "capo"), True)
		          Else
		            capoChord = SingleTranspose(slices(i*lineCount+j), 12-SmartML.GetValueN(songDoc.DocumentElement, "capo"), False)
		          End If
		          tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "capo_chords")
		          g.TextFont = tempFont.Name
		          g.TextSize = Round(tempFont.Size * zoom)
		          g.Bold = tempFont.Bold
		          g.Italic = tempFont.Italic
		          g.Underline = tempFont.Underline
		          g.ForeColor = tempFont.ForeColor
		          //lineWidths(lineCount+1) = g.StringWidth(capoChord) + (g.TextAscent/2)
		          lineWidths(lineCount+1) = g.StringWidth(capoChord + "M")
		          
		          If lineLeft + lineWidths(lineCount+1) > nextLeft Then nextLeft = lineLeft + lineWidths(lineCount+1)
		          
		          // g.DrawString capoChord, lineLeft, lineTop + g.TextHeight - g.TextAscent
		          s = New StringShape
		          tempFont.OntoStringShape s, zoom
		          s.X = lineLeft + (g.StringWidth(capoChord) / 2)
		          s.Y = lineTop + g.TextAscent
		          s.Text = capoChord
		          OutputGraphics.Append s
		          lineTop = lineTop + g.TextHeight
		        End If
		      Else ' Lyric line
		        tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "lyrics")
		        g.TextFont = tempFont.Name
		        g.TextSize = Round(tempFont.Size * zoom)
		        g.Bold = tempFont.Bold
		        g.Italic = tempFont.Italic
		        g.Underline = tempFont.Underline
		        g.ForeColor = tempFont.ForeColor
		        If Left(section,1) = "C" Then
		          g.Bold = Not tempFont.Bold
		        End If
		        slices(i*lineCount+j) = ReplaceAll(slices(i*lineCount+j), "_", "")
		        slices(i*lineCount+j) = slices(i*lineCount+j).CleanSpaces
		        lineWidths(j) = g.StringWidth(slices(i*lineCount+j))
		        If lineLeft + lineWidths(j) > nextLeft Then nextLeft = lineLeft + lineWidths(j)
		        
		        // g.DrawString slices(i*lineCount+j), lineLeft, lineTop
		        s = New StringShape
		        tempFont.OntoStringShape s, zoom
		        s.Bold = g.Bold // Special case -- handle "C" section
		        s.X = lineLeft + (lineWidths(j) / 2)
		        s.Y = lineTop + g.TextAscent
		        s.Text = slices(i * lineCount + j)
		        OutputGraphics.Append s
		        
		        ' Check for dashes - this chord starts with a non-space
		        dashWidth = g.StringWidth("-")
		        If i > 0 And Len(slices(i*lineCount+j)) > 0 And Left(slices(i*lineCount+j), 1) <> " " Then
		          If dashStarts(j) < lineLeft - dashWidth Then
		            //g.DrawString "-", dashStarts(j) + ((lineLeft-dashStarts(j))/2) - (dashWidth/2), lineTop
		            s = New StringShape
		            tempFont.OntoStringShape s, zoom
		            s.Bold = g.Bold
		            s.X = dashStarts(j) + ((lineLeft - dashStarts(j)) / 2)
		            s.Y = lineTop + g.TextAscent
		            s.Text = "-"
		            OutputGraphics.Append s
		          End If
		        End If
		        
		        If Len(slices(i*lineCount+j)) = 0 Then
		          ' Leave dashstarts(j) alone if this slice is empty
		        ElseIf Right(slices(i*lineCount+j), 1) <> " " Then
		          ' If this line ends with a character, we may need to dash this slice
		          dashStarts(j) = lineLeft + lineWidths(j)
		        Else
		          ' It ends with a space. No chance of dashing.
		          dashStarts(j) = g.Width
		        End If
		        lineTop = lineTop + g.TextHeight // Can't advance to next line until the dash mess is finished
		        
		      End If
		    Next j
		  Next i
		  
		  Page.Append OutputGraphics  // Add what we've done to the page.
		  Return lineTop - oldY
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Draw_CommentLine(g As Graphics, x As Integer, y As Integer, Width as Integer, zoom As Double, ByRef line As String, ByRef Page As Group2D) As Integer
		  Dim tempFont As FontFace
		  Dim s As New StringShape
		  Dim Comment As String
		  
		  //++EMP
		  // 7 March 2006
		  //
		  // Don't print if the line starts with two semi-colons (allows "hidden" comments to be created)
		  //
		  If Left(line, 2) = ";;" Then Return 0
		  //--
		  
		  tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "copyright")
		  tempFont.Size = Round(tempFont.size * zoom)
		  Comment = Mid(line, 2)
		  
		  tempfont.OntoGraphics g
		  tempfont.OntoStringShape s
		  s.X = x + (g.StringWidth(Comment) / 2)
		  s.Y = y + g.TextAscent
		  s.Text = Comment
		  
		  Page.Append s
		  Return g.TextHeight
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Draw_CommentLine(g As Graphics, x As Integer, y As Integer, zoom As Double, ByRef line As String) As Integer
		  Dim tempFont As FontFace
		  
		  tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "copyright")
		  
		  g.TextFont = tempFont.Name
		  g.TextSize = tempFont.Size * zoom
		  g.Bold = tempFont.Bold
		  g.Italic = tempFont.Italic
		  g.Underline = tempFont.Underline
		  g.ForeColor = tempFont.ForeColor
		  g.DrawString Mid(line, 2), x, y + g.TextHeight
		  
		  Return g.TextHeight
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Draw_Footer(songDoc As XmlDocument, g As Graphics, x As Integer, y As Integer, width As Integer, zoom As Double) As Integer
		  ' Pass x, y based on lower-left corner
		  ' Returns height
		  Dim ext As String
		  Dim ccli_num As String
		  Dim ccli_song As String
		  Dim height As Integer
		  Dim tempFont As FontFace
		  Dim Copyright As String
		  Dim Symbol As String
		  
		  ' TODO: This function needs to be internationalized
		  '
		  ' Copyright stuff
		  g.PenWidth = 1
		  g.PenHeight = 1
		  height = 0
		  
		  tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "copyright")
		  g.TextFont = tempFont.Name
		  g.TextSize = tempFont.Size * zoom
		  tempFont.Size = tempFont.Size * zoom
		  g.Bold = tempFont.Bold
		  g.Italic = tempFont.Italic
		  g.Underline = tempFont.Underline
		  g.ForeColor = tempFont.ForeColor
		  
		  ext = SmartML.GetValue(App.MyMainSettings.DocumentElement, "ccli/@number")
		  If Len(ext) > 0 Then
		    ext = App.T.Translate("songml/ccli_license/@caption") + " " + ext
		    height = height + GraphicsX.DrawFontString(g, ext, x, y-height, tempFont, width, "center", 0, "bottom")
		  End If
		  ext = SmartML.GetValue(songDoc.DocumentElement, "ccli", True)
		  If Len(ext) > 0 Then
		    ext = App.T.Translate("songml/ccli_number/@caption") + " " + ext
		    height = height + GraphicsX.DrawFontString(g, ext, x, y-height, tempFont, width, "center", 0, "bottom")
		  End If
		  ext = SmartML.GetValue(songDoc.DocumentElement, "copyright", True)
		  App.DebugWriter.Write "In SongML::Draw_Footer, copyright is '" + ext + "'"
		  Dim enc As TextEncoding
		  enc = Encoding(ext)
		  App.DebugWriter.Write Chr(9) + "Encoding is " + enc.internetName
		  If Len(ext) > 0 Then
		    ext = App.T.Translate("songml/copyright/@caption") + " " +_
		    App.T.Translate("songml/symbol/@caption") + " " + ext
		    height = height + GraphicsX.DrawFontString(g, ext, x, y-height, tempFont, width, "center", 0, "bottom")
		  End If
		  g.ForeColor = Rgb(0,0,0)
		  g.DrawLine x, y - height, x + width, y - height
		  height = height + g.TextHeight
		  Return height
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Draw_Footer(songDoc As XmlDocument, g As Graphics, x As Integer, y As Integer, width As Integer, zoom As Double, PageNum As Integer, ByRef Page As Group2D) As Integer
		  ' Pass x, y based on lower-left corner
		  ' Returns height
		  // Vector graphics version
		  // Ed Palmer, 12/05
		  //
		  Dim ext As String
		  Dim ccli_num As String
		  Dim ccli_song As String
		  Dim height As Integer
		  Dim tempheight As Integer
		  Dim tempFont As FontFace
		  Dim Copyright As String
		  Dim Symbol As String
		  Dim PageNumString As String
		  Dim PageNumWidth As Integer
		  
		  Dim Footer As New Group2D
		  
		  g.PenWidth = 1
		  g.PenHeight = 1
		  height = 0
		  
		  tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "copyright")
		  g.TextFont = tempFont.Name
		  g.TextSize = Round(tempFont.Size * zoom)
		  tempFont.Size = Round(tempFont.Size * zoom)
		  g.Bold = tempFont.Bold
		  g.Italic = tempFont.Italic
		  g.Underline = tempFont.Underline
		  g.ForeColor = tempFont.ForeColor
		  
		  // Compute the width of the page number first so we can avoid a collision with longer copyright strings
		  If PageNum > 1 Then
		    PageNumString = App.T.Translate("print/page/@caption", str(PageNum))
		    PageNumWidth = g.StringWidth(PageNumString + "N")
		  Else
		    PageNumString = ""
		    PageNumWidth = 0
		  End If
		  ' Copyright stuff
		  
		  ext = SmartML.GetValue(App.MyMainSettings.DocumentElement, "ccli/@number")
		  If Len(ext) > 0  Then
		    ext = App.T.Translate("print/ccli_license/@caption") + " " + ext
		    
		    height = height + GraphicsX.DrawFontString(g, ext, x + PageNumWidth, y-height, tempFont, width - (2 * PageNumWidth), Footer, "center", 0, "bottom")
		  End If
		  ext = SmartML.GetValue(songDoc.DocumentElement, "ccli", True)
		  If Len(ext) > 0 And ext <> "0000" Then
		    ext = App.T.Translate("print/ccli_number/@caption") + " " + ext
		    height = height + GraphicsX.DrawFontString(g, ext, x + PageNumWidth, y-height, tempFont, width - (2 * PageNumWidth), Footer, "center", 0, "bottom")
		  End If
		  ext = SmartML.GetValue(songDoc.DocumentElement, "copyright", True)
		  
		  Try
		    ext = ConvertEncoding(ext, Encodings.UTF8)
		  Catch ex as RuntimeException
		    App.DebugWriter.Write "SongML::Draw_Footer: caught exception converting copyright to UTF-8"
		  End Try
		  If Len(ext) > 0 Then
		    If Instr(ext, Encodings.UTF8.Chr(169)) = 0 Then _
		    ext = App.T.Translate("print/copyright/@caption") + " " + encodings.UTF8.Chr(169) + " " + ext  'Gotta use the UTF8 code point to avoid a spurious character on display for some reason
		    height = height + GraphicsX.DrawFontString(g, ext, x + PageNumWidth, y-height, tempFont, width - (2 * PageNumWidth), Footer, "center", 0, "bottom")
		  End If
		  // Draw the page number on the same line as the last line of text.
		  // If there's not a last line of text, then this is the last line
		  If PageNum > 1 Then
		    If height = 0 Then
		      height = GraphicsX.DrawFontString(g, PageNumString, x, y - height, tempFont, width, Footer, "left", 0, "bottom")
		    Else
		      Call GraphicsX.DrawFontString(g, PageNumString, x, y - height, tempFont, width, Footer, "left", 0, "top")
		    End If
		  End If
		  Footer.Append GraphicsX.DrawLineV(x, y - height, x + width, y - height, RGB(0, 0, 0), g.PenWidth)
		  height = height + g.TextHeight 'One line margin above horizontal line
		  Page.Append Footer
		  Return height
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Draw_Header(songDoc As XmlDocument, g As Graphics, x As Integer, y As Integer, width As Integer, zoom As Double, Page As Group2D) As Integer
		  Dim height As Integer = 0
		  Dim lineheight As Integer
		  Dim ext As String
		  Dim fits As Boolean
		  Dim tempFont As FontFace
		  Dim titleFont, authorFont, songnoFont As FontFace
		  Dim extraFont As FontFace
		  Dim title, author, songno As String
		  Dim titleWidth, authorWidth, songnoWidth As Double
		  Dim lineSize As Double
		  Dim EM_Width As Double
		  Dim Header As New Group2D
		  Dim lineObj As CurveShape
		  Dim TitleHeight As Double
		  Dim SongNumHeight As Double
		  Dim AuthorHeight As Double
		  Dim MaxAscent As Double
		  Dim MaxHeight As Double
		  Dim SongNoWrapWidth As Double
		  
		  title = SmartML.GetValue(songDoc.DocumentElement, "title", True)
		  author = SmartML.GetValue(songDoc.DocumentElement, "author", True)
		  //songno = SmartML.GetValue(songDoc.DocumentElement, "user1", True) 'Should this be user1 or hymn_number???
		  // Assuming hymn number since that's now an attribute of a song EMP 12/05
		  songno = SmartML.GetValue(songDoc.DocumentElement, "hymn_number", True)
		  
		  titleFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "title")
		  authorFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "author")
		  songnoFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "title")
		  extraFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "copyright")
		  
		  titleFont.Size = Round(titleFont.Size * zoom)
		  authorFont.Size = Round(authorFont.Size * zoom)
		  songnoFont.Size = Round(songnoFont.Size * zoom)
		  extraFont.Size = Round(extraFont.Size * zoom)
		  
		  If SmartML.GetValueB(App.MyPrintSettings.DocumentElement, "style/@caps_song_title") Then title = Uppercase(title)
		  
		  'Title
		  titleFont.OntoGraphics g
		  EM_Width = g.StringWidth("M") 'for spacing between elements
		  titleWidth = g.StringWidth(title) + EM_Width
		  MaxAscent = g.TextAscent
		  MaxHeight = g.TextHeight
		  
		  ' Song Number
		  songnoWidth = 0
		  If Len(songno) > 0 Then
		    songnoFont.OntoGraphics g
		    songnoWidth = g.StringWidth(songno)
		    MaxAscent = Max(MaxAscent, g.TextAscent)
		    MaxHeight = Max(MaxHeight, g.TextHeight)
		  End If
		  
		  'Author
		  authorFont.OntoGraphics g
		  authorWidth = g.StringWidth(author) + EM_Width
		  AuthorHeight = g.TextHeight
		  If len(author) > 0 Then
		    MaxAscent = Max(MaxAscent, g.TextAscent)
		    MaxHeight = Max(MaxHeight, g.TextHeight)
		  End If
		  
		  //
		  // At the end of the this If, height will be the height of all the text including descenders
		  // lineheight will be the baseline of the last line of the title, author and song number
		  //
		  If titleWidth + authorWidth + songnoWidth >  width Then  //Put author on a new line
		    //
		    // Song number and Title may still overlap.
		    // Balance the header
		    //
		    If songnoWidth + titleWidth > width Then
		      If songnoWidth > width / 4 Then
		        SongNoWrapWidth = width / 4
		      Else
		        SongNoWrapWidth = songnoWidth
		      End If
		      TitleHeight = DrawFontString(g, title, x, y, titleFont, width - SongNoWrapWidth, Header, "left")
		      SongNumHeight = DrawFontString(g, songno, x  + (width - SongNoWrapWidth), y, songnoFont, _
		      SongNoWrapWidth, Header, "right")
		    Else
		      SongNumHeight = 0
		      TitleHeight = DrawFontString(g, title, x, y, titleFont, width, Header, "left")
		      If songnoWidth > 0 Then
		        SongNumHeight = DrawFontString(g, songno, x, y, songnoFont, width, Header, "right")
		      End If
		    End If
		    height = Max(TitleHeight, SongNumHeight)
		    If len(author) > 0 Then
		      AuthorHeight = DrawFontString(g, author, x, height, authorFont, width, Header, "right")
		      height = height + AuthorHeight
		      authorFont.OntoGraphics g
		      lineheight = height - (AuthorHeight - g.TextAscent)
		    Else
		      lineheight = height - (MaxHeight - MaxAscent) // If Hymn Number text is bigger than the title AND the title wraps, the underline will end up in the wrong place with this
		    End If
		  Else
		    'Title
		    height = MaxAscent
		    titleFont.OntoGraphics g 'in case the Title isn't the largest font
		    Header.Append GraphicsX.DrawStringShapeV(title, x + (g.StringWidth(title) / 2), y + height, titleFont, 1) //title font has already been scaled
		    
		    'Author
		    authorFont.OntoGraphics g
		    If songnoWidth > 0 Then authorWidth = authorWidth + EM_Width 'Will right justify if no song number, otherwise it's between the title and song number
		    Header.Append GraphicsX.DrawStringShapeV(author, x + width - songnoWidth - (authorWidth / 2), y + height, authorFont, 1)
		    
		    'Songno
		    songnoFont.OntoGraphics g
		    //g.DrawString songno, x + width - songnoWidth, y + height
		    Header.Append GraphicsX.DrawStringShapeV(songno, x + width - (songnoWidth / 2), y + height, songnoFont, 1)
		    height = MaxHeight
		    lineheight = MaxAscent
		  End If
		  
		  
		  'Upper Border
		  If titleFont.Size > authorFont.Size Then 'Unlikely, but still should check it
		    titleFont.OntoGraphics g
		  Else
		    authorFont.OntoGraphics g
		  End If
		  
		  lineObj = New CurveShape
		  lineobj.x = x
		  lineobj.y = y + lineheight
		  lineobj.x2 = x + width
		  lineobj.y2 = y + lineheight
		  lineobj.BorderColor = &c000000
		  lineobj.BorderWidth = 1.0
		  Header.Insert 0, lineObj  // Put the line behind everything else
		  
		  ' -- Extra Header Stuff --
		  extraFont.OntoGraphics g
		  
		  'Tempo
		  If Len(SmartML.GetValue(songDoc.DocumentElement, "tempo")) > 0 Then
		    ext = SmartML.GetValue(songDoc.DocumentElement, "tempo")
		  End if
		  'Time
		  If Len(SmartML.GetValue(songDoc.DocumentElement, "time_sig")) > 0 Then
		    If Len(ext) > 0 Then
		      ext = ext + " - " + SmartML.GetValue(songDoc.DocumentElement, "time_sig") + " Time"
		    Else
		      ext = ext + SmartML.GetValue(songDoc.DocumentElement, "time_sig") + " Time"
		    End If
		  End If
		  'Capo
		  If SmartML.GetValueN(songDoc.DocumentElement, "capo") > 0 And SmartML.GetValueB(SmartML.GetNode(songDoc.DocumentElement, "capo"), "@print") Then
		    If Len(ext) > 0 Then
		      ext = ext + " - " + App.T.Translate("songml/capo/@caption") + " " + SmartML.GetValue(songDoc.DocumentElement, "capo")
		    Else
		      ext = ext + App.T.Translate("songml/capo/@caption") + " " + SmartML.GetValue(songDoc.DocumentElement, "capo")
		    End If
		  End If
		  height = lineheight 'This is how far down the page we are
		  lineheight = lineheight + g.TextHeight
		  Header.Append GraphicsX.DrawStringShapeV(ext, x + width - (g.StringWidth(ext) / 2), y + lineheight, extraFont, 1)
		  'Presentation Order
		  '(Make optional element based on App.MyPrintSettings.DocumentElement/leadsheet/@presentation)
		  If SmartML.GetValue(songdoc.DocumentElement, "presentation") <> "" Then
		    If SmartML.GetValueB(App.MyPrintSettings.DocumentElement, "leadsheet/@presentation", True, False) Then
		      ext = App.T.Translate("songml/presentation/@caption") + " " + SmartML.GetValue(songdoc.DocumentElement, "presentation")
		      height = lineheight
		      lineheight = lineheight + g.TextHeight
		      Header.Append GraphicsX.DrawStringShapeV(ext, x + width - (g.StringWidth(ext) / 2), y + lineheight, extraFont, 1)
		    End If
		  End If
		  Page.Append Header
		  height = height + (g.TextHeight) 'Now we've written this far + a blank line
		  
		  Return height
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Draw_Header(songDoc As XmlDocument, g As Graphics, x As Integer, y As Integer, width As Integer, zoom As Double) As Integer
		  Dim height As Integer = 0
		  Dim lineheight As Integer
		  Dim ext As String
		  Dim fits As Boolean
		  Dim tempFont As FontFace
		  Dim titleFont, authorFont, songnoFont As FontFace
		  Dim title, author, songno As String
		  Dim titleWidth, authorWidth, songnoWidth As Double
		  Dim lineSize As Double
		  Dim EM_Width As Double
		  
		  title = SmartML.GetValue(songDoc.DocumentElement, "title", True)
		  author = SmartML.GetValue(songDoc.DocumentElement, "author", True)
		  //songno = SmartML.GetValue(songDoc.DocumentElement, "user1", True) 'Should this be user1 or hymn_number???
		  // Assuming hymn number since that's now an attribute of a song EMP 12/05
		  songno = SmartML.GetValue(songDoc.DocumentElement, "hymn_number", True)
		  
		  titleFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "title")
		  authorFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "author")
		  songnoFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "title")
		  
		  titleFont.Size = titleFont.Size * zoom
		  authorFont.Size = authorFont.Size * zoom
		  songnoFont.Size = songnoFont.Size * zoom
		  
		  If SmartML.GetValueB(App.MyPrintSettings.DocumentElement, "style/@caps_song_title") Then title = Uppercase(title)
		  
		  'Fit the title & author to the width
		  fits = False
		  While Not fits
		    'Title
		    titleFont.OntoGraphics g
		    titleWidth = g.StringWidth(title)
		    EM_Width = g.StringWidth("M") 'for spacing between elements
		    
		    'Author
		    authorFont.OntoGraphics g
		    authorWidth = g.StringWidth(author)
		    
		    'Songno
		    songnoFont.OntoGraphics g
		    songnoWidth = g.StringWidth(songno)
		    
		    If titleWidth + authorWidth + songnoWidth + (2 * EM_Width) <=  width Then
		      fits = True
		    Else
		      titleFont.Size = titleFont.Size * .98
		      authorFont.Size = authorFont.Size * .98
		      songnoFont.Size = songnoFont.Size * .98
		    End If
		  Wend
		  
		  'Upper Border
		  If titleFont.Size > authorFont.Size Then 'Unlikely, but still should check it
		    titleFont.OntoGraphics g
		  Else
		    authorFont.OntoGraphics g
		  End If
		  
		  height = g.TextAscent + (0.05 * zoom)
		  lineheight = g.TextHeight
		  'g.DrawLine x, y + height +(15 * zoom), x + width, y + height + (15 * zoom)
		  g.DrawLine x, y + height, x + width, y + height
		  
		  'Title
		  height = g.TextAscent 'Text ascent from largest font on the line
		  titleFont.OntoGraphics g 'in case the Title isn't the largest font
		  g.DrawString title, x, y + height
		  
		  'Author
		  authorFont.OntoGraphics g
		  If songnoWidth > 0 Then authorWidth = authorWidth + EM_Width 'Will right justify if no song number, otherwise it's between the title and song number
		  g.DrawString author, x + width - songnoWidth - authorWidth, y + height
		  
		  'Songno
		  songnoFont.OntoGraphics g
		  g.DrawString songno, x + width - songnoWidth, y + height
		  
		  ' -- Extra Header Stuff --
		  tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "copyright")
		  tempFont.Size = tempFont.Size * zoom
		  tempFont.OntoGraphics g
		  
		  'Tempo
		  If Len(SmartML.GetValue(songDoc.DocumentElement, "tempo")) > 0 Then
		    ext = SmartML.GetValue(songDoc.DocumentElement, "tempo")
		  End if
		  'Time
		  If Len(SmartML.GetValue(songDoc.DocumentElement, "time_sig")) > 0 Then
		    If Len(ext) > 0 Then
		      ext = ext + " - " + SmartML.GetValue(songDoc.DocumentElement, "time_sig") + " Time"
		    Else
		      ext = ext + SmartML.GetValue(songDoc.DocumentElement, "time_sig") + " Time"
		    End If
		  End If
		  'Capo
		  If SmartML.GetValueN(songDoc.DocumentElement, "capo") > 0 And SmartML.GetValueB(SmartML.GetNode(songDoc.DocumentElement, "capo"), "@print") Then
		    If Len(ext) > 0 Then
		      ext = ext + " - " + App.T.Translate("songml/capo/@caption") + " " + SmartML.GetValue(songDoc.DocumentElement, "capo")
		    Else
		      ext = ext + "Capo " + SmartML.GetValue(songDoc.DocumentElement, "capo")
		    End If
		  End If
		  height = lineheight 'This is how far down the page we are
		  lineheight = lineheight + g.TextAscent
		  g.DrawString ext, x + width - g.StringWidth(ext), y + lineheight
		  height = height + (g.TextHeight * 2.05) 'Now we've written this far + a blank line
		  
		  Return height
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Draw_HeadingLine(g As Graphics, x As Integer, y As Integer, ColWidth As Integer, zoom As Double, heading As String, Page As Group2D) As Integer
		  // Revised Routine for Vector Graphics
		  // Ed Palmer, 12/05
		  
		  Dim tempFont As FontFace
		  Dim j, oddOffSet, oldY, oldWidth, oldHeight As Integer
		  Dim prefix As String
		  //++
		  Dim rr As RoundRectShape
		  Dim lineobj As CurveShape
		  Dim rect As RectShape
		  Dim MidX As Integer
		  Dim height As Integer
		  
		  Dim rrx, rry As Integer
		  Dim PreChorus As String
		  Dim Chorus As String
		  Dim Bridge As String
		  Dim Tag As String
		  Dim Verse As String
		  Dim HeadingLine As New Group2D
		  
		  
		  PreChorus = App.T.Translate("songml/prechorus/@caption")
		  If PreChorus = "" Then PreChorus = "Pre-chorus"
		  Chorus = App.T.Translate("songml/chorus/@caption")
		  If Chorus = "" Then Chorus = "Chorus"
		  Bridge = App.T.Translate("songml/bridge/@caption")
		  If Bridge = "" Then Bridge = "Bridge"
		  Tag = App.T.Translate("songml/tag/@caption")
		  If Tag = "" Then Tag = "Tag"
		  Verse = App.T.Translate("songml/verse/@caption")
		  If Verse  = "" Then Verse  = "Verse"
		  
		  //--
		  
		  oldY = y
		  
		  tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "heading")
		  
		  oldWidth = g.PenWidth
		  oldHeight = g.PenHeight
		  g.PenWidth = SmartML.GetValueN(App.MyPrintSettings.DocumentElement, "style/@border_thickness")
		  g.PenHeight = g.PenWidth
		  
		  tempFont.OntoGraphics g
		  g.TextSize = Round(g.TextSize * zoom) //Adjust relative to 72dpi
		  
		  y = y + Round(6 * zoom)  // Put a little blank space before the heading (6 points, to be exact)
		  
		  'oddOffSet = 1
		  'If (g.PenWidth+2) Mod 2 = 0 Then oddOffSet = 0
		  oddOffSet = (g.PenWidth + 2) Mod 2
		  
		  If Uppercase(Left(heading, 1)) = "V" Then   ' -- VERSE --
		    heading = " " + Mid(heading, 2) + " "
		    If Len(heading) = 2 Then heading = " " + Verse + " "
		    'g.DrawRoundRect x + g.PenWidth/2+1, y - g.TextAscent, g.StringWidth(heading) + g.PenWidth+oddOffset, g.TextHeight+1, g.TextHeight, g.TextHeight
		    'g.DrawString heading, x + g.PenWidth+1, y
		    'y = y + g.PenWidth+1
		    
		    rr = New RoundRectShape
		    rr.Width = g.StringWidth(heading) + g.PenWidth + oddOffSet
		    rr.Height = g.TextHeight + g.PenWidth + oddOffSet
		    rr.BorderWidth = g.PenWidth
		    rr.Border = 100 'No transparency
		    rr.CornerHeight = rr.Height / 2
		    rr.CornerWidth = rr.CornerHeight
		    rrx = x + rr.BorderWidth / 2 + oddOffSet ' Take the border into account in calculating the center
		    rry = y  + rr.BorderWidth / 2 + oddOffSet
		    rr.Y = rry + (rr.Height / 2)
		    rr.X = rrx + (rr.Width / 2)
		    rr.Fill = 0
		    rr.BorderColor = g.ForeColor
		    HeadingLine.Append rr
		    HeadingLine.Append GraphicsX.DrawStringShapeV(heading, rr.X, rry + g.TextAscent, tempFont, zoom)
		    ' Position to new y
		    y = rry + rr.Height + (3 * zoom) 'Add three points after
		    
		  ElseIf Uppercase(Left(heading, 1)) = "P" Then   ' -- PRE-CHORUS --
		    If Len(heading) > 1 Then
		      heading = " " + PreChorus + " " + Mid(heading, 2) + " "
		    Else
		      heading = " " + PreChorus + " "
		    End If
		    
		    j = y + (g.PenWidth / 2)
		    If (g.PenWidth+3) Mod 2 = 0 Then j = j + 1
		    //g.DrawLine x + 1, j, x + g.PenWidth + g.StringWidth(heading)+oddOffset+1, j
		    HeadingLine.Append GraphicsX.DrawLineV(x + 1, j, x + g.PenWidth + g.StringWidth(heading) + oddOffSet + 1, j, g.ForeColor, g.PenWidth)
		    j = j + g.TextHeight + (1 * zoom) ' Add one point to give a little space between the text and the line
		    HeadingLine.Append GraphicsX.DrawLineV(x + 1, j, x + g.PenWidth + g.StringWidth(heading) + oddOffSet + 1, j, g.ForeColor, g.PenWidth)
		    'g.DrawLine x + 1, j, x + g.PenWidth + g.StringWidth(heading)+oddOffset+1, j
		    'g.DrawString heading, x + g.PenWidth+1, y
		    HeadingLine.Append GraphicsX.DrawStringShapeV(heading, x + g.PenWidth + 1 + (g.StringWidth(heading) / 2), j - (g.TextHeight - g.TextAscent) - (1 * zoom), _
		    tempFont, zoom) // That nasty Y coordinate is just reversing out the one point whitespace and then going up to the baseline (height - ascent = decent)
		    y = j + (g.PenWidth / 2) + (3 * zoom) // Add whitespace at bottom
		    
		  ElseIf Uppercase(Left(heading, 1)) = "C" Then   ' -- CHORUS --
		    prefix = " " + Chorus
		    If Len(heading) > 1 Then prefix = " " + Chorus + " "
		    heading = prefix + Mid(heading, 2) + " "
		    
		    // Calculate the vector x (center of text to be printed)
		    MidX = x + (g.PenWidth / 2) + 1 + (g.StringWidth(heading) / 2)
		    
		    HeadingLine.Append GraphicsX.DrawRectV(MidX, _
		    y + (g.PenWidth / 2) + (g.TextHeight + (1 * zoom)) / 2, g.StringWidth(heading) + g.PenWidth + oddOffSet, g.TextHeight + (1 * zoom), _
		    g.ForeColor, g.PenWidth)
		    HeadingLine.Append GraphicsX.DrawStringShapeV(heading, midx, y + g.PenWidth + g.TextAscent, tempFont, zoom)
		    
		    'g.DrawRect x + g.PenWidth/2+1, y - g.TextAscent, g.StringWidth(heading)+g.PenWidth + oddOffset, g.TextHeight+1
		    'g.DrawString heading, x + g.PenWidth+1, y
		    'y = y + g.PenWidth+1
		    
		    y = y + g.PenWidth + g.TextHeight + (3 * zoom)
		    
		  ElseIf Uppercase(Left(heading, 1)) = "B" Then   ' -- BRIDGE --
		    prefix = " " + Bridge
		    If Len(heading) > 1 Then prefix = " " + Bridge + " "
		    heading = prefix + Mid(heading, 2) + " "
		    
		    rr = New RoundRectShape
		    rr.Width = g.StringWidth(heading) + g.PenWidth + oddOffSet
		    rr.Height = g.TextHeight + g.PenWidth + oddOffSet
		    rr.BorderWidth = g.PenWidth
		    rr.Border = 100 'No transparency
		    rr.CornerHeight = rr.Height / 4
		    rr.CornerWidth = rr.CornerHeight
		    rrx = x + rr.BorderWidth / 2 + oddOffSet ' Take the border into account in calculating the center
		    rry = y  + rr.BorderWidth / 2 + oddOffSet
		    rr.Y = rry + (rr.Height / 2)
		    rr.X = rrx + (rr.Width / 2)
		    rr.Fill = 0
		    rr.BorderColor = g.ForeColor
		    HeadingLine.Append rr
		    HeadingLine.Append GraphicsX.DrawStringShapeV(heading, rr.X, rry + g.TextAscent, tempFont, zoom)
		    ' Position to new y
		    y = rry + rr.Height + (3 * zoom) 'Add three points after
		    
		  ElseIf Uppercase(Left(heading, 1)) = "T" Then   ' -- TAG --
		    prefix = " " + Tag
		    If Len(heading) > 1 Then prefix = " " + Tag + " "
		    heading = prefix + Mid(heading, 2) + " "
		    ' Side
		    HeadingLine.Append GraphicsX.DrawLineV(x + g.PenWidth / 2, y, x + g.PenWidth / 2, y + g.TextHeight + g.PenWidth, g.ForeColor, g.PenWidth)
		    'g.DrawLine x + g.PenWidth/2, y - g.TextAscent, x + g.PenWidth/2, y+3
		    ' Bottom
		    HeadingLine.Append GraphicsX.DrawLineV(x + g.PenWidth / 2, y + g.TextHeight + g.PenWidth, _
		    x + g.StringWidth(heading) + oddOffSet + (2 * zoom), y + g.TextHeight + g.PenWidth, g.ForeColor, g.PenWidth)
		    
		    HeadingLine.Append GraphicsX.DrawStringShapeV(heading, x + g.PenWidth + (g.StringWidth(heading) / 2), _
		    y + g.TextAscent, tempFont, zoom)
		    
		    y = y + g.TextHeight + g.PenHeight + (3 * zoom)
		    
		    'g.DrawLine x + g.PenWidth/2, y+3, x + g.StringWidth(heading) + oddOffset + 2, y+3
		    'g.DrawString heading, x + g.PenWidth+1, y
		    'y = y + g.PenWidth+1
		  Else
		    'g.DrawString heading, x, y
		    HeadingLine.Append GraphicsX.DrawStringShapeV(heading, x + (g.StringWidth(heading) / 2), y + g.TextAscent, tempFont, zoom)
		    y = y + g.TextHeight + (3 * zoom)
		  End If
		  
		  g.PenWidth = oldWidth
		  g.PenHeight = oldHeight
		  
		  Page.Append HeadingLine
		  
		  Return y - oldY
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Draw_HeadingLine(g As Graphics, x As Integer, y As Integer, zoom As Double, heading As String) As Integer
		  Dim tempFont As FontFace
		  Dim j, oddOffSet, oldY, oldWidth, oldHeight As Integer
		  Dim prefix As String
		  //++
		  Dim rr As New RoundRectShape
		  Dim rrx, rry As Integer
		  Dim PreChorus As String
		  Dim Chorus As String
		  Dim Bridge As String
		  Dim Tag As String
		  
		  PreChorus = App.T.Translate("songml/prechorus/@caption")
		  If PreChorus = "" Then PreChorus = "PreChorus"
		  Chorus = App.T.Translate("songml/chorus/@caption")
		  If Chorus = "" Then Chorus = "Chorus"
		  Bridge = App.T.Translate("songml/bridge/@caption")
		  If Bridge = "" Then Bridge = "Bridge"
		  Tag = App.T.Translate("songml/tag/@caption")
		  If Tag = "" Then Tag = "Tag"
		  //--
		  
		  oldY = y
		  
		  tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "heading")
		  
		  oldWidth = g.PenWidth
		  oldHeight = g.PenHeight
		  g.PenWidth = SmartML.GetValueN(App.MyPrintSettings.DocumentElement, "style/@border_thickness")
		  g.PenHeight = g.PenWidth
		  
		  g.TextFont = tempFont.Name
		  g.TextSize = tempFont.Size * zoom
		  g.Bold = tempFont.Bold
		  g.Italic = tempFont.Italic
		  g.Underline = tempFont.Underline
		  g.ForeColor = tempFont.ForeColor
		  y = y + g.TextHeight
		  
		  oddOffSet = 1
		  If (g.PenWidth+2) Mod 2 = 0 Then oddOffSet = 0
		  
		  If Uppercase(Left(heading, 1)) = "V" Then   ' -- VERSE --
		    heading = " " + Mid(heading, 2) + " "
		    If Len(heading) = 2 Then heading = " Verse "
		    g.DrawRoundRect x + g.PenWidth/2+1, y - g.TextAscent, g.StringWidth(heading) + g.PenWidth+oddOffset, g.TextHeight+1, g.TextHeight, g.TextHeight
		    g.DrawString heading, x + g.PenWidth+1, y
		    y = y + g.PenWidth+1
		  ElseIf Uppercase(Left(heading, 1)) = "P" Then   ' -- PRE-CHORUS --
		    If Len(heading) > 1 Then
		      heading = " Pre-chorus " + Mid(heading, 2)
		    Else
		      heading = " Pre-chorus "
		    End If
		    
		    j = y - g.TextAscent - (g.PenWidth/2)
		    If (g.PenWidth+3) Mod 2 = 0 Then j = j + 1
		    g.DrawLine x + 1, j, x + g.PenWidth + g.StringWidth(heading)+oddOffset+1, j
		    j = j + g.TextHeight + 1
		    g.DrawLine x + 1, j, x + g.PenWidth + g.StringWidth(heading)+oddOffset+1, j
		    g.DrawString heading, x + g.PenWidth+1, y
		    y = y + g.PenWidth+1
		  ElseIf Uppercase(Left(heading, 1)) = "C" Then   ' -- CHORUS --
		    prefix = " Chorus"
		    If Len(heading) > 1 Then prefix = " Chorus "
		    heading = prefix + Mid(heading, 2) + " "
		    g.DrawRect x + g.PenWidth/2+1, y - g.TextAscent, g.StringWidth(heading)+g.PenWidth + oddOffset, g.TextHeight+1
		    g.DrawString heading, x + g.PenWidth+1, y
		    y = y + g.PenWidth+1
		  ElseIf Uppercase(Left(heading, 1)) = "B" Then   ' -- BRIDGE --
		    prefix = " Bridge"
		    If Len(heading) > 1 Then prefix = " Bridge "
		    heading = prefix + Mid(heading, 2) + " "
		    
		    //++EMP
		    //This stuff is here to test an alternative way of drawing,
		    // but probably isn't any better than the original
		    //
		    rr.Width = g.StringWidth(heading) + g.PenWidth + oddOffSet
		    rr.Height = g.TextHeight + 1
		    rr.BorderWidth = g.PenWidth
		    rr.Border = 100 'Temp
		    rr.CornerHeight = rr.Height / 2
		    rr.CornerWidth = rr.CornerHeight
		    rrx = x + g.PenWidth/2+1
		    rry = y - g.TextAscent
		    rr.Y = rry + (rr.Height / 2)
		    rr.X = rrx + (rr.Width / 2)
		    rr.Fill = 0
		    rr.BorderColor = g.ForeColor
		    g.DrawObject rr
		    'g.DrawRoundRect x + g.PenWidth/2+1, y - g.TextAscent, g.StringWidth(heading) + g.PenWidth + oddOffset, g.TextHeight+1, g.TextHeight, g.TextHeight
		    'g.DrawRoundRect rrx, rry, g.StringWidth(heading) + g.PenWidth + oddOffset, g.TextHeight+1, g.TextHeight, g.TextHeight
		    //--
		    
		    g.DrawString heading, x + g.PenWidth+1, y
		    y = y + g.PenWidth+1
		  ElseIf Uppercase(Left(heading, 1)) = "T" Then   ' -- TAG --
		    prefix = " Tag"
		    If Len(heading) > 1 Then prefix = " Tag "
		    heading = prefix + Mid(heading, 2) + " "
		    ' Side
		    g.DrawLine x + g.PenWidth/2, y - g.TextAscent, x + g.PenWidth/2, y+3
		    ' Bottom
		    g.DrawLine x + g.PenWidth/2, y+3, x + g.StringWidth(heading) + oddOffset + 2, y+3
		    g.DrawString heading, x + g.PenWidth+1, y
		    y = y + g.PenWidth+1
		  Else
		    g.DrawString heading, x, y
		  End If
		  
		  g.PenWidth = oldWidth
		  g.PenHeight = oldHeight
		  
		  Return y - oldY
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Draw_LinePrefixes(songDoc As XmlDocument, g As Graphics, x As Integer, y As Integer, ColWidth As Integer, zoom As Double, ByRef slices() As String, lineCount As Integer, ByRef Page As Group2D) As Integer
		  Dim tempFont As FontFace
		  Dim j, lineTop, sliceCount As Integer
		  Dim prefix As String
		  Dim ts As StringShape 'EMP 09/05
		  Dim cs As New CurveShape
		  
		  sliceCount = UBound(slices) / lineCount
		  lineTop = y
		  
		  ' Skip the chord line
		  tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "chords")
		  tempFont.OntoGraphics g
		  g.TextSize = Round(g.TextSize * zoom)
		  y = y + g.TextHeight ' Skip past the chord line
		  
		  ' Skip the capo line if needed
		  If SmartML.GetValueB(songDoc.DocumentElement, "capo/@print") Then
		    tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "capo_chords")
		    tempFont.OntoGraphics g
		    g.TextSize = Round(g.TextSize * zoom)
		    y = y + g.TextHeight ' Skip past the chord line
		  End If
		  
		  tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "lyrics")
		  tempfont.Size = Round(tempfont.Size * zoom)
		  tempFont.OntoGraphics g
		  
		  Dim lineLeft, nextLeft As Integer
		  
		  lineTop = y
		  For j = 2 To lineCount ' Loop through the lines and print
		    prefix = Left(slices(j),1)
		    lineLeft = x + g.StringWidth(prefix)
		    ts = New StringShape
		    tempFont.OntoStringShape ts
		    g.Bold = Not tempFont.Bold ' Inverse
		    ts.Bold = Not tempFont.Bold 'EMP 09/05
		    ts.Text = prefix
		    ts.x = x + (g.StringWidth(prefix) / 2)
		    ts.y = linetop + g.TextAscent
		    Page.Append ts
		    'g.DrawString prefix, x, lineTop
		    g.Bold = tempFont.Bold
		    ts.Bold = tempFont.Bold
		    If lineLeft > nextLeft Then nextLeft = lineLeft
		    lineTop = lineTop + g.TextHeight
		  Next j
		  
		  ' Draw the line
		  'nextLeft = nextLeft + (g.TextAscent/4)
		  nextLeft = nextLeft + g.StringWidth("N") ' one-EN separation
		  g.PenWidth = 0
		  g.PenHeight = 0
		  'g.DrawLine nextLeft, y+(g.TextAscent/4), nextLeft, lineTop+(g.TextAscent/4)
		  cs.x = nextLeft
		  cs.y = y + (g.TextAscent / 4)
		  cs.x2 = nextleft
		  cs.y2 = linetop + (g.TextAscent / 4)
		  cs.BorderColor = g.ForeColor
		  cs.BorderWidth = 1
		  Page.Append cs
		  'nextLeft = nextLeft + (g.TextAscent/2)
		  nextLeft = nextLeft + g.StringWidth("M")
		  
		  Return nextLeft - x
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Draw_LinePrefixes(songDoc As XmlDocument, g As Graphics, x As Integer, y As Integer, zoom As Double, ByRef slices() As String, lineCount As Integer) As Integer
		  Dim tempFont As FontFace
		  Dim j, lineTop, sliceCount As Integer
		  Dim prefix As String
		  Dim ts As New StringShape 'EMP 09/05
		  
		  sliceCount = UBound(slices) / lineCount
		  lineTop = y
		  
		  ' Skip the chord line
		  tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "chords")
		  g.TextFont = tempFont.Name
		  g.TextSize = tempFont.Size * zoom
		  g.Bold = tempFont.Bold
		  g.Italic = tempFont.Italic
		  g.Underline = tempFont.Underline
		  g.ForeColor = tempFont.ForeColor
		  y = y + g.TextHeight ' Skip past the chord line
		  
		  ' Skip the capo line if needed
		  If SmartML.GetValueB(songDoc.DocumentElement, "capo/@print") Then
		    tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "capo_chords")
		    g.TextFont = tempFont.Name
		    g.TextSize = tempFont.Size * zoom
		    g.Bold = tempFont.Bold
		    g.Italic = tempFont.Italic
		    g.Underline = tempFont.Underline
		    g.ForeColor = tempFont.ForeColor
		    y = y + g.TextHeight ' Skip past the chord line
		  End If
		  
		  tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "lyrics")
		  g.TextFont = tempFont.Name
		  g.TextSize = tempFont.Size * zoom
		  g.Bold = tempFont.Bold
		  g.Italic = tempFont.Italic
		  g.Underline = tempFont.Underline
		  g.ForeColor = tempFont.ForeColor
		  //++EMP 09/05
		  ts.TextFont = tempFont.Name
		  ts.TextSize = tempFont.Size
		  ts.Bold = tempFont.Bold
		  ts.Italic = tempFont.Italic
		  ts.Underline = tempFont.Underline
		  ts.FillColor = tempFont.ForeColor
		  ts.Fill = 100
		  ts.Border = 0
		  //--
		  Dim lineLeft, nextLeft As Integer
		  
		  lineTop = y
		  For j = 2 To lineCount ' Loop through the lines and print
		    prefix = Left(slices(j),1)
		    lineLeft = x + g.StringWidth(prefix)
		    lineTop = lineTop + g.TextHeight
		    g.Bold = Not tempFont.Bold ' Inverse
		    ts.Bold = Not tempFont.Bold 'EMP 09/05
		    ts.Text = prefix
		    ts.x = x
		    ts.y = linetop
		    g.DrawObject ts, g.StringWidth(prefix)/2
		    'g.DrawString prefix, x, lineTop
		    g.Bold = tempFont.Bold
		    ts.Bold = tempFont.Bold
		    If lineLeft > nextLeft Then nextLeft = lineLeft
		  Next j
		  
		  ' Draw the line
		  nextLeft = nextLeft + (g.TextAscent/4)
		  g.PenWidth = 0
		  g.PenHeight = 0
		  g.DrawLine nextLeft, y+(g.TextAscent/4), nextLeft, lineTop+(g.TextAscent/4)
		  nextLeft = nextLeft + (g.TextAscent/2)
		  
		  Return nextLeft - x
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Draw_Separator(g As Graphics, x As Integer, y As Integer, w As Integer, zoom As Double, LyricFont As FontFace, ByRef Page As Group2D) As Integer
		  LyricFont.OntoGraphics g
		  g.TextSize = g.TextSize * zoom
		  
		  Page.Append GraphicsX.DrawLineV(x, y + (g.textheight / 2), x + w, y + (g.TextHeight / 2), RGB(127, 127, 127), 1)
		  Return g.TextHeight
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Draw_SoloChordLine(songDoc As XmlDocument, g As Graphics, x As Integer, y As Integer, zoom As Double, ByRef chords() As String) As Integer
		  Dim oldY, chordHeight, chordWidth, capoChordHeight, capoChordWidth As Integer
		  Dim tempFont As FontFace
		  Dim capoChord As String
		  oldY = y
		  
		  tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "chords")
		  g.TextFont = tempFont.Name
		  g.TextSize = tempFont.Size * zoom
		  g.Bold = tempFont.Bold
		  g.Italic = tempFont.Italic
		  g.Underline = tempFont.Underline
		  g.ForeColor = tempFont.ForeColor
		  chordHeight = g.TextHeight
		  y = y + g.TextHeight
		  
		  Dim i As Integer
		  
		  For i = 1 To UBound(chords)
		    
		    ' Place Chord
		    tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "chords")
		    g.TextFont = tempFont.Name
		    g.TextSize = tempFont.Size * zoom
		    g.Bold = tempFont.Bold
		    g.Italic = tempFont.Italic
		    g.Underline = tempFont.Underline
		    g.ForeColor = tempFont.ForeColor
		    chordHeight = g.TextHeight
		    chordWidth = g.StringWidth(chords(i)) + (g.TextAscent/2) ' Don't get the chords too close together, add a little gap
		    g.DrawString chords(i), x, y + g.TextHeight - g.TextAscent
		    
		    ' Place Capo Chord
		    If SmartML.GetValueB(SmartML.GetNode(songDoc.DocumentElement, "capo"), "@print") Then
		      If MainWindow.pop_song_accidentals.ListIndex = 0 Then
		        capoChord = SingleTranspose(chords(i), -SmartML.GetValueN(songDoc.DocumentElement, "capo"), True)
		      Else
		        capoChord = SingleTranspose(chords(i), -SmartML.GetValueN(songDoc.DocumentElement, "capo"), False)
		      End If
		      
		      tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "capo_chords")
		      g.TextFont = tempFont.Name
		      g.TextSize = tempFont.Size * zoom
		      g.Bold = tempFont.Bold
		      g.Italic = tempFont.Italic
		      g.Underline = tempFont.Underline
		      g.ForeColor = tempFont.ForeColor
		      capoChordHeight = g.TextAscent
		      capoChordWidth = g.StringWidth(capoChord) + (g.TextAscent/2) 'Don't get the chords too close together, add a little gap
		      g.DrawString capoChord, x, y + capoChordHeight + g.TextHeight - g.TextAscent
		      If capoChordWidth > chordWidth Then chordWidth = capoChordWidth
		    Else
		      capoChordHeight = 0
		    End If
		    
		    x = x + chordWidth
		    
		  Next i
		  
		  y = y + capoChordHeight
		  Return y - oldY
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Draw_SoloChordLine(songDoc As XmlDocument, g As Graphics, x As Integer, y As Integer, ColWidth As Integer, zoom As Double, ByRef chords() As String, ByRef Page As Group2D) As Integer
		  //++
		  // EMP, 23 March 2006
		  //  Fix bug where scaling doesn't get applied to font [Bug 1456327]
		  //  Streamline to quit making calls to GetValueF all the time
		  //--
		  Dim oldY, chordHeight, chordWidth, capoChordHeight, capoChordWidth As Integer
		  Dim ChordFont As FontFace
		  Dim CapoFont As FontFace
		  Dim capoChord As String
		  Dim OneEMSpace As Integer
		  Dim temp As Integer
		  
		  Dim s As StringShape
		  
		  oldY = y
		  
		  CapoFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "capo_chords")
		  CapoFont.Size = Round(CapoFont.Size * zoom)
		  CapoFont.OntoGraphics g
		  OneEMSpace = g.StringWidth("M")
		  
		  ChordFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "chords")
		  ChordFont.Size = Round(ChordFont.Size * zoom)
		  ChordFont.OntoGraphics g
		  temp = g.StringWidth("M")
		  If temp > OneEMSpace Then OneEMSpace = temp
		  
		  Dim i As Integer
		  
		  For i = 1 To UBound(chords)
		    
		    ' Place Chord
		    ChordFont.OntoGraphics g
		    chordHeight = g.TextHeight
		    chordWidth = g.StringWidth(chords(i)) ' Don't get the chords too close together, add a little gap
		    s = New StringShape
		    s.x = x + (chordWidth / 2)
		    s.y = y + g.TextAscent
		    s.Text = chords(i)
		    ChordFont.OntoStringShape s
		    Page.Append s
		    'g.DrawString chords(i), x, y + g.TextHeight - g.TextAscent
		    
		    ' Place Capo Chord
		    
		    capoChordHeight = 0
		    If SmartML.GetValueB(SmartML.GetNode(songDoc.DocumentElement, "capo"), "@print") Then
		      If MainWindow.pop_song_accidentals.ListIndex = 0 Then
		        capoChord = SingleTranspose(chords(i), -SmartML.GetValueN(songDoc.DocumentElement, "capo"), True)
		      Else
		        capoChord = SingleTranspose(chords(i), -SmartML.GetValueN(songDoc.DocumentElement, "capo"), False)
		      End If
		      
		      CapoFont.OntoGraphics g
		      capoChordHeight = g.TextHeight
		      capoChordWidth = g.StringWidth(capoChord) 'Don't get the chords too close together, add a little gap
		      s = New StringShape
		      CapoFont.OntoStringShape s
		      s.Text = capoChord
		      s.x = x + (capoChordWidth / 2)
		      s.y = y + chordHeight + g.TextAscent
		      Page.Append s
		      'g.DrawString capoChord, x, y + capoChordHeight + g.TextHeight - g.TextAscent
		      If capoChordWidth > chordWidth Then chordWidth = capoChordWidth
		    End If
		    
		    x = x + chordWidth + OneEMSpace // Add a space to provide a minimum gap
		    
		  Next i
		  
		  y = y + capoChordHeight + chordHeight
		  Return y - oldY
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Draw_SoloLyricLine(g As Graphics, x As Integer, y As Integer, zoom As Double, section As String, ByRef line As String, width As Integer) As Integer
		  Dim tempFont As FontFace
		  
		  tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "lyrics")
		  g.TextFont = tempFont.Name
		  g.TextSize = tempFont.Size * zoom
		  g.Bold = tempFont.Bold
		  g.Italic = tempFont.Italic
		  g.Underline = tempFont.Underline
		  g.ForeColor = tempFont.ForeColor
		  
		  If Left(section,1) = "C" Then
		    g.Bold = True
		  Else
		    g.Bold = tempFont.Bold
		  End If
		  '
		  ' This originally had MID(Line, 2), but that cut of the first character on set sheet custom items.
		  ' LTrim is the more general solution
		  '
		  Return GraphicsX.DrawFontString(g, Ltrim(line), x, y, Nil, width)
		  
		  'g.DrawString Mid(line, 2), x, y + g.TextHeight
		  'Return g.TextHeight
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Draw_SoloLyricLine(g As Graphics, x As Integer, y As Integer, zoom As Double, section As String, ByRef line As String, width As Integer, ByRef Page As Group2D) As Integer
		  Dim tempFont As FontFace
		  Dim tempstring As String
		  
		  tempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "lyrics")
		  App.DebugWriter.Write "SongML.Draw_SoloLyricLine: lyrics font base size is " + str(tempFont.Size)
		  tempFont.Size = Round(tempFont.Size * zoom)
		  App.DebugWriter.Write "SongML.Draw_SoloLyricLine: after zoom, size is " + str(tempFont.size)
		  tempFont.OntoGraphics g
		  
		  If Left(section,1) = "C" Then
		    g.Bold = Not g.Bold
		    tempFont.Bold = Not tempFont.Bold
		  End If
		  '
		  ' This originally had MID(Line, 2), but that cut of the first character on set sheet custom items.
		  ' LTrim is the more general solution
		  '
		  tempstring = LTrim(line)
		  Return GraphicsX.DrawFontString(g, tempstring, x, y, tempFont, width, Page)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FullHeading(heading As String, fullVerses As Boolean = False) As String
		  If Uppercase(Left(heading, 1)) = "V" Then   ' -- VERSE --
		    If fullVerses Then
		      heading = BuildHeading("verse", heading)
		    Else
		      heading = " " + Mid(heading, 2) + " "
		      If Len(heading) = 2 Then heading = BuildHeading("verse", "")
		    End If
		  ElseIf Uppercase(Left(heading, 1)) = "P" Then   ' -- PRE-CHORUS --
		    heading = BuildHeading("prechorus", heading)
		  ElseIf Uppercase(Left(heading, 1)) = "C" Then   ' -- CHORUS --
		    heading = BuildHeading("chorus", heading)
		  ElseIf Uppercase(Left(heading, 1)) = "B" Then   ' -- BRIDGE --
		    heading = BuildHeading("bridge", heading)
		  ElseIf Uppercase(Left(heading, 1)) = "T" Then   ' -- TAG --
		    heading = BuildHeading("tag", heading)
		  End If
		  
		  Return heading
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LinesToSlices(ByRef lines() As String, chordLineIndex As Integer, ByRef slices() As String, stripPrefix As Boolean = False) As Integer
		  ' line(chordLineIndex) better be chords
		  ' Returns # of slices in the row a.k.a. the number of chords in the row
		  ' TODO: Or number of lines???
		  //++EMP 12/05
		  // lines() is a one-dimension array containing the <lyrics> text from a song
		  // chordLineIndex is the current position in the array, assumed to point to a chord line
		  // slices is a one-dimension array for output. Odd elements are chords, even elements have the lyrics for that chord
		  // stripPrefix flags if the routine should start at character 2 of the line instead of character one.
		  //--
		  
		  ReDim slices(0)
		  
		  Dim i, j, st, en, length, lineCount, chordCount, firstLineIndex, lastLineIndex As Integer
		  
		  ' Count ahead how may lines we're doing
		  firstLineIndex = chordLineIndex
		  i = chordLineIndex + 1
		  While lastLineIndex = 0
		    If i > UBound(lines) Or Len(lines(i)) = 0 Or Left(lines(i), 1) = ";" Or Left(lines(i), 1) = "[" Or Left(lines(i), 1) = "." Or Left(lines(i), 1) = "-" Then
		      lastLineIndex = i - 1
		    End if
		    i = i + 1
		  Wend
		  
		  lineCount = lastLineIndex - firstLineIndex + 1
		  
		  Dim chordLine, thisslice(0) As String
		  ReDim thisslice(lineCount)
		  
		  chordLine = lines(firstLineIndex)
		  
		  Dim blank As Boolean
		  Dim firstChar As Integer
		  
		  chordLine = RTrim(chordLine)
		  length = Len(chordLine)
		  
		  For i = firstLineIndex To lastLineIndex
		    lines(i) = RTrim(lines(i))
		    j = Len(lines(i))
		    If j > length Then length = j
		  Next i
		  
		  st = 2
		  blank = True
		  firstChar = 1
		  If stripPrefix Then firstChar = 2
		  
		  For i = firstChar To Len(chordLine)
		    If Mid(chordLine, i, 1) = " " Then ' nothing happening, just in between chords, adding as we go
		      thisslice(1) = thisslice(1) + Mid(chordLine, i, 1)
		      For j = 2 To lineCount
		        If i <= Len(lines(firstLineIndex+j-1)) Then thisslice(j) = thisslice(j) + Mid(lines(firstLineIndex+j-1), i, 1)
		      Next j
		      blank = False
		    Else ' Looks like we hit the start of a chord
		      ' Store previous block
		      If Not blank Then
		        For j = 1 To lineCount
		          slices.Append "" + thisslice(j)
		          thisslice(j) = ""
		        Next j
		        chordCount = chordCount + 1
		        blank = True
		      End If
		      ' Fast-forward to the end of this chord's characters
		      While Mid(chordLine, i, 1) <> " " And i <= Len(chordLine)
		        thisslice(1) = thisslice(1) + Mid(chordLine, i, 1)
		        For j = 2 To lineCount
		          If i <= Len(lines(firstLineIndex+j-1)) Then thisslice(j) = thisslice(j) + Mid(lines(firstLineIndex+j-1), i, 1)
		        Next j
		        i = i + 1
		        blank = False
		      Wend
		      i = i - 1
		    End If
		  Next i
		  If Not blank Then
		    For j = 1 To lineCount
		      slices.Append "" + thisslice(j)
		      thisslice(j) = ""
		    Next j
		    chordCount = chordCount + 1
		  End If
		  
		  ' Add on extra lyrics to the last block if the lyric line was longer than the chord line
		  For j = 2 To lineCount
		    If Len(lines(firstLineIndex+j-1)) > Len(chordLine) Then
		      slices((chordCount-1)*lineCount+j)  = slices((chordCount-1)*lineCount+j) + Mid(lines(firstLineIndex+j-1), Len(chordLine)+1)
		    End If
		  Next j
		  
		  Return lineCount
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub LyricsToLines(songDoc As XmlDocument, arr() As String)
		  Dim st, x, strlen As Integer
		  Dim c, lyrics As String
		  ReDim arr(0)
		  
		  lyrics = SmartML.GetValue(songDoc.DocumentElement, "lyrics")
		  
		  strlen = Len(lyrics)
		  If strlen <= 0 Then Exit
		  
		  st = 1
		  For x = 1 To strlen
		    c = Mid(lyrics, x, 1)
		    If c = Chr(10) Then
		      arr.Append RTrim(Mid(lyrics, st, x-st))
		      st = x + 1
		    End If
		  Next x
		  x = x + 1
		  If st <= strlen Then arr.Append RTrim(Mid(lyrics, st, x-st))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub LyricsToSections(songElement As XmlNode, ByRef dict As Dictionary, ByRef order As String)
		  Dim st, x, strlen As Integer
		  Dim lyrics, line, section, subsection As String
		  Dim len As integer
		  
		  section = "default"
		  
		  lyrics = SmartML.GetValue(songElement, "lyrics", True)
		  lyrics = lyrics + Chr(10)
		  lyrics = RemoveSpecialChars(lyrics)
		  strlen = Len(lyrics)
		  If strlen <= 0 Then Exit
		  
		  st = 1
		  For x = 1 To strlen
		    If Mid(lyrics, x, 1) = Chr(10) Then
		      '++JRC: Fixed, RTrim thinks "à" is a whitespace character?
		      'line = RTrim(Mid(lyrics, st, x-st))
		      line = StringUtils.RemoveWhitespace(Mid(lyrics, st, x-st), Globals.WhitespaceChars, 1)
		      '--
		      If Left(line, 1) = "[" Then
		        section = Mid(line, 2, Instr(2, line, "]") - 2)
		      ElseIf Left(line, 1) = "." Then // Chord
		      ElseIf Left(line, 1) = ";" Then // Comment
		      ElseIf Left(line, 1) = "-" Then // Page layout command [Bug 1515605]
		      Else
		        subsection = Trim(Left(line, 1))
		        If Len(subsection) > 0 And section = "default" Then
		        Else
		          subsection = section + subsection
		        End If
		        '++JRC: Same Here
		        'line = Trim(Mid(line, 2))
		        line = StringUtils.RemoveWhitespace(Mid(line, 2), Globals.WhitespaceChars, 2)
		        '--
		        If Len(line) > 0 Then
		          If dict.HasKey(subsection) Then
		            dict.Value(subsection) = dict.Value(subsection) + Chr(10) + line
		          Else
		            dict.Value(subsection) = line
		            order = order + subsection + "|"
		          End If
		        End If
		      End If
		      st = x + 1
		    End If
		  Next x
		  order = Left(order, Len(order)-1) //This deletes the trailing vertical bar
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SingleTranspose(chord As String, by As Integer, sharps As Boolean) As String
		  //++
		  // 17 Sep 2006: I18N the chords by putting them in the translator.
		  //-
		  
		  Dim chords(12) As String
		  Dim base, bass As String
		  Dim i, strlen As Integer
		  Dim hadPreDot As Boolean
		  
		  strlen = Len(chord)
		  If strlen <= 0 Then Return ""
		  
		  If Len(SharpChords(1)) < 1 Then
		    SharpChords = Split(App.T.Translate("songml/sharpchords"), ",")
		    FlatChords = Split(App.T.Translate("songml/flatchords"), ",")
		  End If
		  '++JRC: Fixed E# not being transposed bug #1122463
		  'table of alternate key names
		  If Len(AltSharpChords(1)) < 1 Then
		    AltSharpChords = Split(App.T.Translate("songml/altsharpchords"), ",")
		    AltFlatChords = Split(App.T.Translate("songml/altflatchords"), ",")
		  End If
		  '--
		  
		  If Left(chord, 1) = "." Then
		    hadPreDot = True
		    chord = Mid(chord, 2)
		  End If
		  
		  ' Calculate base chord
		  If strlen >= 2 Then
		    base = Mid(chord, 2, 1)
		    If base = "#" Or base = "b" Then
		      base = Left(chord, 1) + base
		    Else
		      base = Left(chord, 1)
		    End If
		  Else
		    base = Left(chord, 1)
		  End If
		  
		  'If by > 0 Then
		  'transposingUp = True
		  'Else
		  'transposingUp = False
		  'End If
		  
		  If by < 0 Then by = by + 12
		  
		  Dim which As Integer
		  
		  ' Search for sharps
		  which = 1
		  While which >= 1 And which <= 12
		    '++JRC
		    'TODO: Maybe an option use alternate key names
		    If base = SharpChords(which) Or base = AltSharpChords(which) Then
		      '--
		      If sharps Then
		        chord = SharpChords((which+by-1) Mod 12 + 1) + Mid(chord, Len(base)+1)
		        which = -1
		      Else
		        chord = FlatChords((which+by-1) Mod 12 + 1) + Mid(chord, Len(base)+1)
		        which = -1
		      End If
		    End If
		    which = which + 1
		  Wend
		  
		  ' Search for flats if not already found
		  If which > 0 Then
		    which = 1
		    While which >= 1 And which <= 12
		      '++JRC
		      'TODO: Maybe an option use alternate key names
		      If base = FlatChords(which) Or base = AltFlatChords(which) Then
		        '--
		        If sharps Then
		          chord = SharpChords((which+by-1) Mod 12 + 1) + Mid(chord, Len(base)+1)
		          which = -1
		        Else
		          chord = FlatChords((which+by-1) Mod 12 + 1) + Mid(chord, Len(base)+1)
		          which = -1
		        End If
		      End If
		      which = which + 1
		    Wend
		  End If
		  
		  ' Calculate bass chord
		  strlen = Len(chord)
		  i = InStr(chord, "/")
		  If i >= 1 And i < strlen-1 Then
		    bass = Mid(chord, i+2, 1)
		    If bass = "#" Or bass = "b" Then
		      bass = Mid(chord, i+1, 1) + bass
		    Else
		      bass = Mid(chord, i+1, 1)
		    End If
		  ElseIf i >= 1 And i < strlen Then
		    bass = Mid(chord, i+1, 1)
		  Else
		    bass = ""
		  End If
		  
		  If Len(bass) > 0 Then
		    ' Search for sharps
		    which = 1
		    While which >= 1 And which <= 12
		      '++JRC
		      'TODO: Maybe an option use alternate key names
		      If bass = SharpChords(which) Or bass = AltSharpChords(which) Then
		        '--
		        If sharps Then
		          chord = Left(chord, i) + SharpChords((which+by-1) Mod 12 + 1) + Mid(chord, i+Len(bass)+1)
		          which = -1
		        Else
		          chord = Left(chord, i) + FlatChords((which+by-1) Mod 12 + 1) + Mid(chord, i+Len(bass)+1)
		          which = -1
		        End If
		      End If
		      which = which + 1
		    Wend
		    
		    ' Search for flats if not already found
		    If which > 0 Then
		      which = 1
		      While which >= 1 And which <= 12
		        '++JRC
		        'TODO: Maybe an option use alternate key names
		        If bass = FlatChords(which) Or bass = AltFlatChords(which) Then
		          '--
		          If sharps Then
		            chord = Left(chord, i) + SharpChords((which+by-1) Mod 12 + 1) + Mid(chord, i+Len(bass)+1)
		            which = -1
		          Else
		            chord = Left(chord, i) + FlatChords((which+by-1) Mod 12 + 1) + Mid(chord, i+Len(bass)+1)
		            which = -1
		          End If
		        End If
		        which = which + 1
		      Wend
		    End If
		  End If
		  
		  If hadPreDot Then chord = "." + chord
		  
		  Return chord
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SmartRTrim(str As String) As String
		  Dim i As Integer
		  Dim endingSpace As Boolean
		  If Right(str, 1) = " " Then endingSpace = True
		  str = RTrim(str)
		  i = Len(str)
		  While Mid(str, i, 1) = "_"
		    i = i - 1
		  Wend
		  str = RTrim(Left(str, i))
		  If endingSpace Then str = str + " "
		  Return str
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToHTML(songElement As XmlNode) As String
		  //++
		  // 3 December 2006, EMP
		  // Tag HTML with UTF-8 encoding [Bug 1477964]
		  // Properly encode text in HTML.  Utilizes the HTMLEntityEncode method
		  // in OpenSongUtils [Bug 1607916]
		  //--
		  'TODO: Configurable Export Options?
		  CleanLyrics songElement.OwnerDocument
		  
		  Dim s As String
		  s = "<html><head>" + EndOfLine
		  s = s + "  <meta http-equiv=""Content-type"" content=""text/html;charset=UTF-8"" />" + EndOfLine
		  s = s + "  <title>" + SmartML.GetValue(songElement, "title").HTMLEntityEncode + "</title>" + EndOfLine
		  s = s + "  <link rel=""stylesheet"" href=""style.css"" type=""text/css""/>" + EndOfLine
		  s = s + "</head>" + EndOfLine + "<body>" + EndOfLine
		  
		  s = s + "  <div id=""title"">" + SmartML.GetValue(songElement, "title").HTMLEntityEncode + "</div>" + EndOfLine
		  s = s + "  <div id=""author"">" + SmartML.GetValue(songElement, "author").HTMLEntityEncode + "</div>" + EndOfLine
		  '++JRC inlucde hymn number in export
		  If SmartML.GetValue(songElement, "hymn_number").Len > 0 Then _
		  s = s + "  <div id=""hymn_number"">" + App.T.Translate("general_song_editor/hymn_number/@caption").HTMLEntityEncode + " " + SmartML.GetValue(songElement, "hymn_number").HTMLEntityEncode + "</div>" + EndOfLine
		  '--
		  If SmartML.GetValue(songElement, "time_sig").Len > 0 Then _
		  s = s + "  <div id=""time_sig"">" + App.T.Translate("advanced_song_editor/time_sig/@caption").HTMLEntityEncode + ": " + SmartML.GetValue(songElement, "time_sig").HTMLEntityEncode + "</div>" + EndOfLine
		  If SmartML.GetValue(songElement, "tempo").Len > 0 Then _
		  s = s + "  <div id=""tempo"">" + App.T.Translate("advanced_song_editor/tempo/@caption").HTMLEntityEncode + ": " + SmartML.GetValue(songElement, "tempo").HTMLEntityEncode + "</div>" + EndOfLine
		  If SmartML.GetValue(songElement, "capo").Len > 0 Then _
		  s = s + "  <div id=""capo"">" + App.T.Translate("advanced_song_editor/capo/@caption").HTMLEntityEncode + " " + SmartML.GetValue(songElement, "capo").HTMLEntityEncode + "</div>" + EndOfLine
		  '++JRC inlucde presentation order in export
		  If SmartML.GetValue(songElement, "presentation").Len > 0 Then _
		  s = s + "  <div id=""presentation"">" + App.T.Translate("general_song_editor/presentation/@caption").HTMLEntityEncode + " " + SmartML.GetValue(songElement, "presentation").HTMLEntityEncode + "</div>" + EndOfLine
		  '--
		  Dim slices(0), lines(0) As String
		  LyricsToLines songElement.OwnerDocument, lines
		  Dim i, j, lineCount, sliceCount As Integer
		  
		  s = s + "<br/>" + EndOfLine
		  Dim l as Integer
		  For l = 1 To UBound(lines)
		    If Left(lines(l), 1) = "." And l < UBound(lines) And InStr("123456789 ", Left(lines(l+1), 1)) > 0 Then
		      ' --------------- CHORDS W/ LYRICS ---------------
		      lineCount = LinesToSlices(lines, l, slices, False)
		      sliceCount = UBound(slices) / lineCount
		      s = s + "  <table border=""0"" cellpadding=""0"" cellspacing=""0"">" + EndOfLine
		      
		      //++
		      // Don't print capo chords if we wouldn't on regular hardcopy [Bug 1691058]
		      //--
		      If SmartML.GetValueB(songElement, "capo/@print", True, False) Then
		        s = s + "    <tr>" + EndOfLine
		        For i = 0 To sliceCount - 1 ' Loop through each chord slice
		          If i = 0 Then
		            s = s + "      <td class=""capochords"">" + Trim(Mid(SingleTranspose(slices(i*lineCount+1),_
		            12-SmartML.GetValueN(songElement, "capo"), True), 2)).HTMLEntityEncode + "&nbsp;</td>" + EndOfLine
		          Else
		            s = s + "      <td class=""capochords"">" + Trim(SingleTranspose(slices(i*lineCount+1),_
		            12-SmartML.GetValueN(songElement, "capo"), False)).HTMLEntityEncode + "&nbsp;</td>" + EndOfLine
		          End If
		        Next i
		        s = s + "    </tr>" + EndOfLine
		      End If
		      
		      For i = 0 To sliceCount - 1 ' Loop through each chord slice
		        If i = 0 Then
		          s = s + "      <td class=""chords"">" + Trim(Mid(slices(i*lineCount+1),2)).HTMLEntityEncode + "&nbsp;</td>" + EndOfLine
		        Else
		          s = s + "      <td class=""chords"">" + Trim(slices(i*lineCount+1)).HTMLEntityEncode + "&nbsp;</td>" + EndOfLine
		        End If
		      Next i
		      s = s + "    </tr>" + EndOfLine
		      
		      For j = 2 To lineCount ' Loop through the lines and print
		        s = s + "    <tr>" + EndOfLine
		        For i = 0 To sliceCount - 1 ' Loop through each slice
		          If slices(i*lineCount+j).Len = 0 Then
		            slices(i*lineCount+j) = "&nbsp;"
		          Else
		            slices(i*linecount+j) = slices(i*linecount+j).HTMLEntityEncode
		            If Right(slices(i*lineCount+j),1) = " " Then
		              If i = 0 Then
		                If Left(slices(i*lineCount+j),2) = "  " Then slices(i*lineCount+j) = " &nbsp;" + Mid(slices(i*lineCount+j),2)
		                s = s + "      <td class=""lyrics"">" + Trim(Mid(slices(i*lineCount+j),2)) + "&nbsp;</td>" + EndOfLine
		              Else
		                If Left(slices(i*lineCount+j),1) = " " Then slices(i*lineCount+j) = "&nbsp;" + Mid(slices(i*lineCount+j),2)
		                s = s + "      <td class=""lyrics"">" + Trim(slices(i*lineCount+j)) + "&nbsp;</td>" + EndOfLine
		              End If
		            Else
		              slices(i*lineCount+j) = StringUtils.Squeeze(slices(i*lineCount+j), "_")
		              slices(i*lineCount+j) = ReplaceAll(slices(i*lineCount+j), "_", " -&nbsp;")
		              If i = 0 Then
		                If Left(slices(i*lineCount+j),2) = "  " Then slices(i*lineCount+j) = " &nbsp;" + Mid(slices(i*lineCount+j),2)
		                s = s + "      <td class=""lyrics"">" + Trim(Mid(slices(i*lineCount+j),2)) + "</td>" + EndOfLine
		              Else
		                If Left(slices(i*lineCount+j),1) = " " Then slices(i*lineCount+j) = "&nbsp;" + Mid(slices(i*lineCount+j),2)
		                s = s + "      <td class=""lyrics"">" + Trim(slices(i*lineCount+j)) + "</td>" + EndOfLine
		              End If
		            End If
		          End If
		        Next i
		        s = s + "    </tr>" + EndOfLine
		      Next j
		      
		      s = s + "</table>" + EndOfLine
		      l = l + lineCount - 1 ' l will increment again b/c of the For loop
		      
		    ElseIf Left(lines(l), 1) = "-" Then // A variety of printing directives
		      If Mid(lines(l), 2, 2) = "__" Then _ // Horizontal line
		      s = s + "<hr />" + EndOfLine
		    ElseIf Left(lines(l), 1) = "." Then
		      s = s + "  <div class=""chords"">" + Mid(lines(l), 2).HTMLEntityEncode + "</div>" + EndOfLine
		      
		    ElseIf Left(lines(l), 1) = ";" Then
		      s = s + "  <div class=""comment"">" + Mid(lines(l), 2).HTMLEntityEncode + "</div>" + EndOfLine
		      
		    ElseIf Left(lines(l), 1) = "[" Then
		      s = s + "  <p/><div class=""heading"">" + FullHeading(Mid(lines(l), 2, lines(l).Len-2), True).HTMLEntityEncode + "</div>" + EndOfLine
		      
		    Else
		      s = s + "  <div class=""lyrics"">" + Mid(lines(l), 2, lines(l).Len-1).HTMLEntityEncode + "</div>" + EndOfLine
		      
		    End If
		  Next l
		  s = s + "<br/>" + EndOfLine
		  
		  If SmartML.GetValue(songElement, "aka").Len > 0 Then _
		  s = s + "  <div id=""aka"">" + App.T.Translate("advanced_song_editor/aka/@caption").HTMLEntityEncode + " " + SmartML.GetValue(songElement, "aka").HTMLEntityEncode + "</div>" + EndOfLine
		  If SmartML.GetValue(songElement, "copyright").Len > 0 Then _
		  s = s + "  <div id=""copyright"">" + App.T.Translate("general_song_editor/copyright/@caption").HTMLEntityEncode + " " + SmartML.GetValue(songElement, "copyright").HTMLEntityEncode + "</div>" + EndOfLine
		  If SmartML.GetValue(songElement, "ccli").Len > 0 Then _
		  s = s + "  <div id=""ccli"">" + App.T.Translate("general_song_editor/ccli/@caption").HTMLEntityEncode + " " + SmartML.GetValue(songElement, "ccli").HTMLEntityEncode + "</div>" + EndOfLine
		  If ColonTrim(SmartML.GetValue(songElement, "theme")).Len > 0 Then _
		  s = s + "  <div id=""themes"">" + App.T.Translate("advanced_song_editor/themes/@caption").HTMLEntityEncode + ": " + _
		  ColonTrim(SmartML.GetValue(songElement, "theme")).HTMLEntityEncode + "</div>" + EndOfLine
		  If SmartML.GetValue(songElement, "key_line").Len > 0 Then _
		  s = s + "  <div id=""key_line"">" + App.T.Translate("advanced_song_editor/key_line/@caption").HTMLEntityEncode + ": " + _
		  SmartML.GetValue(songElement, "key_line").HTMLEntityEncode + "</div>" + EndOfLine
		  If SmartML.GetValue(songElement, "key").Len > 0 Then _
		  s = s + "  <div id=""key"">" + App.T.Translate("advanced_song_editor/key/@caption").HTMLEntityEncode + " " + _
		  SmartML.GetValue(songElement, "key").HTMLEntityEncode + "</div>" + EndOfLine
		  
		  If SmartML.GetValue(songElement, "user1").Len > 0 Then _
		  s = s + "  <div id=""user1"">" + MainWindow.lbl_song_user1.Text.HTMLEntityEncode + " " + _
		  SmartML.GetValue(songElement, "user1").HTMLEntityEncode + "</div>" + EndOfLine
		  If SmartML.GetValue(songElement, "user2").Len > 0 Then _
		  s = s + "  <div id=""user2"">" + MainWindow.lbl_song_user2.Text.HTMLEntityEncode + " " + _
		  SmartML.GetValue(songElement, "user2").HTMLEntityEncode + "</div>" + EndOfLine
		  If SmartML.GetValue(songElement, "user3").Len > 0 Then _
		  s = s + "  <div id=""user3"">" + MainWindow.lbl_song_user3.Text.HTMLEntityEncode + " " + _
		  SmartML.GetValue(songElement, "user3").HTMLEntityEncode + "</div>" + EndOfLine
		  
		  s = s + "<p><a class=""opensong"" href=""http://www.opensong.org/"">" + _
		  App.T.Translate("about/created_with_opensong").HTMLEntityEncode + "</a></p>" + EndOfLine
		  s = s + "</body></html>"
		  
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ToSetML(songElement As XmlNode, style As XmlNode = Nil)
		  '++JRC: now function has two parameters
		  '--
		  Dim slides, slide As XmlNode
		  Dim order As String
		  Dim SubtitleText As String
		  
		  ' This routine makes an in-place change of a song XML encoding to slides for use in a set.  The
		  'XML node that we are passed is modified in-place instead of creating a new one.  That way,
		  'if it is part of a larger grouping (i.e., a set), the node doesn't have to be replaced and the processing time
		  'for repairing the XML linked lists is avoided.
		  
		  songElement.Name = "slide_group"
		  SmartML.SetValue songElement, "@name", SmartML.GetValue(songElement, "title", True)
		  SmartML.SetValue songElement, "@type", "song"
		  
		  Call SmartML.InsertChild(songElement, "subtitle", 0)
		  
		  SubtitleText = BuildSubtitle(songElement, style)
		  
		  App.DebugWriter.Write(Chr(9) + "Subtitle Text: '" + SubtitleText + "'")
		  
		  'Update subtitle
		  SmartML.SetValue(songElement, "subtitle", SubtitleText)
		  //--
		  slides = SmartML.GetNode(songElement, "slides", True)
		  
		  Dim dict As New Dictionary
		  Dim sub_section, sub_sections(), section, sections() As String
		  
		  LyricsToSections songElement, dict, order
		  
		  Dim presentation As string
		  
		  presentation = SmartML.GetValue(songElement, "presentation", True)
		  'sections = Split(Trim(SmartML.GetValue(songElement, "presentation", True)), " ")
		  sections = Split(Trim(presentation), " ")
		  
		  If UBound(sections) < 0 Then sections = Split(order, "|") ' If there is no presentation defined, we just do the sections in order
		  
		  For Each section In sections
		    If dict.HasKey(section) Then
		      sub_sections = Split(dict.Value(section), "||")
		      For Each sub_section In sub_sections
		        slide = SmartML.InsertChild(slides, "slide", slides.ChildCount)
		        SmartML.SetValue(slide, "body", DeflateString(Trim(sub_section)))
		        If section = "default" Then
		          SmartML.SetValue(slide, "@id", "")
		        Else
		          SmartML.SetValue(slide, "@id", section)
		        End If
		        If Lowercase(Left(section, 1)) = "c" Then
		          SmartML.SetValueB(slide, "@emphasize", True)
		        End If
		      Next
		    End If
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Transpose(songDoc As XmlDocument, by As Integer, sharps As Boolean)
		  Dim lines(0), chords(0), lyrics(0), ctemp, ltemp As String
		  Dim l, i, j, k As Integer
		  Dim newText, line As String
		  Dim hasLyrics As Boolean
		  
		  Dim slices(0) As String
		  Dim linecount, length, longest As Integer
		  Dim endingSpace As Boolean
		  
		  LyricsToLines songDoc, lines
		  
		  For l = 1 To UBound(lines)
		    If Left(lines(l), 1) = "." Then
		      linecount = LinesToSlices(lines, l, slices)
		      
		      ' Loop through the columns
		      For i = 1 To UBound(slices) Step linecount
		        If Len(slices(i)) > 0 Then slices(i) = SingleTranspose(slices(i), by, sharps)
		        longest = Len(SmartRTrim(slices(i)))
		        
		        ' Loop through the rows (chords, lyrics, ...), checking actual lengths
		        For j = i To i+linecount-1
		          length = Len(SmartRTrim(slices(j)))
		          If length > longest Then longest = length
		        Next j
		        
		        ' Loop through the rows (chords, lyrics, ...), matching each Len to longest
		        For j = i To i+linecount-1
		          slices(j) = SmartRTrim(slices(j))
		          length = Len(slices(j))
		          If i >= UBound(slices) - linecount + 1 Then ' last column
		            slices(j) = RTrim(slices(j))
		          ElseIf j = i Or Right(slices(j), 1) = " " Then ' Or Len(slices(j)) = 0 ?
		            For k = length + 1 To longest
		              slices(j) = slices(j) + " "
		            Next k
		          Else
		            For k = length + 1 To longest
		              slices(j) = slices(j) + "_"
		            Next k
		          End If
		        Next j
		      Next i
		      
		      ' Now, put them back together
		      For j = 0 To linecount - 1
		        line = ""
		        For i = 1 To UBound(slices) Step linecount
		          line = line + slices(i+j)
		        Next i
		        newText = newText + SmartRTrim(line) + Chr(13)
		      Next j
		      l = l + linecount - 1
		    Else
		      newText = newText + lines(l) + Chr(13)
		    End If
		  Next l
		  
		  newText = RTrim(newText)
		  SmartML.SetValue(songDoc.DocumentElement, "lyrics", newText)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function RemoveSpecialChars(lyrics As String) As String
		  Dim replaceChars As String
		  Dim i As Integer
		  Dim cLen As Integer
		  Dim charToReplace As String
		  Const kLowerMacron = &H02CD
		  Const kUndertie = &H203F
		  
		  replaceChars = App.MainPreferences.GetValue(prefs.kLyricsReplaceWithSpace, _
		  Encodings.UTF8.Chr(kLowerMacron) + Encodings.UTF8.Chr(kUndertie))
		  
		  cLen = replaceChars.Len
		  
		  For i = 1 To cLen
		    Lyrics = ReplaceAll(lyrics, replaceChars.Mid(i, 1), " ")
		  Next
		  
		  Return lyrics
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LyricText(songElement As XmlNode) As String
		  //
		  // Return only the text of the lyrics from a song,
		  // deleting any chords and formatting, but retaining comments.
		  //
		  
		  Dim rawLyrics As String
		  Dim lyricArray() As String
		  Const kLinesToDiscard = ".-" //No chord lines or print formatting lines
		  
		  rawLyrics = SmartML.GetValue(songElement, "lyrics", False).FormatUnixEndOfLine
		  lyricArray = Split(rawLyrics, EndOfLine.UNIX)
		  
		  For i As Integer = 0 To UBound(lyricArray)
		    If Instr(0, kLinesToDiscard, Left(lyricArray(i), 1)) > 0 Then
		      lyricArray.Remove i
		      Continue
		    End If
		    lyricArray(i) = DeflateString(lyricArray(i))
		  Next
		  
		  Return Join(lyricArray, EndOfLine)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private AltFlatChords(12) As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private AltSharpChords(12) As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FlatChords(12) As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SharpChords(12) As String
	#tag EndProperty


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
End Module
#tag EndModule
