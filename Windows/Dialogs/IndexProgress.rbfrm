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
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   20
      Top             =   60
      Width           =   260
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      Value           =   0
      Maximum         =   100
      InitialParent   =   ""
      BehaviorIndex   =   0
   End
   Begin StaticText lbl_top
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   24
      Top             =   16
      Width           =   100
      Height          =   12
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Text            =   "Building index:"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   1
   End
   Begin StaticText lbl_book
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   24
      Top             =   36
      Width           =   256
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Text            =   ""
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   2
   End
   Begin StaticText lbl_bottom
      Index           =   -2147483648
      ControlOrder    =   3
      Left            =   192
      Top             =   102
      Width           =   100
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Text            =   "Press 'esc' to cancel"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
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

