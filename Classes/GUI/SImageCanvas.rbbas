#tag Class
Protected Class SImageCanvas
Inherits SBufferedCanvas
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  Dim p As Picture
		  Dim f As FolderItem
		  if obj.PictureAvailable Then
		    Image = Nil
		    p = obj.Picture
		    f = GetTemporaryFolderItem()
		    If f <> Nil Then
		      f.SaveAsJPEG p
		      SetImageAsFile f
		      f.Delete
		    End If
		    Refresh
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Dim f As FolderItem
		  Dim c As New Clipboard
		  If Enabled Then
		    If IsCMMClick Then
		      If InputBox.Ask(App.T.Translate("questions/clear/@caption")) Then
		        Image = Nil
		        Base64 = ""
		        Repaint
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
		  AcceptPictureDrop
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


#tag MenuHandler
		Function mnu_options() As Boolean Handles mnu_options.Action
			
		End Function
#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub ClearImage()
		  Base64 = ""
		  Image = Nil
		  Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  PictureAspect = SlideStyle.POS_STRETCH // Default handling of background picture
		  bgColor = FillColor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImageAsPicture() As Picture
		  Return Image
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImageAsString() As String
		  Return Base64
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PastePicture(c As Clipboard)
		  Dim p As Picture
		  Dim f As FolderItem
		  if c.PictureAvailable Then
		    Image = Nil
		    p = c.Picture
		    f = GetTemporaryFolderItem()
		    If f <> Nil Then
		      f.SaveAsJPEG p
		      SetImageAsFile f
		      f.Delete
		    End If
		    Refresh
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImageAsFile(f As FolderItem)
		  Dim inputStream As BinaryStream
		  
		  If f <> Nil Then
		    inputStream = f.OpenAsBinaryFile(False)
		    If inputStream <> Nil Then
		      Base64 = EncodeBase64(inputStream.Read(f.Length))
		      inputStream.Close
		      Image = f.OpenAsPicture
		    Else
		      InputBox.Message App.T.Translate("errors/unreadable_image", f.AbsolutePath)
		    End If
		  End If
		  
		  Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImageAsString(str As String)
		  Dim r As New Random
		  Dim f As FolderItem
		  Dim outputStream As BinaryStream
		  
		  If Len(Trim(str)) = 0 Then
		    ClearImage
		    Return
		  End If
		  
		  f = PreferencesFolder.Child(Str(r.InRange(100000, 999999)) + ".jpg")
		  If f <> Nil Then
		    Base64 = str
		    outputStream = f.CreateBinaryFile("image/jpeg")
		    outputStream.Write DecodeBase64(Base64)
		    outputStream.Close
		    Image = f.OpenAsPicture
		    f.Delete
		  End If
		  
		  Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImagePosition(Pos As Integer)
		  // Set Center/Stretch attribute
		  PictureAspect = Pos
		  Repaint
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Action()
	#tag EndHook


	#tag Property, Flags = &h1
		Protected Base64 As String
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


End Class
#tag EndClass
