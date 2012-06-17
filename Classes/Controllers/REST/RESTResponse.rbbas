#tag Class
Protected Class RESTResponse
	#tag Method, Flags = &h0
		Sub Constructor()
		  me.headers = new Dictionary()
		  me.headers.Value(REST.kContentType) = REST.kContentTypeText
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(response As String, status as String = "", contentType As String = REST.kContentTypeText)
		  me.headers = new Dictionary()
		  me.headers.Value(REST.kContentType) = contentType
		  me.response = response
		  me.status = status
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateXmlResponse(resource As String, action As String = "", identifier As String = "") As XmlDocument
		  Dim xml As New XmlDocument()
		  Dim root As XmlNode
		  
		  xml.Encoding = "UTF8"
		  root = xml.AppendChild(xml.CreateElement("response"))
		  
		  root.SetAttribute("resource", resource)
		  
		  If action.Len() > 0 Then
		    root.SetAttribute("action", action)
		  End If
		  
		  If identifier.Len() > 0 Then
		    root.SetAttribute("identifier", identifier)
		  End If
		  
		  headers.Value(REST.kContentType) = REST.kContentTypeXml
		  
		  Return xml
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		headers As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		response As String
	#tag EndProperty

	#tag Property, Flags = &h0
		status As String
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
			Name="response"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="status"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
