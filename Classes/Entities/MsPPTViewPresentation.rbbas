#tag Class
Protected Class MsPPTViewPresentation
Implements iPresentation
	#tag Method, Flags = &h0
		Function CurrentSlide() As Integer
		  // Part of the iPresentation interface.
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GotoSlide(slideIndex As Integer) As Boolean
		  // Part of the iPresentation interface.
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NextSlide() As Boolean
		  // Part of the iPresentation interface.
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PreviewSlide(slideIndex As Integer, width As Integer, height As Integer) As Picture
		  // Part of the iPresentation interface.
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PreviousSlide() As Boolean
		  // Part of the iPresentation interface.
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Show() As Boolean
		  // Part of the iPresentation interface.
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SlideCount() As Integer
		  // Part of the iPresentation interface.
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanControl() As Boolean
		  // Part of the iPresentation interface.
		  Return False
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanPreview() As Boolean
		  // Part of the iPresentation interface.
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Notify(iEvent As PresentationEvent)
		  // Part of the iPresentation interface.
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Filename() As String
		  // Part of the iPresentation interface.
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(filename As String)
		  // Part of the iPresentation interface.
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  Call PresentationFactory.UnregisterPresentation( self )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsShowing() As Boolean
		  // Part of the iPresentation interface.
		  
		  
		End Function
	#tag EndMethod


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
End Class
#tag EndClass
