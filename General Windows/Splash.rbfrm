#tag Window
Begin Window Splash
   Placement       =   2
   Width           =   400
   Height          =   300
   MinWidth        =   400
   MinHeight       =   300
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   4
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "OpenSong"
   Visible         =   "True"
   FullScreen      =   "False"
   MenuBarVisible  =   "True"
   CloseButton     =   "True"
   Resizeable      =   "True"
   LiveResize      =   "False"
   MaximizeButton  =   "True"
   MinimizeButton  =   "True"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   0
   Begin Timer closeTimer
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   20
      Top             =   256
      Mode            =   2
      Period          =   1000
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   0
   End
End
#tag EndWindow

#tag WindowCode
#tag Event
	Sub Close()
	  App.SplashShowing = False
	  App.MouseCursor = Nil
	  
	End Sub
#tag EndEvent

#tag Event
	Sub Open()
	  App.SplashShowing = True
	  App.MouseCursor = WatchCursor
	  secondsOpen = 0
	  closeTimer.Reset
	  closeTimer.Enabled = True
	End Sub
#tag EndEvent

#tag Event
	Sub Paint(g As Graphics)
	  Dim f As New FontFace
	  f.Name = "Arial"
	  f.Size = 9
	  f.Bold = True
	  f.Border = True
	  f.ForeColor = RGB(255,255,255)
	  f.BorderColor = RGB(0,0,0)
	  
	  g.DrawPicture splashbg, 0, 0
	  
	  Dim t As String
	  t = App.SmartVersion
	  
	  GraphicsX.DrawFontString g, t, 3, 0, f, g.Width-6, "right", g.Height-3, "bottom"
	  GraphicsX.DrawFontString g, Status, 3, 0, f, g.Width-6, "left", g.Height-3, "bottom"
	End Sub
#tag EndEvent


#tag Method, Flags = &h0
	Sub SetStatus(status As String)
	  Me.Status = status
	  RefreshRect 0, Height-15, 3*Width/4, 15, False
	  'Refresh False
	End Sub
#tag EndMethod

#tag Method, Flags = &h0
	Sub SlowClose()
	  slowClosing = True
	End Sub
#tag EndMethod


#tag Property, Flags = &h1
	Protected SecondsOpen As Integer
#tag EndProperty

#tag Property, Flags = &h1
	Protected SlowClosing As Boolean
#tag EndProperty

#tag Property, Flags = &h1
	Protected Status As String
#tag EndProperty


#tag EndWindowCode

#tag Events closeTimer
#tag Event
	Sub Action()
	  secondsOpen = secondsOpen + 1
	  
	  If slowClosing And secondsOpen >= 3 Then
	    Me.Enabled = False
	    Close
	    App.SplashShowing = False
	    App.MouseCursor = Nil
	  End If
	End Sub
#tag EndEvent
#tag EndEvents
