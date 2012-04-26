#tag Class
Protected Class RESTResourceSong
Implements REST.RESTResource
	#tag Method, Flags = &h0
		Sub Constructor()
		  m_songFolder = New FolderDB(App.DocsFolder.Child("Songs"))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ListFolders() As REST.RESTResponse
		  Dim result As New REST.RESTresponse
		  Dim xml As XmlDocument
		  Dim root, folder As XmlNode
		  Dim folderList(0) As String
		  
		  xml = result.CreateXmlResponse(Name(), "folders")
		  root = xml.DocumentElement()
		  
		  folderList = m_songFolder.GetFolders()
		  For i AS Integer = 0 to UBound(folderList)
		    folder = root.AppendChild(xml.CreateElement("folder"))
		    SmartML.SetValueN(folder, "@id", i)
		    folder.AppendChild(xml.CreateTextNode(folderList(i)))
		  Next
		  
		  result.response = xml.ToString
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ListSongs() As REST.RESTResponse
		  Dim result As New REST.RESTresponse
		  Dim xml As XmlDocument
		  Dim root, song As XmlNode
		  
		  xml = result.CreateXmlResponse(Name())
		  root = xml.DocumentElement()
		  
		  
		  result.response = xml.ToString
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As String
		  // Part of the REST.RESTResource interface.
		  
		  Return "songs"
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
		      result = ListSongs()
		    Else
		      'result = GetSong(protocolHandler.Identifier())
		      result.response = "Todo."
		      result.status = "501 Not Implemented"
		    End If
		    
		  Case "folders"
		    
		    result = ListFolders()
		    
		  Case "detail"
		    
		    result.response = "Todo."
		    result.status = "501 Not Implemented"
		    
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


	#tag Property, Flags = &h21
		Private m_songFolder As FolderDB
	#tag EndProperty


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
