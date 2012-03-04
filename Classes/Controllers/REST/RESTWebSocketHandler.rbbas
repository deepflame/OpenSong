#tag Class
Protected Class RESTWebSocketHandler
Implements REST.RESTProtocolHandler,iStatusNotifier
	#tag Method, Flags = &h0
		Function Action() As String
		  // Part of the REST.RESTProtocolHandler interface.
		  
		  Return m_action
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AuthenticationKey() As Variant
		  // Part of the REST.RESTProtocolHandler interface.
		  
		  //An authentication key is not applicable; the authentication has taken place
		  //at initialisation of the WebSocket, before the upgrade from HTTP to WebSocket
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  'The constructor without parameters is hidden because it is not allowed to call this constructor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(restSocket AS REST.RESTSocket, protocol As Integer = kProtocolRFC6455)
		  m_restSocket = restSocket
		  m_parameters = New Dictionary()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DecodeRFC6455(payload As String) As Boolean
		  Dim success As Boolean = False
		  
		  Dim frame As MemoryBlock
		  frame = payload
		  If frame.size >= 2 Then
		    
		    Dim mode As OpCode
		    Dim masked As Boolean
		    Dim mask(3) As UInt8
		    Dim dataLength As UInt64
		    Dim headerLength As UInt8
		    Dim data As String
		    
		    mode = OpCode(frame.Byte(0) And &h0F)
		    masked = (frame.Byte(1) And kFrameMaskFlag) = kFrameMaskFlag
		    dataLength = frame.Byte(1) And kFramePayloadLen
		    
		    If dataLength <= 125 Then
		      headerLength = 2
		    ElseIf dataLength = 126 Then
		      dataLength = frame.UInt16Value(1)
		      headerLength = 4
		    ElseIf dataLength = 127 Then
		      dataLength = _
		      Bitwise.ShiftLeft(frame.UInt16Value(1), &hFFFFFFFFFFFF) + _
		      Bitwise.ShiftLeft(frame.UInt16Value(2), &hFFFFFFFF) + _
		      Bitwise.ShiftLeft(frame.UInt16Value(3), &hFFFF) + _
		      frame.UInt16Value(4)
		      headerLength = 10
		    End If
		    
		    If masked Then
		      mask(0) = frame.Byte(headerLength)
		      mask(1) = frame.Byte(headerLength+1)
		      mask(2) = frame.Byte(headerLength+2)
		      mask(3) = frame.Byte(headerLength+3)
		      headerLength = headerLength + 4
		    End If
		    
		    If headerLength + dataLength = frame.Size Then
		      
		      Dim char As Byte
		      For i As UInt64 = 0 to dataLength-1
		        
		        char = frame.Byte(headerLength + i)
		        If masked Then
		          char = char Xor mask(i Mod 4)
		        End If
		        data = data + ChrB(char)
		      Next
		      
		      m_reqMode = mode
		      m_reqData = data
		      
		      success = True
		    End If
		    
		  End If
		  
		  Return success
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function EncodeRFC6455(payload As String, mode As OpCode = OpCode.Text, masked As Boolean = True) As String
		  'Dim rawPayload As MemoryBlock
		  'rawPayload = payload
		  Dim dataLength As UInt64 = LenB(payload) 'rawPayload.Size
		  Dim headerLength As UInt8 = 1
		  
		  If dataLength <= 125 Then
		    headerLength = headerLength + 1
		  ElseIf dataLength <= 65535 Then
		    headerLength = headerLength + 3
		  Else
		    headerLength = headerLength + 9
		  End If
		  If masked Then headerLength = headerLength + 4
		  
		  Dim frameSize AS UInt64 = 0
		  Dim mask(3) As UInt8
		  Dim r as New Random 'Initialise random generator
		  Dim frame As New MemoryBlock(headerLength + dataLength)
		  
		  
		  // Setup Header
		  frame.Byte(0) = kFrameFinFlag Or (Integer(mode) And &h7F) 'Use And Mask to limit excessive values for mode
		  
		  If dataLength <= 125 Then
		    frame.Byte(1) = dataLength
		    frameSize = 2
		  ElseIf dataLength <= &hFFFF Then '65535
		    frame.Byte(1) = 126
		    'set byte 2-3
		    frame.UInt16Value(1) = dataLength
		    frameSize = 4
		  Else
		    frame.Byte(1) = 127
		    'set byte 2-9
		    frame.UInt16Value(1) = Bitwise.ShiftRight(dataLength, &hFFFFFFFFFFFF) And &hFFFF
		    frame.UInt16Value(2) = Bitwise.ShiftRight(dataLength, &hFFFFFFFF) And &hFFFF
		    frame.UInt16Value(3) = Bitwise.ShiftRight(dataLength, &hFFFF) And &hFFFF
		    frame.UInt16Value(4) = dataLength And &hFFFF
		    frameSize = 10
		  End If
		  
		  If masked Then
		    frame.Byte(1) = kFrameMaskFlag Or frame.Byte(1)
		    
		    'Generate mask
		    mask(0) = r.InRange(0,255)
		    mask(1) = r.InRange(0,255)
		    mask(2) = r.InRange(0,255)
		    mask(3) = r.InRange(0,255)
		    
		    frame.Byte(frameSize) = mask(0)
		    frame.Byte(frameSize+1) = mask(1)
		    frame.Byte(frameSize+2) = mask(2)
		    frame.Byte(frameSize+3) = mask(3)
		    
		    frameSize = frameSize+4
		  End If
		  
		  If frameSize <> headerLength Then
		    Dim e As RuntimeException
		    e.Message = "Incorrect estimation of WebSocket header length calculation"
		    Raise e
		  End If
		  
		  Dim char As Byte
		  For i As UInt64 = 1 to dataLength
		    
		    char = AscB(payload.MidB(i, 1)) 'rawPayload.Byte(i-1)
		    If masked Then
		      char = char Xor mask((i-1) Mod 4)
		    End If
		    frame.Byte(frameSize) = char
		    frameSize = frameSize + 1
		    
		  Next
		  
		  If frameSize <> headerLength+dataLength Then
		    Dim e As RuntimeException
		    e.Message = "Incorrect estimation of WebSocket data length calculation"
		    Raise e
		  End If
		  
		  Return frame
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Header(name As Variant, defaultValue As Variant) As Variant
		  // Part of the REST.RESTProtocolHandler interface.
		  
		  Return Nil
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
		  
		  'Methods are not applicable when using WebSockets.
		  'All requests can be considered POST
		  Return "POST"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Parameter(key As Variant, defaultValue As Variant) As Variant
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
		  
		  Dim success As Boolean = False
		  
		  m_resourceName = ""
		  m_action = ""
		  m_identifier = ""
		  m_parameters.Clear()
		  
		  success = DecodeRFC6455(data)
		  If  success Then
		    If m_reqData.Len()>0 Then
		      Dim reqdata As String = m_reqData
		      If reqdata.Left(1) <> "/" Then
		        data = "/" + data
		      End If
		      
		      Call REST.ParseURI(reqdata, m_resourceName, m_action, m_identifier, m_parameters)
		    End If
		  End If
		  
		  Return success
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
		  
		  m_restSocket.Write(EncodeRFC6455(response.response))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Socket() As REST.RESTSocket
		  // Part of the REST.RESTProtocolHandler interface.
		  
		  Return m_restSocket
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StatusNotification(subject As String, info As String)
		  // Part of the iStatusNotifier interface.
		  
		  Dim resource As New RESTResourceStatus()
		  Dim response As REST.RESTResponse = resource.Process(me)
		  SendData response
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SubscribeNotifier(context As String) As Boolean
		  Dim success As Boolean = True
		  
		  Select Case Lowercase(context)
		  Case "present"
		    PresentWindow.SubscribeStatusNotifier(me)
		  Else
		    success = False
		  End Select
		  
		  Return success
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UnsubscribeNotifier(context As String) As Boolean
		  Dim success As Boolean = True
		  
		  Select Case Lowercase(context)
		  Case "present"
		    PresentWindow.UnsubscribeStatusNotifier(me)
		  Else
		    success = False
		  End Select
		  
		  Return success
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
		Private m_reqMode As OpCode
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_resourceName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_restSocket As REST.RESTSocket
	#tag EndProperty


	#tag Constant, Name = kFrameFinFlag, Type = Double, Dynamic = False, Default = \"&h80", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kFrameMaskFlag, Type = Double, Dynamic = False, Default = \"&h80", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kFramePayloadLen, Type = Double, Dynamic = False, Default = \"&h7F", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kProtocolHybi_10, Type = Double, Dynamic = False, Default = \"8", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kProtocolRFC6455, Type = Double, Dynamic = False, Default = \"13", Scope = Public
	#tag EndConstant


	#tag Enum, Name = OpCode, Type = Integer, Flags = &h21
		Continuation = 0
		  Text = 1
		  Binary = 2
		  Close = 8
		  Ping = 9
		Pong = 10
	#tag EndEnum


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
