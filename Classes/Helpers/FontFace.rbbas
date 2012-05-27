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

	#tag Method, Flags = &h0
		Function ToCSS(borderWidth As Int8 = 1) As String
		  //++
		  // Convert the FontFace to its CSS equivalent declarations
		  //
		  // Since Border is an attribute of FontFace, but the width of the border is set in the PrintPreferences,
		  // pass this in as an optional parameter
		  //
		  // For the moment, ignores the FillColor attribute.  TODO: Investigate where this is used and if it needs
		  // to be incorporated in this method
		  //
		  // Shadow and ShadowColor are likewise ignored.
		  //--
		  
		  Dim s As String = ""
		  Dim tab As String = "    "
		  
		  s = s + tab + "font-family: """ + Name + """;" + EndOfLine
		  s = s + tab + "color: " + ColorToCSS(ForeColor) + ";" + EndOfLine
		  s = s + tab + "font-size: " + CStr(Size) + "pt;" + EndOfLine
		  
		  If Italic Then
		    s = s + tab + "font-style: italic;" + EndOfLine
		  End If
		  
		  If Bold Then
		    s = s + tab + "font-weight: bold;" + EndOfLine
		  End If
		  
		  If Border Then
		    s = s + tab + "border: " + CStr(borderWidth) + "px solid " + ColorToCSS(BorderColor) + ";" + EndOfLine
		  End If
		  
		  If Underline Then
		    s = s + tab + "text-decoration: underline;" + EndOfLine
		  End If
		  
		  Return s
		End Function
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


	#tag ViewBehavior
		#tag ViewProperty
			Name="Bold"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Border"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderColor"
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Fill"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FillColor"
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ForeColor"
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Shadow"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowColor"
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
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
			Name="Underline"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
