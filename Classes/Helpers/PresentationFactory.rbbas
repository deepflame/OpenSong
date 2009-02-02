#tag Module
Protected Module PresentationFactory
	#tag Method, Flags = &h0
		Function GetOrCreate(presentationFilename As String, Host As PresentationHost) As iPresentation
		  'Return either MsPowerPointPresentation or OOoImpressPresentation or Nil
		  Dim oPres As iPresentation = Nil
		  Dim createdPres As iPresentation
		  
		  Dim presFile As FolderItem = New FolderItem( presentationFilename )
		  If presFile.Exists() Then
		    
		    For Each createdPres In m_PresentationList
		      If createdPres.Filename() = presFile.AbsolutePath() Then
		        oPres = createdPres
		      End If
		    Next createdPres
		    
		    if IsNull( oPres ) Then
		      If Host = PresentationHost.PowerPoint Then
		        
		        oPres = CreateMsPowerPointPresentation( presFile )
		        
		      ElseIf Host = PresentationHost.PowerPointViewer Then
		        
		        'Todo
		        
		      ElseIf Host = PresentationHost.OpenOffice Then
		        
		        oPres = CreateMsPowerPointPresentation( presFile )
		        
		      Else
		        
		        'Autodetect host to use. Order of preference is
		        '1. File type associated host (prefer PowerPoint over PPTView
		        '2. OpenOffice (can open both PowerPoint and Impess and others)
		        
		        'Todo
		        
		      End If
		      
		      If Not IsNull( oPres ) Then
		        Call RegisterPresentation( oPres )
		      End If
		    End If
		  End If
		  
		  Return oPres
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PowerPointAvailable(viewerAcceptable As Boolean = True) As Boolean
		  If m_PptAvailable = Integer(HostAvailable.Unknown) Then
		    
		    'Detect Microsoft Office PowerPoint
		    
		    m_PptAvailable = Integer(HostAvailable.No)
		    Try
		      
		      Dim ppApp As PowerPointApplication
		      ppApp = New PowerPointApplication
		      If Not IsNull( ppApp ) Then
		        m_PptAvailable = Integer(HostAvailable.Yes)
		      End If
		      
		    Catch
		      'catch all
		    End Try
		    
		  End If
		  
		  Return m_PptAvailable = Integer(HostAvailable.Yes)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OpenOfficeAvailable() As Boolean
		  If m_OOoAvailable = Integer(HostAvailable.Unknown) Then
		    
		    'Detect OpenOffice Impress
		    
		    m_OOoAvailable = Integer(HostAvailable.No)
		    Try
		      'Dim oServiceManager as New OLEObject("com.sun.star.ServiceManager")
		      'If Not IsNull( oServiceManager ) Then
		      
		      'Dim oDesktop as OLEObject = oServiceManager.createInstance("com.sun.star.frame.Desktop")
		      'If Not IsNull( oDesktop ) Then
		      
		      'Dim aNoArgs() as Variant
		      
		      'Dim param as new OLEParameter
		      'param.Type = OLEParameter.ParamTypeString
		      'param.ValueArray = aNoArgs
		      
		      'oImpressDoc = oDesktop.loadComponentFromURL("private:factory/simpress", "_blank", 0, param)
		      
		      'Dim oImpressDoc as OLEObject = oServiceManager.createInstance("com.sun.star.presentation.PresentationDocument")
		      'If Not IsNull( oImpressDoc ) Then
		      'OOoAvailable = Integer(HostAvailable.Yes)
		      'End If
		      
		      'End If
		      
		      'End If
		      
		      Dim oXServiceInfo as New OLEObject("com.sun.star.lang.XServiceInfo")
		      If Not IsNull( oXServiceInfo ) Then
		        
		        If oXServiceInfo.supportsService("com.sun.star.presentation.PresentationDocument") Then
		          m_OOoAvailable = Integer(HostAvailable.Yes)
		        End If
		        
		      End If
		      
		    Catch
		      'any...
		    End Try
		    
		  End If
		  
		  Return m_OOoAvailable = Integer(HostAvailable.Yes)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OnPowerPointEvent(ppt As PowerPointPresentation, iEvent As PresentationEvent)
		  'iEvent actually is PresentationEvent enum type
		  'Dim event As PresentationEvent = PresentationEvent(iEvent)
		  
		  Dim eventFilename As String
		  Dim pres As iPresentation
		  
		  eventFilename = ppt.FullName()
		  
		  For Each pres In m_PresentationList
		    If pres.Filename() = eventFilename Then
		      pres.Notify( iEvent )
		    End If
		  Next pres
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RegisterPresentation(presentation As iPresentation) As Boolean
		  Dim success As Boolean
		  
		  success = False
		  
		  If presentation IsA iPresentation Then
		    If m_PresentationList.IndexOf( presentation ) > -1 Then
		      m_PresentationList.Append( presentation )
		      success = True
		    End If
		  End If
		  
		  Return success
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UnregisterPresentation(presentation As iPresentation) As Boolean
		  Dim success As Boolean
		  Dim i As Integer
		  
		  success = False
		  
		  If presentation IsA iPresentation Then
		    i = m_PresentationList.IndexOf( presentation )
		    If i > -1 Then
		      m_PresentationList.Remove( i )
		      success = True
		    End If
		  End If
		  
		  Return success
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PPTViewAvailable() As Boolean
		  If m_PptViewAvailable = Integer(HostAvailable.Unknown) Then
		    
		    'Detect Microsoft PPTView
		    
		    m_PptViewAvailable = Integer(HostAvailable.No)
		    
		    'How to detect? Use a configuration setting in the general OS settings and check for existence of the filename??
		    
		  End If
		  
		  Return m_PptViewAvailable = Integer(HostAvailable.Yes)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateMsPowerPointPresentation(presentationFile As FolderItem) As MsPowerPointPresentation
		  Dim oPres As MsPowerPointPresentation = Nil
		  Dim oPpt As PowerPointPresentation = Nil
		  
		  'The MsPowerPointHost object is used instead of PowerPointApplication to be able to redirect events to PresentationFactory
		  'Use MsPowerPointHost for all MsPowerPointPresentation object creations to recieve callbacks!
		  
		  If IsNull( m_MsPowerPointHost ) Then
		    m_MsPowerPointHost = New MsPowerPointHost()
		  End If
		  
		  If Not IsNull( m_MsPowerPointHost ) Then
		    oPpt = m_MsPowerPointHost.Presentations.Open( presentationFile.AbsolutePath(), false, false, false )
		    oPres = New MsPowerPointPresentation( oPpt )
		  End If
		  
		  Return oPres
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateOOoImpressPresentation(presentationFile As FolderItem) As OooImpressPresentation
		  Dim oPres As OooImpressPresentation = Nil
		  Dim oImpressDoc As OLEObject = Nil
		  
		  Dim oServiceManager As OLEObject = New OLEObject("com.sun.star.ServiceManager")
		  If Not IsNull( oServiceManager ) Then
		    
		    Dim oDesktop as OLEObject = oServiceManager.createInstance("com.sun.star.frame.Desktop")
		    If Not IsNull( oDesktop ) Then
		      
		      Dim aNoArgs() as Variant
		      Dim aArgs() As Variant
		      
		      'See http://api.openoffice.org/docs/common/ref/com/sun/star/frame/XComponentLoader.html
		      
		      Dim oleArg As OLEObject = oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		      oleArg.Name = "Hidden"
		      oleArg.Value = True
		      aArgs.Append( oleArg )
		      
		      Dim param as new OLEParameter
		      
		      'This works
		      param.Type = OLEParameter.ParamTypeString 'or something else?
		      param.ValueArray = aNoArgs
		      
		      'This does not work
		      'param.Type = 0 'Use the variant (sub)type
		      'param.ValueArray = aArgs
		      
		      oImpressDoc = oDesktop.loadComponentFromURL("file:///" + presentationFile .AbsolutePath().ReplaceAll("\", "/"), "_blank", 0, param)
		      If Not IsNull( oImpressDoc ) Then
		        oPres = New OOoImpressPresentation( oImpressDoc )
		      End If
		      
		    End If
		    
		  End If
		  
		  Return oPres
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private m_OOoAvailable As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_PptAvailable As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_PresentationList(-1) As iPresentation
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_MsPowerPointHost As MsPowerPointHost = Nil
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_PptViewAvailable As Integer = -1
	#tag EndProperty


	#tag Enum, Name = PresentationHost, Flags = &h0
		Automatic
		  PowerPoint
		  PowerPointViewer
		OpenOffice
	#tag EndEnum

	#tag Enum, Name = HostAvailable, Flags = &h0
		Unknown=-1
		  No=0
		Yes=1
	#tag EndEnum

	#tag Enum, Name = PresentationEvent, Flags = &h0
		BeginPresentation
		  EndPresentation
		NextSlide
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
