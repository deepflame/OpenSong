#tag Class
Protected Class StyleImage
	#tag Method, Flags = &h0
		Sub SetImage(img As Picture)
		  Me.oImage = img
		  Me.sFilename = ""
		  Me.sBase64 = ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImage() As Picture
		  Return Me.oImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetImageAsString(Base64 as String) As Boolean
		  Dim r As New Random
		  Dim f As FolderItem
		  Dim outputStream As BinaryStream
		  Dim bSuccess As Boolean
		  
		  bSuccess = False
		  Base64 = Trim(Base64)
		  If Len(Base64) = 0 Then
		    Clear()
		  Else
		    If Base64 <> Me.sBase64 Then
		      
		      f = SpecialFolder.Temporary.Child(Str(r.InRange(100000, 999999)))
		      If f <> Nil Then
		        outputStream = f.CreateBinaryFile("")
		        outputStream.Write DecodeBase64(Base64)
		        outputStream.Close
		        Me.oImage = f.OpenAsPicture()
		        f.Delete
		        
		        If Me.oImage <> Nil Then
		          Me.sBase64 = Base64
		          bSuccess = True
		        Else
		          Me.sBase64 = ""
		        End If
		        Me.sFilename = ""
		      End If
		      
		    End If
		  End If
		  
		  Return bSuccess 'Returns True if a new image is succesfully loaded. If the new image is equal to the old image, false is returned.
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImageAsString(generateIfMissing As Boolean = True) As String
		  If Me.sBase64 = "" And Me.oImage <> Nil And generateIfMissing Then
		    Me.sBase64 = App.GetImageAsString(Me.oImage)
		  End If
		  
		  Return Me.sBase64
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetImageFromFile(File As FolderItem) As Boolean
		  Dim inputStream As BinaryStream
		  Dim bSuccess As Boolean
		  
		  bSuccess = False
		  If File<>Nil And File.Exists() Then
		    If File.AbsolutePath() <> Me.sFilename Then
		      
		      inputStream = File.OpenAsBinaryFile(False)
		      If inputStream <> Nil Then
		        Me.oImage = File.OpenAsPicture()
		        
		        If Me.oImage <> Nil Then
		          
		          If File.AbsolutePath().StartsWith( SpecialFolder.Temporary.AbsolutePath() ) Then
		            Me.sBase64 = EncodeBase64(inputStream.Read(File.Length))
		            Me.sFilename = ""
		          Else
		            Me.sBase64 = ""
		            Me.sFilename = File.AbsolutePath()
		          End If
		          
		          bSuccess = True
		        Else
		          Clear()
		        End If
		        
		      Else
		        InputBox.Message App.T.Translate("errors/unreadable_image", File.AbsolutePath)
		      End If
		      
		    End If
		  Else
		    If File<>Nil Then
		      If File.AbsolutePath() <> "" Then
		        InputBox.Message App.T.Translate("errors/unreadable_image", File.AbsolutePath)
		      End If
		    End If
		    Clear()
		  End If
		  
		  Return bSuccess 'Returns True if a new image is succesfully loaded. If the new image filename is equal to the old image filename, false is returned.
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImageFilename() As String
		  Return Me.sFilename
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear()
		  Me.oImage = Nil
		  Me.sFilename = ""
		  Me.sBase64 = ""
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Clear
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetImageFromFileName(Filename As String) As Boolean
		  Dim result As Boolean = False
		  Dim f as FolderItem
		  
		  f=GetFolderItem(FileName)
		  If IsNull(f) Then
		    If Filename <> "" Then
		      InputBox.Message App.T.Translate("errors/unreadable_image", Filename)
		    End If
		  Else
		    result = SetImageFromFile(f)
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(img As StyleImage)
		  If img<> Nil Then
		    Me.oImage = img.GetImage()
		    Me.sBase64 = img.GetImageAsString(False)
		    Me.sFilename = img.GetImageFilename()
		  Else
		    Clear()
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected sBase64 As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected oImage As Picture
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected sFilename As String
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
End Class
#tag EndClass
