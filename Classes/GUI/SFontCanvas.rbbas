#tag Class
Protected Class SFontCanvas
Inherits SBufferedCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Dim newFont As FontFace
		  
		  If Enabled And AcceptMouseDown Then
		    If MyFont = Nil Then MyFont = New FontFace
		    newFont = FontChooser.Ask(MyFont, AdvancedOptions)
		    If newFont <> Nil Then
		      SetFont newFont
		      Action
		      Return True
		    Else
		      Refresh False
		    End If
		  Else
		    Return False
		  End If
		End Function
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics)
		  Dim c As Color
		  
		  '++JRC Change the fill color depending on the enabled state
		  If Self.Enabled Then
		    g.ForeColor = LightBevelColor
		  Else
		    g.ForeColor =  DisabledTextColor
		  End If
		  '--
		  g.FillRect 0, 0, Width, Height
		  
		  Dim bo, sh, thick As Integer
		  
		  thick = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "style/@thickness")
		  
		  '++JRC Don't Draw Font if Disabled
		  If MyFont <> Nil And Self.Enabled Then
		    If MyFont.Border Then bo = 1
		    If MyFont.Shadow Then sh = 1
		    
		    c = MyFont.ForeColor
		    If (c.Red > 128 And c.Green > 128) Or _
		      (c.Green > 128 And c.Blue > 128) Or _
		      (c.Red > 128 And c.Blue > 128) Then
		      g.ForeColor = DarkBevelColor
		      g.FillRect 0, 0, Width, Height
		    End If
		    
		    g.TextFont = MyFont.Name
		    g.TextSize = MyFont.Size
		    g.Bold = MyFont.Bold
		    g.Italic = MyFont.Italic
		    g.Underline = MyFont.Underline
		    g.ForeColor = MyFont.ForeColor
		    
		    Call DrawFontString(g, MyFont.Name + " " + Str(MyFont.Size), 0, 0, MyFont, g.Width, "center", g.Height, "middle")
		    
		    If (c.Red > 128 And c.Green > 128) Or _
		      (c.Green > 128 And c.Blue > 128) Or _
		      (c.Red > 128 And c.Blue > 128) Then
		      g.ForeColor = RGB(0,0,0)
		      g.DrawRect 0, 0, Width, Height
		      Return
		    End If
		    
		  End If
		  
		  g.ForeColor = DarkBevelColor
		  g.DrawRect 0, 0, Width, Height
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function GetFont() As FontFace
		  Return MyFont
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetFont(newFont As FontFace)
		  MyFont = newFont
		  Repaint
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Action()
	#tag EndHook


	#tag Property, Flags = &h1
		Protected MyFont As FontFace
	#tag EndProperty

	#tag Property, Flags = &h0
		AcceptMouseDown As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		AdvancedOptions As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptMouseDown"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AdvancedOptions"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
