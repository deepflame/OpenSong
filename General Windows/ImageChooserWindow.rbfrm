#tag Window
Begin Window ImageChooserWindow
   Placement       =   0
   Width           =   475
   Height          =   390
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   1
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Find Image"
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
   Begin ScrollBar scr_vertical
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   328
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   458
      LineStep        =   1
      LiveScroll      =   "False"
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      Maximum         =   0
      Minimum         =   0
      PageStep        =   3
      TabPanelIndex   =   0
      Top             =   1
      Value           =   0
      Visible         =   "True"
      Width           =   16
      ControlOrder    =   0
      BehaviorIndex   =   0
   End
   Begin Separator sep_1
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   4
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   328
      Visible         =   "True"
      Width           =   475
      ControlOrder    =   1
      BehaviorIndex   =   1
   End
   Begin StaticText txt_path
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
      Italic          =   "True"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   ""
      TextAlign       =   1
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   365
      Underline       =   "False"
      Visible         =   "True"
      Width           =   455
      ControlOrder    =   2
      BehaviorIndex   =   5
   End
   Begin PushButton btn_browse
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Browse..."
      Default         =   "False"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   160
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   340
      Underline       =   "False"
      Visible         =   "True"
      Width           =   75
      ControlOrder    =   3
      BehaviorIndex   =   2
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Cancel"
      Default         =   "False"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   239
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   340
      Underline       =   "False"
      Visible         =   "True"
      Width           =   75
      ControlOrder    =   4
      BehaviorIndex   =   3
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   10
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   5
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      Left            =   100
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   10
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   6
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   2
      InitialParent   =   ""
      Left            =   190
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   10
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   7
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   3
      InitialParent   =   ""
      Left            =   280
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   10
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   8
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   4
      InitialParent   =   ""
      Left            =   370
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   10
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   9
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   5
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   90
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   10
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   6
      InitialParent   =   ""
      Left            =   100
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   90
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   11
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   7
      InitialParent   =   ""
      Left            =   190
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   90
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   12
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   8
      InitialParent   =   ""
      Left            =   280
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   90
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   13
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   9
      InitialParent   =   ""
      Left            =   370
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   90
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   14
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   10
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   170
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   15
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   11
      InitialParent   =   ""
      Left            =   100
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   170
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   16
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   12
      InitialParent   =   ""
      Left            =   190
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   170
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   17
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   13
      InitialParent   =   ""
      Left            =   280
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   170
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   18
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   14
      InitialParent   =   ""
      Left            =   370
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   170
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   19
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   15
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   250
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   20
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   16
      InitialParent   =   ""
      Left            =   100
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   250
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   21
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   17
      InitialParent   =   ""
      Left            =   190
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   250
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   22
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   18
      InitialParent   =   ""
      Left            =   280
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   250
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   23
      BehaviorIndex   =   4
   End
   Begin Canvas can
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   60
      HelpTag         =   ""
      Index           =   19
      InitialParent   =   ""
      Left            =   370
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   250
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   24
      BehaviorIndex   =   4
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   70
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   25
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   100
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   70
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   26
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   2
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   190
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   70
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   27
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   3
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   280
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   70
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   28
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   4
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   370
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   70
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   29
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   5
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   150
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   30
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   6
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   100
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   150
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   31
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   7
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   190
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   150
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   32
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   8
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   280
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   150
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   33
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   9
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   370
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   150
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   34
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   10
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   230
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   35
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   11
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   100
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   230
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   36
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   12
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   190
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   230
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   37
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   13
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   280
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   230
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   38
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   14
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   370
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   230
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   39
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   15
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   310
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   40
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   16
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   100
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   310
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   41
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   17
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   190
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   310
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   42
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   18
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   280
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   310
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   43
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   19
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   370
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   310
      Underline       =   "False"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   44
      BehaviorIndex   =   6
   End
End
#tag EndWindow

#tag WindowCode
#tag Event
	Function KeyDown(Key As String) As Boolean
	  If Keyboard.AsyncKeyDown(&h35) Or Asc(Key) = 27 Then ' Escape
	    Close
	  End If
	End Function
#tag EndEvent

#tag Event
	Sub Open()
	  Dim pic As Picture
	  BackgroundFolder = App.DocsFolder.Child("Backgrounds")
	  
	  App.T.TranslateWindow Me, "find_image", App.TranslationFonts
	  ReloadDirectory
	  App.CenterInControlScreen Me
	  
	End Sub
#tag EndEvent


#tag Method, Flags = &h0
	Function Lookup() As FolderItem
	  ShowModalWithin MainWindow
	  Return f
	End Function
#tag EndMethod

#tag Method, Flags = &h1
	Protected Sub ReloadDirectory()
	  // JDL 2/01/2006  Modified formula used to calculate scr_vertical.Maximum
	  // JDL 2/01/2006  Added some OpSys specific code for the txt_path.Caption
	  Dim path As String
	  Dim folderIndex,i, j, TotImg, jd, jd2 As Integer
	  path = BackgroundFolder.AbsolutePath
	  #If TargetWin32                                                                            // JDL 2/01/2006
	    If InStr(path, "My Documents") > 0 Then path = Mid(path, InStr(path, "My Documents"))
	  #ElseIf TargetMacOS                                                                     // JDL 2/01/2006
	    If InStr(path, "Documents") > 0 Then path = Mid(path, InStr(path, "Documents"))    // JDL 2/01/2006
	  #ElseIf TargetLinux                                                                       // JDL 2/01/2006
	    //Linux code goes right here.                                                    // JDL 2/01/2006
	  #EndIf                                                                                           // JDL 2/01/2006
	  
	  txt_path.Caption = path
	  
	  ReDim ImageFiles(0)
	  If BackgroundFolder.AbsolutePath <> App.DocsFolder.Child("Backgrounds").AbsolutePath Then
	    ImageFiles.Append New FolderItem("(parent)")
	    folderIndex = 1
	  End If
	  
	  App.MouseCursor = WatchCursor
	  For i = 1 To BackgroundFolder.Count
	    If BackgroundFolder.Item(i).Name <> "thumbs.db" _
	      And InStr("._", Left(BackgroundFolder.Item(i).Name, 1)) = 0 Then
	      If BackgroundFolder.Item(i).Directory Then
	        folderIndex = folderIndex + 1
	        ImageFiles.Insert folderIndex, BackgroundFolder.Item(i)
	      Else
	        ImageFiles.Append BackgroundFolder.Item(i)
	      End If
	      j = j + 1
	    End If
	  Next i
	  
	  App.MouseCursor = Nil
	  
	  'scr_vertical.Maximum = Ceil(j/COLS) - ROWS                               // JDL 2/01/2006
	  TotImg = folderIndex + j                                                              // JDL 2/01/2006
	  If TotImg > 20 Then                                                                      // JDL 2/01/2006
	    scr_vertical.Maximum = Ceil((TotImg - (COLS * ROWS))/COLS)   // JDL 2/01/2006
	  Else                                                                                               // JDL 2/01/2006
	    scr_vertical.Maximum = 0                                                          // JDL 2/01/2006
	  End If                                                                                            // JDL 2/01/2006
	  
	End Sub
#tag EndMethod


#tag Property, Flags = &h1
	Protected BackgroundFolder As FolderItem
#tag EndProperty

#tag Property, Flags = &h1
	Protected f As FolderItem
#tag EndProperty

#tag Property, Flags = &h0
	ImageFiles(0) As FolderItem
#tag EndProperty


#tag Constant, Name = COLS, Type = Integer, Dynamic = False, Default = \"5", Scope = Protected
#tag EndConstant

#tag Constant, Name = ROWS, Type = Integer, Dynamic = False, Default = \"4", Scope = Protected
#tag EndConstant


#tag EndWindowCode

#tag Events scr_vertical
#tag Event
	Sub ValueChanged()
	  Refresh
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_browse
#tag Event
	Sub Action()
	  Dim f As FolderItem
	  f = GetOpenFolderItem("images")
	  If f <> Nil Then
	    Self.f = f
	    Close
	  End If
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_cancel
#tag Event
	Sub Action()
	  Close
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events can
#tag Event
	Function MouseDown(X As Integer, Y As Integer) As Boolean
	  // JDL 2/01/2006  Created ImgNdx to use as index in the ImageFiles array.
	  // JDL 2/01/2006  Also replaced (and modified) hard coded argument with variable.
	  Dim ImgNdx as Integer
	  ImgNdx = scr_vertical.Value * COLS + Index + 1
	  ' If scr_vertical.Value + Index + 1 <= UBound(ImageFiles) Then     // JDL 2/01/2006 
	  If ImgNdx <= UBound(ImageFiles) Then                 // JDL 2/01/2006 
	    If ImageFiles(ImgNdx).Name = "(parent)" Then    // JDL 2/01/2006
	      If BackgroundFolder.Parent <> Nil Then BackgroundFolder = BackgroundFolder.Parent
	      ReloadDirectory
	      Refresh False
	    ElseIf ImageFiles(ImgNdx).Directory Then           // JDL 2/01/2006
	      BackgroundFolder = ImageFiles(ImgNdx)        // JDL 2/01/2006
	      ReloadDirectory
	      Refresh False
	    Else
	      f = ImageFiles(ImgNdx)                                   // JDL 2/01/2006
	      Close
	    End If
	  End If
	End Function
#tag EndEvent
#tag Event
	Sub Paint(g As Graphics)
	  // JDL 2/01/2006  Created ImgNdx to use as index in the ImageFiles array.
	  // JDL 2/01/2006  Replaced (and modified) hard coded argument with variable.
	  // JDL 2/01/2006  Replaced pic.Depth with variable picDepth
	  Dim pic, thumb As Picture
	  Dim name As String
	  Dim c As Color
	  Dim cache As FolderItem
	  Dim ImgNdx, picDepth as Integer                                            // JDL 2/01/2006
	  ImgNdx = scr_vertical.Value * COLS + Index + 1                    // JDL 2/01/2006
	  
	  App.MouseCursor = WatchCursor
	  
	  If ImgNdx <= UBound(ImageFiles) Then                                  // JDL 2/01/2006
	    g.TextSize = 8
	    name = ImageFiles(ImgNdx).Name                                      // JDL 2/01/2006
	    If name = "(parent)" Then
	      g.DrawPicture fileopen, 0, 0, g.Width, g.Height, 0, 0, fileopen.Width, fileopen.Height
	    ElseIf ImageFiles(ImgNdx).Directory Then                             // JDL 2/01/2006
	      g.DrawPicture fileopen, 0, 0, g.Width, g.Height, 0, 0, fileopen.Width, fileopen.Height
	    Else
	      cache = ImageFiles(ImgNdx).Parent.Child("_cache")            // JDL 2/01/2006
	      If cache <> Nil And cache.Exists And cache.Child(name).Exists And _
	        ImageFiles(ImgNdx).ModificationDate <= cache.Child(name).ModificationDate _
	        Then ' read from the cache                                         // JDL 2/01/2006
	        pic = cache.Child(name).OpenAsPicture
	        picDepth = pic.Depth                                                       // JDL 2/01/2006
	        If picDepth = 0 then                                                         // JDL 2/01/2006
	          picDepth = 24                                                               // JDL 2/01/2006
	        End If                                                                                // JDL 2/01/2006
	        If pic <> Nil Then
	          thumb = NewPicture(80, 60, picDepth)                          // JDL 2/01/2006
	          thumb.Graphics.DrawPicture pic, 0, 0, thumb.Width, thumb.Height, 0, 0, pic.Width, pic.Height
	        End If
	      ElseIf cache <> Nil And cache.Exists And cache.Child(Left(name, InStr(name, "."))+"bmp").Exists And _
	        ImageFiles(ImgNdx).ModificationDate <= cache.Child(Left(name, InStr(name, "."))+"bmp").ModificationDate Then ' read from the cache   // JDL 2/01/2006
	        pic = cache.Child(Left(name, InStr(name, "."))+"bmp").OpenAsPicture
	        If pic <> Nil Then
	          thumb = NewPicture(80, 60, pic.Depth)
	          thumb.Graphics.DrawPicture pic, 0, 0, thumb.Width, thumb.Height, 0, 0, pic.Width, pic.Height
	        End If
	      Else '  read from the file
	        pic = ImageFiles(ImgNdx).OpenAsPicture                         // JDL 2/01/2006
	        picDepth = pic.Depth                                                       // JDL 2/01/2006
	        If picDepth = 0 then                                                         // JDL 2/01/2006
	          picDepth = 32                                                               // JDL 2/01/2006
	        End If                                                                                // JDL 2/01/2006
	        If pic <> Nil And cache <> Nil Then ' create the cache
	          If Not cache.Exists Then cache.CreateAsFolder
	          thumb = NewPicture(80, 60, picDepth)                          // JDL 2/01/2006
	          thumb.Graphics.DrawPicture pic, 0, 0, thumb.Width, thumb.Height, 0, 0, pic.Width, pic.Height
	          cache.Child(name).SaveAsPicture thumb
	        End If
	      End If
	      If thumb <> Nil Then
	        g.DrawPicture thumb, 0, 0
	      Else
	        g.ForeColor = FillColor
	        g.FillRect 0, 0, g.Width, g.Height
	        g.ForeColor = DarkBevelColor
	        g.DrawLine 0, 0, g.Width, g.Height
	      End If
	    End If
	    nte_name(Index).Text = ImageFiles(ImgNdx).DisplayName    // JDL 2/01/2006
	    g.ForeColor = DarkBevelColor
	    g.DrawRect 0, 0, g.Width, g.Height
	  Else
	    nte_name(Index).Text = ""
	    'g.ForeColor = FillColor
	    'g.FillRect 0, 0, g.Width, g.Height
	  End If
	  
	  App.MouseCursor = Nil
	  
	End Sub
#tag EndEvent
#tag EndEvents
