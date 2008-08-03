#tag Class
Protected Class SImageCanvas
Inherits SBufferedCanvas
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  If obj.PictureAvailable() Then
		    If SetImageAsPicture( obj.Picture() ) Then
		      Action
		    End If
		  ElseIf obj.FolderItemAvailable() Then
		    If SetImageAsFile( obj.FolderItem() ) Then
		      Action
		    End If
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Dim f As FolderItem
		  Dim c As New Clipboard
		  
		  If Enabled Then
		    If IsContextualClick Then
		      If InputBox.Ask(App.T.Translate("questions/clear/@caption")) Then
		        ClearImage()
		        Action
		        Return True
		      Else
		        Repaint
		        Return False
		      End If
		    Else
		      If Keyboard.ShiftKey Then
		        PastePicture c
		      Else
		        f = ImageChooserWindow.Lookup 'GetOpenFolderItem("image/jpeg")
		        If f <> Nil Then
		          If SetImageAsFile(f) Then
		            Action
		          End If
		        Else
		          Repaint
		        End If
		        Return True
		      End If
		    End If
		  Else
		    Return False
		  End If
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  Me.AcceptPictureDrop()
		  Me.AcceptFileDrop( ImageFileTypes.All() )
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics)
		  Dim img As Picture
		  Dim bgDrawH, bgDrawW As Integer
		  Dim bgHeightRatio, bgWidthRatio As Double
		  Dim display_height As Integer
		  Dim aspect_ratio As Double
		  
		  If Not Enabled Then
		    g.ForeColor = FillColor
		    g.FillRect 0, 0, Width, Height
		    g.ForeColor = DarkBevelColor
		    g.DrawRect 0, 0, Width, Height
		    Return
		  End If
		  
		  g.ForeColor = bgColor
		  g.FillRect 0, 0, Width, Height
		  
		  img = Me.Image.GetImage()
		  If img <> Nil Then
		    bgDrawH = img.Height
		    bgDrawW = img.Width
		    bgHeightRatio = g.Height / bgDrawH
		    bgWidthRatio = g.Width / bgDrawW
		    aspect_ratio = Min(bgHeightRatio, bgWidthRatio)
		    display_height = bgDrawH * aspect_ratio
		    display_height = g.Height - display_height
		    display_height = display_height / 2
		    
		    Select Case PictureAspect
		      
		    Case SlideStyle.POS_CENTER
		      
		      g.DrawPicture img, _
		      (g.Width / 2) - ((bgDrawW * aspect_ratio) / 2), _
		      display_height, _
		      bgDrawW * aspect_ratio, _
		      bgDrawH * aspect_ratio, _
		      0, 0, bgDrawW, bgDrawH
		      
		    Case SlideStyle.POS_STRETCH
		      g.DrawPicture img, 0, 0, g.Width, g.Height, 0, 0, img.Width, img.Height
		    End Select
		  Else
		    
		    g.ForeColor = DarkBevelColor
		    g.DrawRect 0, 0, Width, Height
		    g.DrawLine 0, 0, Width, Height
		  End If
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function DragEnter(obj As DragItem, action As Integer) As Boolean
		  Dim rejectdrop As Boolean
		  
		  If obj.PictureAvailable() Then
		    rejectdrop = False
		  ElseIf obj.FolderItemAvailable() Then
		    rejectdrop = ( obj.FolderItem().OpenAsPicture() = Nil )
		  Else
		    rejectdrop = True
		  End If
		  
		  Return rejectdrop
		End Function
	#tag EndEvent


#tag MenuHandler
		Function mnu_options() As Boolean Handles mnu_options.Action
			
		End Function
#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub ClearImage()
		  Me.Image.Clear()
		  Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Me.Image = New StyleImage()
		  Me.PictureAspect = SlideStyle.POS_STRETCH // Default handling of background picture
		  Me.bgColor = FillColor
		  
		  ClearImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImageAsString() As String
		  Return Me.Image.GetImageAsString()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PastePicture(c As Clipboard)
		  if c.PictureAvailable() Then
		    Me.Image.SetImage(c.Picture())
		    Repaint()
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetImageAsFile(f As FolderItem) As Boolean
		  Dim bSuccess As Boolean
		  
		  bSuccess = Me.Image.SetImageFromFile(f)
		  If bSuccess Then
		    Me.Repaint()
		  End If
		  
		  Return bSuccess
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImageAsString(str As String)
		  If Me.Image.SetImageAsString(str) Then
		    Repaint()
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImagePosition(Pos As Integer)
		  // Set Center/Stretch attribute
		  PictureAspect = Pos
		  Repaint()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImage(img As StyleImage)
		  If img = Nil Then
		    Me.Image.Clear()
		  Else
		    Me.Image = New StyleImage(img)
		  End If
		  Repaint()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImageFilename() As String
		  Return Me.Image.GetImageFilename()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImage() As StyleImage
		  Return Me.Image
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SetImageAsPicture(img As Picture) As Boolean
		  Me.Image.SetImage(img)
		  Repaint()
		  
		  Return True
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Action()
	#tag EndHook


	#tag Property, Flags = &h0
		bgColor As Color
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Image As StyleImage
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Added to allow the SImageCanvas preview to work in the same way as the real thing, with Stretch & Center options
		#tag EndNote
		Protected PictureAspect As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ControlOrder"
			Visible=true
			Group="Position"
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
			Name="bgColor"
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
