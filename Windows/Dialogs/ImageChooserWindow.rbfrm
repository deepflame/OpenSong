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
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   458
      Top             =   1
      Width           =   16
      Height          =   328
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Minimum         =   0
      Value           =   0
      Maximum         =   0
      LineStep        =   1
      PageStep        =   3
      LiveScroll      =   "False"
      AcceptFocus     =   "true"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   0
   End
   Begin Separator sep_1
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   0
      Top             =   328
      Width           =   475
      Height          =   4
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
      InitialParent   =   ""
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   1
   End
   Begin StaticText txt_path
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   10
      Top             =   365
      Width           =   455
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   ""
      TextAlign       =   1
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "True"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   2
   End
   Begin PushButton btn_browse
      Index           =   -2147483648
      ControlOrder    =   3
      Left            =   160
      Top             =   340
      Width           =   75
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "True"
      Caption         =   "Browse..."
      Default         =   "False"
      Cancel          =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   3
   End
   Begin PushButton btn_cancel
      Index           =   -2147483648
      ControlOrder    =   4
      Left            =   239
      Top             =   340
      Width           =   75
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "True"
      Caption         =   "Cancel"
      Default         =   "False"
      Cancel          =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   4
   End
   Begin Canvas can
      Index           =   0
      ControlOrder    =   5
      Left            =   10
      Top             =   10
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   1
      ControlOrder    =   6
      Left            =   100
      Top             =   10
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   2
      ControlOrder    =   7
      Left            =   190
      Top             =   10
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   3
      ControlOrder    =   8
      Left            =   280
      Top             =   10
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   4
      ControlOrder    =   9
      Left            =   370
      Top             =   10
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   5
      ControlOrder    =   10
      Left            =   10
      Top             =   90
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   6
      ControlOrder    =   11
      Left            =   100
      Top             =   90
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   7
      ControlOrder    =   12
      Left            =   190
      Top             =   90
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   8
      ControlOrder    =   13
      Left            =   280
      Top             =   90
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   9
      ControlOrder    =   14
      Left            =   370
      Top             =   90
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   10
      ControlOrder    =   15
      Left            =   10
      Top             =   170
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   11
      ControlOrder    =   16
      Left            =   100
      Top             =   170
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   12
      ControlOrder    =   17
      Left            =   190
      Top             =   170
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   13
      ControlOrder    =   18
      Left            =   280
      Top             =   170
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   14
      ControlOrder    =   19
      Left            =   370
      Top             =   170
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   15
      ControlOrder    =   20
      Left            =   10
      Top             =   250
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   16
      ControlOrder    =   21
      Left            =   100
      Top             =   250
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   17
      ControlOrder    =   22
      Left            =   190
      Top             =   250
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   18
      ControlOrder    =   23
      Left            =   280
      Top             =   250
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin Canvas can
      Index           =   19
      ControlOrder    =   24
      Left            =   370
      Top             =   250
      Width           =   80
      Height          =   60
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin StaticText nte_name
      Index           =   0
      ControlOrder    =   25
      Left            =   10
      Top             =   70
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   1
      ControlOrder    =   26
      Left            =   100
      Top             =   70
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   2
      ControlOrder    =   27
      Left            =   190
      Top             =   70
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   3
      ControlOrder    =   28
      Left            =   280
      Top             =   70
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   4
      ControlOrder    =   29
      Left            =   370
      Top             =   70
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   5
      ControlOrder    =   30
      Left            =   10
      Top             =   150
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   6
      ControlOrder    =   31
      Left            =   100
      Top             =   150
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   7
      ControlOrder    =   32
      Left            =   190
      Top             =   150
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   8
      ControlOrder    =   33
      Left            =   280
      Top             =   150
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   9
      ControlOrder    =   34
      Left            =   370
      Top             =   150
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   10
      ControlOrder    =   35
      Left            =   10
      Top             =   230
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   11
      ControlOrder    =   36
      Left            =   100
      Top             =   230
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   12
      ControlOrder    =   37
      Left            =   190
      Top             =   230
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   13
      ControlOrder    =   38
      Left            =   280
      Top             =   230
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   14
      ControlOrder    =   39
      Left            =   370
      Top             =   230
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   15
      ControlOrder    =   40
      Left            =   10
      Top             =   310
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   16
      ControlOrder    =   41
      Left            =   100
      Top             =   310
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   17
      ControlOrder    =   42
      Left            =   190
      Top             =   310
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   18
      ControlOrder    =   43
      Left            =   280
      Top             =   310
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText nte_name
      Index           =   19
      ControlOrder    =   44
      Left            =   370
      Top             =   310
      Width           =   80
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "file name"
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
      TabPanelIndex   =   0
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
		  
		  App.MouseCursor = System.Cursors.Wait
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
		  
		  App.MouseCursor = System.Cursors.Wait
		  
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
