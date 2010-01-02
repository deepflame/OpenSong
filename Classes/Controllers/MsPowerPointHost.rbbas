#tag Class
Protected Class MsPowerPointHost
Inherits PowerPointApplication
	#tag Event
		Sub SlideShowBegin(win As PowerPointSlideShowWindow)
		  PresentationFactory.OnPowerPointEvent(win.Presentation, PresentationFactory.PresentationEvent.BeginPresentation)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub SlideShowEnd(pres As PowerPointPresentation)
		  PresentationFactory.OnPowerPointEvent(pres, PresentationFactory.PresentationEvent.EndPresentation)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub SlideShowNextSlide(win As PowerPointSlideShowWindow)
		  PresentationFactory.OnPowerPointEvent(win.Presentation, PresentationFactory.PresentationEvent.NextSlide)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1000
		Sub Constructor()
		  Super.Constructor()
		  
		  #If Not TargetWin32 Then
		    Dim e As RuntimeException = new RuntimeException
		    e.Message = "MsPowerPointHost: Powerpoint interaction is only available on Windows"
		    Raise e
		  #EndIf
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InheritedFrom="PowerPointApplication"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InheritedFrom="PowerPointApplication"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="PowerPointApplication"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="PowerPointApplication"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InheritedFrom="PowerPointApplication"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
