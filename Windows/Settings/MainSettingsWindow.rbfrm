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
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   425
      Top             =   331
      Width           =   69
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "OK"
      Default         =   "True"
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
      BehaviorIndex   =   0
   End
   Begin PushButton btn_cancel
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   505
      Top             =   331
      Width           =   69
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
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
      BehaviorIndex   =   1
   End
   Begin GroupBox grp_settings_general
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   15
      Top             =   10
      Width           =   235
      Height          =   115
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "General"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   11
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   2
      Begin StaticText lbl_general_ccli
         Index           =   -2147483648
         ControlOrder    =   3
         Left            =   31
         Top             =   24
         Width           =   150
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "CCLI License #:"
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
         InitialParent   =   "grp_settings_general"
         BehaviorIndex   =   3
      End
      Begin EditField edt_general_ccli
         Index           =   -2147483648
         ControlOrder    =   4
         Left            =   31
         Top             =   39
         Width           =   120
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Border          =   "True"
         Multiline       =   "False"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "False"
         Password        =   "False"
         UseFocusRing    =   "True"
         TextColor       =   0
         BackColor       =   16777215
         Enabled         =   True
         Format          =   ""
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Text            =   ""
         Mask            =   ""
         ReadOnly        =   "False"
         LimitText       =   0
         AcceptTabs      =   "False"
         Alignment       =   0
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_settings_general"
         BehaviorIndex   =   4
      End
      Begin CheckBox chk_general_version_check
         Index           =   -2147483648
         ControlOrder    =   5
         Left            =   30
         Top             =   63
         Width           =   215
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Check for newer versions on startup"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_settings_general"
         BehaviorIndex   =   5
      End
      Begin StaticText lbl_general_language
         Index           =   -2147483648
         ControlOrder    =   6
         Left            =   30
         Top             =   82
         Width           =   150
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Language:"
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
         InitialParent   =   "grp_settings_general"
         BehaviorIndex   =   6
      End
      Begin PopupMenu pop_general_language
         Index           =   -2147483648
         ControlOrder    =   7
         Left            =   30
         Top             =   97
         Width           =   120
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Enabled         =   True
         InitialValue    =   ""
         ListIndex       =   0
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
         InitialParent   =   "grp_settings_general"
         BehaviorIndex   =   7
      End
   End
   Begin GroupBox grp_settings_startmode
      Index           =   -2147483648
      ControlOrder    =   8
      Left            =   15
      Top             =   129
      Width           =   235
      Height          =   56
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Start Mode"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   11
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   8
      Begin RadioButton rad_start_songs
         Index           =   -2147483648
         ControlOrder    =   9
         Left            =   26
         Top             =   142
         Width           =   80
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Songs"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         InitialParent   =   "grp_settings_startmode"
         BehaviorIndex   =   9
      End
      Begin RadioButton rad_start_sets
         Index           =   -2147483648
         ControlOrder    =   10
         Left            =   26
         Top             =   163
         Width           =   80
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Sets"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         InitialParent   =   "grp_settings_startmode"
         BehaviorIndex   =   10
      End
   End
   Begin GroupBox grp_settings_user_defined
      Index           =   -2147483648
      ControlOrder    =   11
      Left            =   15
      Top             =   187
      Width           =   235
      Height          =   168
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "User Defined Field Names"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   11
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   11
      Begin StaticText lbl_define_user1
         Index           =   -2147483648
         ControlOrder    =   12
         Left            =   30
         Top             =   207
         Width           =   205
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "User Defined 1:"
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
         InitialParent   =   "grp_settings_user_defined"
         BehaviorIndex   =   12
      End
      Begin EditField edt_define_user1
         Index           =   -2147483648
         ControlOrder    =   13
         Left            =   30
         Top             =   222
         Width           =   205
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Border          =   "True"
         Multiline       =   "False"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "False"
         Password        =   "False"
         UseFocusRing    =   "True"
         TextColor       =   0
         BackColor       =   16777215
         Enabled         =   True
         Format          =   ""
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Text            =   ""
         Mask            =   ""
         ReadOnly        =   "False"
         LimitText       =   0
         AcceptTabs      =   "False"
         Alignment       =   0
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_settings_user_defined"
         BehaviorIndex   =   13
      End
      Begin StaticText lbl_define_user2
         Index           =   -2147483648
         ControlOrder    =   14
         Left            =   30
         Top             =   247
         Width           =   205
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "User Defined 2:"
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
         InitialParent   =   "grp_settings_user_defined"
         BehaviorIndex   =   14
      End
      Begin EditField edt_define_user2
         Index           =   -2147483648
         ControlOrder    =   15
         Left            =   30
         Top             =   262
         Width           =   205
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Border          =   "True"
         Multiline       =   "False"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "False"
         Password        =   "False"
         UseFocusRing    =   "True"
         TextColor       =   0
         BackColor       =   16777215
         Enabled         =   True
         Format          =   ""
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Text            =   ""
         Mask            =   ""
         ReadOnly        =   "False"
         LimitText       =   0
         AcceptTabs      =   "False"
         Alignment       =   0
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_settings_user_defined"
         BehaviorIndex   =   15
      End
      Begin StaticText lbl_define_user3
         Index           =   -2147483648
         ControlOrder    =   16
         Left            =   30
         Top             =   287
         Width           =   205
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "User Defined 3:"
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
         InitialParent   =   "grp_settings_user_defined"
         BehaviorIndex   =   16
      End
      Begin EditField edt_define_user3
         Index           =   -2147483648
         ControlOrder    =   17
         Left            =   30
         Top             =   302
         Width           =   205
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Border          =   "True"
         Multiline       =   "False"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "False"
         Password        =   "False"
         UseFocusRing    =   "True"
         TextColor       =   0
         BackColor       =   16777215
         Enabled         =   True
         Format          =   ""
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Text            =   ""
         Mask            =   ""
         ReadOnly        =   "False"
         LimitText       =   0
         AcceptTabs      =   "False"
         Alignment       =   0
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_settings_user_defined"
         BehaviorIndex   =   17
      End
      Begin PushButton btn_define_load
         Index           =   -2147483648
         ControlOrder    =   18
         Left            =   30
         Top             =   331
         Width           =   205
         Height          =   22
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Load Language Defaults"
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
         InitialParent   =   "grp_settings_user_defined"
         BehaviorIndex   =   18
      End
   End
   Begin GroupBox grp_settings_fonts
      Index           =   -2147483648
      ControlOrder    =   19
      Left            =   264
      Top             =   10
      Width           =   150
      Height          =   345
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Fonts"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   11
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   19
      Begin StaticText lbl_fonts_headings
         Index           =   -2147483648
         ControlOrder    =   20
         Left            =   281
         Top             =   35
         Width           =   120
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Headings:"
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
         InitialParent   =   "grp_settings_fonts"
         BehaviorIndex   =   20
      End
      Begin SFontCanvas can_fonts_headings
         Index           =   -2147483648
         ControlOrder    =   21
         Left            =   281
         Top             =   50
         Width           =   120
         Height          =   30
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "grp_settings_fonts"
         AdvancedOptions =   "False"
         BehaviorIndex   =   21
      End
      Begin StaticText lbl_fonts_labels
         Index           =   -2147483648
         ControlOrder    =   22
         Left            =   281
         Top             =   85
         Width           =   120
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Labels:"
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
         InitialParent   =   "grp_settings_fonts"
         BehaviorIndex   =   22
      End
      Begin SFontCanvas can_fonts_labels
         Index           =   -2147483648
         ControlOrder    =   23
         Left            =   281
         Top             =   100
         Width           =   120
         Height          =   30
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "grp_settings_fonts"
         AdvancedOptions =   "False"
         BehaviorIndex   =   23
      End
      Begin StaticText lbl_fonts_text_fields
         Index           =   -2147483648
         ControlOrder    =   24
         Left            =   281
         Top             =   135
         Width           =   120
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Text Fields:"
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
         InitialParent   =   "grp_settings_fonts"
         BehaviorIndex   =   24
      End
      Begin SFontCanvas can_fonts_text_fields
         Index           =   -2147483648
         ControlOrder    =   25
         Left            =   281
         Top             =   150
         Width           =   120
         Height          =   30
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "grp_settings_fonts"
         AdvancedOptions =   "False"
         BehaviorIndex   =   25
      End
      Begin StaticText lbl_fonts_fixed_width
         Index           =   -2147483648
         ControlOrder    =   26
         Left            =   281
         Top             =   185
         Width           =   120
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Fixed-width Text:"
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
         InitialParent   =   "grp_settings_fonts"
         BehaviorIndex   =   26
      End
      Begin SFontCanvas can_fonts_fixed_width
         Index           =   -2147483648
         ControlOrder    =   27
         Left            =   281
         Top             =   200
         Width           =   120
         Height          =   30
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "grp_settings_fonts"
         AdvancedOptions =   "False"
         BehaviorIndex   =   27
      End
      Begin StaticText lbl_fonts_buttons
         Index           =   -2147483648
         ControlOrder    =   28
         Left            =   281
         Top             =   235
         Width           =   120
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Buttons:"
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
         InitialParent   =   "grp_settings_fonts"
         BehaviorIndex   =   28
      End
      Begin SFontCanvas can_fonts_buttons
         Index           =   -2147483648
         ControlOrder    =   29
         Left            =   281
         Top             =   250
         Width           =   120
         Height          =   30
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "grp_settings_fonts"
         AdvancedOptions =   "False"
         BehaviorIndex   =   29
      End
      Begin StaticText lbl_fonts_large_headings
         Index           =   -2147483648
         ControlOrder    =   30
         Left            =   281
         Top             =   285
         Width           =   120
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Large Headings:"
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
         InitialParent   =   "grp_settings_fonts"
         BehaviorIndex   =   30
      End
      Begin SFontCanvas can_fonts_large_headings
         Index           =   -2147483648
         ControlOrder    =   31
         Left            =   281
         Top             =   300
         Width           =   120
         Height          =   45
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "grp_settings_fonts"
         AdvancedOptions =   "False"
         BehaviorIndex   =   31
      End
   End
   Begin GroupBox grp_settings_proxy
      Index           =   -2147483648
      ControlOrder    =   32
      Left            =   425
      Top             =   10
      Width           =   150
      Height          =   110
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "HTTP Proxy"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   11
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   32
      Begin StaticText lbl_proxy_host
         Index           =   -2147483648
         ControlOrder    =   33
         Left            =   440
         Top             =   30
         Width           =   120
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Server:"
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
         InitialParent   =   "grp_settings_proxy"
         BehaviorIndex   =   33
      End
      Begin EditField edt_proxy_host
         Index           =   -2147483648
         ControlOrder    =   34
         Left            =   440
         Top             =   45
         Width           =   120
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Border          =   "True"
         Multiline       =   "False"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "False"
         Password        =   "False"
         UseFocusRing    =   "True"
         TextColor       =   0
         BackColor       =   16777215
         Enabled         =   True
         Format          =   ""
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Text            =   ""
         Mask            =   ""
         ReadOnly        =   "False"
         LimitText       =   0
         AcceptTabs      =   "False"
         Alignment       =   0
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_settings_proxy"
         BehaviorIndex   =   34
      End
      Begin StaticText lbl_proxy_port
         Index           =   -2147483648
         ControlOrder    =   35
         Left            =   440
         Top             =   70
         Width           =   120
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Port:"
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
         InitialParent   =   "grp_settings_proxy"
         BehaviorIndex   =   35
      End
      Begin EditField edt_proxy_port
         Index           =   -2147483648
         ControlOrder    =   36
         Left            =   440
         Top             =   85
         Width           =   50
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Border          =   "True"
         Multiline       =   "False"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "False"
         Password        =   "False"
         UseFocusRing    =   "True"
         TextColor       =   0
         BackColor       =   16777215
         Enabled         =   True
         Format          =   ""
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Text            =   ""
         Mask            =   ""
         ReadOnly        =   "False"
         LimitText       =   0
         AcceptTabs      =   "False"
         Alignment       =   0
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_settings_proxy"
         BehaviorIndex   =   36
      End
   End
   Begin GroupBox grp_settings_documents_folder
      Index           =   -2147483648
      ControlOrder    =   37
      Left            =   426
      Top             =   157
      Width           =   150
      Height          =   165
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Documents Folder"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   11
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   37
      Begin RadioButton rad_documents_default
         Index           =   -2147483648
         ControlOrder    =   38
         Left            =   441
         Top             =   218
         Width           =   127
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Default"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "True"
         InitialParent   =   "grp_settings_documents_folder"
         BehaviorIndex   =   38
      End
      Begin RadioButton rad_documents_custom
         Index           =   -2147483648
         ControlOrder    =   39
         Left            =   441
         Top             =   238
         Width           =   127
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Custom:"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         InitialParent   =   "grp_settings_documents_folder"
         BehaviorIndex   =   39
      End
      Begin PushButton btn_browse
         Index           =   -2147483648
         ControlOrder    =   40
         Left            =   461
         Top             =   263
         Width           =   80
         Height          =   22
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Browse..."
         Default         =   "False"
         Cancel          =   "False"
         Enabled         =   "False"
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "grp_settings_documents_folder"
         BehaviorIndex   =   40
      End
      Begin PushButton btn_documents_change
         Index           =   -2147483648
         ControlOrder    =   41
         Left            =   466
         Top             =   290
         Width           =   70
         Height          =   22
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Change"
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
         InitialParent   =   "grp_settings_documents_folder"
         BehaviorIndex   =   41
      End
      Begin StaticText nte_documents_warning
         Index           =   -2147483648
         ControlOrder    =   42
         Left            =   441
         Top             =   174
         Width           =   127
         Height          =   43
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "(use with caution; forces restart)"
         TextAlign       =   0
         TextColor       =   16711680
         Multiline       =   "True"
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
         InitialParent   =   "grp_settings_documents_folder"
         BehaviorIndex   =   42
      End
   End
   Begin CheckBox chk_general_newpaint
      Index           =   -2147483648
      ControlOrder    =   43
      Left            =   440
      Top             =   129
      Width           =   134
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Use new control design"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
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
	      If s = f.Item(i).Name Then
	        pop_general_language.ListIndex = pop_general_language.ListCount - 1
	      End If
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
	  Dim T As Translator
	  
	  Settings = App.MyMainSettings.DocumentElement
	  T = New Translator(App.AppFolder.Child("OpenSong Languages").Child(pop_general_language.Text))
	  
	  If T.IsLoaded Then
	    App.T = T
	    'save language selection in globals
	    SmartML.SetValue Settings, "language/@file", T.GetFileName
	    MainWindow.TranslateMe
	    App.TranslateMe
	  Else
	    InputBox.Message "Error in translation."
	    Return
	  End If
	  
	  SmartML.SetValue  Settings, "ccli/@number", edt_general_ccli.Text
	  SmartML.SetValueB Settings, "version/@check", chk_general_version_check.Value
	  SmartML.SetValue  Settings, "proxy/@host", edt_proxy_host.Text
	  SmartML.SetValueN Settings, "proxy/@port", Val(edt_proxy_port.Text)
	  
	  SmartML.SetValue  Settings, "user_defined/@user1", edt_define_user1.Text
	  SmartML.SetValue  Settings, "user_defined/@user2", edt_define_user2.Text
	  SmartML.SetValue  Settings, "user_defined/@user3", edt_define_user3.Text
	  
	  SmartML.SetValueF Settings, "fonts/headings", can_fonts_headings.GetFont
	  SmartML.SetValueF Settings, "fonts/labels", can_fonts_labels.GetFont
	  SmartML.SetValueF Settings, "fonts/text_fields", can_fonts_text_fields.GetFont
	  SmartML.SetValueF Settings, "fonts/fixed_width", can_fonts_fixed_width.GetFont
	  SmartML.SetValueF Settings, "fonts/buttons", can_fonts_buttons.GetFont
	  SmartML.SetValueF Settings, "fonts/large_headings", can_fonts_large_headings.GetFont
	  App.UpdateTranslationFonts
	  
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
