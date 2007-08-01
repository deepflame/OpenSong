#tag Window
Begin Window MainSettingsWindow
   BackColor       =   16777215
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   1
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   404
   LiveResize      =   "False"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   "True"
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   "True"
   MinHeight       =   64
   MinimizeButton  =   "True"
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   "False"
   Title           =   "General Settings"
   Visible         =   "True"
   Width           =   619
   Begin PushButton btn_ok
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "OK"
      ControlOrder    =   0
      Default         =   "True"
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   450
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   371
      Underline       =   "False"
      Visible         =   True
      Width           =   69
      BehaviorIndex   =   0
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Cancel"
      ControlOrder    =   1
      Default         =   "False"
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   530
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   371
      Underline       =   "False"
      Visible         =   True
      Width           =   69
      BehaviorIndex   =   1
   End
   Begin GroupBox grp_settings_general
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "General"
      ControlOrder    =   2
      Enabled         =   True
      Height          =   110
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
      Visible         =   True
      Width           =   235
      BehaviorIndex   =   2
      Begin StaticText lbl_general_ccli
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   3
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
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
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "CCLI License #:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   24
         Underline       =   "False"
         Visible         =   True
         Width           =   215
         BehaviorIndex   =   3
      End
      Begin EditField edt_general_ccli
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         Bold            =   "False"
         Border          =   "True"
         ControlOrder    =   4
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
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
         Multiline       =   "False"
         Password        =   "False"
         ReadOnly        =   "False"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "False"
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   39
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   120
         BehaviorIndex   =   4
      End
      Begin CheckBox chk_general_version_check
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Check for newer versions on startup"
         ControlOrder    =   5
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
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
         Visible         =   True
         Width           =   215
         BehaviorIndex   =   5
      End
      Begin StaticText lbl_general_language
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   6
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
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
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "Language:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   82
         Underline       =   "False"
         Visible         =   True
         Width           =   150
         BehaviorIndex   =   6
      End
      Begin PopupMenu pop_general_language
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   7
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
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
         Visible         =   True
         Width           =   200
         BehaviorIndex   =   7
      End
   End
   Begin GroupBox grp_settings_startmode
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Start Mode"
      ControlOrder    =   8
      Enabled         =   True
      Height          =   60
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
      Top             =   126
      Underline       =   "False"
      Visible         =   True
      Width           =   235
      BehaviorIndex   =   8
      Begin RadioButton rad_start_songs
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Songs"
         ControlOrder    =   9
         Enabled         =   True
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
         Visible         =   True
         Width           =   205
         BehaviorIndex   =   9
      End
      Begin RadioButton rad_start_sets
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Sets"
         ControlOrder    =   10
         Enabled         =   True
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
         Visible         =   True
         Width           =   205
         BehaviorIndex   =   10
      End
   End
   Begin GroupBox grp_settings_documents_folder
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Documents Folder"
      ControlOrder    =   11
      Enabled         =   True
      Height          =   203
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
      Top             =   190
      Underline       =   "False"
      Visible         =   True
      Width           =   235
      BehaviorIndex   =   11
      Begin RadioButton rad_documents_default
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Default"
         ControlOrder    =   12
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_documents_folder"
         Italic          =   "False"
         Left            =   30
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   235
         Underline       =   "False"
         Value           =   "True"
         Visible         =   True
         Width           =   205
         BehaviorIndex   =   12
      End
      Begin RadioButton rad_documents_custom
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Custom:"
         ControlOrder    =   13
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_documents_folder"
         Italic          =   "False"
         Left            =   30
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   255
         Underline       =   "False"
         Value           =   "False"
         Visible         =   True
         Width           =   205
         BehaviorIndex   =   13
      End
      Begin StaticText docs_folder
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   14
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   45
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_documents_folder"
         Italic          =   "False"
         Left            =   30
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "True"
         TabPanelIndex   =   0
         Text            =   "\\"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   283
         Underline       =   "False"
         Visible         =   True
         Width           =   205
         BehaviorIndex   =   14
      End
      Begin PushButton btn_browse
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Cancel          =   "False"
         Caption         =   "Browse..."
         ControlOrder    =   15
         Default         =   "False"
         Enabled         =   "False"
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_documents_folder"
         Italic          =   "False"
         Left            =   68
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   338
         Underline       =   "False"
         Visible         =   True
         Width           =   120
         BehaviorIndex   =   15
      End
      Begin StaticText nte_documents_warning
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   18
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   27
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_documents_folder"
         Italic          =   "False"
         Left            =   30
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "True"
         TabPanelIndex   =   0
         Text            =   "(use with caution; forces restart)"
         TextAlign       =   0
         TextColor       =   16711680
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   208
         Underline       =   "False"
         Visible         =   True
         Width           =   205
         BehaviorIndex   =   16
      End
      Begin Checkbox chk_documents_oldfolderdb
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "Use Pre-V1.1 FolderDB cache"
         ControlOrder    =   20
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_documents_folder"
         Italic          =   ""
         Left            =   31
         LockBottom      =   ""
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   10
         Top             =   368
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   214
         BehaviorIndex   =   17
      End
   End
   Begin GroupBox grp_settings_fonts
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Fonts"
      ControlOrder    =   16
      Enabled         =   True
      Height          =   350
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
      Visible         =   True
      Width           =   150
      BehaviorIndex   =   18
      Begin StaticText lbl_fonts_headings
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   17
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
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
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "Headings:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   35
         Underline       =   "False"
         Visible         =   True
         Width           =   120
         BehaviorIndex   =   19
      End
      Begin StaticText lbl_fonts_labels
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   19
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
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
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "Labels:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   85
         Underline       =   "False"
         Visible         =   True
         Width           =   120
         BehaviorIndex   =   20
      End
      Begin StaticText lbl_fonts_text_fields
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   21
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
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
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "Text Fields:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   135
         Underline       =   "False"
         Visible         =   True
         Width           =   120
         BehaviorIndex   =   21
      End
      Begin SFontCanvas can_fonts_headings
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   22
         Enabled         =   "True"
         EraseBackground =   "True"
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
         BehaviorIndex   =   22
      End
      Begin StaticText lbl_fonts_fixed_width
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   23
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
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
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "Fixed-width Text:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   185
         Underline       =   "False"
         Visible         =   True
         Width           =   120
         BehaviorIndex   =   23
      End
      Begin SFontCanvas can_fonts_labels
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   24
         Enabled         =   "True"
         EraseBackground =   "True"
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
         BehaviorIndex   =   24
      End
      Begin StaticText lbl_fonts_buttons
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   25
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
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
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "Buttons:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   235
         Underline       =   "False"
         Visible         =   True
         Width           =   120
         BehaviorIndex   =   25
      End
      Begin SFontCanvas can_fonts_text_fields
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   26
         Enabled         =   "True"
         EraseBackground =   "True"
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
         BehaviorIndex   =   26
      End
      Begin StaticText lbl_fonts_large_headings
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   27
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
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
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "Large Headings:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   285
         Underline       =   "False"
         Visible         =   True
         Width           =   120
         BehaviorIndex   =   27
      End
      Begin SFontCanvas can_fonts_fixed_width
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   28
         Enabled         =   "True"
         EraseBackground =   "True"
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
         BehaviorIndex   =   28
      End
      Begin SFontCanvas can_fonts_buttons
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   34
         Enabled         =   "True"
         EraseBackground =   "True"
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
         BehaviorIndex   =   29
      End
      Begin SFontCanvas can_fonts_large_headings
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   44
         Enabled         =   "True"
         EraseBackground =   "True"
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
         BehaviorIndex   =   30
      End
   End
   Begin GroupBox grp_settings_proxy
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "HTTP Proxy"
      ControlOrder    =   29
      Enabled         =   True
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
      Visible         =   True
      Width           =   174
      BehaviorIndex   =   31
      Begin StaticText lbl_proxy_host
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   30
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
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
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "Server:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   30
         Underline       =   "False"
         Visible         =   True
         Width           =   120
         BehaviorIndex   =   32
      End
      Begin EditField edt_proxy_host
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         Bold            =   "False"
         Border          =   "True"
         ControlOrder    =   31
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
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
         Multiline       =   "False"
         Password        =   "False"
         ReadOnly        =   "False"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "False"
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   45
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   134
         BehaviorIndex   =   33
      End
      Begin StaticText lbl_proxy_port
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   32
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
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
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "Port:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   70
         Underline       =   "False"
         Visible         =   True
         Width           =   120
         BehaviorIndex   =   34
      End
      Begin EditField edt_proxy_port
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         Bold            =   "False"
         Border          =   "True"
         ControlOrder    =   33
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
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
         Multiline       =   "False"
         Password        =   "False"
         ReadOnly        =   "False"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "False"
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   85
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   50
         BehaviorIndex   =   35
      End
   End
   Begin CheckBox chk_general_newpaint
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Use new control design"
      ControlOrder    =   35
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
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
      Visible         =   True
      Width           =   134
      BehaviorIndex   =   36
   End
   Begin GroupBox grp_settings_user_defined
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "User Defined Field Names"
      ControlOrder    =   36
      Enabled         =   True
      Height          =   173
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
      Top             =   160
      Underline       =   "False"
      Visible         =   True
      Width           =   173
      BehaviorIndex   =   37
      Begin StaticText lbl_define_user1
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   37
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_user_defined"
         Italic          =   "False"
         Left            =   441
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "User Defined 1:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   180
         Underline       =   "False"
         Visible         =   True
         Width           =   143
         BehaviorIndex   =   38
      End
      Begin EditField edt_define_user1
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         Bold            =   "False"
         Border          =   "True"
         ControlOrder    =   38
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_user_defined"
         Italic          =   "False"
         Left            =   441
         LimitText       =   0
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Mask            =   ""
         Multiline       =   "False"
         Password        =   "False"
         ReadOnly        =   "False"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "False"
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   195
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   143
         BehaviorIndex   =   39
      End
      Begin StaticText lbl_define_user2
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   39
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_user_defined"
         Italic          =   "False"
         Left            =   441
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "User Defined 2:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   220
         Underline       =   "False"
         Visible         =   True
         Width           =   143
         BehaviorIndex   =   40
      End
      Begin EditField edt_define_user2
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         Bold            =   "False"
         Border          =   "True"
         ControlOrder    =   40
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_user_defined"
         Italic          =   "False"
         Left            =   441
         LimitText       =   0
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Mask            =   ""
         Multiline       =   "False"
         Password        =   "False"
         ReadOnly        =   "False"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "False"
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   235
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   143
         BehaviorIndex   =   41
      End
      Begin StaticText lbl_define_user3
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   41
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_user_defined"
         Italic          =   "False"
         Left            =   441
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "User Defined 3:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   260
         Underline       =   "False"
         Visible         =   True
         Width           =   143
         BehaviorIndex   =   42
      End
      Begin EditField edt_define_user3
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         Bold            =   "False"
         Border          =   "True"
         ControlOrder    =   42
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_user_defined"
         Italic          =   "False"
         Left            =   441
         LimitText       =   0
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Mask            =   ""
         Multiline       =   "False"
         Password        =   "False"
         ReadOnly        =   "False"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "False"
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   275
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   143
         BehaviorIndex   =   43
      End
      Begin PushButton btn_define_load
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Cancel          =   "False"
         Caption         =   "Load Language Defaults"
         ControlOrder    =   43
         Default         =   "False"
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_user_defined"
         Italic          =   "False"
         Left            =   441
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   304
         Underline       =   "False"
         Visible         =   True
         Width           =   143
         BehaviorIndex   =   44
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub EnableMenuItems()
		  //btn_documents_change.Enabled = NewDocsFolder <> Nil
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim s As String
		  edt_general_ccli.Text = SmartML.GetValue(App.MyMainSettings.DocumentElement, "ccli/@number")
		  chk_general_version_check.Value = SmartML.GetValueB(App.MyMainSettings.DocumentElement, "version/@check", False)
		  edt_proxy_host.Text = SmartML.GetValue(App.MyMainSettings.DocumentElement, "proxy/@host")
		  edt_proxy_port.Text = SmartML.GetValue(App.MyMainSettings.DocumentElement, "proxy/@port")
		  
		  //++
		  // EMP, July 2007
		  // Simplified this logic a little since there is now a way to return FolderItem from preferences
		  //--
		  DocsFolder = App.MainPreferences.GetValueFI(Prefs.kDocumentsFolder, DefaultDocsFolder, True)
		  rad_documents_default.Value = (DocsFolder = DefaultDocsFolder)
		  rad_documents_custom.Value = Not rad_documents_default.Value
		  btn_browse.Enabled = rad_documents_custom.Value
		  
		  s = App.MainPreferences.GetValue(Prefs.kLanguage, "English")
		  Dim f As FolderItem
		  f = App.AppFolder.Child("OpenSong Languages")
		  //++EMP add a couple of variables for troubleshooting and correct
		  // error that would set the ListIndex to the wrong value
		  Dim i As Integer
		  Dim currlang As Integer = -1
		  Dim langfile As FolderItem
		  pop_general_language.DeleteAllRows
		  Try
		    For i = 1 To f.Count
		      langfile = f.Item(i)
		      If Not langfile.Directory And langfile.IsFileVisible Then
		        pop_general_language.AddRow langfile.Name
		        If langfile.Name = s Then currlang = pop_general_language.ListCount - 1
		      End If
		    Next i
		  Catch
		    InputBox.Message "No languages available; please check the directory " + f.AbsolutePath
		  End Try
		  
		  pop_general_language.ListIndex = currlang
		  //--
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
		  
		  '++JRC Display DocsFolder Location
		  docs_folder.Text = DocsFolder.FormatFolderName
		  '--
		  //++ EMP July 2007
		  // Add FolderDB flag
		  chk_documents_oldfolderdb.Value = App.MainPreferences.GetValueB(Prefs.kUseOldFolderDB)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor()
		  DefaultDocsFolder = DocumentsFolder.Child("OpenSong")
		  // call the Window constructor, or Open events will not fire
		  Super.Window()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SaveDocsFolder()
		  //++
		  // Since this only modifies the preferences file and not App.DocsFolder,
		  // a forced restart is no longer necessary.  Still need to warn the user
		  // that a restart is needed to apply the changes.
		  //
		  // TODO: With a little cleaning up in App and MainWindow, it should be
		  // possible to update the location of the documents folder without
		  // a restart.  Have the appropriate objects/windows register for notifications.
		  //--
		  
		  If NewDocsFolder = Nil Then Return // No changes
		  
		  App.MainPreferences.SetValueFI(Prefs.kDocumentsFolder, NewDocsFolder)
		  
		  InputBox.Message App.T.Translate("general_settings/documents_folder/message")
		  
		  App.MainPreferences.NotifyReceivers
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected DefaultDocsFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DocsFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected NewDocsFolder As FolderItem
	#tag EndProperty


#tag EndWindowCode

#tag Events btn_ok
	#tag Event
		Sub Action()
		  '++JRC User selected custom DocsFolder, but didn't click change button
		  If NewDocsFolder <> Nil Then SaveDocsFolder
		  
		  '++JRC Try to read language file, if we can't return to MainSettingsWindow without saving
		  Dim T As Translator
		  
		  T = New Translator(App.AppFolder.Child("OpenSong Languages").Child(pop_general_language.Text))
		  If T <> Nil Then
		    App.T = T
		    'save language selection in globals
		    'SmartML.SetValue App.MyGlobals.DocumentElement, "language/@file", pop_general_language.Text
		    App.MainPreferences.SetValue(Prefs.kLanguage, pop_general_language.Text)
		    MainWindow.TranslateMe
		    App.TranslateMe
		  Else
		    InputBox.Message "Error in translation."
		    Return
		  End If
		  
		  App.MainPreferences.SetValueB(Prefs.kUseOldFolderDB, chk_documents_oldfolderdb.Value)
		  
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
		  '--
		  
		  //++EMP
		  // Save Start Mode selection
		  if rad_start_songs.Value Then
		    SmartML.SetValueN Settings, "startmode/@sets", 0
		  Else
		    SmartML.SetValueN Settings, "startmode/@sets", 1
		  End If
		  
		  // Drawing style...this affects which SButton.Paint routine is used
		  
		  SmartML.SetValueB Settings, "paint/@new", chk_general_newpaint.Value
		  //--
		  
		  //++
		  // Bug 1462055: Save changes on dialog exit instead of program exit
		  //
		  If Not SmartML.XDocToFile(App.MyMainSettings, App.DocsFolder.Child("Settings").Child("MainSettings")) Then SmartML.DisplayError
		  // Can't write to MyGlobals if non-admin user
		  'If Not SmartML.XDocToFile(App.MyGlobals, App.AppFolder.Child("OpenSong Settings").Child("Globals")) Then SmartML.DisplayError
		  Call App.MainPreferences.Save
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
#tag Events rad_documents_default
	#tag Event
		Sub Action()
		  btn_browse.Enabled = False
		  
		  If NewDocsFolder = Nil Then
		    If DocsFolder.AbsolutePath <> DefaultDocsFolder.AbsolutePath Then
		      NewDocsFolder = DefaultDocsFolder
		      docs_folder.Text = NewDocsFolder.FormatFolderName
		    End If
		  Else
		    NewDocsFolder = DefaultDocsFolder
		    docs_folder.Text = NewDocsFolder.FormatFolderName
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_documents_custom
	#tag Event
		Sub Action()
		  btn_browse.Enabled = True
		  EnableMenuItems
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_browse
	#tag Event
		Sub Action()
		  
		  Dim dlg As New SelectFolderDialog
		  
		  dlg.InitialDirectory = App.DocsFolder
		  
		  NewDocsFolder = dlg.ShowModal
		  
		  If NewDocsFolder = Nil Then Return // User cancelled
		  
		  // Is the selected folder the same as previous?
		  If NewDocsFolder.AbsolutePath = DocsFolder.AbsolutePath Then
		    NewDocsFolder = Nil
		    Return
		  End If
		  
		  docs_folder.Text = NewDocsFolder.FormatFolderName
		  // Is this the default?
		  rad_documents_default.Value = (NewDocsFolder.AbsolutePath = DefaultDocsFolder.AbsolutePath)
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
