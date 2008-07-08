#tag Class
Protected Class SImageCanvas
Inherits SBufferedCanvas
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  If obj.PictureAvailable() Then
		    SetImage obj.Picture()
		    '++JRC Need to call Action so StyleWindow knows we've changed the image
		    Action
		  ElseIf obj.FolderItemAvailable() Then
		    SetImageAsFile obj.FolderItem()
		    Action
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
		          SetImageAsFile f
		          Action
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
		  
		  If Image <> Nil Then
		    bgDrawH = Image.Height
		    bgDrawW = Image.Width
		    bgHeightRatio = g.Height / bgDrawH
		    bgWidthRatio = g.Width / bgDrawW
		    aspect_ratio = Min(bgHeightRatio, bgWidthRatio)
		    display_height = bgDrawH * aspect_ratio
		    display_height = g.Height - display_height
		    display_height = display_height / 2
		    
		    Select Case PictureAspect
		      
		    Case SlideStyle.POS_CENTER
		      
		      g.DrawPicture Image, _
		      (g.Width / 2) - ((bgDrawW * aspect_ratio) / 2), _
		      display_height, _
		      bgDrawW * aspect_ratio, _
		      bgDrawH * aspect_ratio, _
		      0, 0, bgDrawW, bgDrawH
		      
		    Case SlideStyle.POS_STRETCH
		      g.DrawPicture Image, 0, 0, g.Width, g.Height, 0, 0, Image.Width, Image.Height
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
		  Me.Image = Nil
		  Me.Filename = ""
		  
		  Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Me.PictureAspect = SlideStyle.POS_STRETCH // Default handling of background picture
		  Me.bgColor = FillColor
		  
		  ClearImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImageAsPicture() As Picture
		  Return Me.Image
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImageAsString() As String
		  Dim Base64 As String
		  Dim r As New Random
		  Dim f As FolderItem
		  Dim inputStream As BinaryStream
		  
		  If Me.Image <> Nil Then
		    f = TemporaryFolder.Child(Str(r.InRange(100000, 999999)))
		    If f <> Nil Then
		      f.SaveAsPicture Me.Image
		      inputStream = f.OpenAsBinaryFile(False)
		      Base64 = EncodeBase64(inputStream.Read(f.Length))
		      inputStream.Close
		      f.delete
		    End If
		  End If
		  
		  Return Base64
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PastePicture(c As Clipboard)
		  if c.PictureAvailable() Then
		    SetImage c.Picture()
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImageAsFile(f As FolderItem)
		  Dim inputStream As BinaryStream
		  
		  If f <> Nil Then
		    inputStream = f.OpenAsBinaryFile(False)
		    If inputStream <> Nil Then
		      Me.Image = f.OpenAsPicture()
		      
		      If Image <> Nil Then
		        Me.Filename = f.AbsolutePath
		        Repaint
		      Else
		        ClearImage()
		      End If
		    Else
		      InputBox.Message App.T.Translate("errors/unreadable_image", f.AbsolutePath)
		    End If
		  Else
		    ClearImage()
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImageAsString(str As String)
		  Dim r As New Random
		  Dim f As FolderItem
		  Dim outputStream As BinaryStream
		  
		  If Len(Trim(str)) = 0 Then
		    ClearImage
		  Else
		    f = TemporaryFolder.Child(Str(r.InRange(100000, 999999)))
		    If f <> Nil Then
		      outputStream = f.CreateBinaryFile("")
		      outputStream.Write DecodeBase64(str)
		      outputStream.Close
		      Me.Image = f.OpenAsPicture()
		      f.Delete
		      Me.Filename = ""
		    End If
		    
		    Repaint
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImagePosition(Pos As Integer)
		  // Set Center/Stretch attribute
		  PictureAspect = Pos
		  Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImage(img As Picture)
		  Me.Image = img
		  Me.Filename = ""
		  
		  Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImageFilename() As String
		  Return Me.Filename
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Action()
	#tag EndHook


	#tag Property, Flags = &h1
		Protected Filename As String
	#tag EndProperty

	#tag Property, Flags = &h0
		bgColor As Color
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Image As Picture
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Added to allow the SImageCanvas preview to work in the same way as the real thing, with Stretch & Center options
		#tag EndNote
		Protected PictureAspect As Integer
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
			InitialValue="&h000000"
			Type="Color"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
