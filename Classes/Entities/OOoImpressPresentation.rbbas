#tag Class
Protected Class OOoImpressPresentation
Inherits Timer
Implements iPresentation
	#tag Event
		Sub Action()
		  If IsShowing() Then
		    If m_currentSlide <> CurrentSlide() Then
		      Enabled = False
		      m_currentSlide = CurrentSlide()
		      Notify(PresentationFactory.PresentationEvent.NextSlide)
		      Enabled = True
		    End If
		  Else
		    If m_IsRunning Then
		      Call EndShow()
		      Notify(PresentationFactory.PresentationEvent.EndPresentation)
		    End If
		  End If
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function AnimationCount(slideIndex As Integer) As Integer
		  // Part of the iPresentation interface.
		  
		  Dim result As Integer = -1
		  
		  'This is not exported in any of the OOo interfaces
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanControl() As Boolean
		  // Part of the iPresentation interface.
		  
		  'The presentation controller object is an implementation of the XPresentation2 interface.
		  'This extension of the XPresentation interface is available as of OOo 3.0.
		  'Earlier editions of OpenOffice.org do not support presentation control.
		  'See http://api.openoffice.org/docs/common/ref/com/sun/star/presentation/Presentation2.html
		  
		  Dim result As Boolean = False
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    Dim oPresentation As OLEObject = m_oImpressDoc.getPresentation()
		    If Not IsNull( oPresentation ) Then
		      Try
		        'The best test is to try and obtain the XSlideShowController object, but that is only available during presentation.
		        'Dim oPresController As OLEObject = oPresentation.getController() 'call XPresentation2 interterface method to check for support
		        
		        'Next best is to query another function that is only available in the OOo 3.0 XPresentation2 interface.
		        Dim check As Boolean = oPresentation.isRunning()
		        result = True
		      Catch
		        'catch exeption for OOo < 3.0
		      End Try
		      
		    End If
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanPreview() As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  'Exporting images is supported by OpenOffice, but the RealBasic OLE interaction is (as far as my knowledge goes) only supporting OLEObject arrays as parameter as of RB2009.
		  
		  #If RBVersion >= 2009 Then
		    result = True
		  #EndIf
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(oOOoPresentationDocument As OLEObject)
		  // Part of the iPresentation interface.
		  m_oImpressDoc = oOOoPresentationDocument
		  
		  'Setting the Timer values
		  Enabled = False
		  Period = 250 '250 ms, 4 times per second
		  Mode =  Timer.ModeMultiple
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentAnimation() As Integer
		  // Part of the iPresentation interface.
		  
		  Dim result As Integer = -1
		  
		  'This is not exported in any of the OOo interfaces
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentSlide() As Integer
		  // Part of the iPresentation interface.
		  
		  Dim result As Integer = -1
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    Dim oPresentation As OLEObject = m_oImpressDoc.getPresentation()
		    If Not IsNull( oPresentation ) Then
		      Try
		        
		        Dim oPresController As OLEObject = oPresentation.getController() 'call XPresentation2 interterface method to check for support
		        If Not IsNull( oPresController ) Then
		          result = oPresController.getCurrentSlideIndex() + 1
		        End If
		        
		      Catch
		        'catch exeption for OOo < 3.0
		      End Try
		      
		    End If
		  End If
		  
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  If IsShowing() Then
		    Call EndShow()
		  End If
		  
		  Enabled = False
		  Call PresentationFactory.UnregisterPresentation( self )
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    m_oImpressDoc.close( False )
		    m_oImpressDoc = Nil
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EndShow() As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  
		  Enabled = False
		  If Not IsNull( m_oImpressDoc ) Then
		    
		    Dim oPresentation As OLEObject = m_oImpressDoc.getPresentation()
		    If Not IsNull( oPresentation ) Then
		      
		      'Try
		      'Dim oController As OLEObject = oPresentation.getController() 'call XPresentation2 interterface method to get XSlideShowController
		      'If Not IsNull( oController ) Then
		      'If Not IsNull( m_ShowListener ) Then
		      'oController.removeSlideShowListener( m_ShowListener )
		      'End If
		      'End If
		      'Catch
		      ''As fallback for OOo < 3.0, use the main Impress window Controller
		      'End Try
		      
		      oPresentation.Invoke( "end" ) 'end is protected keyword, so the 'Invoke' workarround needs to be applied.
		      
		      m_IsRunning = False 'Keep track of status for OOo < 3.0
		      
		      result = True
		      
		    End If
		    
		  End If
		  
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Filename() As String
		  // Part of the iPresentation interface.
		  
		  Dim result As String
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    
		    Try
		      'Query the XStorable interface
		      If m_oImpressDoc.hasLocation() Then
		        result = m_oImpressDoc.getLocation()
		        
		        If result.StartsWith( "file://" ) Then
		          #If TargetWin32
		            result = result.Mid( 9 )
		          #Else
		            result = result.Mid( 8 )
		          #EndIf
		        End If
		        
		        result = DecodeURLComponent( result )
		        result = result.ReplaceAll("|", ":")
		        #If TargetWin32
		          result = result.ReplaceAll("/", "\")
		        #EndIf
		        
		      End If
		    Catch
		      'prevent crash in case
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
		  
		  'The OOo API does not provide a function to (re)set the animation to a specific effect step.
		  'This function will always call 'gotoNextEffext' which can also mean 'nextSlide' when no effect is available
		  
		  Dim result As Boolean = False
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    Dim oPresentation As OLEObject = m_oImpressDoc.getPresentation()
		    If Not IsNull( oPresentation ) Then
		      Try
		        
		        Dim oPresController As OLEObject = oPresentation.getController() 'call XPresentation2 interterface method to check for support
		        If Not IsNull( oPresController ) Then
		          oPresController.gotoNextEffect()
		          result = True
		        End If
		        
		      Catch
		        'catch exeption for OOo < 3.0
		      End Try
		      
		    End If
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GotoSlide(slideIndex As Integer) As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    Dim oPresentation As OLEObject = m_oImpressDoc.getPresentation()
		    If Not IsNull( oPresentation ) Then
		      Try
		        
		        Dim oPresController As OLEObject = oPresentation.getController() 'call XPresentation2 interterface method to check for support
		        If Not IsNull( oPresController ) Then
		          
		          If slideIndex > 0 and slideIndex <= oPresController.getSlideCount() Then
		            oPresController.gotoSlideIndex( slideIndex - 1 )
		            SetPresentationWindow( oPresController, True )
		            result = True
		          End If
		          
		        End If
		        
		      Catch
		        'catch exeption for OOo < 3.0
		      End Try
		      
		    End If
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HostName() As String
		  // Part of the iPresentation interface.
		  
		  Return "OpenOffice.org Impress"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsHidden(slideIndex As Integer) As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    Dim oDrawPages As OLEObject = m_oImpressDoc.getDrawPages()
		    If Not IsNull( oDrawPages ) Then
		      
		      If slideIndex > 0 and slideIndex <= oDrawPages.getCount() Then
		        Dim oDrawPage As OLEObject = oDrawPages.getByIndex(  slideIndex - 1 )
		        
		        If Not IsNull( oDrawPage ) Then
		          Try
		            result = Not oDrawPage.Visible()
		          Catch
		            'prevent application crash
		          End Try
		        End If
		        
		      End If
		      
		    End If
		  End If
		  
		  Return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsShowing() As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    
		    Dim oPresentation As OLEObject = m_oImpressDoc.getPresentation()
		    If Not IsNull( oPresentation ) Then
		      
		      Try
		        result = oPresentation.isRunning()
		      Catch
		        result = m_IsRunning
		        'fallback for OOo < 3.0 without XPresentation2 support
		      End Try
		      
		    End If
		    
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
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    Dim oPresentation As OLEObject = m_oImpressDoc.getPresentation()
		    If Not IsNull( oPresentation ) Then
		      Try
		        
		        Dim oPresController As OLEObject = oPresentation.getController() 'call XPresentation2 interterface method to check for support
		        If Not IsNull( oPresController ) Then
		          
		          oPresController.gotoNextSlide()
		          
		        End If
		        
		      Catch
		        'catch exeption for OOo < 3.0
		      End Try
		      
		    End If
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
		      
		      If presAppl = "presentation" And presHost = "impress" Then
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
		  Dim r As Random = New Random()
		  Dim f As FolderItem = Nil
		  
		  #If RBVersion >= 2009 Then
		    If Not IsNull( m_oImpressDoc ) Then
		      Dim oDrawPages As OLEObject = m_oImpressDoc.getDrawPages()
		      If Not IsNull( oDrawPages ) Then
		        
		        If slideIndex > 0 and slideIndex <= oDrawPages.getCount() Then
		          Dim oDrawPage As OLEObject = oDrawPages.getByIndex(  slideIndex - 1 )
		          
		          Try
		            If IsNull( m_oServiceManager ) Then
		              m_oServiceManager = New OLEObject("com.sun.star.ServiceManager")
		            End If
		            
		            If Not IsNull( m_oServiceManager ) Then
		              Dim oExporter as OLEObject = m_oServiceManager.createInstance("com.sun.star.drawing.GraphicExportFilter")
		              If Not IsNull( oExporter ) Then
		                
		                oExporter.setSourceDocument ( oDrawPage )
		                
		                f = SpecialFolder.Temporary.Child(Str(r.InRange(100000, 999999)))
		                If Not IsNull( f ) Then
		                  
		                  'Info
		                  'http://api.openoffice.org/docs/DevelopersGuide/Drawing/Drawing.xhtml
		                  'http://udk.openoffice.org/common/man/spec/ole_bridge.html#a4
		                  'http://api.openoffice.org/docs/DevelopersGuide/ProfUNO/ProfUNO.xhtml
		                  'http://www.oooforum.org/forum/viewtopic.phtml?t=51021
		                  
		                  Dim aMdProps() As Variant
		                  Dim aFilterData() As Variant
		                  
		                  Dim olePropMT As OLEObject = m_oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		                  olePropMT.Name = "MediaType"
		                  olePropMT.Value = "image/jpeg"
		                  aMdProps.Append( olePropMT )
		                  
		                  Dim olePropNM As OLEObject = m_oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		                  olePropNM.Name = "FilterName"
		                  olePropNM.Value = "jpg"
		                  aMdProps.Append( olePropNM )
		                  
		                  Dim olePropURL As OLEObject = m_oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		                  olePropURL.Name = "URL"
		                  olePropURL.Value = f.URLPath()
		                  aMdProps.Append( olePropURL )
		                  
		                  Dim oleFilterPW As OLEObject = m_oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		                  oleFilterPW.Name = "PixelWidth"
		                  oleFilterPW.Value = width
		                  aFilterData.Append( oleFilterPW )
		                  
		                  Dim oleFilterPH As OLEObject = m_oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		                  oleFilterPH.Name = "PixelHeight"
		                  oleFilterPH.Value = height
		                  aFilterData.Append( oleFilterPH )
		                  
		                  Dim oleFilterQT As OLEObject = m_oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		                  oleFilterQT.Name = "Quality"
		                  
		                  Dim QualityValue As Integer = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "image_quality/@compression", False)
		                  Dim QualitySetting As ImageQualityEnum = ImageQualityEnum(QualityValue)
		                  
		                  Select Case QualitySetting
		                  Case ImageQualityEnum.FullCompression
		                    oleFilterQT.Value = 40
		                  Case ImageQualityEnum.HighCompression
		                    oleFilterQT.Value = 60
		                  Case ImageQualityEnum.LittleCompression
		                    oleFilterQT.Value = 75
		                  Case ImageQualityEnum.LowCompression
		                    oleFilterQT.Value = 85
		                  Case ImageQualityEnum.NoCompression
		                    oleFilterQT.Value = 100
		                  Else
		                    oleFilterQT.Value = 75
		                  End Select
		                  
		                  aFilterData.Append( oleFilterQT )
		                  
		                  Dim olePropFD As OLEObject = m_oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		                  olePropFD.Name = "FilterData"
		                  olePropFD.Value = aFilterData
		                  aMdProps.Append( olePropFD )
		                  
		                  If oExporter.filter( aMdProps ) Then
		                    result = f.OpenAsPicture()
		                  End If
		                  
		                End If
		              End If
		            End If
		            
		          Catch
		            'prevent application crash
		          Finally
		            If Not IsNull( f ) Then
		              If f.Exists() Then
		                f.Delete()
		              End If
		            End If
		          End Try
		          
		        End If
		        
		      End If
		    End If
		  #EndIf
		  
		  Return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PreviousSlide() As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    Dim oPresentation As OLEObject = m_oImpressDoc.getPresentation()
		    If Not IsNull( oPresentation ) Then
		      Try
		        
		        Dim oPresController As OLEObject = oPresentation.getController() 'call XPresentation2 interterface method to check for support
		        If Not IsNull( oPresController ) Then
		          oPresController.gotoPreviousSlide()
		        End If
		        
		      Catch
		        'catch exeption for OOo < 3.0
		      End Try
		      
		    End If
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetPresentationWindow(oController As OLEObject, Showing As Boolean)
		  Try
		    If IsNull( oController ) Then
		      oController = m_oImpressDoc.getCurrentController()
		    End If
		  Catch
		  End Try
		  
		  If Not IsNull( oController ) Then
		    
		    Dim oFrame As OLEObject = Nil
		    Try
		      oFrame = oController.getFrame()
		    Catch
		    End Try
		    
		    If Not IsNull( oFrame ) Then
		      
		      Dim presentScreen As Integer = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@present") - 1
		      If presentScreen < 0 Or presentScreen > ScreenCount - 1 Then presentScreen = 0
		      
		      Dim x As Integer =Screen(presentScreen).Left
		      Dim y As Integer =Screen(presentScreen).Top
		      Dim w As Integer =Screen(presentScreen).Width
		      Dim h As Integer  =Screen(presentScreen).Height
		      
		      Try
		        Dim oComponentWin As OLEObject = oFrame.getContainerWindow()
		        If Not IsNull( oComponentWin ) Then
		          oComponentWin.setPosSize( x, y, w, h, OOoPresentationHost.OOoPosSize.POSSIZE )
		          oComponentWin.setVisible( True )
		        End If
		      Catch
		      End Try
		      
		    End If
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SlideCount() As Integer
		  // Part of the iPresentation interface.
		  
		  Dim result As Integer = -1
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    Dim oPresentation As OLEObject = m_oImpressDoc.getPresentation()
		    If Not IsNull( oPresentation ) Then
		      
		      Dim oPresController As OLEObject = Nil
		      Try
		        
		        oPresController = oPresentation.getController() 'call XPresentation2 interterface method to check for support
		        If Not IsNull( oPresController ) Then
		          result = oPresController.getSlideCount()
		        End If
		        
		      Catch
		        'catch exeption for OOo < 3.0
		        oPresController = Nil
		      End Try
		      
		      If IsNull( oPresController ) Then
		        
		        Dim oDrawPages As OLEObject = m_oImpressDoc.getDrawPages() 'com.sun.star.drawing.XDrawPages xDrawPages
		        If Not IsNull( oDrawPages ) Then
		          result = oDrawPages.getCount() 'number of slides, this may vary from the actual displayed slides in case of a custom show
		        End If
		        
		      End If
		      
		    End If
		  End If
		  
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SlideName(slideIndex As Integer) As String
		  // Part of the iPresentation interface.
		  
		  Dim result As String
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    
		    Dim oDrawPages As OLEObject = m_oImpressDoc.getDrawPages() 'com.sun.star.drawing.XDrawPages xDrawPages
		    If Not IsNull( oDrawPages ) Then
		      
		      If slideIndex > 0 and slideIndex <= oDrawPages.getCount() Then
		        
		        Dim oDrawPage As OLEObject = oDrawPages.getByIndex( slideIndex - 1 )
		        If Not IsNull( oDrawPage ) Then
		          
		          result = oDrawPage.getName()
		          
		        End If
		      End If
		    End If
		    
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StartShow(loopShow As Boolean = False, startAt As Integer = 1, endAt As Integer = - 1) As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    
		    Try
		      Dim oPresentation As OLEObject = m_oImpressDoc.getPresentation()
		      If Not IsNull( oPresentation ) Then
		        
		        If Not IsShowing() Then
		          
		          If startAt > 1 Then
		            oPresentation.FirstPage = SlideName( startAt )
		          End If
		          oPresentation.IsEndless = loopShow
		          oPresentation.IsAlwaysOnTop = True
		          oPresentation.IsAutomatic = False
		          'oPresentation.IsFullScreen = True
		          oPresentation.Pause = 0
		          oPresentation.StartWithNavigator = False
		          
		          oPresentation.start()
		          
		          Dim oController As OLEObject = Nil
		          Try
		            oController = oPresentation.getController() 'call XPresentation2 interterface method to get XSlideShowController
		          Catch
		            'As fallback for OOo < 3.0, use the main Impress window Controller
		            result = False
		          End Try
		          
		          Notify( PresentationFactory.PresentationEvent.BeginPresentation )
		          
		          If Not IsNull( oController ) Then
		            'Enable the timer for polling the status as surrogate for registering an XSlideShowListener object
		            'Polling has no use if the XPresentation2 interface is not available
		            m_currentSlide = CurrentSlide()
		            Enabled = True
		            
		            Try
		              'If IsNull( m_ShowListener ) Then
		              'm_ShowListener = New OOoPresentationHost.OOoSlideShowListener()
		              'End If
		              'oController.addSlideShowListener( m_ShowListener )
		            Catch e As OLEException
		              'This does now work very well yet...
		            End Try
		          End If
		          
		          SetPresentationWindow( oController, True )
		          
		          m_IsRunning = True
		          result = m_IsRunning
		          
		        End If
		        
		      End If
		    Catch
		      'just in case...
		    End Try
		    
		  End If
		  
		  return result
		End Function
	#tag EndMethod


	#tag Note, Name = Notes on OpenOffice . org Impress automation
		
		This class takes care of the interaction with OpenOffice.org Impress.
		A large part of the interaction functions are only available since version 3.0
		The animation step interaction is very limited, check the respective functions for support and caveats.
		
		The opening of an Impress presentation is less shiny as could be as RealBasic has problems with interacting using object arrays in OLE functions calls.
		For the same reasons retrieving images of a slide, using the PreviewSlide function is not available for now when compiling on RB < 2009.
	#tag EndNote


	#tag Property, Flags = &h21
		Private m_currentSlide As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_IsRunning As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_oImpressDoc As OLEObject = Nil
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_oServiceManager As OLEObject = Nil
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_ShowListener As OOoPresentationHost.OOoSlideShowListener = Nil
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
