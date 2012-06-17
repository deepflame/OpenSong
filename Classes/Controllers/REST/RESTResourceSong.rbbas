#tag Class
Protected Class RESTResourceSong
Implements REST.RESTResource
	#tag Method, Flags = &h21
		Private Function GetSong(song As String, folder As String = "") As REST.RESTResponse
		  Dim result As REST.RESTresponse = Nil
		  Dim xml As XmlDocument
		  Dim root As XmlNode
		  
		  song = ReplaceAll(song, "/", "")
		  song = ReplaceAll(song, "\", "")
		  song = ReplaceAll(song, "..", "")
		  folder = ReplaceAll(folder, "..", "")
		  
		  Dim folders() As String = MainWindow.Songs.GetFolders()
		  If folders.IndexOf(folder) > -1 Then
		    
		    Dim songFile As String = folder
		    If Not songFile.EndsWith("/") Then songFile = songFile + "/"
		    songFile = songFile + song
		    
		    Dim f As FolderItem = MainWindow.Songs.GetFile(songFile)
		    If f <> Nil And f.Exists Then
		      Dim songDoc As XmlDocument = SmartML.XDocFromFile(f)
		      If Not IsNull(songDoc) then
		        xml = result.CreateXmlResponse(Name(), "detail", name)
		        root = xml.DocumentElement()
		        root.AppendChild(xml.ImportNode(songDoc.DocumentElement(), True))
		        result.response = xml.ToString
		      End If
		    End If
		  End If
		  
		  If IsNull(result) Then
		    result = New REST.RESTresponse("The requested action is not available.", "404 Not Found")
		  End If
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ListFolders() As REST.RESTResponse
		  Dim result As New REST.RESTresponse
		  Dim xml As XmlDocument
		  Dim root, xml_folders As XmlNode
		  
		  xml = result.CreateXmlResponse(Name(), "folders")
		  root = xml.DocumentElement()
		  xml_folders = root.AppendChild(xml.CreateElement("folders"))
		  
		  Dim folders() As String = MainWindow.Songs.GetFolders()
		  For Each folder As String In folders
		    Dim xml_folder As XmlNode = xml_folders.AppendChild(xml.CreateElement("folder"))
		    SmartML.SetValue(xml_folder, "@name", folder)
		  Next
		  
		  result.response = xml.ToString
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ListSongs(folder As String = "") As REST.RESTResponse
		  Dim result As New REST.RESTresponse
		  Dim xml As XmlDocument
		  Dim root, xml_songs As XmlNode
		  
		  folder = ReplaceAll(folder, "..", "")
		  Dim folders() As String = MainWindow.Songs.GetFolders()
		  
		  xml = result.CreateXmlResponse(Name(), "list")
		  root = xml.DocumentElement()
		  xml_songs = root.AppendChild(xml.CreateElement("songs"))
		  
		  If folders.IndexOf(folder) > -1 Then
		    SmartML.SetValue(xml_songs, "@folder", folder )
		    
		    Dim songs() As String = MainWindow.Songs.GetFiles(folder)
		    For Each song As String In songs
		      Dim xml_song As XmlNode = root.AppendChild(xml.CreateElement("song"))
		      SmartML.SetValue(xml_song, "@name", song)
		    Next
		  End If
		  
		  result.response = xml.ToString
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As String
		  // Part of the REST.RESTResource interface.
		  
		  Return "song"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Process(protocolHandler As REST.RESTProtocolHandler) As REST.RESTresponse
		  // Part of the REST.RESTResource interface.
		  
		  Dim result As New REST.RESTresponse
		  
		  Select Case protocolHandler.Action()
		  Case "", _
		    "list"
		    
		    If protocolHandler.Identifier().Len() = 0 Then
		      result = ListSongs(protocolHandler.Parameter("folder", ""))
		    Else
		      result = GetSong(protocolHandler.Identifier(), protocolHandler.Parameter("folder", ""))
		    End If
		    
		  Case "folders"
		    result = ListFolders()
		    
		  Case "detail"
		    result = GetSong(protocolHandler.Identifier(), protocolHandler.Parameter("folder", ""))
		    
		  case "present", _
		    "load"
		    
		    Select Case protocolHandler.Method()
		    Case "POST"
		      
		      result.response = "Todo."
		      result.status = "501 Not Implemented"
		      
		    Else
		      result.response = "The request method is not allowed, use POST."
		      result.status = "405 Method Not Allowed"
		      result.headers.Value(REST.kHeaderAllow) = "POST"
		    End Select
		    
		  Else
		    result.response = "The requested action is not available."
		    result.status = "404 Not Found"
		  End Select
		  
		  Return result
		  
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
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
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
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
	#tag EndViewBehavior
End Class
#tag EndClass
