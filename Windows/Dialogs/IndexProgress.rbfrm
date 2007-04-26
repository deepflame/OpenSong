#tag Window
Begin Window IndexProgress
   BackColor       =   16777215
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   7
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   140
   LiveResize      =   "False"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   "False"
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   "True"
   MinHeight       =   64
   MinimizeButton  =   "False"
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   "False"
   Title           =   "Please Wait"
   Visible         =   "True"
   Width           =   308
   Begin ProgressBar ProgressBar1
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      ControlOrder    =   0
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Maximum         =   100
      TabPanelIndex   =   0
      Top             =   60
      Value           =   0
      Visible         =   "True"
      Width           =   260
      BehaviorIndex   =   0
   End
   Begin StaticText lbl_top
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ControlOrder    =   1
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   12
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   24
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "Building index:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   16
      Underline       =   "False"
      Visible         =   "True"
      Width           =   100
      BehaviorIndex   =   1
   End
   Begin StaticText lbl_book
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ControlOrder    =   2
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   24
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   ""
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   36
      Underline       =   "False"
      Visible         =   "True"
      Width           =   256
      BehaviorIndex   =   2
   End
   Begin StaticText lbl_bottom
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ControlOrder    =   3
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   192
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "Press 'esc' to cancel"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   102
      Underline       =   "False"
      Visible         =   "False"
      Width           =   100
      BehaviorIndex   =   3
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  App.DebugWriter.Write "IndexProgress.CancelClose"
		  If Not appQuitting Then
		    If Not cancelRequested Then
		      cancelRequested = True
		      cancelDelivered = False
		    End If
		    Return Not cancelDelivered
		  Else
		    Return False
		  End If
		End Function
	#tag EndEvent

	#tag Event
		Sub Close()
		  App.DebugWriter.Write "IndexProgress.Close"
		  cancelRequested = true
		  cancelDelivered = False
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  App.DebugWriter.Write "IndexProgress.KeyDown"
		  if Keyboard.AsyncKeyDown(&h35)  Or Asc(Key) = 27 then
		    cancelRequested = true
		    cancelDelivered = False
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  App.DebugWriter.Write "IndexProgress.Open"
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function cancel() As Boolean
		  If cancelRequested Then
		    cancelDelivered = True
		  End If
		  Return cancelRequested
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doClose()
		  //++
		  // This is necessary because just calling Close
		  // isn't going to work.  The flags have to allow
		  // the close before it'll work.  This sets those
		  // flags and makes the close happen.
		  //--
		  
		  cancelRequested = True
		  cancelDelivered = True
		  Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setProgress(percent as Integer, book as String)
		  App.DebugWriter.Write "IndexProgress.setProgress"
		  ProgressBar1.Value= percent
		  lbl_book.Text=book
		  UpdateNow
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected cancelDelivered As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected cancelRequested As boolean
	#tag EndProperty


#tag EndWindowCode

