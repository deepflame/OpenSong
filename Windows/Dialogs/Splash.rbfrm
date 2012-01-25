#tag Window
Begin Window Splash
   BackColor       =   16777215
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   4
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   300
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   300
   MinimizeButton  =   True
   MinWidth        =   400
   Placement       =   2
   Resizeable      =   True
   Title           =   "OpenSong"
   Visible         =   True
   Width           =   400
   Begin Timer closeTimer
      BehaviorIndex   =   0
      ControlOrder    =   0
      Enabled         =   True
      Height          =   32
      Index           =   2147483648
      InitialParent   =   ""
      Left            =   20
      LockedInPosition=   False
      Mode            =   2
      Period          =   1000
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   256
      Visible         =   True
      Width           =   32
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
		  App.MouseCursor = System.Cursors.Wait
		  secondsOpen = 0
		  closeTimer.Reset
		  closeTimer.Enabled = True
		  
		  App.CenterInControlScreen Me
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
		  
		  Call GraphicsX.DrawFontString(g, t, 3, 0, f, g.Width-6, "right", g.Height-3, "bottom")
		  Call GraphicsX.DrawFontString(g, Status, 3, 0, f, g.Width-6, "left", g.Height-3, "bottom")
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
