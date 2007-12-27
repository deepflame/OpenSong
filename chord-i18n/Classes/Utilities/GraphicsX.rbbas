#tag Module
Protected Module GraphicsX
	#tag Method, Flags = &h0
		Function CalcBorderSize(g As Graphics) As Integer
		  ' Make sure the fontface is applied to the graphics object first
		  Dim b As Integer
		  b = Round(g.TextHeight * ThicknessFactor / 40)
		  If b < 1 Then b = 1
		  Return b
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CalcShadowSize(g As Graphics) As Integer
		  ' Make sure the fontface is applied to the graphics object first
		  Dim b As Integer
		  b = Round(g.TextHeight * ThicknessFactor / 50)
		  If b < 1 Then b = 1
		  Return b
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DarkerColor(oldColor As Color) As Color
		  Return RGB(oldColor.Red/2, oldColor.Green/2, oldColor.Blue/2)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DrawFontString(g As Graphics, str As String, x As Integer, y As Integer, f As FontFace, width As Integer = 0, ByRef Page As Group2D, align As String = "left", height As Integer = 0, valign As String = "top") As Integer
		  // Vector graphics version
		  // x, y is top left of bounding box if valign = "top"
		  // x, y is left center of bounding box (half the text is above, half below) if valign = "middle"
		  // x, y is bottom left of bounding box if valign = "bottom"
		  
		  Profiler.BeginProfilerEntry "DrawFontString (" + str + ")"
		  Dim dx, dy, xx, yy, i As Integer
		  Dim lineCount, lineHeight, lineAscent, thisWidth As Integer
		  Dim thisLine, thisChar, tempstring As String
		  Dim shadowFace As FontFace
		  Dim shadowSize, borderSize As Integer
		  Dim Strings As New Group2D
		  Dim s As StringShape
		  Dim r As RectShape
		  Dim tempFont As FontFace
		  Dim zoom As Double = 1.0 // I know I'll have to add this as a parameter, but for now it's a placeholder
		  Dim h As Integer
		  Dim HalfWidth As Double
		  
		  If ThicknessFactor <= 0 Then ThicknessFactor = 1
		  
		  If f <> Nil Then
		    f.OntoGraphics g
		    shadowSize = CalcShadowSize(g)
		    borderSize = CalcBorderSize(g)
		    If f.Border And f.Shadow Then
		      shadowFace = f.Clone
		      shadowFace.ForeColor = shadowFace.ShadowColor
		      shadowFace.BorderColor = shadowFace.ShadowColor
		      shadowFace.Fill = False
		      shadowFace.Shadow = False
		    End If
		  End If
		  
		  lineHeight = FontFaceHeight(g, f) 'g.TextHeight
		  lineAscent = FontFaceAscent(g, f) 'g.TextAscent
		  
		  If width > 0 Then
		    ' wrap
		    xx = 1
		    yy = 1
		    thisWidth = 0
		    While yy <= Len(str) ' loop through the string
		      thisChar = Mid(str, yy, 1)
		      thisWidth = g.StringWidth(Mid(str, xx, yy - xx + 1))
		      'thisWidth = thisWidth + g.StringWidth(thisChar)
		      If thisChar = Chr(10) Or thisChar = Chr(13) Then // New line, reset width and move on
		        xx = yy + 1
		        yy = yy + 1
		        thisWidth = 0
		      ElseIf thisWidth > width Then ' if we get longer than the width...
		        i = yy ' remember yy in case we can't find a space
		        While yy > 1 And thiswidth > width  ' we need to backup
		          thisChar = Mid(str, yy, 1)
		          tempstring = Mid(str, xx, yy - xx + 1)
		          thisWidth = g.StringWidth(tempstring)
		          yy = yy - 1
		        Wend
		        While yy > 1 And thisChar <> " " // Get back to a space now
		          yy = yy - 1
		          thisChar = Mid(str, yy, 1)
		        Wend
		        If yy <= 1 Then yy = i ' we didn't find a space; go back where we were and split there; ugly, but we have to.
		        str = RTrim(Left(str, yy)) + Chr(10) + Mid(str, yy+1)
		        App.DebugWriter.Write "GraphicsX.DrawFontString: Line after split = '" + Mid(str, xx, yy - xx) + "'"
		        xx = yy + 1
		        yy = yy + 1
		        thisWidth = 0
		      End If
		      yy = yy + 1
		    Wend
		  End If
		  
		  lineCount = CountFields(str, Chr(10))
		  For i = 1 To lineCount
		    thisLine = NthField(str, Chr(10), i)
		    ' --- Setup position ---
		    // To this point in the routine, nothing is really any different than what is in the bitmap version of this method (and therefore should be subroutined, but that's a TODO)
		    // Changes here to accomodate differing origins in the vector coordinate system
		    //
		    HalfWidth = FontFaceWidth(g, thisLine, f) / 2
		    If align = "center" Then
		      xx = x + (width / 2)
		    ElseIf align = "right" Then
		      xx = x + width - HalfWidth
		      If xx + HalfWidth > x + width Then // Stretched too far right
		        xx = xx - ((xx + HalfWidth) - (x + width)) //Keep from going over margin
		      End If
		    Else ' left?
		      xx = x + (FontFaceWidth(g, thisline, f) / 2)
		      'App.DebugWriter.Write "GraphicsX.DrawFontString: Left Aligned to " + Str(xx)
		      If xx - HalfWidth < x Then
		        xx = xx + (x - (xx - HalfWidth))
		        'App.DebugWriter.Write "GraphicsX.DrawFontString: Corrected to " + Str(xx)
		      End If
		      If FontFaceWidth(g, Left(thisline, 1), f) > FontFaceWidth(g, "N", f) Then // Nudge to avoid it getting cut off
		        xx = xx + (FontFaceWidth(g, "N", f) / 10)
		        'App.DebugWriter.Write "GraphicsX.DrawFontString: Nudge to " + Str(xx)
		      End If
		    End If
		    
		    // This is changed because of my interpretation of how to count lines is different than Sean's.
		    // Sean uses what's best called a "pre-increment" treatment of the y position (add the line height before writing)
		    // I'm doing post-increment: adding the line height afterward, but recognizing that I have to offset by lineAscent (the height of characters above the baseline)
		    // since the y for a StringShape is based on the baseline.
		    // EMP, 12/05
		    
		    If valign = "bottom" Then
		      yy = y  - lineHeight*(lineCount - (i - 1)) + lineAscent
		    ElseIf valign = "middle" Then
		      yy = y + Round((height - (lineHeight*lineCount))/2) + lineHeight*(i) + lineAscent
		    Else ' top?
		      yy = y + lineAscent + lineHeight * (i-1)
		    End If
		    
		    ' --- Draw decoration ---
		    
		    If f <> Nil Then
		      
		      If f.Fill Then
		        g.ForeColor = f.FillColor
		        r = New RectShape
		        r.FillColor = f.FillColor
		        r.Fill = 100
		        r.x = xx + (GraphicsX.FontFaceWidth(g, thisline, f) / 2) - (borderSize / 2)
		        r.y = yy + (g.TextHeight / 2)
		        r.Height = g.TextHeight
		        r.Width = GraphicsX.FontFaceWidth(g, thisline, f) + (borderSize * 2)
		        strings.Append r
		        //g.FillRect xx-borderSize, yy-g.TextAscent, GraphicsX.FontFaceWidth(g, thisLine, f)+borderSize*2, g.TextHeight
		      End If
		      
		      If f.Shadow Then
		        If f.Border Then
		          Call DrawFontString g, thisLine, xx + shadowSize, yy + shadowSize, shadowFace, width,Strings
		        Else
		          tempFont = f.Clone
		          tempFont.ForeColor = f.ShadowColor
		          strings.Append DrawStringShapeV(thisLine, xx + shadowSize, yy + shadowSize, tempFont, zoom)
		          //g.DrawString thisLine, xx + shadowSize, yy + shadowSize
		        End If
		      End If
		      
		      If f.Border Then
		        'g.ForeColor = f.BorderColor
		        tempFont = f.Clone
		        tempFont.ForeColor = f.BorderColor
		        dy = -borderSize
		        'Sides
		        For dx = -borderSize/2 To borderSize/2
		          Strings.Append DrawStringShapeV(thisLine, xx+Round(dx), yy-borderSize, tempFont, zoom) ' Top
		          Strings.Append DrawStringShapeV(thisLine, xx+Round(dx), yy+borderSize, tempFont, zoom) ' Bottom
		          Strings.Append DrawStringShapeV(thisLine, xx-borderSize, yy+Round(dx), tempFont, zoom) ' Left
		          Strings.Append DrawStringShapeV(thisLine, xx+borderSize, yy+Round(dx), tempFont, zoom) 'Right
		          'g.DrawString thisLine, xx+Round(dx), yy-borderSize ' Top
		          'g.DrawString thisLine, xx+Round(dx), yy+borderSize ' Bottom
		          'g.DrawString thisLine, xx-borderSize, yy+Round(dx) ' Left
		          'g.DrawString thisLine, xx+borderSize, yy+Round(dx) ' Right
		        Next
		        'Corners
		        dy = -borderSize
		        For dx = borderSize/2 To borderSize
		          Strings.Append DrawStringShapeV(thisLine, xx+Round(dx), yy+dy, tempFont, zoom) 'Top-Left
		          Strings.Append DrawStringShapeV(thisLine, xx+Round(dx), yy-dy, tempFont, zoom) 'Bottom-Left
		          Strings.Append DrawStringShapeV(thisLine, xx-Round(dx), yy+dy, tempFont, zoom) 'Top-Right
		          Strings.Append DrawStringShapeV(thisLine, xx-Round(dx), yy-dy, tempFont, zoom) 'Bottom-Right
		          'g.DrawString thisLine, xx+Round(dx), yy+dy ' Top-Left
		          'g.DrawString thisLine, xx+Round(dx), yy-dy ' Bottom-Left
		          'g.DrawString thisLine, xx-Round(dx), yy+dy ' Top-Right
		          'g.DrawString thisLine, xx-Round(dx), yy-dy ' Bottom-Right
		          dy = dy + 1
		        Next
		      End If
		    End If
		    
		    '--- Draw string ---
		    If f <> Nil Then
		      f.OntoGraphics g
		      Strings.Append DrawStringShapeV(thisLine, xx, yy, f, zoom)
		    End If
		  Next i
		  Profiler.EndProfilerEntry
		  
		  If lineCount = 0 Then lineCount = 1
		  Page.Append Strings
		  h = FontFaceHeight(g, f) * lineCount
		  'App.DebugWriter.Write "GraphicsX.DrawFontString: Returning height " + str(h)
		  Return h
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DrawFontString(g As Graphics, str As String, x As Integer, y As Integer, f As FontFace, width As Integer = 0, align As String = "left", height As Integer = 0, valign As String = "top") As Integer
		  Profiler.BeginProfilerEntry "DrawFontString (" + str + ")"
		  Dim dx, dy, xx, yy, i As Integer
		  Dim lineCount, lineHeight, lineAscent, thisWidth As Integer
		  Dim thisLine, thisChar As String
		  Dim shadowFace As FontFace
		  Dim shadowSize, borderSize As Integer
		  
		  If ThicknessFactor <= 0 Then ThicknessFactor = 1
		  
		  If f <> Nil Then
		    f.OntoGraphics g
		    shadowSize = CalcShadowSize(g)
		    borderSize = CalcBorderSize(g)
		    If f.Border And f.Shadow Then
		      shadowFace = f.Clone
		      shadowFace.ForeColor = shadowFace.ShadowColor
		      shadowFace.BorderColor = shadowFace.ShadowColor
		      shadowFace.Fill = False
		      shadowFace.Shadow = False
		    End If
		  End If
		  
		  lineHeight = FontFaceHeight(g, f) 'g.TextHeight
		  lineAscent = FontFaceAscent(g, f) 'g.TextAscent
		  
		  If width > 0 Then
		    ' wrap
		    xx = 1
		    yy = 1
		    thisWidth = 0
		    While yy <= Len(str) ' loop through the string
		      thisChar = Mid(str, yy, 1)
		      thisWidth = thisWidth + g.StringWidth(thisChar)
		      If thisChar = Chr(10) Or thisChar = Chr(13) Then
		        xx = yy + 1
		        yy = yy + 1
		        thisWidth = 0
		      ElseIf thisWidth > width Then ' if we get longer than the width...
		        i = yy ' remember yy in case we can't find a space
		        While yy > 1 And thisChar <> " " ' we need to backup to a space
		          yy = yy - 1
		          thisChar = Mid(str, yy, 1)
		        Wend
		        If yy <= 1 Then yy = i ' we didn't find a space; go back where we were and split there; ugly, but we have to.
		        str = Left(str, yy-1) + Chr(10) + Mid(str, yy+1)
		        xx = yy + 1
		        yy = yy + 1
		        thisWidth = 0
		      End If
		      yy = yy + 1
		    Wend
		  End If
		  
		  lineCount = CountFields(str, Chr(10))
		  For i = 1 To lineCount
		    thisLine = NthField(str, Chr(10), i)
		    ' --- Setup position ---
		    If align = "center" Then
		      xx = x + Round((width - FontFaceWidth(g, thisLine, f))/2)
		    ElseIf align = "right" Then
		      xx = x + width - FontFaceWidth(g, thisLine, f)
		    Else ' left?
		      xx = x
		    End If
		    
		    If valign = "bottom" Then
		      yy = y + height - lineHeight*(lineCount-i)
		    ElseIf valign = "middle" Then
		      yy = y + Round((height - (lineHeight*lineCount))/2) + lineHeight*(i-1) + lineAscent
		    Else ' top?
		      yy = y + lineAscent + lineHeight * (i-1)
		    End If
		    
		    ' --- Draw decoration ---
		    
		    If f <> Nil Then
		      
		      If f.Fill Then
		        g.ForeColor = f.FillColor
		        g.FillRect xx-borderSize, yy-g.TextAscent, GraphicsX.FontFaceWidth(g, thisLine, f)+borderSize*2, g.TextHeight
		      End If
		      
		      If f.Shadow Then
		        If f.Border Then
		          DrawFontString g, thisLine, xx + shadowSize, yy + shadowSize, shadowFace
		        Else
		          g.ForeColor = f.ShadowColor
		          g.DrawString thisLine, xx + shadowSize, yy + shadowSize
		        End If
		      End If
		      
		      If f.Border Then
		        g.ForeColor = f.BorderColor
		        
		        dy = -borderSize
		        'Sides
		        For dx = -borderSize/2 To borderSize/2
		          g.DrawString thisLine, xx+Round(dx), yy-borderSize ' Top
		          g.DrawString thisLine, xx+Round(dx), yy+borderSize ' Bottom
		          g.DrawString thisLine, xx-borderSize, yy+Round(dx) ' Left
		          g.DrawString thisLine, xx+borderSize, yy+Round(dx) ' Right
		        Next
		        'Corners
		        dy = -borderSize
		        For dx = borderSize/2 To borderSize
		          g.DrawString thisLine, xx+Round(dx), yy+dy ' Top-Left
		          g.DrawString thisLine, xx+Round(dx), yy-dy ' Bottom-Left
		          g.DrawString thisLine, xx-Round(dx), yy+dy ' Top-Right
		          g.DrawString thisLine, xx-Round(dx), yy-dy ' Bottom-Right
		          dy = dy + 1
		        Next
		      End If
		    End If
		    
		    '--- Draw string ---
		    If f <> Nil Then g.ForeColor = f.ForeColor
		    g.DrawString thisLine, xx, yy
		    
		  Next i
		  Profiler.EndProfilerEntry
		  
		  If lineCount = 0 Then lineCount = 1
		  Return FontFaceHeight(g, f) * lineCount
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawFontString(g As Graphics, str As String, x As Integer, y As Integer, f As FontFace, width As Integer = 0, align As String = "left", height As Integer = 0, valign As String = "bottom")
		  If DrawFontString(g, str, x, y, f, width, align, height, valign) > 0 Then
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DrawLineV(x As Integer, y As integer, x2 As integer, y2 As Integer, c As color, width As Integer) As CurveShape
		  Dim line As New CurveShape
		  line.x = x
		  line.y = y
		  line.x2 = x2
		  line.y2 = y2
		  line.BorderColor = c
		  line.BorderWidth = width
		  Return line
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DrawRectV(x As Integer, y As integer, width As Integer, Height As Integer, c As Color, borderwidth As Integer) As RectShape
		  Dim rect As New RectShape
		  rect.x = x
		  rect.y = y
		  rect.Width = width
		  rect.Height = Height
		  rect.BorderColor = c
		  rect.Border = 100
		  rect.Fill = 0
		  rect.BorderWidth = borderwidth
		  Return rect
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DrawStringShapeV(text As String, centerX As Integer, baselineY As Integer, f As Fontface, zoom As Double) As StringShape
		  //
		  // Just to save some typing along the way with all the StringShapes being done in DrawFontString
		  //
		  // Note that the x and y are in vector format (x is center, y is baseline)
		  //
		  // Ed Palmer, 12/05
		  //
		  
		  Dim s As New StringShape
		  
		  f.OntoStringShape s, zoom
		  s.x = centerX
		  s.y = baselineY
		  s.Text = text
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FontFaceAscent(g As Graphics, f As FontFace) As Integer
		  ' Make sure the fontface is applied to the graphics object first
		  Dim height As Integer = g.TextAscent
		  If f = Nil Then Return height
		  If f.Border Then height = height + CalcBorderSize(g)
		  Return height
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FontFaceHeight(g As Graphics, f As FontFace) As Integer
		  ' Make sure the fontface is applied to the graphics object first
		  Dim height As Integer = g.TextHeight
		  If f = Nil Then Return height
		  If f.Border Then height = height + CalcBorderSize(g)
		  If f.Shadow Then height = height + CalcShadowSize(g)
		  Return height
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FontFaceWidth(g As Graphics, str As String, f As FontFace) As Integer
		  ' Make sure the fontface is applied to the graphics object first
		  Dim width As Integer = g.StringWidth(str)
		  If f = Nil Then Return width
		  If f.Border Then width = width + CalcBorderSize(g)
		  If f.Shadow Then width = width + CalcShadowSize(g)
		  Return width
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LighterColor(oldColor As Color) As Color
		  Return RGB(_
		  (3*oldColor.Red+255)/2, _
		  (3*oldColor.Green+255)/2, _
		  (3*oldColor.Blue+255)/2)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RandomMidColor() As Color
		  Dim r as New Random
		  Return RGB(r.InRange(64,192), r.InRange(64,192), r.InRange(64,192))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub xSetFace(g As Graphics, f As FontFace)
		  If f <> Nil Then
		    g.ForeColor = f.ForeColor
		    g.TextFont = f.Name
		    g.TextSize = f.Size
		    g.Bold = f.Bold
		    g.Italic = f.Italic
		    g.Underline = f.Underline
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ThicknessFactor As Integer
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
		#tag ViewProperty
			Name="ThicknessFactor"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
