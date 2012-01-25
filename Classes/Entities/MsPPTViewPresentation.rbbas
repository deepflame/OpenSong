#tag Class
Protected Class MsPPTViewPresentation
Inherits Timer
Implements iPresentation
	#tag Event
		Sub Action()
		  If IsShowing() Then
		    'We have no method of detecting the currently showing slide
		  Else
		    Call EndShow()
		    Notify(PresentationFactory.PresentationEvent.EndPresentation)
		  End If
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function AnimationCount(slideIndex As Integer) As Integer
		  // Part of the iPresentation interface.
		  Return -1
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
		Sub Constructor(presentationFile As FolderItem)
		  // Part of the iPresentation interface.
		  presentation = presentationFile
		  
		  'Setting the Timer values
		  Enabled = False
		  Period = 250 '250 ms, 4 times per second
		  Mode =  Timer.ModeMultiple
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentAnimation() As Integer
		  // Part of the iPresentation interface.
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentSlide() As Integer
		  // Part of the iPresentation interface.
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  If IsShowing() Then
		    Call EndShow()
		  End If
		  
		  Call PresentationFactory.UnregisterPresentation( self )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EndShow() As Boolean
		  // Part of the iPresentation interface.
		  
		  Enabled = False
		  If IsShowing() Then
		    PPTViewShell.Close()
		  End If
		  PPTViewShell = Nil
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Filename() As String
		  // Part of the iPresentation interface.
		  
		  Dim result As String
		  
		  If Not IsNull( presentation ) Then
		    result = presentation.AbsolutePath()
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetPPTViewWindow(processId As Integer) As Integer
		  Dim result As Integer = -1
		  
		  'See http://support.microsoft.com/kb/242308
		  
		  #If TargetWin32
		    Soft Declare Function FindWindowA Lib "user32.dll" ( lpClassName As CString, lpWindowName As Integer ) As Integer
		    Soft Declare Function FindWindowW Lib "user32.dll" ( lpClassName As WString, lpWindowName As Integer ) As Integer
		    Soft Declare Function GetWindowTextA Lib "user32" ( hWnd As Integer, lpString As Ptr, cnt As integer ) As Integer
		    Soft Declare Function GetWindowTextW Lib "user32" ( hWnd As Integer, lpString As Ptr, cnt As integer ) As Integer
		    'Soft Declare Function GetWindowTextLengthA Lib "user32" ( hWnd As Integer ) As Integer
		    'Soft Declare Function GetWindowTextLengthW Lib "user32" ( hWnd As Integer ) As Integer
		    'Soft Declare Function GetClassNameA Lib "user32" ( hWnd As integer, lpString As ptr, cch As integer ) As Integer
		    'Soft Declare Function GetClassNameW Lib "user32" ( hWnd As integer, lpString As ptr, cch As integer ) As Integer
		    Declare Function GetWindow Lib "user32" ( hWnd As integer, wCmd As integer ) As Integer
		    Declare Function GetParent Lib "User32" ( hwnd as Integer ) As Integer
		    Declare Sub GetWindowThreadProcessId  Lib "user32" ( hwnd as Integer, ByRef procId as Integer )
		    
		    Const GW_HWNDNEXT = 2
		    Dim useUnicode As Boolean = System.IsFunctionAvailable( "FindWindowW", "User32" )
		    
		    'Try to find the first window that belongs to the PPTView process
		    If processId > 0 Then
		      
		      ' Grab the first window handle that Windows finds:
		      Dim tmpHwnd As Integer = -1
		      Dim tmpProcessId As Integer = -1
		      
		      If useUnicode Then
		        tmpHwnd = FindWindowW( Nil, 0 )
		      Else
		        tmpHwnd = FindWindowA( Nil, 0 )
		      End If
		      
		      
		      ' Loop until you find a match or there are no more window handles:
		      While tmpHwnd > 0
		        
		        ' Check if no parent for this window
		        If GetParent( tmpHwnd ) = 0 Then
		          
		          ' Check for PID match
		          GetWindowThreadProcessId( tmpHwnd, tmpProcessId )
		          If tmpProcessId = processId Then
		            result = tmpHwnd
		            Exit While
		          End If
		          
		        End If
		        
		        tmpHwnd = GetWindow(tmpHwnd, GW_HWNDNEXT )
		      Wend
		    End If
		    
		    'If the previous did not succeed, try to find the first window that is a 'screenClass'
		    'This involves the risk of finding the wrong window in case of multiple open presentations
		    If result = -1 Then
		      
		      If useUnicode Then
		        result = FindWindowW( "screenClass", 0 )
		      Else
		        result = FindWindowA( "screenClass", 0 )
		      End If
		      
		      While result > 0
		        
		        Dim nameData As New MemoryBlock(255)
		        
		        If useUnicode Then
		          If GetWindowTextW( result, nameData, nameData.size ) > 0Then
		            If Instr( nameData.WString(0), "PowerPoint" ) > 0 Then
		              Exit While
		            End If
		          End If
		        Else
		          If GetWindowTextA( result, nameData, nameData.size ) > 0 Then
		            If Instr( nameData.CString(0), "PowerPoint" ) > 0 Then
		              Exit While
		            End If
		          End If
		        End If
		        
		        result = GetWindow( result, GW_HWNDNEXT )
		      Wend
		      
		    End If
		  #EndIf
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GotoAnimation(slideIndex As Integer, animationIndex As Integer) As Boolean
		  // Part of the iPresentation interface.
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GotoSlide(slideIndex As Integer) As Boolean
		  // Part of the iPresentation interface.
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HostName() As String
		  // Part of the iPresentation interface.
		  
		  Return "Microsoft PowerPoint Viewer"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsHidden(slideIndex As Integer) As Boolean
		  // Part of the iPresentation interface.
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsShowing() As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  
		  If Not IsNull( PPTViewShell ) Then
		    If PPTViewShell.IsRunning() Then
		      
		      'Also validate there still is a presentation window
		      If GetPPTViewWindow( PPTViewShell.PID ) > -1 Then
		        result = True
		      End If
		      
		    End If
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MovePPTViewWindow(hwndId As Integer, x As Integer, y As Integer, w As Integer, h As Integer) As Boolean
		  Dim result As Boolean = False
		  
		  'See http://msdn.microsoft.com/en-us/library/ms632599(VS.85).aspx
		  
		  #If TargetWin32
		    Declare Sub SetWindowPos Lib "User32" Alias "SetWindowPos" ( hwnd as Integer, hWndInstertAfter as Integer, _
		    x as Integer, y as Integer, cx as Integer, cy as Integer, flags as Integer )
		    Declare Function BringWindowToTop Lib "user32"  ( hwnd as Integer) As Integer
		    
		    Const SWP_NOSIZE = &H1
		    Const SWP_NOMOVE = &H2
		    Const SWP_NOZORDER = &H4
		    
		    Try
		      If hwndId > 0 Then
		        SetWindowPos( hwndId, 0, x, y, w, h, SWP_NOZORDER )
		        'MoveWindow( hwndId, x, y, w, h, True )
		        
		        Call BringWindowToTop( hwndId )
		        
		        result = True
		      End If
		    Catch
		    End Try
		    
		  #EndIf
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NextSlide() As Boolean
		  // Part of the iPresentation interface.
		  Dim result As Boolean = False
		  
		  If IsShowing() Then
		    result = SendKeystrokeToPPTView( pptViewHwndId, KeyStroke.VK_RIGHT )
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
		      
		      If presAppl = "presentation" And presHost = "pptview" Then
		        Dim presFile As FolderItem = GetFolderItem( presFilename)
		        If Not IsNull(presFile) Then
		          
		          If Filename() = presFile.AbsolutePath() Then
		            
		            If iEvent = PresentationFactory.PresentationEvent.EndPresentation Then
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
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PreviousSlide() As Boolean
		  // Part of the iPresentation interface.
		  Dim result As Boolean = False
		  
		  If IsShowing() Then
		    result = SendKeystrokeToPPTView( pptViewHwndId, KeyStroke.VK_LEFT )
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SendKeystrokeToPPTView(hwndId As Integer, key As KeyStroke) As Boolean
		  Dim result As Boolean = False
		  
		  'See http://msdn.microsoft.com/en-us/library/ms644950(VS.85).aspx
		  'See http://msdn.microsoft.com/en-us/library/ms646280(VS.85).aspx
		  
		  #If TargetWin32
		    Soft Declare Function SendMessageA Lib "user32" (hwnd As Integer, wMsg As Integer, wParam As Integer, lparam As Integer) As Boolean
		    Soft Declare Function SendMessageW Lib "user32" (hwnd As Integer, wMsg As Integer, wParam As Integer, lparam As Integer) As Boolean
		    
		    If System.IsFunctionAvailable( "SendMessageW", "User32" ) Then
		      result = SendMessageW( hwndId, Integer(KeyState.WM_KEYDOWN), Integer(key), 0 )
		    Else
		      result = SendMessageA( hwndId, Integer(KeyState.WM_KEYDOWN), Integer(key), 0 )
		    End If
		    
		  #EndIf
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SlideCount() As Integer
		  // Part of the iPresentation interface.
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SlideName(slideIndex As Integer) As String
		  // Part of the iPresentation interface.
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StartShow(loopShow As Boolean = False, startAt As Integer = - 1, endAt As Integer = - 1) As Boolean
		  // Part of the iPresentation interface.
		  
		  Dim result As Boolean = False
		  
		  'Command line switches for PowerPoint Viewer 2003 and 2007:
		  '(these will just be ignored by PPView97)
		  '
		  '* /L -- Read a playlist of files contained within a text file (see below). Example: \pptview.exe /L "Playlist.txt"
		  '* /S -- Start without splash screen (this means 'show' when used with PowerPoint)
		  '* /P -- Print the presentation. Example: \pptview.exe /P "Presentation.ppt"
		  '* /D -- Prompt the Open dialog box to appear when slide show ends.
		  '* /N# -- Open presentation at a specified slide number "#". Example: /pptview.exe /n5 "presentation.ppt" would open at slide 5.
		  
		  If Not IsShowing() Then
		    
		    If Not IsNull(presentation) Then
		      If presentation.Exists() Then
		        
		        Dim PPTViewLocation As FolderItem
		        Dim PPTViewParameters As String
		        
		        If DetectPPTView(PPTViewLocation, PPTViewParameters) Then
		          If Not IsNull(PPTViewLocation) Then
		            If PPTViewLocation.Exists() Then
		              
		              Dim cmd As String = PPTViewLocation.AbsolutePath()
		              Dim params As String = PPTViewParameters
		              If params.Len() = 0 Then
		                params = params + "/S"
		              End If
		              params = params + " """ + presentation.AbsolutePath() + """"
		              If startAt > -1 Then
		                params = params + " /N" + Str(startAt)
		              End If
		              
		              PPTViewShell = New Shell
		              PPTViewShell.Mode = 1 'Asynchronous
		              'PPTViewShell.Execute( cmd, params ) 'Filenames with spaces are not passed correct this way
		              PPTViewShell.Execute( """" + cmd + """" + " " + params )
		              
		              Dim i As Integer
		              For i = 0 To 10
		                pptViewHwndId = GetPPTViewWindow( PPTViewShell.PID )
		                
		                If pptViewHwndId > 0 Then
		                  Exit For
		                End If
		                If Not PPTViewShell.IsRunning() Then
		                  Exit For
		                End If
		                
		                'The presentation must be loaded, give PTTView some slack to launch and try again...
		                App.SleepCurrentThread 500
		              Next
		              
		              If pptViewHwndId > 0 Then
		                Dim presentScreen As Integer = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@present") - 1
		                If presentScreen < 0 Or presentScreen + 1 > OSScreenCount() Then presentScreen = 0
		                
		                Dim x As Integer = OSScreen(presentScreen).Left
		                Dim y As Integer = OSScreen(presentScreen).Top
		                Dim w As Integer = OSScreen(presentScreen).Width
		                Dim h As Integer = OSScreen(presentScreen).Height
		                
		                Call MovePPTViewWindow( pptViewHwndId, x, y, w, h )
		              End If
		              
		              Notify(PresentationFactory.PresentationEvent.BeginPresentation)
		              Enabled = True
		              
		            End If
		          End If
		        End If
		        
		      End If
		    End If
		    
		  End If
		  
		  Return result
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private pptViewHwndId As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private PPTViewShell As Shell = Nil
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected presentation As FolderItem = Nil
	#tag EndProperty


	#tag Enum, Name = KeyState, Type = Integer, Flags = &h21
		WM_KEYDOWN=&h100
		WM_KEYUP=&h101
	#tag EndEnum

	#tag Enum, Name = KeyStroke, Type = Integer, Flags = &h21
		VK_SPACE=&h20
		  VK_END=&h23
		  VK_HOME=&h24
		  VK_LEFT=&h25
		  VK_UP=&h26
		  VK_RIGHT=&h27
		VK_DOWN=&h28
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
			Name="Mode"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="Integer"
			EditorType="Enum"
			InheritedFrom="Timer"
			#tag EnumValues
				"0 - Off"
				"1 - Single"
				"2 - Multiple"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Period"
			Visible=true
			Group="Behavior"
			InitialValue="1000"
			Type="Integer"
			InheritedFrom="Timer"
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
