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
		    MainWindow.MouseCursor = System.Cursors.Wait
		    PresentHelperWindow.MouseCursor = System.Cursors.Wait
		    
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
		    
		    MainWindow.MouseCursor = System.Cursors.StandardPointer
		    PresentHelperWindow.MouseCursor = System.Cursors.StandardPointer
		    
		  #endif
		Exception
		  MsgBox "Unable to show powerpoint"
		End Sub
	#tag EndMethod


End Module
#tag EndModule
