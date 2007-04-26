#tag Module
Protected Module SetML
	#tag Method, Flags = &h1
		Protected Sub DrawSlide(g As Graphics, xslide As XmlNode, xstyle As XmlNode)
		  //++EMP
		  // September 2005
		  // Lots of changes here to support the separation of the slide style from the XML
		  // to speed up slide changes.
		  //
		  // This method is mostly gutted and moved to the other DrawSlide method
		  // (the one that takes a SlideStyle object as its third argument).
		  // This just sets up the object from xstyle and calls down to the other one.
		  // Easier maintenance: the bulk of the code isn't repeated.
		  //
		  // This routine also assumes that it is called from PresentWindow since
		  // it makes a callback to get the style from the dictionary held there.
		  // I debated whether that dictionary should be moved to App level, and
		  // decided I couldn't state unequivocably that only one Style dictionary
		  // would ever be required.  If I'm wrong, so be it, but it gets V1 out the door.
		  
		  Dim Style As SlideStyle 
		  Dim StyleIndex As String 
		  
		  StyleIndex = SmartML.GetValue(xstyle, "@index") 
		  If StyleIndex = "" Then 'is the XML a complete style?
		    Style = New SlideStyle(xstyle)
		    If Style.BodyFont = Nil Then 'assume if this isn't set, xstyle didn't have all the elements
		      Style = PresentWindow.GetStyle("default_style")
		    End If
		  Else
		    Style = PresentWindow.GetStyle(StyleIndex)
		  End If
		  
		  // Forwarding...anyone at the new address??
		  
		  DrawSlide(g, xslide, Style)
		  //--EMP
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DrawSlide(g As Graphics, xslide As XmlNode, Style as SlideStyle)
		  //++EMP
		  // September 2005
		  // Copy of the original DrawSlide method, but with the style argument
		  // changed from a XmlNode to a SlideStyle
		  //
		  // Lots of changes here to support the separation of the slide style from the XML
		  // to speed up slide changes.
		  // Old lines will be commented out with apostrophes, and
		  // new lines will have " 'EMP 9/05 " at the end or have the //++ & //-- blocks around them.
		  
		  Profiler.BeginProfilerEntry "DrawSlide>Declare 1" ' --------------------------------------------------
		  
		  Dim dontcare As Boolean
		  Dim c As Color
		  
		  Dim strip As Integer
		  Dim aspect_ratio, zoom As Double
		  Dim background As Picture
		  Dim bodyStyle, titleStyle, subtitleStyle As FontFace
		  //++EMP 9/05
		  Dim bgHeightRatio, bgWidthRatio As Double
		  Dim stripW, stripH As Integer
		  Dim bgDrawH, bgDrawW As Double
		  Dim gWidth, gHeight As  Integer
		  Dim temp As Integer
		  Dim display_height As Integer
		  Dim license As String
		  Dim MainHeight As Integer
		  Dim Subtitles() As String
		  Dim i As Integer
		  Dim isWrapped As Boolean
		  Dim d2 As String
		  
		  If Style <> Nil Then 'TODO: What if it's NIL????  Ain't gonna be pretty....
		    bodyStyle = Style.BodyFont
		    titleStyle = Style.TitleFont
		    subtitleStyle = Style.SubtitleFont
		  End If
		  
		  gWidth = g.Width
		  gHeight = g.Height
		  //--EMP
		  
		  'bodyStyle = SmartML.GetValueF(xstyle, "body")
		  'titleStyle = SmartML.GetValueF(xstyle, "title")
		  'subtitleStyle = SmartML.GetValueF(xstyle, "subtitle")
		  
		  'zoom = g.Width / 640
		  zoom = gWidth / 640.0 'EMP 09/05
		  bodyStyle.Size = bodyStyle.Size * zoom
		  titleStyle.Size = titleStyle.Size * zoom
		  subtitleStyle.Size = subtitleStyle.Size * zoom
		  
		  Profiler.EndProfilerEntry
		  Profiler.BeginProfilerEntry "DrawSlide>Background" ' --------------------------------------------------
		  
		  aspect_ratio = gWidth / gHeight
		  
		  If Style <> Nil Then background = Style.Background 'EMP 9/05
		  
		  //++EMP 09/05
		  // Paint the background color first.  That way the borders from any trimming will
		  // end up in that color.
		  g.ForeColor = Style.BGColor
		  g.FillRect 0, 0, gWidth, gHeight
		  //--EMP
		  
		  If background <> Nil Then
		    strip = (g.Height/background.Height) * Style.StripFooter
		    //++EMP 09/05, 12/05
		    // This section makes the picture stretch at the picture's aspect ratio, not the screen's.
		    //
		    stripW = strip*aspect_ratio
		    bgDrawH = background.Height - strip
		    bgDrawW = background.Width - stripW
		    bgHeightRatio = gHeight / bgDrawH
		    bgWidthRatio = gWidth / bgDrawW
		    aspect_ratio = Min(bgHeightRatio, bgWidthRatio)
		    display_height = bgDrawH * aspect_ratio //Scale pic to display
		    display_height = gheight - display_height //If this is the "short" side, calculate the difference between the pic and screen
		    display_height = display_height / 2 //Half of that is our y margin
		    
		    Select Case Style.Position
		      
		    Case SlideStyle.POS_CENTER
		      
		      g.DrawPicture background, _
		      (gWidth / 2) - ((bgDrawW * aspect_ratio) / 2), _
		      display_height, _
		      bgDrawW * aspect_ratio, _
		      bgDrawH * aspect_ratio, _
		      stripw, 0, bgDrawW, bgDrawH
		      
		    Case SlideStyle.POS_STRETCH
		      g.DrawPicture background, -(strip*aspect_ratio)/2, 0, g.Width+(strip*aspect_ratio), g.Height+strip, 0, 0, background.Width, background.Height
		    End Select
		    //--EMP
		  End If
		  
		  Profiler.EndProfilerEntry
		  Profiler.BeginProfilerEntry "DrawSlide>Declare 2" ' --------------------------------------------------
		  
		  If xslide = Nil Then Return
		  
		  Dim RealSize, RealBorder, HeaderSize, FooterSize As Integer
		  Dim x, y, z As Integer
		  Dim d, ccli As String
		  Dim multiwrap As Boolean
		  
		  RealBorder = g.Width / 50
		  HeaderSize = RealBorder
		  FooterSize = RealBorder
		  
		  Profiler.EndProfilerEntry
		  Profiler.BeginProfilerEntry "DrawSlide>Title/Subtitle" ' --------------------------------------------------
		  
		  'Dim bodyvalign, bodyalign, titlevalign, titlealign, subtitlevalign, subtitlealign, title, subtitle As String
		  //++EMP 09/05
		  // Get the body a little earlier than originally done.
		  //
		  Dim title, subtitle As String 'EMP 09/05
		  Dim BodyString As String 'EMP 09/05
		  BodyString = SmartML.GetValue(xslide, "body", True).FormatUnixEndOfLine
		  
		  title = SmartML.GetValue(xslide.Parent.Parent, "title")
		  subtitle = SmartML.GetValue(xslide.Parent.Parent, "subtitle")
		  
		  '++JRC: This will split the title unto a new line
		  title = ReplaceAll(title, "|", Chr(10))
		  '--
		  // Subtitles can now be over one line long.  Split the subtitle string on newlines and iterate
		  Subtitles = Split(subtitle, Chr(10))
		  
		  If Style.TitleVAlign = "top" Then
		    HeaderSize = HeaderSize + DrawFontString(g, title, _
		    RealBorder, HeaderSize, titleStyle, g.Width - RealBorder*2, Style.TitleAlign, g.Height - HeaderSize - FooterSize, Style.TitleVAlign)
		    For i = 0 to UBound(Subtitles)
		      If Style.SubtitleVAlign = "top" Then
		        HeaderSize = HeaderSize + DrawFontString(g, subtitles(i), _
		        RealBorder, HeaderSize, subtitleStyle, g.Width - RealBorder*2, Style.SubtitleAlign, g.Height - HeaderSize - FooterSize, Style.SubtitleVAlign)
		      Else
		        FooterSize = FooterSize + DrawFontString(g, subtitles(Ubound(Subtitles) - i), _
		        RealBorder, HeaderSize, subtitleStyle, g.Width - RealBorder*2, Style.SubtitleAlign, g.Height - HeaderSize - FooterSize, Style.SubtitleVAlign)
		      End If
		    Next
		  Else
		    For i = 0 to UBound(Subtitles)
		      If Style.SubtitleVAlign = "top" Then
		        HeaderSize = HeaderSize + DrawFontString(g, subtitles(i), _
		        RealBorder, HeaderSize, subtitleStyle, g.Width - RealBorder*2, Style.SubtitleAlign, g.Height - HeaderSize - FooterSize, Style.SubtitleVAlign)
		      Else
		        FooterSize = FooterSize + DrawFontString(g, subtitles(Ubound(subtitles) - i), _
		        RealBorder, HeaderSize, subtitleStyle, g.Width - RealBorder*2, Style.SubtitleAlign, g.Height - HeaderSize - FooterSize, Style.SubtitleVAlign)
		      End If
		    Next i
		    FooterSize = FooterSize + DrawFontString(g, title, _
		    RealBorder, HeaderSize, titleStyle, g.Width - RealBorder*2, Style.TitleAlign, g.Height - HeaderSize - FooterSize, Style.TitleVAlign)
		  End If
		  
		  Profiler.EndProfilerEntry
		  Profiler.BeginProfilerEntry "DrawSlide>Declare 3" ' --------------------------------------------------
		  
		  MainHeight = g.Height - HeaderSize - FooterSize
		  
		  bodyStyle.OntoGraphics g
		  
		  If SmartML.GetValueB(xslide, "@emphasize", False) And Style.HighlightChorus Then
		    bodyStyle.Italic = Not bodyStyle.Italic
		  End If
		  
		  Dim st, linecount, x2 As Integer
		  Dim line, line2, lines(0) As String
		  Dim UsableWidth As Integer 'Max body width after margins are taken out (EMP 09/05)
		  UsableWidth = g.Width - (2 * RealBorder) ' This just comes up again and again in the calcs & won't change (EMP 09/05)
		  st = 1
		  
		  Profiler.EndProfilerEntry
		  //++EMP 09/05
		  // Take a pass at the slide to see if the lines will fit reasonably as they are.
		  // Hopefully in most cases this will be all we need
		  Profiler.BeginProfilerEntry "DrawSlide -> BestCaseBodyWrap"
		  Dim MaxLineIndex, MaxLineLen As Integer '
		  Dim NHeight As Integer
		  Dim WrapPercent, HWrapPercent, VWrapPercent As Double
		  Dim LineLen As Integer
		  MaxLineLen = 0
		  
		  '++JRC:
		  Dim s As string
		  s = SmartML.GetValue(xslide, "body", True).FormatUnixEndOfLine
		  'SplitToArray(Trim(SmartML.GetValue(xslide, "body", True)).FormatUnixEndOfLine, lines, Chr(10))
		  SplitToArray(StringUtils.RemoveWhitespace(s, Globals.WhitespaceChars, 2), lines, Chr(10))
		  '--
		  
		  ' Find the longest line
		  MaxLineIndex = UBound(lines)
		  For i = 0 to UBound(lines)
		    If g.StringWidth(lines(i)) > MaxLineLen Then
		      MaxLineLen = g.StringWidth(lines(i))
		      MaxLineIndex = i
		    End If
		  Next i
		  
		  // Within reasonable wrapping limits?
		  If MaxLineLen = 0 Then 
		    Profiler.EndProfilerEntry
		    GoTo DrawText // Don't need to check any wrapping, but still draw header and footer (Bug [1453812])
		  End If
		  HWrapPercent = Min(UsableWidth / MaxLineLen, 1.0)
		  VWrapPercent = Min(MainHeight / GraphicsX.FontFaceHeight(g, bodyStyle) , 1.0)
		  WrapPercent = Min(HWrapPercent, VWrapPercent) // Consensus number
		  If WrapPercent > .85 Then // arbitrary, but that means 32pt wouldn't go less than ~28pt
		    g.TextSize = Floor(g.TextSize * WrapPercent) //TextSize is an Integer; keep from hanging on one number
		    Profiler.EndProfilerEntry
		    GoTo DrawText // I know, but the alternatives are a HUGE Else clause or put everything below in a new method
		  End If
		  Profiler.EndProfilerEntry
		  //--EMP
		  
		  Profiler.BeginProfilerEntry "DrawSlide>Pre-shrink 1" ' --------------------------------------------------
		  
		  ' Round Pre-1: Pre-guess shrinkage based on perfect wrapping
		  '++JRC:
		  line = ReplaceAll(StringUtils.RemoveWhitespace(s, Globals.WhitespaceChars, 2), Chr(10), "")
		  '--
		  
		  While g.StringWidth(line) / UsableWidth * GraphicsX.FontFaceHeight(g, bodyStyle) > MainHeight * .85 ' last number offsets the non-perfectness of this guessing
		    g.TextSize = Floor(g.TextSize * .95)
		  Wend
		  
		  Profiler.EndProfilerEntry
		  Profiler.BeginProfilerEntry "DrawSlide>Pre-shrink 2 / Wrap" ' --------------------------------------------------
		  
		  '++JRC:
		  'SplitToArray(Trim(SmartML.GetValue(xslide, "body", True)).FormatUnixEndOfLine, lines, Chr(10))
		  SplitToArray(StringUtils.RemoveWhitespace(s, Globals.WhitespaceChars, 2), lines, Chr(10))
		  '--
		  
		  If Val(Left(lines(1), 2)) > 0 Then multiwrap = True ' If the slide starts with a number, it is probably a verse; lets force multiwrap
		  ' Round 1: Fit to size (pre-wrap)
		  For i = 1 To UBound(lines)
		    If (g.StringWidth(lines(i)) > UsableWidth * 2) Or (multiwrap And g.StringWidth(lines(i)) > UsableWidth) Then
		      ' this line is more than twice as long: multiple-wrapping
		      ' or this line is too long and this slide has already been multiwrapped
		      multiwrap = True
		      line = lines(i)
		      x = 1
		      y = 2
		      ' add character by character until we are too long...
		      While y <= Len(line) And g.StringWidth(Mid(line, x, y-x)) < UsableWidth 'EMP 09/05
		        y = y + 1
		      Wend
		      y = y - 1
		      ' back off until we fit...
		      isWrapped = False
		      For z = y DownTo x
		        d = Mid(line, z, 1)
		        If d = " " and z <> 2 Then ' wrap it here
		          lines(i) = Mid(line, x, z-x)
		          lines.Insert i+1, Mid(line, z+1)
		          isWrapped = True
		          Exit
		        End If
		        //++
		        // For CJK characters, it is perfectly ok to wrap before or after
		        // a CJK character (Unicode codepoint between 4E00 and 9FBF)
		        // (Additional fix for 1530629 added after section outside "For z" loop was inserted)
		        //--
		        If (z <> y) Then
		          d2 = Mid(line, z-1, 1)
		          If (d.Asc >= &h4E00 and d.Asc <= &h9FBF) or _
		            (d2.Asc >= &h4E00 and d2.Asc <= &h9FBF) Then
		            lines(i) = Mid(line, x, z-x)
		            lines.Insert i+1, Mid(line, z)
		            isWrapped = True
		            Exit
		          End If
		        End If
		      Next z
		      
		      //++
		      // Fix added for wrapping Chinese characters [1530629]
		      // May also affect other multi-byte character sets
		      // Corrects issue where the line is too long but there isn't
		      // a space character anywhere to be found.  Just wrap the midpoint.
		      //--
		      If Not isWrapped Then
		        lines(i) = Mid(line, x, y-x)
		        lines.Insert i + 1, Mid(line, y)
		      End If
		    ElseIf g.StringWidth(lines(i)) > UsableWidth Then ' this line is less than twice as long, but still too long: smart wrap it (EMP 09/05)
		      ' FUTURE PROBLEM: If a later longer line would end up shrinking the text, we may not have had to wrap a prior line
		      line = lines(i)
		      lines.Insert i+1, SmartWrap(line)
		      lines(i) = line
		      'While g.StringWidth(lines(i)) > g.Width - (2*RealBorder)
		      While g.StringWidth(lines(i)) > UsableWidth 'EMP 09/05
		        g.TextSize = Floor(g.TextSize * .95)
		      Wend
		      'While g.StringWidth(lines(i+1)) > g.Width - (2*RealBorder)
		      While g.StringWidth(lines(i+1)) > UsableWidth 'EMP 09/05
		        g.TextSize = Floor(g.TextSize * .95)
		      Wend
		      i = i + 1 ' skip the extra
		    End If
		  Next i
		  
		  Profiler.EndProfilerEntry
		  Profiler.BeginProfilerEntry "DrawSlide>Post-shrink" ' --------------------------------------------------
		  
		  DrawText: 'EMP 09/05
		  
		  ' Post-shrink - we did our best, this is just in case.
		  While UBound(lines) * GraphicsX.FontFaceHeight(g, bodyStyle) > MainHeight
		    ' FUTURE PROBLEM: When we size it down, we should rewrap it all
		    g.TextSize = Floor(g.TextSize * .95)
		  Wend
		  
		  Profiler.EndProfilerEntry
		  Profiler.BeginProfilerEntry "DrawSlide>Draw Text" ' --------------------------------------------------
		  
		  
		  
		  bodyStyle.Size = g.TextSize
		  line = ""
		  For i = 1 To UBound(lines)
		    line = line + lines(i) + Chr(10)
		  Next i
		  line = RTrim(line)
		  
		  DrawFontString g, line, RealBorder, HeaderSize, bodyStyle, UsableWidth, Style.BodyAlign, MainHeight, Style.BodyVAlign 'EMP 09/05
		  
		  Profiler.EndProfilerEntry
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DrawTitle(g As Graphics, xslide As XmlNode, xstyle As XmlNode, x As Integer, y As Integer, width As Integer, align As String, valign As String) As Integer
		  Dim RealSize, RealThickness, i, oldY, newX As Integer
		  Dim zoom As Double
		  Dim c As Color
		  Dim title, subtitle, ccli As String
		  Dim titleStyle, subtitleStyle As FontFace
		  
		  titleStyle = SmartML.GetValueF(xstyle, "title")
		  subtitleStyle = SmartML.GetValueF(xstyle, "subtitle")
		  
		  oldY = y
		  zoom = g.Width / 640
		  
		  title = SmartML.GetValue(xslide.Parent.Parent, "title")
		  subtitle = SmartML.GetValue(xslide.Parent.Parent, "subtitle")
		  
		  For i = 1 To 2
		    ' ----- SUBTITLE -----
		    If (i = 1 And valign = "bottom") Or (i = 2 And valign = "top") Then
		      subtitleStyle.Size = subtitleStyle.Size * zoom
		      subtitleStyle.OntoGraphics g
		      
		      If align = "right" Then
		        newX = x + width - FontFaceWidth(g, subtitle, subtitleStyle)
		      ElseIf align = "center" Then
		        newX = x + (width - FontFaceWidth(g, subtitle, subtitleStyle)) / 2
		      Else
		        newX = x
		      End If
		      If valign = "top" Then y = y + FontFaceHeight(g, subtitleStyle)
		      
		      DrawFontString g, subtitle, newX, y, subtitleStyle
		      
		      If valign = "bottom" Then y = y - FontFaceHeight(g, subtitleStyle)
		      If valign = "top" Then Return y - oldY
		    End If
		    
		    ' ----- TITLE -----
		    If (i = 1 And valign = "top") Or (i = 2 And valign = "bottom") Then
		      titleStyle.Size = titleStyle.Size * zoom
		      titleStyle.OntoGraphics g
		      
		      If valign = "top" Then y = y + FontFaceAscent(g, titleStyle)
		      
		      If align = "right" Then
		        newX = x + width - FontFaceWidth(g, title, titleStyle)
		      ElseIf align = "center" Then
		        newX = x + (width - FontFaceWidth(g, title, titleStyle)) / 2
		      Else
		        newX = x
		      End If
		      
		      DrawFontString g, title, newX, y, titleStyle
		      
		      If valign = "bottom" Then
		        y = y - FontFaceAscent(g, titleStyle)
		        Return oldY - y
		      End If
		    End If
		    
		  Next i
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FloorMinMax(d As Double, min As Integer, max As Integer) As Integer
		  ' Rounds, but if it ends up 0, it jumps to 1.
		  Dim i As Integer
		  i = Floor(d)
		  If i > max Then Return max
		  If i < min Then Return min
		  Return i
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetNextSlide(xSlide As XmlNode) As XmlNode
		  Dim slide_group As XmlNode
		  
		  If xslide.NextSibling <> Nil Then
		    Return xslide.NextSibling
		  Else
		    slide_group = xSlide.Parent.Parent.NextSibling
		    Do Until slide_group = Nil Or SmartML.GetValue(slide_group, "@type") <> "style"
		      slide_group = slide_group.NextSibling
		    Loop
		    If slide_group <> Nil Then
		      Return SmartML.GetNode(slide_group, "slides", True).FirstChild
		    Else
		      Return Nil
		    End If
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetPrevSlide(xSlide As XmlNode) As XmlNode
		  Dim slide_group As XmlNode
		  
		  If xslide.PreviousSibling <> Nil Then
		    Return xslide.PreviousSibling
		  Else
		    slide_group = xSlide.Parent.Parent.PreviousSibling
		    Do Until slide_group = Nil Or SmartML.GetValue(slide_group, "@type") <> "style"
		      slide_group = slide_group.PreviousSibling
		    Loop
		    If slide_group <> Nil Then
		      Return SmartML.GetNode(slide_group, "slides", True).LastChild
		    Else
		      Return Nil
		    End If
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetSetItem(xSet As XmlDocument, index As Integer) As XmlNode
		  Dim slide_groups, slide_group As XmlNode
		  Dim i As Integer
		  i = 1
		  
		  slide_groups = SmartML.GetNode(xSet.DocumentElement, "slide_groups", True)
		  If slide_groups = Nil Then Return Nil
		  
		  'slide_group = slide_groups.FirstChild
		  'While slide_group <> Nil And i < index
		  'slide_group = slide_group.NextSibling
		  'i = i + 1
		  'Wend
		  
		  'Return slide_group
		  If index < 1 Or index > slide_groups.ChildCount Then Return Nil
		  Return slide_groups.Child(index-1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetSlide(xSet As XmlDocument, index As Integer) As XmlNode
		  ' TODO: Use SlideCounts to speed up
		  If index = 0 Then Return Nil
		  index = index - 1
		  
		  Dim count As Integer
		  Dim slide_group, slides As XmlNode
		  
		  slide_group = SmartML.GetNode(xSet.DocumentElement, "slide_groups", True).FirstChild
		  
		  While count <= index
		    If slide_group = Nil Then
		      Return Nil ' Ran out of slides
		    ElseIf SmartML.GetValue(slide_group, "@type") <> "style" Then
		      slides = SmartML.GetNode(slide_group, "slides", True)
		      If count + slides.ChildCount > index Then
		        index = index - count
		        count = index + 1 ' flags the loop to stop
		      Else
		        count = count + slides.ChildCount
		        slide_group  = slide_group.NextSibling
		      End If
		    Else ' this group is a style group; skip it
		      slide_group  = slide_group.NextSibling
		    End If
		  Wend
		  
		  Return slides.Child(index)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetStyle(xSlide As XmlNode) As XmlNode
		  //++EMP 09/05
		  
		  Dim prev_group, neighbor_slide, style As XmlNode
		  Dim GetNext As Boolean
		  Dim SlideType As String
		  Dim SlideGroup As XmlNode
		  
		  GetNext = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@blank_uses_next", True, True)
		  SlideGroup = xSlide.Parent.Parent
		  SlideType = SmartML.GetValue(SlideGroup, "@type", False)
		  
		  ' Check for a directly defined override style
		  style = SmartML.GetNode(SlideGroup, "style", False)
		  //++
		  // February 2007: Songs can either take on the style defined by the song
		  // or by a style change.  The behavior prior to BL14 was that the song style
		  // prevailed always.  In BL15, introduce a "hidden" control for this, allowing a style
		  // change to control the song's appearance (which seems to me to be the
		  // "path of least astonishment" after spending hours to chase down what I thought
		  // was a bug -- EMP)
		  //--
		  If style <> Nil Then 
		    If SlideType <> "song" Then Return style
		    //++
		    // Only need to determine if the song style or the set style has precedence if there
		    // is a style change affecting the song.
		    //--
		    If (Not StyleChangeActive(SlideGroup)) Or (SongStylePreferred(SlideGroup)) Then Return Style
		  End If
		  
		  ' If we are on a blank, and there is another slide after, we'll search for it's style instead.
		  ' Or, if we're at the end and we're blank (name), then we'll use the previous
		  ' TODO: Make this a selectable feature
		  '
		  'Changed (Joshua)
		  ' Or custom slide that the user forgot to name(Yes I've done this)
		  ' Incorporated into Ed's version by adding a condition to the outer If
		  //++
		  // February 2007: take advantage of the addition of a "blank" type.
		  //--
		  
		  If SlideType = "blank" Then
		    If GetNext Then
		      neighbor_slide = GetNextSlide(xSlide)
		      If neighbor_slide <> Nil Then Return GetStyle(neighbor_slide)
		    Else
		      neighbor_slide = GetPrevSlide(xSlide)
		      If neighbor_slide <> Nil Then Return GetStyle(neighbor_slide)
		    End If
		  End If
		  
		  //++
		  // Chase back to find possible style changes
		  //--
		  Dim reverting As Boolean
		  reverting = False
		  
		  prev_group = SlideGroup.PreviousSibling
		  While prev_group <> Nil
		    If SmartML.GetValue(prev_group, "@type") = "style" Then
		      If SmartML.GetValue(prev_group, "@action") = "new" Then
		        If reverting Then
		          reverting = False
		          prev_group = prev_group.PreviousSibling
		        Else 
		          Return SmartML.GetNode(prev_group, "style", False)
		        End If
		      ElseIf SmartML.GetValue(prev_group, "@action") = "revert" Then
		        reverting = True
		        prev_group = prev_group.PreviousSibling
		      Else ' unknown action type
		        prev_group = prev_group.PreviousSibling
		      End If
		    Else ' not a style group
		      prev_group = prev_group.PreviousSibling
		    End If
		  Wend
		  
		  ' No directly connected styles, and no overrides, so...
		  If SlideType = "scripture" Then
		    Return SmartML.GetNode(App.MyPresentSettings.DocumentElement, "scripture_style")
		  Else
		    Return SmartML.GetNode(App.MyPresentSettings.DocumentElement, "default_style")
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SetItemCount(xSet As XmlDocument) As Integer
		  Dim slide_groups As XmlNode
		  
		  slide_groups = SmartML.GetNode(xSet.DocumentElement, "slide_groups", True)
		  
		  If slide_groups = Nil Then Return 0
		  Return slide_groups.ChildCount
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SmartWrap(ByRef str As String) As String
		  // Truncates the passed string at the wrap point and returns the second line of the string
		  
		  Dim temp,c As String
		  Dim back, fore, i, center, quarter, breakpoint As Integer
		  Const Punctuation = ",.;?!)""" 'EMP 09/05
		  Const PunctuationAndSpace = ",.;?!)"" "
		  
		  back = 1
		  center = Len(str)/2
		  quarter = Len(str)/4
		  breakpoint = 0
		  
		  For i = quarter To 3*quarter
		    c = Mid(str, i, 1)
		    If c = "," Or c = ":" Or c = ";" Or c = "." Or c = "?" Or c = "!" Or c = ")" Then
		      If Abs(i - center) < Abs(breakpoint - center) Then breakpoint = i
		    End If
		  Next i
		  If breakpoint = 0 Then
		    For i = 1 To Len(str)
		      c = Mid(str, i, 1)
		      If c = "," Or c = ":" Or c = ";" Or c = "." Or c = "?" Or c = "!" Or c = ")" Or c = " " Then
		        If Abs(i - center) < Abs(breakpoint - center) Then breakpoint = i
		      End If
		    Next i
		    If breakpoint = 0 Then Return ""
		  End If
		  //++EMP 09/05
		  'Take care of a corner case with this....since the loop counts upward, it can miss
		  ' the case where two or more punctuation marks immediately follow each other
		  ' example is something like: Here I am ("Here I am"), 
		  ' this should wrap after the comma, not the quote mark
		  '
		  c = mid(str, breakpoint + 1, 1)
		  While InStr(Punctuation, c) > 0
		    breakpoint = breakpoint + 1
		    c = mid(str, breakpoint + 1, 1)
		  Wend
		  //--EMP 09/05
		  
		  temp = Trim(Mid(str, breakpoint+1))
		  str = Trim(Left(str, breakpoint))
		  Return temp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SongStylePreferred(SlideGroup As XmlNode) As Boolean
		  //++
		  // Determine if a song-specific style should be used even
		  // if a style change is active.
		  // Current implementation does not use the song's
		  // slide group passed as argument (looks at PresentationSettings).
		  // Coded this way to allow for this to be handled on a song-by-song basis
		  // in  the future.
		  //--
		  Return SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "song_style_preferred", True, True)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SplitToArray(str As String, ByRef arr() As String, char As String)
		  Dim st, x As Integer
		  Dim c As String
		  ReDim arr(0)
		  
		  str = str + char
		  
		  st = 1
		  x = InStr(st, str, char)
		  While x >= st
		    '++JRC:
		    'arr.Append RTrim(Mid(str, st, x-st))
		    arr.Append StringUtils.RemoveWhitespace(Mid(str, st, x-st), Globals.WhitespaceChars, 1)
		    '--
		    
		    st = x + Len(char)
		    x = InStr(st, str, char)
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StyleChangeActive(SlideGroup As XmlNode) As Boolean
		  //++
		  // Determine if the passed slide group is affected by an active style change
		  //--
		  
		  Dim prev_group As XmlNode
		  
		  prev_group = SlideGroup.PreviousSibling
		  While prev_group <> Nil
		    If SmartML.GetValue(prev_group, "@type") = "style" Then
		      If SmartML.GetValue(prev_group, "@action") = "new" Then
		        Return True
		      ElseIf SmartML.GetValue(prev_group, "@action") = "revert" Then
		        Return False
		      End If
		    End If ' not a style group
		    prev_group = prev_group.PreviousSibling
		  Wend
		  
		End Function
	#tag EndMethod


End Module
#tag EndModule
