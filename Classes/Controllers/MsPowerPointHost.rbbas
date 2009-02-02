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


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
