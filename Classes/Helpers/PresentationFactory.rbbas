#tag Module
Protected Module PresentationFactory
	#tag Method, Flags = &h0
		Sub ClearPresentationCache()
		  While UBound(m_PresentationList)>-1
		    Call m_PresentationList.Pop()
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CreateMsPowerPointPresentation(presentationFile As FolderItem) As MsPowerPointPresentation
		  Dim oPres As MsPowerPointPresentation = Nil
		  Dim oPpt As PowerPointPresentation = Nil
		  
		  'The MsPowerPointHost object is used instead of PowerPointApplication to be able to redirect events to PresentationFactory
		  'Use MsPowerPointHost for all MsPowerPointPresentation object creations to recieve callbacks!
		  
		  Try
		    If IsNull( m_MsPowerPointHost ) Then
		      m_MsPowerPointHost = New MsPowerPointHost()
		    End If
		  Catch
		    'will raise an exeption if Microsoft PowerPoint (Office installation, not just the viewer) is not installed
		    m_MsPowerPointHost = Nil
		  End Try
		  
		  If Not IsNull( m_MsPowerPointHost ) Then
		    oPpt = m_MsPowerPointHost.Presentations.Open( presentationFile.AbsolutePath(), false, false, false )
		    oPres = New MsPowerPointPresentation( oPpt )
		  End If
		  
		  Return oPres
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CreateMsPPTViewPresentation(presentationFile As FolderItem) As MsPPTViewPresentation
		  Dim oPres As MsPPTViewPresentation = Nil
		  
		  If presentationFile.Exists() Then
		    oPres = New MsPPTViewPresentation( presentationFile )
		  End If
		  
		  Return oPres
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CreateOOoImpressPresentation(presentationFile As FolderItem) As OooImpressPresentation
		  Dim oPres As OooImpressPresentation = Nil
		  Dim oImpressDoc As OLEObject = Nil
		  
		  Try
		    Dim oServiceManager As OLEObject = New OLEObject("com.sun.star.ServiceManager")
		    If Not IsNull( oServiceManager ) Then
		      
		      Dim oDesktop as OLEObject = oServiceManager.createInstance("com.sun.star.frame.Desktop")
		      If Not IsNull( oDesktop ) Then
		        
		        #If RBVersion >= 2009 Then
		          
		          Dim aArgs() As Variant
		          
		          'See http://api.openoffice.org/docs/common/ref/com/sun/star/frame/XComponentLoader.html
		          
		          Dim olePropHide As OLEObject = oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		          olePropHide.Name = "Hidden"
		          olePropHide.Value = True
		          aArgs.Append( olePropHide )
		          
		          Dim olePropRO As OLEObject = oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		          olePropRO.Name = "ReadOnly"
		          olePropRO.Value = True
		          aArgs.Append( olePropRO )
		          
		          Dim olePropSilent As OLEObject = oServiceManager.Bridge_GetStruct("com.sun.star.beans.PropertyValue")
		          olePropSilent.Name = "Silent"
		          olePropSilent.Value = True
		          aArgs.Append( olePropSilent )
		          
		          oImpressDoc = oDesktop.loadComponentFromURL(presentationFile.URLPath(), "_default", 0, aArgs)
		          
		        #Else
		          
		          Dim aNoArgs() as Variant
		          Dim param as new OLEParameter
		          
		          'This works
		          param.Type = OLEParameter.ParamTypeString 'or something else?
		          param.ValueArray = aNoArgs
		          
		          oImpressDoc = oDesktop.loadComponentFromURL(presentationFile.URLPath(), "_default", 0, param)
		          
		        #EndIf
		        
		        If Not IsNull( oImpressDoc ) Then
		          
		          'Setting "Hidden" does not work for some reason...
		          'Get the window controller and minimize it
		          'see http://api.openoffice.org/docs/common/ref/com/sun/star/frame/XController.html
		          '#If False
		          Dim oController As OLEObject = oImpressDoc.getCurrentController()
		          If Not IsNull( oController ) Then
		            Dim oFrame As OLEObject = oController.getFrame()
		            If Not IsNull( oFrame ) Then
		              Dim oComponentWin As OLEObject = oFrame.getContainerWindow()
		              If Not IsNull( oComponentWin ) Then
		                oComponentWin.setVisible( False )
		              End If
		            End If
		          End If
		          '#EndIf
		          
		          oPres = New OOoImpressPresentation( oImpressDoc )
		        End If
		        
		      End If
		      
		    End If
		  Catch e As RuntimeException
		    'prevent an application crash, inspect e for debugging.
		  End Try
		  
		  Return oPres
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DetectPPTView(ByRef application As FolderItem, ByRef parameters As String) As Boolean
		  Dim result as Boolean = False
		  Dim applCmd As String
		  Dim applParam As String
		  Dim appl As FolderItem = Nil
		  
		  'Detect Microsoft PPTView
		  'How to detect?
		  
		  '1. Query the registry if an installation reference is found (only Windows)
		  '2. Use a configuration setting in the general OS settings and check for existence of the filename
		  '3. See if PowerPoint is installed and use that in 'simple' mode (only Windows)
		  
		  #If TargetWin32
		    Try
		      Dim PptViewReg As New RegistryItem("HKEY_CLASSES_ROOT\Applications\pptview.exe\shell\Show\command", False)
		      Dim command As String=CStr(PptViewReg.DefaultValue)
		      
		      SplitCommandString( command, applCmd, applParam )
		      appl = GetFolderItem(applCmd)
		      If Not IsNull(app) Then
		        If Not appl.Exists() Then
		          appl = Nil
		        Else
		          result = True
		        End If
		      End If
		      
		    Catch e As  RegistryAccessErrorException
		      'Key not available
		    End Try
		  #EndIf
		  
		  If IsNull( appl ) Or Not result Then
		    appl = App.MainPreferences.GetValueFI(Prefs.kPPTViewLocation, Nil, False)
		    
		    If Not IsNull(appl) Then
		      If Not appl.Exists() Then
		        appl = Nil
		      Else
		        applCmd = appl.AbsolutePath()
		        result = True
		      End If
		    End If
		  End If
		  
		  #If TargetWin32
		    If IsNull( appl ) Or Not result Then
		      Try
		        Dim PptFullReg As New RegistryItem("HKEY_CLASSES_ROOT\Applications\POWERPNT.EXE\shell\Show\command", False)
		        Dim command As String=CStr(PptFullReg.DefaultValue)
		        
		        SplitCommandString( command, applCmd, applParam )
		        appl = GetFolderItem(applCmd)
		        If Not IsNull(appl) Then
		          If Not appl.Exists() Then
		            appl = Nil
		          Else
		            result = True
		          End If
		        End If
		        
		      Catch e As  RegistryAccessErrorException
		        'Key not available
		      End Try
		    End If
		    
		    If IsNull( appl ) Or Not result Then
		      Try
		        Dim PptFullReg As New RegistryItem("HKEY_CLASSES_ROOT\PowerPointViewer.SlideShow.11\shell\Show\command", False)
		        Dim command As String=CStr(PptFullReg.DefaultValue)
		        
		        SplitCommandString( command, applCmd, applParam )
		        appl = GetFolderItem(applCmd)
		        If Not IsNull(appl) Then
		          If Not appl.Exists() Then
		            appl = Nil
		          Else
		            result = True
		          End If
		        End If
		        
		      Catch e As  RegistryAccessErrorException
		        'Key not available
		      End Try
		    End If
		    
		    If IsNull( appl ) Or Not result Then
		      Try
		        Dim PptFullReg As New RegistryItem("HKEY_CLASSES_ROOT\PowerPointViewer.SlideShow.12\shell\Show\command", False)
		        Dim command As String=CStr(PptFullReg.DefaultValue)
		        
		        SplitCommandString( command, applCmd, applParam )
		        appl = GetFolderItem(applCmd)
		        If Not IsNull(appl) Then
		          If Not appl.Exists() Then
		            appl = Nil
		          Else
		            result = True
		          End If
		        End If
		        
		      Catch e As  RegistryAccessErrorException
		        'Key not available
		      End Try
		    End If
		  #EndIf
		  
		  If Not IsNull( appl ) And result Then
		    application = appl
		    parameters = applParam.Replace(" ""%1""","")
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetOrCreate(presentationFilename As String, Host As PresentationHost, cachePresentation As Boolean = True) As iPresentation
		  'Return either MsPowerPointPresentation or OOoImpressPresentation or Nil
		  Dim oPres As iPresentation = Nil
		  Dim createdPres As iPresentation
		  
		  Dim presFile As New FolderItem( presentationFilename )
		  If presFile.Exists() Then
		    
		    For Each createdPres In m_PresentationList
		      If createdPres.Filename() = presFile.AbsolutePath() Then
		        oPres = createdPres
		        Exit
		      End If
		    Next createdPres
		    
		    If IsNull( oPres ) Then
		      If Host = PresentationHost.PowerPoint Then
		        oPres = CreateMsPowerPointPresentation( presFile )
		      ElseIf Host = PresentationHost.PowerPointViewer Then
		        oPres = CreateMsPPTViewPresentation( presFile )
		      ElseIf Host = PresentationHost.OpenOffice Then
		        oPres = CreateOOoImpressPresentation( presFile )
		      Else
		        
		        If PowerPointAvailable(False) And (presFile.Type = PresentationFileTypes.PPTFiles.Name) Then
		          oPres = CreateMsPowerPointPresentation( presFile )
		        ElseIf PPTViewAvailable() And (presFile.Type = PresentationFileTypes.PPTFiles.Name) Then
		          oPres = CreateMsPPTViewPresentation( presFile )
		        ElseIf OpenOfficeAvailable() And (presFile.Type = PresentationFileTypes.ODPFiles.Name) Then
		          oPres = CreateOOoImpressPresentation( presFile )
		        End If
		        
		      End If
		      
		      If cachePresentation Then
		        If Not IsNull( oPres ) Then
		          Call RegisterPresentation( oPres )
		        End If
		      End If
		    End If
		    
		  End If
		  
		  Return oPres
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
		Function OpenOfficeAvailable() As Boolean
		  If m_OOoAvailable = Integer(HostAvailable.Unknown) Then
		    
		    'Detect OpenOffice Impress
		    
		    m_OOoAvailable = Integer(HostAvailable.No)
		    Try
		      Dim oServiceManager as New OLEObject("com.sun.star.ServiceManager")
		      If Not IsNull( oServiceManager ) Then
		        
		        Dim oDesktop as OLEObject = oServiceManager.createInstance("com.sun.star.frame.Desktop")
		        If Not IsNull( oDesktop ) Then
		          
		          Dim aNoArgs() as Variant
		          
		          Dim param as new OLEParameter
		          param.Type = OLEParameter.ParamTypeString
		          param.ValueArray = aNoArgs
		          
		          Dim oImpressDoc as OLEObject =  oDesktop.loadComponentFromURL("private:factory/simpress", "", 0, param)
		          m_OOoAvailable = Integer(HostAvailable.Yes)
		          
		          'If the creation of the object from the URL above does not throw an error, OOo Impress installed;
		          'the actual document creation does not need too be checked (afaik).
		          'If this is required, make sure the targetFrame parameter is not "" but "_blank" (or something like that)
		          
		          If Not IsNull( oImpressDoc ) Then
		            'm_OOoAvailable = Integer(HostAvailable.Yes)
		            
		            oImpressDoc.close( False )
		          End If
		          
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
		Function PowerPointAvailable(viewerAcceptable As Boolean = True) As Boolean
		  If m_PptAvailable = Integer(HostAvailable.Unknown) Then
		    
		    'Detect Microsoft Office PowerPoint
		    
		    m_PptAvailable = Integer(HostAvailable.No)
		    Try
		      Dim ppApp As MsPowerPointHost = New MsPowerPointHost()
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
		Function PPTViewAvailable() As Boolean
		  If m_PptViewAvailable = Integer(HostAvailable.Unknown) Then
		    
		    'We leave the initial value to Unknown to make sure this is tested every time.
		    'This is required to make PPTView detection work immediately after a change of
		    'the PPTView path in the main settings
		    'm_PptViewAvailable = Integer(HostAvailable.No)
		    
		    Dim PPTViewLocation As FolderItem
		    Dim PPTViewParameters As String
		    
		    If DetectPPTView(PPTViewLocation, PPTViewParameters) Then
		      m_PptViewAvailable = Integer(HostAvailable.Yes)
		    End If
		    
		  End If
		  
		  Return m_PptViewAvailable = Integer(HostAvailable.Yes)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RegisterPresentation(presentation As iPresentation) As Boolean
		  Dim success As Boolean
		  
		  success = False
		  
		  If presentation IsA iPresentation Then
		    If m_PresentationList.IndexOf( presentation ) = -1 Then
		      m_PresentationList.Append( presentation )
		      success = True
		    End If
		  End If
		  
		  Return success
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SplitCommandString(command As String, ByRef application As String, ByRef parameters As String)
		  If command.StartsWith( """" ) Then
		    
		    Dim i As Integer = command.InStr( 2, """" )
		    If i > 0 Then
		      application = command.Mid( 2, i-2 )
		      parameters = command.Mid( i+1 ).Trim()
		    End If
		    
		  Else
		    
		    Dim i As Integer = command.InStr( 2, " " )
		    If i > 0 Then
		      application = command.Left( i )
		      parameters = command.Mid( i+1 ).Trim()
		    End If
		    
		  End If
		End Sub
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


	#tag Property, Flags = &h21
		Private m_MsPowerPointHost As MsPowerPointHost = Nil
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_OOoAvailable As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_PptAvailable As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_PptViewAvailable As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_PresentationList(-1) As iPresentation
	#tag EndProperty


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

	#tag Enum, Name = PresentationHost, Flags = &h0
		Automatic=0
		  PowerPoint=1
		  PowerPointViewer=2
		OpenOffice=3
	#tag EndEnum


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
End Module
#tag EndModule
