#tag Module
Protected Module SlideFactory
	#tag Method, Flags = &h0
		Function GetSlide(SlideGroup As XmLNode) As iSlideGroup
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateSlide(type As String, name As String) As iSlideGroup
		  
		End Function
	#tag EndMethod


	#tag Enum, Name = SupportedSlideTypes, Flags = &h0
		presentation
	#tag EndEnum


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
End Module
#tag EndModule
