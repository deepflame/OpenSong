#tag Window
Begin Window ErrorPopup
   BackColor       =   16777215
   Backdrop        =   ""
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   1
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   414
   ImplicitInstance=   "True"
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   "False"
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   "False"
   MinHeight       =   64
   MinimizeButton  =   "False"
   MinWidth        =   64
   Placement       =   2
   Resizeable      =   "True"
   Title           =   "#kError"
   Visible         =   "False"
   Width           =   729
   Begin PushButton btn_error_close
      AutoDeactivate  =   "True"
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "#kErrorClose"
      ControlOrder    =   0
      Default         =   "True"
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   609
      LockBottom      =   "True"
      LockLeft        =   ""
      LockRight       =   "True"
      LockTop         =   ""
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   366
      Underline       =   ""
      Visible         =   "True"
      Width           =   100
   End
   Begin StaticText lbl_error_description
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   1
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "#kErrorDescription"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   14
      Underline       =   ""
      Visible         =   "True"
      Width           =   689
   End
   Begin EditField ErrorDescription
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   16777215
      Bold            =   ""
      Border          =   "True"
      ControlOrder    =   2
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Format          =   ""
      Height          =   282
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LimitText       =   0
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      Mask            =   ""
      Multiline       =   "True"
      Password        =   ""
      ReadOnly        =   "True"
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   "True"
      Styled          =   "True"
      TabPanelIndex   =   0
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   41
      Underline       =   ""
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   689
   End
   Begin StaticText lbl_error_instructions
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   3
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   28
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   ""
      Multiline       =   "True"
      TabPanelIndex   =   0
      Text            =   "Please include this error description and the stack trace in your bug report."
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   332
      Underline       =   ""
      Visible         =   "True"
      Width           =   689
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
