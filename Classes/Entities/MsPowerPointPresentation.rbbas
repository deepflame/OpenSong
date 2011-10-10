#tag Class
Protected Class MsPowerPointPresentation
Implements iPresentation
	#tag Method, Flags = &h0
		Function AnimationCount(slideIndex As Integer) As Integer
		  // Part of the iPresentation interface.
		  
		  'Using the PowerPoint API it is not possible to get the number of animations for a specific slide, only for the currently showing slide.
		  'The Office 2007 API has added a few new functions to the SlideShowView object to get the number of clicks.
		  
		  Dim result As Integer = -1
		  
		  If IsShowing() Then
		    If slideIndex = CurrentSlide() Then
		      Try
		        result = m_oPpt.SlideShowWindow.View.GetClickCount()
		      Catch
		        'make sure we do not crash on a PowerPoint prior to Office 2007
		      End Try
		    End If
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanControl() As Boolean
		  // Part of the iPresentation interface.
		  Return True
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanPreview() As Boolean
		  // Part of the iPresentation interface.
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(presentation As PowerPointPresentation)
		  // Part of the iPresentation interface.
		  m_oPpt = presentation
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentAnimation() As Integer
		  // Part of the iPresentation interface.
		  
		  'This will only work on Office 2007 or later.
		  
		  Dim result As Integer = -1
		  
		  If IsShowing() Then
		    Try
		      result = m_oPpt.SlideShowWindow.View.GetClickIndex()
		    Catch
		      'make sure we do not crash on a PowerPoint prior to Office 2007
		    End Try
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentSlide() As Integer
		  // Part of the iPresentation interface.
		  
		  Dim result As Integer = 0
		  
		  If IsShowing() Then
		    result = m_oPpt.SlideShowWindow.View.Slide.SlideIndex
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  If IsShowing() Then
		    Call EndShow()
		  End If
		  
		  Call PresentationFactory.UnregisterPresentation( self )
		  
		  If Not IsNull( m_oPpt ) Then
		    m_oPpt.Saved = True
		    m_oPpt.Close()
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EndShow() As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  
		  If IsShowing() Then
		    m_oPpt.SlideShowWindow.View.Exit_()
		    result = True
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Filename() As String
		  // Part of the iPresentation interface.
		  
		  Dim result As String
		  
		  If Not IsNull(m_oPpt) Then
		    Try
		      result = m_oPpt.FullName()
		    Catch
		      'This sometimes fails for no reason...
		    End Try
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FirstVisibleSlide() As Integer
		  Dim result As Integer = 0
		  
		  If IsShowing() Then
		    For i As Integer = 1 to SlideCount()
		      If Not IsHidden(i) Then
		        result = i
		        Exit
		      End If
		    Next
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GotoAnimation(slideIndex As Integer, animationIndex As Integer) As Boolean
		  // Part of the iPresentation interface.
		  
		  // Part of the iPresentation interface.
		  
		  'Using the PowerPoint API it is not possible to get the number of animations for a specific slide, only for the currently showing slide.
		  'The Office 2007 API has added a few new functions to the SlideShowView object to get the number of clicks.
		  
		  Dim result As Boolean = False
		  
		  If animationIndex > 0 Then
		    If IsShowing() Then
		      
		      Dim slideChangeSuccess As Boolean = False
		      If slideIndex <> CurrentSlide() Then
		        slideChangeSuccess = GotoSlide( slideIndex )
		      Else
		        slideChangeSuccess = True
		      End If
		      
		      If slideChangeSuccess Then
		        
		        Try
		          If m_oPpt.SlideShowWindow.View.GotoClick( animationIndex ) > 0 Then
		            result = True
		          End If
		        Catch
		          'make sure we do not crash on a PowerPoint prior to Office 2007
		        End Try
		        
		      End If
		    End If
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GotoSlide(slideIndex As Integer) As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  
		  If IsShowing() Then
		    If slideIndex <= m_oPpt.Slides.Count And slideIndex > 0 Then
		      
		      m_oPpt.SlideShowWindow.View.GotoSlide( slideIndex )
		      result = True
		      
		    End If
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HostName() As String
		  // Part of the iPresentation interface.
		  
		  Return "Microsoft PowerPoint"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsHidden(slideIndex As Integer) As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  
		  If Not IsNull(m_oPpt) Then
		    If slideIndex <= m_oPpt.Slides.Count And slideIndex > 0 Then
		      result = m_oPpt.Slides.Item(slideIndex).SlideShowTransition.Hidden()
		    End If
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsShowing() As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  
		  If Not IsNull(m_oPpt) Then
		    Try
		      If Not IsNull(m_oPpt.SlideShowWindow) Then
		        result = Not IsNull( m_oPpt.SlideShowWindow.View )
		      End If
		    Catch
		    End Try
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LastVisibleSlide() As Integer
		  Dim result As Integer = 0
		  
		  If IsShowing() Then
		    For i As Integer = SlideCount() downto 1
		      If Not IsHidden(i) Then
		        result = i
		        Exit
		      End If
		    Next
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NextSlide() As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  
		  If IsShowing() Then
		    result = GotoSlide( CurrentSlide() + 1 )
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Notify(iEvent As PresentationEvent)
		  // Part of the iPresentation interface.
		  
		  If Not IsNull( PresentWindow.XCurrentSlide ) Then
		    If SetML.IsExternal(PresentWindow.XCurrentSlide) Then
		      
		      Dim presAppl As string = SmartML.GetValue(PresentWindow.XCurrentSlide.Parent.Parent, "@application", False)
		      Dim presHost As string = SmartML.GetValue(PresentWindow.XCurrentSlide.Parent.Parent, "@host", False)
		      Dim presFilename As String = SmartML.GetValue(PresentWindow.XCurrentSlide.Parent.Parent, "@filename", False)
		      
		      If presAppl = "presentation" And presHost = "ppt" Then
		        Dim presFile As FolderItem = GetFolderItem( presFilename)
		        If Not IsNull(presFile) Then
		          
		          If Filename() = presFile.AbsolutePath() Then
		            
		            If iEvent = PresentationFactory.PresentationEvent.NextSlide Then
		              
		              If IsShowing() Then
		                If Not PresentWindow.IsSlidechangeExternal() Then
		                  Dim currSlideIndex As Integer = SmartML.GetValueN(PresentWindow.XCurrentSlide, "@id", False)
		                  
		                  If currSlideIndex < CurrentSlide() Then
		                    'The presentation advanced to the next slide
		                    Call PresentWindow.KeyDownX( Chr(31) ) 'ASC_KEY_DOWN
		                    
		                  ElseIf currSlideIndex > CurrentSlide() Then
		                    'The presentation jumped back
		                    'If the current slide is the last and the new slide is the first, the presentation has looped
		                    If IsNull( PresentWindow.XCurrentSlide.NextSibling ) And _
		                      CurrentSlide()=FirstVisibleSlide() Then
		                      Call PresentWindow.KeyDownX( Chr(8) ) 'ASC_KEY_BACKSPACE
		                    Else
		                      Call PresentWindow.KeyDownX( Chr(30) ) 'ASC_KEY_UP
		                    End If
		                  End If
		                End If
		              End If
		              
		            ElseIf iEvent = PresentationFactory.PresentationEvent.EndPresentation Then
		              
		              If Not PresentWindow.IsClosingExternal() Then
		                Call PresentWindow.KeyDownX( Chr(29) ) 'ASC_KEY_RIGHT
		              End If
		              
		            End If
		            
		          End If
		        End If
		      End If
		      
		    End If
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PreviewSlide(slideIndex As Integer, width As Integer, height As Integer) As Picture
		  // Part of the iPresentation interface.
		  
		  Dim result As Picture = Nil
		  Dim r As New Random
		  Dim f As FolderItem
		  
		  If Not IsNull(m_oPpt) Then
		    If slideIndex <= m_oPpt.Slides.Count And slideIndex > 0 Then
		      
		      f = SpecialFolder.Temporary.Child(Str(r.InRange(100000, 999999)))
		      If f <> Nil Then
		        m_oPpt.Slides.Item(slideIndex).Export( f.AbsolutePath(), "JPG", width, height )
		        
		        result = f.OpenAsPicture()
		        f.Delete
		      End If
		      
		    End If
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PreviousSlide() As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  
		  If IsShowing() Then
		    result = GotoSlide( CurrentSlide() - 1 )
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SlideCount() As Integer
		  // Part of the iPresentation interface.
		  
		  Dim result As Integer = 0
		  
		  If Not IsNull( m_oPpt ) Then
		    result = m_oPpt.Slides.Count
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SlideName(slideIndex As Integer) As String
		  // Part of the iPresentation interface.
		  
		  Dim result As String
		  
		  If Not IsNull(m_oPpt) Then
		    If slideIndex <= m_oPpt.Slides.Count And slideIndex > 0 Then
		      
		      result = m_oPpt.Slides.Item(slideIndex).Name
		      
		    End If
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StartShow(loopShow As Boolean = False, startAt As Integer = - 1, endAt As Integer = - 1) As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  Dim ppWnd As PowerPointSlideShowWindow
		  Dim pixelsToPoints As Double = 72/96
		  Dim presentScreen As Integer
		  
		  If Not IsShowing() Then
		    If Not IsNull( m_oPpt ) Then
		      
		      m_oPpt.SlideShowSettings.LoopUntilStopped = loopShow
		      
		      If startAt > 0 And startAt <= m_oPpt.Slides.Count And startAt <= endAt Then
		        m_oPpt.SlideShowSettings.StartingSlide = startAt
		      End If
		      If endAt > 0 And endAt <= m_oPpt.Slides.Count And endAt >= startAt Then
		        m_oPpt.SlideShowSettings.EndingSlide = endAt
		      End If
		      
		      presentScreen = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@present") - 1
		      If presentScreen < 0 Or presentScreen > ScreenCount - 1 Then presentScreen = 0
		      
		      ppWnd = m_oPpt.SlideShowSettings.Run
		      ppWnd.Activate()
		      
		      If Not IsNull( ppWnd ) Then
		        ppWnd.Left = Screen(presentScreen).Left * pixelsToPoints
		        ppWnd.Top = Screen(presentScreen).Top * pixelsToPoints
		        ppWnd.Width = Screen(presentScreen).Width * pixelsToPoints
		        ppWnd.Height = Screen(presentScreen).Height * pixelsToPoints
		        
		        return Result
		      End If
		      
		    End If
		  End If
		  
		  Return result
		End Function
	#tag EndMethod


	#tag Note, Name = On PowerPoint automation
		This object takes care of the interfacing to Microsoft PowerPoint.
		Usage requires a full installation of Microsoft PowerPoint.
		
		When using the AnimationCount, make sure to only get the animationCount for the currenly showing slide, 
		otherwise the functions allways returns -1. If run with PowerPoint < 2007, this function will allways return -1 (unknown)
		
		For more information on the available automation objects see http://msdn.microsoft.com/en-us/library/aa271589(office.11).aspx
	#tag EndNote


	#tag Property, Flags = &h21
		Private m_oPpt As PowerPointPresentation = Nil
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
