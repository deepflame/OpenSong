#tag Class
Protected Class FontFace
	#tag Method, Flags = &h0
		Function Clone() As FontFace
		  Dim f As New FontFace
		  f.Bold = Bold
		  f.ForeColor = ForeColor
		  f.Italic = Italic
		  f.Name = Name
		  f.Size = Size
		  f.Underline = Underline
		  f.Shadow = Shadow
		  f.ShadowColor = ShadowColor
		  f.Border = Border
		  f.BorderColor = BorderColor
		  f.Fill = Fill
		  f.FillColor = FillColor
		  Return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Name = "Arial"
		  Size = 10
		  ForeColor = &c000000
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OntoGraphics(g As Graphics)
		  g.ForeColor = ForeColor
		  g.TextFont = Name
		  g.TextSize = Size
		  g.Bold = Bold
		  g.Italic = Italic
		  g.Underline = Underline
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OntoStringShape(byRef s As StringShape, Zoom As Double = 1.0)
		  //++
		  // updates the properties of a StringShape to reflect the FontFace
		  //
		  // Ed Palmer, 12/05
		  //--
		  
		  s.TextFont = Name
		  s.TextSize = Round(Size * Zoom)
		  s.Bold = Bold
		  s.FillColor = ForeColor
		  s.Italic = Italic
		  s.Underline = Underline
		  
		  if Border Then
		    s.Border = 0
		    s.BorderWidth = 1
		    s.BorderColor = BorderColor
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Bold As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Border As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		BorderColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		Fill As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FillColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		ForeColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		Italic As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Shadow As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ShadowColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		Size As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Underline As Boolean
	#tag EndProperty


End Class
#tag EndClass
