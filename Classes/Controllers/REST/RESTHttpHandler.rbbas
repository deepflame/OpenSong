#tag Class
Protected Class RESTHttpHandler
Implements REST.RESTProtocolHandler
	#tag Method, Flags = &h0
		Function Action() As String
		  // Part of the REST.RESTProtocolHandler interface.
		  
		  Return m_action
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddHeader(name As String, value As Variant)
		  m_sendHeaders.Value(name) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AuthenticationKey() As Variant
		  // Part of the REST.RESTProtocolHandler interface.
		  Dim key As String
		  
		  If m_reqHeaders.HasKey(REST.kHeaderAuthorization) Then
		    key = m_reqHeaders.Value(REST.kHeaderAuthorization)
		    
		    If key.StartsWith("Basic ") Then
		      key = key.Mid(7).Trim() 'Strip off Basic
		      key = DecodeBase64(key)
		    End If
		  End If
		  
		  Return key
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  'The constructor without parameters is hidden because it is not allowed to call this constructor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(restSocket AS REST.RESTSocket)
		  m_reqHeaders = New Dictionary()
		  m_sendHeaders = New Dictionary()
		  m_parameters = New Dictionary()
		  
		  m_restSocket = restSocket
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Header(key As Variant, defaultValue As Variant = Nil) As Variant
		  // Part of the REST.RESTProtocolHandler interface.
		  
		  Dim result As Variant = defaultValue
		  
		  If m_reqHeaders.HasKey(key) Then
		    result = m_reqHeaders.Value(key)
		  End If
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Identifier() As String
		  // Part of the REST.RESTProtocolHandler interface.
		  
		  Return m_identifier
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Method() As String
		  // Part of the REST.RESTProtocolHandler interface.
		  
		  Return m_reqMethod
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Parameter(key As Variant, defaultValue As Variant = Nil) As Variant
		  // Part of the REST.RESTProtocolHandler interface.
		  
		  Dim result As Variant = defaultValue
		  
		  If m_parameters.HasKey(key) Then
		    result = m_parameters.Value(key)
		  End If
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ParseRequest(data As String) As Boolean
		  // Part of the REST.RESTProtocolHandler interface.
		  
		  Dim success As Boolean = True
		  
		  m_reqHeaders.Clear()
		  m_reqMethod = ""
		  m_reqURI = ""
		  m_reqData = ""
		  m_resourceName = ""
		  m_action = ""
		  m_identifier = ""
		  m_parameters.Clear()
		  
		  If data.Len()>0 Then
		    Dim arrData(-1) As String = data.Split(REST.CrLf())
		    Dim iData As Integer = 0
		    Dim sData As String
		    Dim isHeader As Boolean = True
		    
		    While iData <= UBound(arrData) and success = True
		      sData = arrData(iData)
		      
		      If isHeader And iData = 0 Then
		        
		        If sData.CountFields(" ") > 1 Then
		          m_reqMethod = UpperCase(sData.NthField(" ", 1))
		          m_reqURI = sData.NthField(" ", 2)
		          m_reqURI = REST.UrlDecode(m_reqURI)
		        Else
		          success = False
		        End If
		        
		      ElseIf isHeader Then
		        
		        If sData <> "" Then
		          If sData.CountFields(":") > 1 Then
		            m_reqHeaders.Value(sData.Left(sData.InStr(":")-1)) = sData.Mid(sData.InStr(":")+1).Trim()
		          Else
		            success = False
		          End If
		        Else
		          isHeader = False
		        End If
		        
		      Else
		        
		        m_reqData = m_reqData + sData + REST.CrLf()
		        
		      End If
		      
		      iData = iData+1
		    Wend
		    
		    Call REST.ParseURI(m_reqURI, m_resourceName, m_action, m_identifier, m_parameters)
		  End If
		  
		  Return Success
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Resource() As String
		  // Part of the REST.RESTProtocolHandler interface.
		  
		  Return m_resourceName
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SendData(ByRef response As REST.RESTResponse)
		  // Part of the REST.RESTProtocolHandler interface.
		  
		  For Each key As Variant In response.headers.Keys
		    AddHeader(key.StringValue, response.headers.Value(key))
		  Next
		  
		  If response.status <> "" Then
		    SendData(response.response, response.status)
		  Else
		    SendData(response.response)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SendData(data As String, status As String = "200 OK")
		  m_restSocket.Write "HTTP/1.1 " + status + REST.CrLf()
		  
		  AddHeader(REST.kHeaderContentLength, LenB(data))
		  AddHeader(REST.kAccessControlAllowOrigin, "*")
		  
		  For iHeader As Integer = 0 To m_sendHeaders.Count() -1
		    m_restSocket.Write m_sendHeaders.Key(iHeader).StringValue + ": " + m_sendHeaders.Value(m_sendHeaders.Key(iHeader).StringValue).StringValue + REST.CrLf()
		  Next
		  
		  m_restSocket.Write REST.CrLf()
		  m_restSocket.Write data
		  
		  m_sendHeaders.Clear()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Socket() As REST.RESTSocket
		  // Part of the REST.RESTProtocolHandler interface.
		  
		  Return m_restSocket
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private m_action As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_identifier As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_parameters As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_reqData As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_reqHeaders As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_reqMethod As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_reqURI As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_resourceName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_restSocket As REST.RESTSocket
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_sendHeaders As Dictionary
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
