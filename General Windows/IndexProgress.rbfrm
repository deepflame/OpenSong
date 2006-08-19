#tag Window
Begin Window IndexProgress
   Placement       =   1
   Width           =   308
   Height          =   140
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   2
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Please Wait"
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
   Begin ProgressBar ProgressBar1
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
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
      ControlOrder    =   0
      BehaviorIndex   =   0
   End
   Begin StaticText lbl_top
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
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
      ControlOrder    =   1
      BehaviorIndex   =   1
   End
   Begin StaticText lbl_book
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
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
      ControlOrder    =   2
      BehaviorIndex   =   2
   End
   Begin StaticText lbl_bottom
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
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
      Visible         =   "True"
      Width           =   100
      ControlOrder    =   3
      BehaviorIndex   =   3
   End
End
#tag EndWindow

#tag WindowCode
#tag Event
	Sub Close()
	  cancel=true
	End Sub
#tag EndEvent

#tag Event
	Function KeyDown(Key As String) As Boolean
	  if Keyboard.AsyncKeyDown(&h35)  then
	    cancel=true
	  end if
	End Function
#tag EndEvent


#tag Method, Flags = &h0
	Sub setProgress(percent as Integer, book as String)
	  ProgressBar1.Value= percent
	  lbl_book.Text=book
	  
	  
	End Sub
#tag EndMethod


#tag Property, Flags = &h0
	#tag Note
		cancel=false
		
	#tag EndNote
	cancel As boolean
#tag EndProperty


#tag EndWindowCode

