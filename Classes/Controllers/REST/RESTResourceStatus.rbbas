#tag Class
Protected Class RESTResourceStatus
Implements REST.RESTResource
	#tag Method, Flags = &h21
		Private Function GetStatus() As REST.RESTResponse
		  Dim result As New REST.RESTResponse
		  Dim xml As New XmlDocument()
		  Dim root, active, slide As XmlNode
		  
		  xml.Encoding = "UTF8"
		  root = xml.AppendChild(xml.CreateElement("response"))
		  slide = root.AppendChild(xml.CreateElement("current_slide"))
		  
		  If Globals.Status_Presentation Then
		    SmartML.SetValue(root, "presentation_active", "1")
		    
		    SmartML.SetValue(slide, "itemnumber", Str(PresentWindow.CurrentSlide))
		    If Not IsNull(PresentWindow.XCurrentSlide) Then
		      SmartML.SetValue(slide, "name", SmartML.GetValue(PresentWindow.XCurrentSlide.Parent.Parent, "@name"))
		      SmartML.SetValue(slide, "title", SmartML.GetValue(PresentWindow.XCurrentSlide.Parent.Parent, "title"))
		    End If
		  Else
		    SmartML.SetValue(root, "presentation_active", "0")
		  End If
		  
		  result.response = xml.ToString
		  result.headers.Value(REST.kContentType) = REST.kContentTypeXml
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As String
		  // Part of the REST.RESTResource interface.
		  
		  Return "status"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Process(protocolHandler As REST.RESTProtocolHandler) As REST.RESTResponse
		  // Part of the REST.RESTResource interface.
		  
		  Dim result As REST.RESTresponse
		  
		  'Select Case method
		  'Case "GET"
		  
		  result = GetStatus()
		  
		  'Else
		  'result.response = "The request method is not allowed, use GET for status."
		  'result.status = "405 Method Not Allowed"
		  'result.headers.Value(REST.kHeaderAllow) = "GET"
		  'End Select
		  
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
