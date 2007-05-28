#tag Class
Class SButton
Inherits Canvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If IsStuck Then Return False
		  IsMouseDown = True
		  MenuItem = ""
		  If Enabled Then
		    Refresh ' False
		    // Mac OSX will open the popup on MouseDown,
		    // Windows & Linux open in MouseUp
		    #If TargetMacOS
		      If Popup <> Nil Then
		        Popup.Open
		      End If
		    #Endif
		    Return True
		  End If
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  IsMouseOver = True
		  If Enabled And Not IsStuck Then Refresh ' False Graphics
		  MouseEnter
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  IsMouseOver = False
		  IsMouseDown = False
		  If Enabled And Not IsStuck Then Refresh ' False Graphics
		  MouseExit
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  // The Linux & Windows systems expect to open
		  // a contextual dialog on mouse up, but OS X
		  // does it on mouse down.
		  #if Not TargetMacOS
		    If Popup <> Nil Then
		      Popup.Open
		    End If
		  #endif
		  IsMouseDown = False
		  Action
		  Refresh ' False Graphics
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Font = New FontFace
		  Enabled = True
		  //++EMP, 12/05
		  // Select which visual to use (Paint event handler)
		  '++JRC Prevent NilObject Exception if MainSettings is Nil
		  If App.MyMainSettings <> Nil Then
		    NewPaint = SmartML.GetValueB(App.MyMainSettings.DocumentElement, "paint/@new", True, False)
		  Else
		    NewPaint = False
		  End If
		  '--
		  //--
		  Open
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics)
		  Dim i, j, offset, tri(6) As Integer
		  
		  If NewPaint Then
		    PaintNew(g)
		    Return
		  End If
		  
		  If g = Nil Then g = Graphics
		  
		  If Not Enabled Then
		    IsMouseDown = False
		    IsMouseOver = False
		  End If
		  
		  If Len(Font.Name) > 0 Then
		    Font.OntoGraphics g
		  Else
		    g.TextFont = "Arial"
		  End If
		  
		  If IsMouseDown Or IsStuck Then
		    offset = 0
		    g.ForeColor = DarkBevelColor
		    g.FillRect 0, 0, Width, Height
		  ElseIf IsMouseOver Then
		    g.ForeColor = LightBevelColor
		    g.FillRect 0, 0, Width, Height
		  Else
		    ' Looks better on Mac OS X without, but doesn't work on Windows with False clear refreshes
		    'g.ForeColor = FillColor
		    'g.FillRect 0, 0, Width, Height
		  End If
		  
		  If Icon <> Nil Then
		    i = (Height - Icon.Height)/2
		    g.DrawPicture Icon, i+offset, i+offset
		    i = i + Icon.Width
		  End If
		  
		  If LabelAlign = 1 Then
		    i = i + (Width - i)/2 - g.StringWidth(Label)/2
		  Else
		    i = i + (Height - g.TextHeight) / 2 + 1
		  End If
		  
		  If Not Enabled Then
		    g.ForeColor = LightBevelColor
		    g.DrawString Label, i+1, Ceil((Height + g.TextAscent) / 2) - 2 + offset+1
		    g.ForeColor = DarkBevelColor
		    g.DrawString Label, i, Ceil((Height + g.TextAscent) / 2) - 2 + offset
		  Else
		    g.ForeColor = Font.ForeColor
		    g.DrawString Label, i, Ceil((Height + g.TextAscent) / 2) - 2 + offset
		  End If
		  
		  If Popup <> Nil Then
		    i = g.TextAscent/4
		    tri(1) = Width - i*3
		    tri(2) = Height/2 - i
		    tri(3) = Width - i*2
		    tri(4) = Height/2
		    tri(5) = Width - i*3
		    tri(6) = Height/2 + i
		    g.FillPolygon tri
		  End If
		  
		  If IsMouseDown Or IsStuck Then
		    g.ForeColor = TextColor
		    g.DrawRect 0, 0, Width, Height
		  ElseIf IsMouseOver Or StickyBevel Then
		    g.ForeColor = DarkBevelColor
		    g.DrawRect 0, 0, Width, Height
		  End If
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddPopupRow(str As String)
		  If Popup = Nil Then
		    Popup = New SButtonPopup
		    Popup.Parent = Me
		  End If
		  
		  Popup.AddRow str
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddPopupSeparator()
		  If Popup = Nil Then
		    Popup = New SButtonPopup
		    Popup.Parent = Me
		  End If
		  
		  Popup.AddSeparator
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeletePopup()
		  Popup = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetLabel() As String
		  Return Label
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetStuck() As Boolean
		  Return IsStuck
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PaintNew(g As Graphics)
		  
		  '
		  ' Significant changes made here to give the application a completely different look.
		  '
		  ' EMP, sometime in early 2005
		  '
		  Dim i, j, offset, tri(6) As Integer
		  Const ShadowWidth = 2
		  Dim ShadowOffset as Integer
		  
		  ShadowOffset = Ceil(ShadowWidth / 2)
		  If g = Nil Then g = Graphics
		  
		  If Not Enabled Then
		    IsMouseDown = False
		    IsMouseOver = False
		  End If
		  
		  If Len(Font.Name) > 0 Then
		    Font.OntoGraphics g
		  Else
		    #if TargetWin32
		      g.TextFont = "Tahoma"
		    #else
		      g.TextFont = "Arial"
		    #endif
		  End If
		  
		  If IsMouseDown Or IsStuck Then
		    offset = 0
		    'g.ForeColor = DarkBevelColor
		    'g.FillRect 0, 0, Width, Height
		    'Fill the background
		    g.ForeColor = DarkTingeColor
		    g.FillRect 0, 0, Width, Height
		    
		    ' Left and Top Bevels
		    g.ForeColor = DarkBevelColor
		    g.PenWidth = ShadowWidth
		    g.DrawLine 0, 0, 0, Height - ShadowWidth
		    g.PenWidth = 1
		    g.PenHeight = ShadowWidth
		    g.drawline 0, 0, Width - ShadowWidth, 0
		    g.PenHeight = 1
		    '
		    ' Right and bottom bevels
		    g.ForeColor = LightBevelColor
		    g.PenWidth = ShadowWidth
		    g.DrawLine 0, height - ShadowOffset-1, Width, height  - ShadowOffset-1
		    g.PenWidth = 1
		    g.PenHeight = ShadowWidth
		    g.DrawLine Width - ShadowOffset -1, 0, Width - ShadowOffset-1, Height
		    g.PenHeight = 1
		    ' Outline
		    g.ForeColor = FrameColor
		    g.PenWidth = 1
		    g.PenHeight = 1
		    g.DrawRect 0, 0, Width, Height
		    
		    'Just for grins, let's make the text different than the other buttons
		    g.Bold = not g.Bold
		    g.TextSize = g.TextSize + 1
		    
		  ElseIf IsMouseOver Then
		    'g.ForeColor = DarkTingeColor
		    'g.FillRect 0, 0, Width, Height
		    'Fill the background
		    g.ForeColor = LightTingeColor
		    g.FillRect 0, 0, Width, Height
		    ' Left and Top Bevels
		    g.ForeColor = DarkBevelColor
		    g.PenWidth = ShadowWidth
		    g.DrawLine 0, 0, 0, Height
		    g.PenWidth = 1
		    g.PenHeight = ShadowWidth
		    g.drawline 0, 0, Width, 0
		    g.PenHeight = 1
		    '
		    ' Right and bottom bevels
		    g.ForeColor = LightBevelColor
		    g.PenWidth = ShadowWidth
		    g.PenHeight = ShadowWidth
		    g.DrawLine 0, height - ShadowOffset - 1, Width, height  - ShadowOffset - 1
		    
		    
		    g.DrawLine Width - ShadowOffset - 1, 0, Width - ShadowOffset -1, Height
		    
		    ' Outline
		    g.ForeColor = FrameColor
		    g.PenWidth = 1
		    g.PenHeight = 1
		    g.DrawRect 0, 0, Width, Height
		    
		    g.Bold = not g.Bold
		    g.TextSize = g.TextSize + 1
		    
		  Else
		    ' Looks better on Mac OS X without, but doesn't work on Windows with False clear refreshes
		    'g.ForeColor = FillColor
		    'g.FillRect 0, 0, Width, Height
		    '
		    ' This code path is for unselected controls that the mouse is not over.  Draw like a
		    ' button ready to be pressed (appears to be poking out), but don't highlight it inside
		    ' the bevels like a MouseOver
		    '
		    'Fill the background similar to the desktop
		    g.ForeColor = FillColor
		    
		    g.FillRect 0, 0, Width, Height
		    
		    ' Left and Top Bevels
		    g.ForeColor = LightBevelColor
		    g.PenWidth = ShadowWidth
		    g.DrawLine 0, 0, 0, Height
		    g.PenWidth = 1
		    g.PenHeight = ShadowWidth
		    g.drawline 0, 0, Width, 0
		    g.PenHeight = 1
		    '
		    ' Right and bottom bevels
		    g.ForeColor = DarkBevelColor
		    g.PenWidth = ShadowWidth
		    g.DrawLine 0, height - ShadowOffset - 1, Width, height  - ShadowOffset - 1
		    g.PenWidth = 1
		    g.PenHeight = ShadowWidth
		    g.DrawLine Width - ShadowOffset - 1, ShadowOffset, Width - ShadowOffset - 1, Height - ShadowOffset -1
		    g.PenHeight = 1
		    ' Outline
		    g.ForeColor = FrameColor
		    g.PenWidth = 1
		    g.PenHeight = 1
		    g.DrawRect 0, 0, Width, Height
		  End If
		  
		  If Icon <> Nil Then
		    i = (Height - Icon.Height)/2
		    g.DrawPicture Icon, i+offset, i+offset
		    i = i + Icon.Width
		  End If
		  
		  If LabelAlign = 1 Then
		    i = i + (Width - i)/2 - g.StringWidth(Label)/2
		  Else
		    i = i + (Height - g.TextHeight) / 2 + 1
		  End If
		  
		  If Not Enabled Then
		    '
		    ' Make the button look like it's pressed, but we'll emboss the text to
		    ' indicate it's disabled
		    
		    ' Left and Top Bevels
		    g.ForeColor = FillColor
		    g.fillrect 0, 0, width, height
		    
		    g.ForeColor = DarkBevelColor
		    g.PenWidth = ShadowOffset
		    g.PenHeight  = ShadowOffset
		    g.DrawRect 0, 0, Width, height
		    
		    '
		    ' Right and bottom bevels
		    g.ForeColor = LightBevelColor
		    g.DrawLine 0, height - ShadowOffset, Width, height  - ShadowOffset
		    g.DrawLine Width - ShadowOffset, 0, Width - ShadowOffset, Height
		    ' Outline
		    g.ForeColor = FrameColor
		    g.PenWidth = 1
		    g.PenHeight = 1
		    g.DrawRect 0, 0, Width, Height
		    
		    ' Now, draw the embossed text
		    g.ForeColor = LightBevelColor
		    g.DrawString Label, i+1, Ceil((Height + g.TextAscent) / 2) - 2 + offset+1
		    g.ForeColor = DarkBevelColor
		    g.DrawString Label, i, Ceil((Height + g.TextAscent) / 2) - 2 + offset
		    
		    'g.ForeColor = FrameColor'
		    'g.PenHeight = 1
		    'g.PenWidth = 1
		    g.DrawRect 0, 0, Width, Height
		    If GrayIcon <> Nil Then
		      i = (Height - GrayIcon.Height)/2
		      g.DrawPicture GrayIcon, i+offset, i+offset
		      i = i + GrayIcon.Width
		    End If
		  Else
		    g.ForeColor = Font.ForeColor
		    g.DrawString Label, i, Ceil((Height + g.TextAscent) / 2) - 2 + offset
		    
		  End If
		  
		  If Popup <> Nil Then
		    i = g.TextAscent/4
		    tri(1) = Width - i*3
		    tri(2) = Height/2 - i
		    tri(3) = Width - i*2
		    tri(4) = Height/2
		    tri(5) = Width - i*3
		    tri(6) = Height/2 + i
		    g.FillPolygon tri
		  End If
		  
		  'If IsMouseDown Or IsStuck Then
		  'g.ForeColor = TextColor
		  g.DrawRect 0, 0, Width, Height
		  'ElseIf IsMouseOver Or StickyBevel Then
		  'g.ForeColor = DarkBevelColor
		  'g.DrawRect 0, 0, Width, Height
		  'End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetEnabled(state As Boolean)
		  Enabled = state
		  Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetFont(font As FontFace)
		  Me.Font = font
		  Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetIcon(pic As Picture, mask As Picture)
		  Icon = pic
		  Icon.Mask.Graphics.DrawPicture mask, 0, 0
		  Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLabel(label As String)
		  Me.Label = label
		  Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetStuck(stuck As Boolean)
		  IsStuck = stuck
		  Refresh
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Action()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseEnter()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseExit()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag Property, Flags = &h0
		Font As FontFace
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			'EMP, added to support PaintNew method
		#tag EndNote
		Protected GrayIcon As Picture
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Icon As Picture
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected IsMouseDown As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected IsMouseOver As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected IsStuck As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Label As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LabelAlign As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MenuItem As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected NewPaint As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Popup As SButtonPopup
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected StickyBevel As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
