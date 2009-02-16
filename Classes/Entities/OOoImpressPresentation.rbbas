#tag Class
Protected Class OOoImpressPresentation
Implements iPresentation
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
		Function PreviewSlide(slideIndex As Integer, width As Integer, height As Integer) As Picture
		  // Part of the iPresentation interface.
		  
		  Dim result As Picture = Nil
		  Dim r As Random = New Random()
		  Dim f As FolderItem = Nil
		  
		  Return result
		  
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
		                
		                Dim aNoArgs() As Variant
		                Dim aMdProps() As Variant
		                Dim aMediaDescriptors() As Object
		                
		                Dim olePropMT As OLEObject = m_oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		                olePropMT.Name = "MediaType"
		                olePropMT.Value = "image/jpeg "
		                aMdProps.Append( olePropMT )
		                aMediaDescriptors.Append( olePropMT )
		                
		                Dim olePropURL As OLEObject = m_oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		                olePropURL.Name = "URL"
		                olePropURL.Value = "file:///" + f.AbsolutePath().ReplaceAll("\", "/")
		                aMdProps.Append( olePropURL )
		                aMediaDescriptors.Append( olePropURL )
		                
		                Dim olePropPW As OLEObject = m_oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		                olePropURL.Name = "PixelWidth"
		                olePropURL.Value = width
		                aMdProps.Append( olePropPW )
		                aMediaDescriptors.Append( olePropPW )
		                
		                Dim olePropPH As OLEObject = m_oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		                olePropURL.Name = "PixelHeight"
		                olePropURL.Value = height
		                aMdProps.Append( olePropPH )
		                aMediaDescriptors.Append( olePropPH )
		                
		                'Dim olePropQT As OLEObject = m_oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		                'olePropURL.Name = "Quality"
		                'olePropURL.Value = 8 'Tie to globbal Application image quality setting
		                'aMdProps.Append( olePropQT )
		                'aMediaDescriptors.Append( olePropQT )
		                
		                
		                'This does not compile: type mismatch, expected Variant, but got Variant()
		                'oExporter.filter( aMdProps  )
		                
		                Dim mediadescriptor as new OLEParameter
		                mediadescriptor.ValueArray = aMdProps
		                
		                'This fails, OOo error: [automation bridge] Conversion of ValueObject failed
		                'oExporter.filter( mediadescriptor  )
		                
		                Dim objValueObject As OLEObject = m_oServiceManager.Bridge_GetValueObject()
		                
		                'This does not compile: type mismatch, expected Variant, but got Object()
		                'objValueObject.Set( "[]object", aMediaDescriptors )
		                
		                'objValueObject.Set( "[]com.sun.star.beans.PropertyValue", mediadescriptor )
		                
		                objValueObject.Set( "[]object", mediadescriptor )
		                
		                'This fails also, RB/OLE? error:  Type mismatch
		                oExporter.filter( objValueObject  )
		                
		                Dim valueobject As Variant
		                'objValueObject.Get( valueobject )
		                valueobject = objValueObject.Get()
		                
		                If oExporter.filter( valueobject ) Then
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

	#tag Method, Flags = &h0
		Function StartShow(loopShow As Boolean = False, startAt As Integer = 1, endAt As Integer = - 1) As Boolean
		  // Part of the iPresentation interface.
		  Dim presentScreen As Integer
		  
		  Dim result As Boolean = False
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    
		    Try
		      Dim oPresentation As OLEObject = m_oImpressDoc.getPresentation()
		      If Not IsNull( oPresentation ) Then
		        
		        If IsShowing() Then
		          
		          oPresentation.IsEndless = loopShow
		          oPresentation.IsAlwaysOnTop = True
		          oPresentation.IsAutomatic = False
		          'oPresentation.IsFullScreen = True
		          oPresentation.Pause = 0
		          oPresentation.StartWithNavigator = False
		          
		          oPresentation.start()
		          
		          'Dim oController As OLEObject = Nil
		          'Try
		          'oController = oPresentation.getController() 'call XPresentation2 interterface method to get XSlideShowController
		          
		          'If Not IsNull( oController ) Then
		          'Dim oListener As New OOoPresentationHost.OOoSlideShowListener()
		          'Dim param As New OLEParameter
		          'param.Value = oListener
		          
		          'Dim objValueObject As OLEObject = oServiceManager.Bridge_GetValueObject()
		          'objValueObject.Set( "com.sun.star.presentation.XSlideShowListener", oListener )
		          
		          'oController.addSlideShowListener( objValueObject )
		          'End If
		          'Catch
		          'As fallback for OOo < 3.0, use the main Impress window Controller
		          
		          'End Try
		          
		          Dim oController As OLEObject = m_oImpressDoc.getCurrentController()
		          If Not IsNull( oController ) Then
		            
		            Dim oFrame As OLEObject = oController.getFrame()
		            If Not IsNull( oFrame ) Then
		              
		              presentScreen = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@present") - 1
		              If presentScreen < 0 Or presentScreen > ScreenCount - 1 Then presentScreen = 0
		              
		              Dim x As Integer =Screen(presentScreen).Left
		              Dim y As Integer =Screen(presentScreen).Top
		              Dim w As Integer =Screen(presentScreen).Width
		              Dim h As Integer  =Screen(presentScreen).Height
		              
		              Dim oComponentWin As OLEObject = oFrame.getContainerWindow()
		              If Not IsNull( oComponentWin ) Then
		                oComponentWin.setPosSize( x, y, w, h, OOoPresentationHost.OOoPosSize.POSSIZE )
		              End If
		              
		            End If
		          End If
		          
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
		        Dim oPresController As OLEObject = oPresentation.getController() 'call XPresentation2 interterface method to check for support
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
		  
		  'Exporting images is supported by OpenOffice, but the RealBasic OLE interaction is (as far as my knowledge goes) not supporting OLEObject arrays as parameter.
		  'This prevents us from using previews (or generating images in general).
		  'For more information see the PreviewSlide() function.
		  
		  Return False
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
		          result = result.Mid( 8 )
		        End If
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

	#tag Method, Flags = &h0
		Sub Notify(iEvent As PresentationEvent)
		  // Part of the iPresentation interface.
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(oOOoPresentationDocument As OLEObject)
		  // Part of the iPresentation interface.
		  m_oImpressDoc = oOOoPresentationDocument
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  If IsShowing() Then
		    Call EndShow()
		  End If
		  
		  Call PresentationFactory.UnregisterPresentation( self )
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    m_oImpressDoc.close( False )
		    m_oImpressDoc = Nil
		  End If
		End Sub
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

	#tag Method, Flags = &h0
		Function EndShow() As Boolean
		  // Part of the iPresentation interface.
		  
		  If Not IsNull( m_oImpressDoc ) Then
		    
		    Dim oPresentation As OLEObject = m_oImpressDoc.getPresentation()
		    If Not IsNull( oPresentation ) Then
		      
		      oPresentation.Invoke( "end" ) 'end is protected keyword, so the 'Invoke' workarround needs to be applied.
		      m_IsRunning = True 'Keep track of status for OOo < 3.0
		      
		    End If
		    
		  End If
		  
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
		Function AnimationCount(slideIndex As Integer) As Integer
		  // Part of the iPresentation interface.
		  
		  Dim result As Integer = -1
		  
		  'This is not exported in any of the OOo interfaces
		  
		  Return result
		End Function
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


	#tag Note, Name = Notes on OpenOffice.org Impress automation
		
		This class takes care of the interaction with OpenOffice.org Impress.
		A large part of the interaction functions are only available since version 3.0
		The animation step interaction is very limited, check the respective functions for support and caveats.
		
		The opening of an Impress presentation is less shiny as could be as RealBasic has problems with interacting using object arrays in OLE functions calls.
		For the same reasons retrieving images of a slide, using the PreviewSlide function is not available for now.
	#tag EndNote


	#tag Property, Flags = &h21
		Private m_oImpressDoc As OLEObject = Nil
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_IsRunning As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_oServiceManager As OLEObject = Nil
	#tag EndProperty


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
