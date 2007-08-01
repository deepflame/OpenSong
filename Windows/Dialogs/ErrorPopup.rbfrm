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
   BackColor       =   16777215
   Backdrop        =   ""
   Title           =   "#kError"
   Visible         =   "False"
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
   Begin PushButton btn_error_close
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   609
      Top             =   366
      Width           =   100
      Height          =   22
      LockLeft        =   ""
      LockTop         =   ""
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Caption         =   "#kErrorClose"
      Default         =   "True"
      Cancel          =   ""
      Enabled         =   "True"
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   ""
      Italic          =   ""
      Underline       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   2
   End
   Begin StaticText lbl_error_description
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   20
      Top             =   14
      Width           =   689
      Height          =   15
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   ""
      TabPanelIndex   =   0
      Text            =   "#kErrorDescription"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   "True"
      Visible         =   "True"
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
      ControlOrder    =   2
      Left            =   20
      Top             =   41
      Width           =   689
      Height          =   282
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Border          =   "True"
      Multiline       =   "True"
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   "True"
      Styled          =   "True"
      Password        =   ""
      UseFocusRing    =   "True"
      TextColor       =   0
      BackColor       =   16777215
      Enabled         =   "True"
      Format          =   ""
      Visible         =   "True"
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
      BehaviorIndex   =   1
   End
   Begin StaticText lbl_error_instructions
      Index           =   -2147483648
      ControlOrder    =   3
      Left            =   20
      Top             =   332
      Width           =   689
      Height          =   28
      LockLeft        =   "True"
      LockTop         =   ""
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Text            =   "Please include this error description and the stack trace in your bug report."
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "True"
      Enabled         =   "True"
      Visible         =   "True"
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
	#tag Constant, Name = kErrorClose, Type = String, Dynamic = True, Default = \"C&lose", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kErrorDescription, Type = String, Dynamic = True, Default = \"An unhandled &exception has been raised with the following error description:", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kError, Type = String, Dynamic = True, Default = \"Error", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events btn_error_close
	#tag Event
		Sub Action()
		  Me.Window.Close
		End Sub
	#tag EndEvent
#tag EndEvents
