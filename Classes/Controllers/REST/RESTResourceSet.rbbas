#tag Class
Protected Class RESTResourceSet
Implements REST.RESTResource
	#tag Method, Flags = &h21
		Private Function ListSets() As REST.RESTResponse
		  Dim result As New REST.RESTresponse
		  Dim xml As XmlDocument
		  Dim root, set As XmlNode
		  
		  xml = result.CreateXmlResponse(Name())
		  root = xml.DocumentElement()
		  
		  For i As Integer = 0 To MainWindow.pop_sets_sets.ListCount()-1
		    set = root.AppendChild(xml.CreateElement("set"))
		    SmartML.SetValueN(set, "@id", i)
		    set.AppendChild(xml.CreateTextNode(MainWindow.pop_sets_sets.List(i)))
		  Next
		  
		  result.response = xml.ToString
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As String
		  // Part of the REST.RESTResource interface.
		  
		  Return "set"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Process(protocolHandler As REST.RESTProtocolHandler) As REST.RESTresponse
		  // Part of the REST.RESTResource interface.
		  Dim result As REST.RESTresponse
		  
		  Select Case protocolHandler.Action()
		  Case "", _
		    "list"
		    
		    result = ListSets()
		    
		  Case "slides", _
		    "slide"
		    
		    result = New REST.RESTresponse("Todo.", "501 Not Implemented")
		    
		  case "load", _
		    "present"
		    
		    Select Case protocolHandler.Method()
		    Case "POST"
		      
		      result = New REST.RESTresponse("Todo.", "501 Not Implemented")
		      
		    Else
		      result = New REST.RESTresponse("The request method is not allowed, use POST.", "405 Method Not Allowed")
		      result.headers.Value(REST.kHeaderAllow) = "POST"
		      
		    End Select
		    
		  Else
		    result = New REST.RESTresponse("The requested action is not available.", "404 Not Found")
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
