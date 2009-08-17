#tag Interface
Protected Interface iPresentation
	#tag Method, Flags = &h0
		Function CurrentSlide() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GotoSlide(slideIndex As Integer) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NextSlide() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PreviewSlide(slideIndex As Integer, width As Integer, height As Integer) As Picture
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PreviousSlide() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StartShow(loopShow As Boolean = False, startAt As Integer = - 1, endAt As Integer = - 1) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SlideCount() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanControl() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanPreview() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Notify(iEvent As PresentationEvent)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Filename() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsShowing() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EndShow() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SlideName(slideIndex As Integer) As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AnimationCount(slideIndex As Integer) As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentAnimation() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GotoAnimation(slideIndex As Integer, animationIndex As Integer) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HostName() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsHidden(slideIndex As Integer) As Boolean
		  
		End Function
	#tag EndMethod


	#tag Note, Name = Interface description
		General notes:
		- all indexes are 1-based (the first in a list is 1, the second 2, ...)
		- if a count is unknown, the functions is to return -1 (valid for e.g. AnimationCount, SlideCount, CurrentAnimation)
	#tag EndNote


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
End Interface
#tag EndInterface
