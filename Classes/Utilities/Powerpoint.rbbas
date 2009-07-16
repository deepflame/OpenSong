#tag Module
Protected Module Powerpoint
	#tag Method, Flags = &h0
		Sub EnsureVisibleWin32()
		  
		  Declare Function FindWindow Lib "user32" Alias "FindWindowA" ( lpClassName As CString, lpWindowName As CString ) As Integer
		  Declare Function BringWindowToTop Lib "user32"  ( hwnd as Integer) As Integer
		  Declare Function MoveWindow Lib "user32" (hwnd as Integer, x as Integer, y as Integer, width as Integer, height as Integer, repaint as boolean) as Integer
		  
		  //this will find a powerpoint window OR a powerpoint viewer window and move it to the right place
		  //if the viewer is used, the screen resolutions must be identical on both screens
		  
		  dim windowHandle as Int32
		  windowHandle=FindWindow("screenClass", nil)
		  
		  if (windowHandle <> 0 ) then
		    
		    //we have found the powerpoint window
		    dim i as integer
		    
		    dim px as integer=Screen( PresentWindow.PresentScreen ).Left
		    
		    dim py as integer=Screen( PresentWindow.PresentScreen ).Top
		    
		    dim pw as integer=Screen( PresentWindow.PresentScreen ).Width
		    
		    dim ph as integer=Screen( PresentWindow.PresentScreen ).Height
		    
		    //move window to right place
		    i=MoveWindow(windowHandle,px,py,pw,ph,true)
		    
		    //ensure it's upprmost window
		    i=BringWindowToTop(windowHandle)
		  end if
		  
		Exception
		  MsgBox App.T.Translate("errors/powerpoint/ensurewindowvisibleerror")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowAutomation(filename as string)
		  #if TargetWin32 then
		    App.MouseCursor = System.Cursors.Wait
		    
		    dim powerapp as new PowerPointApplication()
		    Dim powerpres as  PowerPointPresentation
		    dim powerslidewindow as PowerPointSlideShowWindow
		    
		    
		    powerpres=powerapp.Presentations.Open(filename,true,nil,false) //open the ppt readonly, without a window
		    
		    powerslidewindow=powerpres.SlideShowSettings.Run
		    powerslidewindow.Activate
		    
		    //note these settings are in POINTS not pixels, hence conversion
		    powerslidewindow.Left=PresentWindow.Left*72/96
		    powerslidewindow.Top=PresentWindow.Top*72/96
		    powerslidewindow.Width=PresentWindow.Width*72/96
		    powerslidewindow.Height =PresentWindow.Height*72/96
		    
		    EnsureVisibleWin32
		    
		    App.MouseCursor = System.Cursors.StandardPointer
		    
		    'start the timer on PresentWindow
		    'this checks every half second for the slideshow window to be closed
		    'and when it closes, ensure the PresentWindow or PresentHelperWindow is active again
		    
		    PresentWindow.timerPowerpointCloseCheck.Mode=Timer.ModeMultiple
		    
		  #endif
		Exception
		  MsgBox App.T.Translate("errors/powerpoint/errorfullpowerpoint")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowViewer(filename as string)
		  #if TargetWin32
		    
		    
		    //find the viewers path for it
		    
		    dim fullcommand as string=GetViewerPath(filename)
		    
		    //MsgBox fullcommand
		    
		    dim s as new Shell
		    
		    s.Execute(fullcommand)
		    
		    'alternative idea's welcome, best thought so far is to wait for up to 30 seconds for window to appear
		    WaitingForViewer=0
		    PresentWindow.timerPPViewer.Mode=Timer.ModeMultiple
		    
		  #endif
		  
		Exception
		  
		  MsgBox App.T.Translate("errors/powerpoint/errorppviewer")
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ViewerAvailable() As boolean
		  #if targetwin32
		    
		    dim r as new RegistryItem("HKEY_CLASSES_ROOT\Applications\pptview.exe\shell\Show\command",false)
		    //this throws exception if key not found
		    //so no exception = FOUND!
		    
		    return true
		    
		  #endif
		  
		  //not windows, so not available
		  return false
		  
		Exception ex as  RegistryAccessErrorException
		  //key not found, so not avilable
		  return false
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetViewerPath(filename as string) As string
		  
		  'already checked ViewerAvailable
		  
		  dim r2 as new RegistryItem("HKEY_CLASSES_ROOT\Applications\pptview.exe\shell\Show\command",false)
		  
		  
		  dim command as string=CStr(r2.DefaultValue)
		  
		  'need quotes around the path, and to replace %1 with the filename of the ppt
		  dim fullcommand as string=command.Replace(" ""%1""","")
		  
		  if fullcommand.StartsWith("""") then
		    fullcommand=fullcommand + " """ + filename + """"
		  else
		    fullcommand="""" + fullcommand + """" + " """ + filename + """"
		  end if
		  
		  return fullcommand
		  
		exception
		  MsgBox App.T.Translate("errors/powerpointgetviewerpatherror")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Show(filename as string)
		  dim UseCustomCommand as boolean = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "powerpoint/@usecustomcommand",true,false)
		  dim customCommand as string =  SmartML.GetValue(App.MyPresentSettings.DocumentElement, "powerpoint/@customcommand",true)
		  
		  if UseCustomCommand=true then
		    customCommand=customCommand.Replace("%filename%",filename)
		    dim s as new Shell
		    S.Execute(customCommand)
		    return
		  end if
		  
		  if FullPowerpointAvailable then
		    ShowAutomation(filename)
		    return
		  end if
		  
		  if ViewerAvailable then
		    ShowViewer(filename)
		    return
		  end if
		  
		  'no full powerpoint, or powerpoint viewer, or custom command specified
		  
		  MsgBox App.T.Translate("errors/powerpoint/nosoftware")
		  
		exception
		  
		  MsgBox App.T.Translate("errors/powerpoint/generalerror")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FullPowerpointAvailable() As Boolean
		  #if targetwin32
		    
		    dim r as new RegistryItem("HKEY_CLASSES_ROOT\Applications\POWERPNT.EXE\shell\Show\command",false)
		    //this throws exception if key not found
		    //so no exception = FOUND!
		    
		    return true
		    
		  #endif
		  
		  //not windows, so not available
		  return false
		  
		Exception ex as  RegistryAccessErrorException
		  //key not found, so not avilable
		  return false
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			
			#if TargetWin32 then
			
			Declare Function FindWindow Lib "user32" Alias "FindWindowA" ( lpClassName As CString, lpWindowName As CString ) As Integer
			
			dim windowHandle as Int32
			windowHandle=FindWindow("screenClass", nil)
			return  (windowHandle <> 0 )
			#endif
			
			return false
			End Get
		#tag EndGetter
		PowerPointActive As boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		WaitingForViewer As Integer = 0
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
		#tag ViewProperty
			Name="PowerPointActive"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WaitingForViewer"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
