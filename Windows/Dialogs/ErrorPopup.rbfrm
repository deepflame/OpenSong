#tag Window
Begin Window ErrorPopup
   Placement       =   2
   Width           =   729
   Height          =   414
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   1
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   Title           =   "Error"
   Visible         =   "True"
   FullScreen      =   "False"
   MenuBarVisible  =   "False"
   CloseButton     =   "True"
   Resizeable      =   "True"
   LiveResize      =   "True"
   MaximizeButton  =   "False"
   MinimizeButton  =   "False"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   ""
   Begin StaticText StaticText1
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   20
      Top             =   14
      Width           =   689
      Height          =   15
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   ""
      TabPanelIndex   =   0
      Text            =   "An unhandled exception has been raised with the following error description:"
      TextAlign       =   0
      TextColor       =   &h000000
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   ""
      Italic          =   ""
      Underline       =   ""
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   0
   End
   Begin EditField ErrorDescription
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   20
      Top             =   41
      Width           =   689
      Height          =   313
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Border          =   "True"
      Multiline       =   "True"
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   "True"
      Styled          =   ""
      Password        =   ""
      UseFocusRing    =   "True"
      TextColor       =   &h000000
      BackColor       =   &hFFFFFF
      Enabled         =   True
      Format          =   ""
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   ""
      Italic          =   ""
      Underline       =   ""
      Text            =   ""
      Mask            =   ""
      ReadOnly        =   "True"
      LimitText       =   0
      AcceptTabs      =   ""
      Alignment       =   0
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   2
   End
   Begin PushButton PushButton1
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   572
      Top             =   366
      Width           =   137
      Height          =   22
      LockLeft        =   ""
      LockTop         =   ""
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Caption         =   "OK"
      Default         =   ""
      Cancel          =   ""
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   ""
      Italic          =   ""
      Underline       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   1
   End
   Begin StaticText StaticText3
      Index           =   -2147483648
      ControlOrder    =   3
      Left            =   20
      Top             =   366
      Width           =   540
      Height          =   28
      LockLeft        =   "True"
      LockTop         =   ""
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Text            =   "Please include this error description and the stack trace in your bug report."
      TextAlign       =   0
      TextColor       =   &h000000
      Multiline       =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   ""
      Italic          =   ""
      Underline       =   ""
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   3
   End
End
#tag EndWindow

#tag WindowCode
#tag EndWindowCode

#tag Events PushButton1
	#tag Event
		Sub Action()
		  Me.Window.Close
		End Sub
	#tag EndEvent
#tag EndEvents
