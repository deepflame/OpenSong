#tag Class
Protected Class RESTServer
Inherits ServerSocket
	#tag Event
		Function AddSocket() As TCPSocket
		  Return New RESTSocket(self)
		End Function
	#tag EndEvent

	#tag Event
		Sub Error(ErrorCode as Integer)
		  MsgBox "RemoteControlServer Error: " + str( ErrorCode )
		  Me.StopListening
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddResource(resource As REST.RESTResource)
		  If Not IsNull(resource) Then
		    m_resources.Value(resource.Name) = resource
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CheckAuthentication(key As String) As Boolean
		  Return m_key = key
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  m_resources = New Dictionary()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DispatchRequest(resourceName As String) As REST.RESTResource
		  Dim resource As REST.RESTResource = Nil
		  
		  If m_resources.HasKey(LowerCase(resourceName)) Then
		    resource = m_resources.Value(LowerCase(resourceName))
		  End If
		  
		  Return resource
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Key(key As String)
		  m_key = key
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private m_key As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_resources As Dictionary
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumSocketsConnected"
			Visible=true
			Group="Behavior"
			InitialValue="10"
			Type="Integer"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumSocketsAvailable"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="Integer"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Port"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="ServerSocket"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
