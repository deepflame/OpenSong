#tag Module
Protected Module Powerpoint
	#tag Method, Flags = &h0
		Sub EnsureVisibleWin32()
		  Declare Function FindWindow Lib "user32" Alias "FindWindowA" ( lpClassName As CString, lpWindowName As CString ) As Integer
		  Declare Function BringWindowToTop Lib "user32"  ( hwnd as Integer) As Integer
		  
		  dim windowHandle as Int32
		  windowHandle=FindWindow("screenClass", nil)
		  
		  if (windowHandle <> 0 ) then
		    //we have found the powerpoint window
		    dim i as integer
		    i=BringWindowToTop(windowHandle)
		  end if
		  
		Exception
		  //well, we tried
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Show(filename as string)
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
		    
		    PresentWindow.timer_powerpoint_check.Mode=Timer.ModeMultiple
		    
		  #endif
		Exception
		  MsgBox "Unable to show powerpoint"
		End Sub
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
	#tag EndViewBehavior
End Module
#tag EndModule
