#tag Interface
Protected Interface RESTProtocolHandler
	#tag Method, Flags = &h0
		Function Action() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AuthenticationKey() As Variant
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Header(name As Variant, defaultValue As Variant) As Variant
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Identifier() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Method() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Parameter(name As Variant, defaultValue As Variant) As Variant
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ParseRequest(data As String) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Resource() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SendData(ByRef response As REST.RESTResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Socket() As REST.RESTSocket
		  
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
End Interface
#tag EndInterface
