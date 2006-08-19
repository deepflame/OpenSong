#tag Window
Begin Window MainSettingsWindow
   Placement       =   0
   Width           =   595
   Height          =   370
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   1
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "General Settings"
   Visible         =   "True"
   FullScreen      =   "False"
   MenuBarVisible  =   "True"
   CloseButton     =   "True"
   Resizeable      =   "False"
   LiveResize      =   "False"
   MaximizeButton  =   "True"
   MinimizeButton  =   "True"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   0
   Begin PushButton btn_ok
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "OK"
      Default         =   "True"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   425
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   331
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
      ControlOrder    =   0
      BehaviorIndex   =   25
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
      Left            =   505
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   331
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
      ControlOrder    =   1
      BehaviorIndex   =   26
   End
   Begin GroupBox grp_settings_general
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "General"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   115
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   15
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   10
      Underline       =   "False"
      Visible         =   "True"
      Width           =   235
      ControlOrder    =   2
      BehaviorIndex   =   12
      Begin StaticText lbl_general_ccli
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
         InitialParent   =   "grp_settings_general"
         Italic          =   "False"
         Left            =   31
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "CCLI License #:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   24
         Underline       =   "False"
         Visible         =   "True"
         Width           =   150
         ControlOrder    =   3
         BehaviorIndex   =   13
      End
      Begin EditField edt_general_ccli
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         BalloonHelp     =   ""
         Bold            =   "False"
         Border          =   "True"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Format          =   ""
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_general"
         Italic          =   "False"
         Left            =   31
         LimitText       =   0
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Mask            =   ""
         MultiLine       =   "False"
         Password        =   "False"
         ReadOnly        =   "False"
         ScrollBar       =   "True"
         ScrollBarHorizontal=   "False"
         ScrollBarVertical=   "True"
         Styled          =   "False"
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   39
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   4
         BehaviorIndex   =   14
      End
      Begin CheckBox chk_general_version_check
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Check for newer versions on startup"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_general"
         Italic          =   "False"
         Left            =   30
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   63
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   215
         ControlOrder    =   5
         BehaviorIndex   =   15
      End
      Begin StaticText lbl_general_language
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
         InitialParent   =   "grp_settings_general"
         Italic          =   "False"
         Left            =   30
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Language:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   82
         Underline       =   "False"
         Visible         =   "True"
         Width           =   150
         ControlOrder    =   6
         BehaviorIndex   =   16
      End
      Begin PopupMenu pop_general_language
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
         InitialParent   =   "grp_settings_general"
         InitialValue    =   ""
         Italic          =   "False"
         Left            =   30
         ListIndex       =   0
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   97
         Underline       =   "False"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   7
         BehaviorIndex   =   17
      End
   End
   Begin GroupBox grp_settings_startmode
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Start Mode"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   56
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   15
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   129
      Underline       =   "False"
      Visible         =   "True"
      Width           =   235
      ControlOrder    =   8
      BehaviorIndex   =   40
      Begin RadioButton rad_start_songs
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Songs"
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_startmode"
         Italic          =   "False"
         Left            =   26
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   142
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   80
         ControlOrder    =   9
         BehaviorIndex   =   41
      End
      Begin RadioButton rad_start_sets
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Sets"
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_startmode"
         Italic          =   "False"
         Left            =   26
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   163
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   80
         ControlOrder    =   10
         BehaviorIndex   =   42
      End
   End
   Begin GroupBox grp_settings_user_defined
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "User Defined Field Names"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   168
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   15
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   187
      Underline       =   "False"
      Visible         =   "True"
      Width           =   235
      ControlOrder    =   11
      BehaviorIndex   =   0
      Begin StaticText lbl_define_user1
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
         InitialParent   =   "grp_settings_user_defined"
         Italic          =   "False"
         Left            =   30
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "User Defined 1:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   207
         Underline       =   "False"
         Visible         =   "True"
         Width           =   205
         ControlOrder    =   12
         BehaviorIndex   =   1
      End
      Begin EditField edt_define_user1
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         BalloonHelp     =   ""
         Bold            =   "False"
         Border          =   "True"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Format          =   ""
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_user_defined"
         Italic          =   "False"
         Left            =   30
         LimitText       =   0
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Mask            =   ""
         MultiLine       =   "False"
         Password        =   "False"
         ReadOnly        =   "False"
         ScrollBar       =   "True"
         ScrollBarHorizontal=   "False"
         ScrollBarVertical=   "True"
         Styled          =   "False"
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   222
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   205
         ControlOrder    =   13
         BehaviorIndex   =   2
      End
      Begin StaticText lbl_define_user2
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
         InitialParent   =   "grp_settings_user_defined"
         Italic          =   "False"
         Left            =   30
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "User Defined 2:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   247
         Underline       =   "False"
         Visible         =   "True"
         Width           =   205
         ControlOrder    =   14
         BehaviorIndex   =   3
      End
      Begin EditField edt_define_user2
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         BalloonHelp     =   ""
         Bold            =   "False"
         Border          =   "True"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Format          =   ""
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_user_defined"
         Italic          =   "False"
         Left            =   30
         LimitText       =   0
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Mask            =   ""
         MultiLine       =   "False"
         Password        =   "False"
         ReadOnly        =   "False"
         ScrollBar       =   "True"
         ScrollBarHorizontal=   "False"
         ScrollBarVertical=   "True"
         Styled          =   "False"
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   262
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   205
         ControlOrder    =   15
         BehaviorIndex   =   4
      End
      Begin StaticText lbl_define_user3
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
         InitialParent   =   "grp_settings_user_defined"
         Italic          =   "False"
         Left            =   30
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "User Defined 3:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   287
         Underline       =   "False"
         Visible         =   "True"
         Width           =   205
         ControlOrder    =   16
         BehaviorIndex   =   5
      End
      Begin EditField edt_define_user3
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         BalloonHelp     =   ""
         Bold            =   "False"
         Border          =   "True"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Format          =   ""
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_user_defined"
         Italic          =   "False"
         Left            =   30
         LimitText       =   0
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Mask            =   ""
         MultiLine       =   "False"
         Password        =   "False"
         ReadOnly        =   "False"
         ScrollBar       =   "True"
         ScrollBarHorizontal=   "False"
         ScrollBarVertical=   "True"
         Styled          =   "False"
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   302
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   205
         ControlOrder    =   17
         BehaviorIndex   =   6
      End
      Begin PushButton btn_define_load
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Cancel          =   "False"
         Caption         =   "Load Language Defaults"
         Default         =   "False"
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_user_defined"
         Italic          =   "False"
         Left            =   30
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   331
         Underline       =   "False"
         Visible         =   "True"
         Width           =   205
         ControlOrder    =   18
         BehaviorIndex   =   18
      End
   End
   Begin GroupBox grp_settings_fonts
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Fonts"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   345
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   264
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   10
      Underline       =   "False"
      Visible         =   "True"
      Width           =   150
      ControlOrder    =   19
      BehaviorIndex   =   27
      Begin StaticText lbl_fonts_headings
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
         InitialParent   =   "grp_settings_fonts"
         Italic          =   "False"
         Left            =   281
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Headings:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   35
         Underline       =   "False"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   20
         BehaviorIndex   =   28
      End
      Begin SFontCanvas can_fonts_headings
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   30
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_fonts"
         Left            =   281
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         Top             =   50
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   21
         BehaviorIndex   =   33
      End
      Begin StaticText lbl_fonts_labels
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
         InitialParent   =   "grp_settings_fonts"
         Italic          =   "False"
         Left            =   281
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Labels:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   85
         Underline       =   "False"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   22
         BehaviorIndex   =   29
      End
      Begin SFontCanvas can_fonts_labels
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   30
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_fonts"
         Left            =   281
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         Top             =   100
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   23
         BehaviorIndex   =   34
      End
      Begin StaticText lbl_fonts_text_fields
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
         InitialParent   =   "grp_settings_fonts"
         Italic          =   "False"
         Left            =   281
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Text Fields:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   135
         Underline       =   "False"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   24
         BehaviorIndex   =   30
      End
      Begin SFontCanvas can_fonts_text_fields
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   30
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_fonts"
         Left            =   281
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         Top             =   150
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   25
         BehaviorIndex   =   35
      End
      Begin StaticText lbl_fonts_fixed_width
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
         InitialParent   =   "grp_settings_fonts"
         Italic          =   "False"
         Left            =   281
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Fixed-width Text:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   185
         Underline       =   "False"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   26
         BehaviorIndex   =   31
      End
      Begin SFontCanvas can_fonts_fixed_width
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   30
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_fonts"
         Left            =   281
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         Top             =   200
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   27
         BehaviorIndex   =   36
      End
      Begin StaticText lbl_fonts_buttons
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
         InitialParent   =   "grp_settings_fonts"
         Italic          =   "False"
         Left            =   281
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Buttons:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   235
         Underline       =   "False"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   28
         BehaviorIndex   =   38
      End
      Begin SFontCanvas can_fonts_buttons
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   30
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_fonts"
         Left            =   281
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         Top             =   250
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   29
         BehaviorIndex   =   39
      End
      Begin StaticText lbl_fonts_large_headings
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
         InitialParent   =   "grp_settings_fonts"
         Italic          =   "False"
         Left            =   281
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Large Headings:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   285
         Underline       =   "False"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   30
         BehaviorIndex   =   32
      End
      Begin SFontCanvas can_fonts_large_headings
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   45
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_fonts"
         Left            =   281
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         Top             =   300
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   31
         BehaviorIndex   =   37
      End
   End
   Begin GroupBox grp_settings_proxy
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "HTTP Proxy"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   110
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   425
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   10
      Underline       =   "False"
      Visible         =   "True"
      Width           =   150
      ControlOrder    =   32
      BehaviorIndex   =   7
      Begin StaticText lbl_proxy_host
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
         InitialParent   =   "grp_settings_proxy"
         Italic          =   "False"
         Left            =   440
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Server:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   30
         Underline       =   "False"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   33
         BehaviorIndex   =   8
      End
      Begin EditField edt_proxy_host
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         BalloonHelp     =   ""
         Bold            =   "False"
         Border          =   "True"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Format          =   ""
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_proxy"
         Italic          =   "False"
         Left            =   440
         LimitText       =   0
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Mask            =   ""
         MultiLine       =   "False"
         Password        =   "False"
         ReadOnly        =   "False"
         ScrollBar       =   "True"
         ScrollBarHorizontal=   "False"
         ScrollBarVertical=   "True"
         Styled          =   "False"
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   45
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   34
         BehaviorIndex   =   9
      End
      Begin StaticText lbl_proxy_port
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
         InitialParent   =   "grp_settings_proxy"
         Italic          =   "False"
         Left            =   440
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Port:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   70
         Underline       =   "False"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   35
         BehaviorIndex   =   10
      End
      Begin EditField edt_proxy_port
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         BalloonHelp     =   ""
         Bold            =   "False"
         Border          =   "True"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Format          =   ""
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_proxy"
         Italic          =   "False"
         Left            =   440
         LimitText       =   0
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Mask            =   ""
         MultiLine       =   "False"
         Password        =   "False"
         ReadOnly        =   "False"
         ScrollBar       =   "True"
         ScrollBarHorizontal=   "False"
         ScrollBarVertical=   "True"
         Styled          =   "False"
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   85
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   50
         ControlOrder    =   36
         BehaviorIndex   =   11
      End
   End
   Begin GroupBox grp_settings_documents_folder
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Documents Folder"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   165
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   426
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   157
      Underline       =   "False"
      Visible         =   "True"
      Width           =   150
      ControlOrder    =   37
      BehaviorIndex   =   19
      Begin RadioButton rad_documents_default
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Default"
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_documents_folder"
         Italic          =   "False"
         Left            =   441
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   218
         Underline       =   "False"
         Value           =   "True"
         Visible         =   "True"
         Width           =   127
         ControlOrder    =   38
         BehaviorIndex   =   20
      End
      Begin RadioButton rad_documents_custom
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Custom:"
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_documents_folder"
         Italic          =   "False"
         Left            =   441
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   238
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   127
         ControlOrder    =   39
         BehaviorIndex   =   21
      End
      Begin PushButton btn_browse
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Cancel          =   "False"
         Caption         =   "Browse..."
         Default         =   "False"
         DisabledBalloonHelp=   ""
         Enabled         =   "False"
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_documents_folder"
         Italic          =   "False"
         Left            =   461
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   263
         Underline       =   "False"
         Visible         =   "True"
         Width           =   80
         ControlOrder    =   40
         BehaviorIndex   =   22
      End
      Begin PushButton btn_documents_change
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Cancel          =   "False"
         Caption         =   "Change"
         Default         =   "False"
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_documents_folder"
         Italic          =   "False"
         Left            =   466
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   290
         Underline       =   "False"
         Visible         =   "True"
         Width           =   70
         ControlOrder    =   41
         BehaviorIndex   =   23
      End
      Begin StaticText nte_documents_warning
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   43
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_documents_folder"
         Italic          =   "False"
         Left            =   441
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "True"
         TabPanelIndex   =   0
         Text            =   "(use with caution; forces restart)"
         TextAlign       =   0
         TextColor       =   16711680
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   174
         Underline       =   "False"
         Visible         =   "True"
         Width           =   127
         ControlOrder    =   42
         BehaviorIndex   =   24
      End
   End
   Begin CheckBox chk_general_newpaint
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Use new control design"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   440
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   129
      Underline       =   "False"
      Value           =   "False"
      Visible         =   "True"
      Width           =   134
      ControlOrder    =   43
      BehaviorIndex   =   43
   End
End
#tag EndWindow

#tag WindowCode
#tag Event
	Sub Open()
	  edt_general_ccli.Text = SmartML.GetValue(App.MyMainSettings.DocumentElement, "ccli/@number")
	  chk_general_version_check.Value = SmartML.GetValueB(App.MyMainSettings.DocumentElement, "version/@check", False)
	  edt_proxy_host.Text = SmartML.GetValue(App.MyMainSettings.DocumentElement, "proxy/@host")
	  edt_proxy_port.Text = SmartML.GetValue(App.MyMainSettings.DocumentElement, "proxy/@port")
	  
	  Dim s As String
	  s = SmartML.GetValue(App.MyGlobals.DocumentElement, "documents/@folder")
	  If Len(s) > 0 Then
	    rad_documents_custom.Value = True
	    btn_browse.Enabled = True
	    DocsFolder = FileUtils.AbsolutePathToFolderItem(s)
	  Else
	    rad_documents_default.Value = True
	    btn_browse.Enabled = False
	    DocsFolder = Nil
	  End If
	  
	  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "language/@file")
	  
	  Dim f As FolderItem
	  f = App.AppFolder.Child("OpenSong Languages")
	  Dim i As Integer
	  pop_general_language.DeleteAllRows
	  For i = 1 To f.Count
	    If Not f.Item(i).Directory Then 
	      pop_general_language.AddRow f.Item(i).Name
	      If f.Item(i).Name = s Then pop_general_language.ListIndex = i - 1
	    End If
	  Next i
	  If pop_general_language.ListIndex < 0 Then pop_general_language.ListIndex = 0
	  
	  chk_general_version_check.Caption = App.T.Translate("general_settings/general/version_check/@caption")
	  
	  rad_documents_default.Caption = App.T.Translate("general_settings/documents_folder/default/@caption")
	  rad_documents_custom.Caption = App.T.Translate("general_settings/documents_folder/custom/@caption")
	  
	  can_fonts_headings.SetFont SmartML.GetValueF(App.MyMainSettings.DocumentElement, "fonts/headings")
	  can_fonts_labels.SetFont SmartML.GetValueF(App.MyMainSettings.DocumentElement, "fonts/labels")
	  can_fonts_text_fields.SetFont SmartML.GetValueF(App.MyMainSettings.DocumentElement, "fonts/text_fields")
	  can_fonts_fixed_width.SetFont SmartML.GetValueF(App.MyMainSettings.DocumentElement, "fonts/fixed_width")
	  can_fonts_buttons.SetFont SmartML.GetValueF(App.MyMainSettings.DocumentElement, "fonts/buttons")
	  can_fonts_large_headings.SetFont SmartML.GetValueF(App.MyMainSettings.DocumentElement, "fonts/large_headings")
	  
	  App.T.TranslateWindow Me, "general_settings", App.TranslationFonts
	  
	  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "user_defined/@user1")
	  If s.Len = 0 Then s = App.T.Translate("advanced_editor/user1/@caption")
	  edt_define_user1.Text = s
	  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "user_defined/@user2")
	  If s.Len = 0 Then s = App.T.Translate("advanced_editor/user2/@caption")
	  edt_define_user2.Text = s
	  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "user_defined/@user3")
	  If s.Len = 0 Then s = App.T.Translate("advanced_editor/user3/@caption")
	  edt_define_user3.Text = s
	  
	  //++EMP
	  // Code for supporting the Start Mode selection
	  
	  rad_start_songs.Caption = App.T.Translate("general_settings/general/startmode/song/@caption")
	  rad_start_sets.Caption = App.T.Translate("general_settings/general/startmode/set/@caption")
	  grp_settings_startmode.Caption = App.T.Translate("general_settings/general/startmode/@caption")
	  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "startmode/@sets", True)
	  if s = "1" then rad_start_sets.Value = True Else rad_start_songs.Value = True
	  
	  // Select which SButton.Paint to use
	  
	  chk_general_newpaint.Value = SmartML.GetValueB(App.MyMainSettings.DocumentElement, "paint/@new", True, False)
	  //--
	  App.CenterInControlScreen Me
	  
	End Sub
#tag EndEvent


#tag Property, Flags = &h21
	Private DocsFolder As FolderItem
#tag EndProperty


#tag EndWindowCode

#tag Events btn_ok
#tag Event
	Sub Action()
	  Dim Settings As XmlElement
	  Settings = App.MyMainSettings.DocumentElement
	  
	  SmartML.SetValue Settings, "ccli/@number", edt_general_ccli.Text
	  SmartML.SetValueB Settings, "version/@check", chk_general_version_check.Value
	  SmartML.SetValue Settings, "proxy/@host", edt_proxy_host.Text
	  SmartML.SetValueN Settings, "proxy/@port", Val(edt_proxy_port.Text)
	  
	  SmartML.SetValue Settings, "user_defined/@user1", edt_define_user1.Text
	  SmartML.SetValue Settings, "user_defined/@user2", edt_define_user2.Text
	  SmartML.SetValue Settings, "user_defined/@user3", edt_define_user3.Text
	  
	  SmartML.SetValueF Settings, "fonts/headings", can_fonts_headings.GetFont
	  SmartML.SetValueF Settings, "fonts/labels", can_fonts_labels.GetFont
	  SmartML.SetValueF Settings, "fonts/text_fields", can_fonts_text_fields.GetFont
	  SmartML.SetValueF Settings, "fonts/fixed_width", can_fonts_fixed_width.GetFont
	  SmartML.SetValueF Settings, "fonts/buttons", can_fonts_buttons.GetFont
	  SmartML.SetValueF Settings, "fonts/large_headings", can_fonts_large_headings.GetFont
	  App.UpdateTranslationFonts
	  
	  App.T = New Translator(App.AppFolder.Child("OpenSong Languages").Child(pop_general_language.Text))
	  If App.T <> Nil Then
	    SmartML.SetValue Settings, "language/@file", pop_general_language.Text
	  Else
	    InputBox.Message "Error in translation."
	  End If
	  
	  If App.T <> Nil Then
	    MainWindow.TranslateMe
	    App.TranslateMe
	  End If
	  
	  //++EMP
	  // Save Start Mode selection
	  if rad_start_songs.Value Then
	    SmartML.SetValueN Settings, "startmode/@sets", 0
	  Else
	    SmartML.SetValueN Settings, "startmode.@sets", 1
	  End If
	  
	  // Drawing style...this affects which SButton.Paint routine is used
	  
	  SmartML.SetValueB Settings, "paint/@new", chk_general_newpaint.Value
	  //--
	  
	  //++
	  // Bug 1462055: Save changes on dialog exit instead of program exit
	  //
	  If Not SmartML.XDocToFile(App.MyMainSettings, App.DocsFolder.Child("Settings").Child("MainSettings")) Then SmartML.DisplayError
	  //--
	  Close
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
#tag Events edt_general_ccli
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_general_ccli.Text  = c.Text
	      return true
	    end if
	    
	  end if
	  c.close
	End Function
#tag EndEvent
#tag EndEvents
#tag Events edt_define_user1
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_define_user1.Text  = c.Text
	      return true
	    end if
	    
	  end if
	  c.close
	End Function
#tag EndEvent
#tag EndEvents
#tag Events edt_define_user2
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_define_user2.Text  = c.Text
	      return true
	    end if
	    
	  end if
	  c.close
	End Function
#tag EndEvent
#tag EndEvents
#tag Events edt_define_user3
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_define_user3.Text  = c.Text
	      return true
	    end if
	    
	  end if
	  c.close
	End Function
#tag EndEvent
#tag EndEvents
#tag Events btn_define_load
#tag Event
	Sub Action()
	  edt_define_user1.Text = App.T.Translate("advanced_song_editor/user1/@caption")
	  edt_define_user2.Text = App.T.Translate("advanced_song_editor/user2/@caption")
	  edt_define_user3.Text = App.T.Translate("advanced_song_editor/user3/@caption")
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events edt_proxy_host
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_proxy_host.Text  = c.Text
	      return true
	    end if
	    
	  end if
	  c.close
	End Function
#tag EndEvent
#tag EndEvents
#tag Events edt_proxy_port
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_proxy_port.Text  = c.Text
	      return true
	    end if
	    
	  end if
	  c.close
	End Function
#tag EndEvent
#tag EndEvents
#tag Events rad_documents_default
#tag Event
	Sub Action()
	  btn_browse.Enabled = False
	  DocsFolder = Nil
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events rad_documents_custom
#tag Event
	Sub Action()
	  btn_browse.Enabled = True
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_browse
#tag Event
	Sub Action()
	  DocsFolder = SelectFolder()
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_documents_change
#tag Event
	Sub Action()
	  If DocsFolder = Nil Then
	    SmartML.SetValue App.MyGlobals.DocumentElement, "documents/@folder", ""
	  Else
	    SmartML.SetValue App.MyGlobals.DocumentElement, "documents/@folder", DocsFolder.AbsolutePath
	  End If
	  
	  If Not SmartML.XDocToFile(App.MyGlobals, App.AppFolder.Child("OpenSong Settings").Child("Globals")) Then
	    SmartML.DisplayError
	    Return
	  End If
	  
	  InputBox.Message App.T.Translate("general_settings/documents_folder/message")
	  
	  Quit
	End Sub
#tag EndEvent
#tag EndEvents
