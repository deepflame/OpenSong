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
   Height          =   462
   ImplicitInstance=   "True"
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
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   401
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   429
      Underline       =   "False"
      Visible         =   "True"
      Width           =   90
      BehaviorIndex   =   0
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Cancel"
      ControlOrder    =   1
      Default         =   "False"
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   509
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   429
      Underline       =   "False"
      Visible         =   "True"
      Width           =   90
      BehaviorIndex   =   1
   End
   Begin TabPanel tab_general_general
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   2
      Enabled         =   "True"
      Facing          =   0
      Height          =   410
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   ""
      TabDefinition   =   "Basic\rSpecial"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   7
      Underline       =   ""
      Value           =   1
      Visible         =   "True"
      Width           =   579
      BehaviorIndex   =   2
      Begin GroupBox grp_settings_general
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "General"
         ControlOrder    =   3
         Enabled         =   "True"
         Height          =   110
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   "False"
         Left            =   35
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   1
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   44
         Underline       =   "False"
         Visible         =   "True"
         Width           =   235
         BehaviorIndex   =   3
         Begin StaticText lbl_general_ccli
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   4
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_general"
            Italic          =   "False"
            Left            =   51
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            Text            =   "Church CCLI License"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   58
            Underline       =   "False"
            Visible         =   "True"
            Width           =   215
            BehaviorIndex   =   4
         End
         Begin EditField edt_general_ccli
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   5
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_general"
            Italic          =   "False"
            Left            =   51
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            Scope           =   0
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   1
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   73
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   120
            BehaviorIndex   =   5
         End
         Begin CheckBox chk_general_version_check
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Check for newer versions on startup"
            ControlOrder    =   6
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_general"
            Italic          =   "False"
            Left            =   50
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   97
            Underline       =   "False"
            Value           =   "False"
            Visible         =   "True"
            Width           =   215
            BehaviorIndex   =   6
         End
         Begin StaticText lbl_general_language
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   7
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_general"
            Italic          =   "False"
            Left            =   50
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            Text            =   "Language:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   116
            Underline       =   "False"
            Visible         =   "True"
            Width           =   150
            BehaviorIndex   =   7
         End
         Begin PopupMenu pop_general_language
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   8
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_general"
            InitialValue    =   ""
            Italic          =   "False"
            Left            =   50
            ListIndex       =   0
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   131
            Underline       =   "False"
            Visible         =   "True"
            Width           =   200
            BehaviorIndex   =   8
         End
      End
      Begin GroupBox grp_settings_startmode
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Start Mode"
         ControlOrder    =   9
         Enabled         =   "True"
         Height          =   60
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   "False"
         Left            =   35
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   1
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   162
         Underline       =   "False"
         Visible         =   "True"
         Width           =   235
         BehaviorIndex   =   9
         Begin RadioButton rad_start_songs
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Songs"
            ControlOrder    =   10
            Enabled         =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_startmode"
            Italic          =   "False"
            Left            =   46
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   178
            Underline       =   "False"
            Value           =   "False"
            Visible         =   "True"
            Width           =   205
            BehaviorIndex   =   10
         End
         Begin RadioButton rad_start_sets
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Sets"
            ControlOrder    =   11
            Enabled         =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_startmode"
            Italic          =   "False"
            Left            =   46
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   199
            Underline       =   "False"
            Value           =   "False"
            Visible         =   "True"
            Width           =   205
            BehaviorIndex   =   11
         End
      End
      Begin GroupBox grp_settings_user_defined
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "User Defined Field Names"
         ControlOrder    =   12
         Enabled         =   "True"
         Height          =   178
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   "False"
         Left            =   35
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   1
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   230
         Underline       =   "False"
         Visible         =   "True"
         Width           =   235
         BehaviorIndex   =   12
         Begin StaticText lbl_define_user1
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   13
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_user_defined"
            Italic          =   "False"
            Left            =   50
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            Text            =   "User Defined 1:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   250
            Underline       =   "False"
            Visible         =   "True"
            Width           =   200
            BehaviorIndex   =   13
         End
         Begin StaticText lbl_define_user2
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   15
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_user_defined"
            Italic          =   "False"
            Left            =   50
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            Text            =   "User Defined 2:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   290
            Underline       =   "False"
            Visible         =   "True"
            Width           =   200
            BehaviorIndex   =   14
         End
         Begin StaticText lbl_define_user3
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   17
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_user_defined"
            Italic          =   "False"
            Left            =   50
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            Text            =   "User Defined 3:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   330
            Underline       =   "False"
            Visible         =   "True"
            Width           =   200
            BehaviorIndex   =   15
         End
         Begin PushButton btn_define_load
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Cancel          =   "False"
            Caption         =   "Load Language Defaults"
            ControlOrder    =   19
            Default         =   "False"
            Enabled         =   "True"
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_user_defined"
            Italic          =   "False"
            Left            =   50
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   374
            Underline       =   "False"
            Visible         =   "True"
            Width           =   200
            BehaviorIndex   =   16
         End
      End
      Begin SEditField edt_define_user1
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         Bold            =   "False"
         Border          =   "True"
         ControlOrder    =   14
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   "True"
         Format          =   ""
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   "False"
         Left            =   50
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
         TabPanelIndex   =   1
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   265
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   200
         BehaviorIndex   =   17
      End
      Begin SEditField edt_define_user2
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         Bold            =   "False"
         Border          =   "True"
         ControlOrder    =   16
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   "True"
         Format          =   ""
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   "False"
         Left            =   50
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
         TabPanelIndex   =   1
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   305
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   200
         BehaviorIndex   =   18
      End
      Begin SEditField edt_define_user3
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         Bold            =   "False"
         Border          =   "True"
         ControlOrder    =   18
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   "True"
         Format          =   ""
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   "False"
         Left            =   50
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
         TabPanelIndex   =   1
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   345
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   200
         BehaviorIndex   =   19
      End
      Begin GroupBox grp_settings_fonts
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Fonts"
         ControlOrder    =   20
         Enabled         =   "True"
         Height          =   364
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   "False"
         Left            =   361
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   1
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   44
         Underline       =   "False"
         Visible         =   "True"
         Width           =   221
         BehaviorIndex   =   20
         Begin StaticText lbl_fonts_headings
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   21
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Italic          =   "False"
            Left            =   378
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            Text            =   "Headings:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   62
            Underline       =   "False"
            Visible         =   "True"
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
            Left            =   378
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   1
            TextFont        =   "System"
            TextSize        =   0
            Top             =   77
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   195
            BehaviorIndex   =   22
         End
         Begin StaticText lbl_fonts_labels
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   23
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Italic          =   "False"
            Left            =   378
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            Text            =   "Labels:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   112
            Underline       =   "False"
            Visible         =   "True"
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
            Left            =   378
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   1
            TextFont        =   "System"
            TextSize        =   0
            Top             =   127
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   195
            BehaviorIndex   =   24
         End
         Begin StaticText lbl_fonts_text_fields
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   25
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Italic          =   "False"
            Left            =   378
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            Text            =   "Text Fields:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   162
            Underline       =   "False"
            Visible         =   "True"
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
            Left            =   378
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   1
            TextFont        =   "System"
            TextSize        =   0
            Top             =   177
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   195
            BehaviorIndex   =   26
         End
         Begin StaticText lbl_fonts_fixed_width
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   27
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Italic          =   "False"
            Left            =   378
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            Text            =   "Fixed-width Text:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   212
            Underline       =   "False"
            Visible         =   "True"
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
            Left            =   378
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   1
            TextFont        =   "System"
            TextSize        =   0
            Top             =   227
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   195
            BehaviorIndex   =   28
         End
         Begin StaticText lbl_fonts_buttons
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   29
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Italic          =   "False"
            Left            =   378
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            Text            =   "Buttons:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   262
            Underline       =   "False"
            Visible         =   "True"
            Width           =   120
            BehaviorIndex   =   29
         End
         Begin StaticText lbl_fonts_large_headings
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   31
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Italic          =   "False"
            Left            =   378
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            Text            =   "Large Headings:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   311
            Underline       =   "False"
            Visible         =   "True"
            Width           =   120
            BehaviorIndex   =   30
         End
         Begin SFontCanvas can_fonts_large_headings
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AdvancedOptions =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   32
            Enabled         =   "True"
            EraseBackground =   "True"
            Height          =   45
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Left            =   377
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   1
            TextFont        =   "System"
            TextSize        =   0
            Top             =   327
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   195
            BehaviorIndex   =   31
         End
         Begin CheckBox chk_general_newpaint
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Use new control design"
            ControlOrder    =   33
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Italic          =   "False"
            Left            =   378
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Scope           =   0
            TabPanelIndex   =   1
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   378
            Underline       =   "False"
            Value           =   "False"
            Visible         =   "True"
            Width           =   134
            BehaviorIndex   =   32
         End
      End
      Begin SFontCanvas can_fonts_buttons
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   30
         Enabled         =   "True"
         EraseBackground =   "True"
         Height          =   30
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Left            =   378
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   1
         TextFont        =   "System"
         TextSize        =   0
         Top             =   277
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   195
         BehaviorIndex   =   33
      End
      Begin GroupBox grp_settings_documents_folder
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Documents Folder"
         ControlOrder    =   34
         Enabled         =   "True"
         Height          =   203
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   "False"
         Left            =   34
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   2
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   52
         Underline       =   "False"
         Visible         =   "True"
         Width           =   255
         BehaviorIndex   =   34
         Begin StaticText nte_documents_warning
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   35
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   27
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_documents_folder"
            Italic          =   "False"
            Left            =   49
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "True"
            Scope           =   0
            TabPanelIndex   =   2
            Text            =   "(use with caution; forces restart)"
            TextAlign       =   0
            TextColor       =   16711680
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   70
            Underline       =   "False"
            Visible         =   "True"
            Width           =   205
            BehaviorIndex   =   35
         End
         Begin RadioButton rad_documents_default
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Default"
            ControlOrder    =   36
            Enabled         =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_documents_folder"
            Italic          =   "False"
            Left            =   49
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Scope           =   0
            TabPanelIndex   =   2
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   97
            Underline       =   "False"
            Value           =   "True"
            Visible         =   "True"
            Width           =   205
            BehaviorIndex   =   36
         End
         Begin RadioButton rad_documents_custom
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Custom:"
            ControlOrder    =   37
            Enabled         =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_documents_folder"
            Italic          =   "False"
            Left            =   49
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Scope           =   0
            TabPanelIndex   =   2
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   117
            Underline       =   "False"
            Value           =   "False"
            Visible         =   "True"
            Width           =   205
            BehaviorIndex   =   37
         End
         Begin StaticText nte_folder_folder
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   38
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   31
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_documents_folder"
            Italic          =   "False"
            Left            =   49
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "True"
            Scope           =   0
            TabPanelIndex   =   2
            Text            =   "\\"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   145
            Underline       =   "False"
            Visible         =   "True"
            Width           =   240
            BehaviorIndex   =   38
         End
         Begin PushButton btn_browse
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Cancel          =   "False"
            Caption         =   "Browse..."
            ControlOrder    =   39
            Default         =   "False"
            Enabled         =   "False"
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_documents_folder"
            Italic          =   "False"
            Left            =   97
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Scope           =   0
            TabPanelIndex   =   2
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   184
            Underline       =   "False"
            Visible         =   "True"
            Width           =   120
            BehaviorIndex   =   39
         End
         Begin Checkbox chk_documents_oldfolderdb
            AutoDeactivate  =   "True"
            Bold            =   ""
            Caption         =   "Use Pre-V1.1 FolderDB cache"
            ControlOrder    =   40
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_documents_folder"
            Italic          =   ""
            Left            =   50
            LockBottom      =   ""
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            TabPanelIndex   =   2
            TextFont        =   "System"
            TextSize        =   10
            Top             =   218
            Underline       =   ""
            Value           =   ""
            Visible         =   "True"
            Width           =   214
            BehaviorIndex   =   40
         End
      End
      Begin GroupBox grp_settings_logging
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "Logging"
         ControlOrder    =   41
         Enabled         =   "True"
         Height          =   131
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   ""
         Left            =   34
         LockBottom      =   ""
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabPanelIndex   =   2
         TextFont        =   "SmallSystem"
         TextSize        =   0
         Top             =   267
         Underline       =   ""
         Visible         =   "True"
         Width           =   255
         BehaviorIndex   =   41
         Begin StaticText lbl_logging_level
            AutoDeactivate  =   "True"
            Bold            =   ""
            ControlOrder    =   42
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_logging"
            Italic          =   ""
            Left            =   48
            LockBottom      =   ""
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Multiline       =   ""
            Scope           =   0
            TabPanelIndex   =   2
            Text            =   "Log level (0-10)"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "SmallSystem"
            TextSize        =   0
            Top             =   290
            Underline       =   ""
            Visible         =   "True"
            Width           =   226
            BehaviorIndex   =   42
         End
         Begin PopupMenu pop_logging_level
            AutoDeactivate  =   "True"
            Bold            =   ""
            ControlOrder    =   43
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_logging"
            InitialValue    =   "Disabled\r1 (Info)\r2\r3 (Warn)\r4 (Debug)\r5\r6\r7\r8\r9 (Detailed)\r10"
            Italic          =   ""
            Left            =   48
            ListIndex       =   0
            LockBottom      =   ""
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            TabPanelIndex   =   2
            TextFont        =   "System"
            TextSize        =   0
            Top             =   310
            Underline       =   ""
            Visible         =   "True"
            Width           =   226
            BehaviorIndex   =   43
         End
         Begin Checkbox chk_logging_console
            AutoDeactivate  =   "True"
            Bold            =   ""
            Caption         =   "Log to system console"
            ControlOrder    =   44
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_logging"
            Italic          =   ""
            Left            =   48
            LockBottom      =   ""
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            TabPanelIndex   =   2
            TextFont        =   "SmallSystem"
            TextSize        =   0
            Top             =   342
            Underline       =   ""
            Value           =   ""
            Visible         =   "True"
            Width           =   226
            BehaviorIndex   =   44
         End
         Begin Checkbox chk_logging_append
            AutoDeactivate  =   "True"
            Bold            =   ""
            Caption         =   "Append to logfile"
            ControlOrder    =   45
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_logging"
            Italic          =   ""
            Left            =   48
            LockBottom      =   ""
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            TabPanelIndex   =   2
            TextFont        =   "SmallSystem"
            TextSize        =   0
            Top             =   363
            Underline       =   ""
            Value           =   ""
            Visible         =   "True"
            Width           =   226
            BehaviorIndex   =   45
         End
      End
      Begin GroupBox grp_settings_proxy
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "HTTP Proxy"
         ControlOrder    =   46
         Enabled         =   "True"
         Height          =   110
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   "False"
         Left            =   320
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   2
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   52
         Underline       =   "False"
         Visible         =   "True"
         Width           =   174
         BehaviorIndex   =   46
         Begin StaticText lbl_proxy_host
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   47
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_proxy"
            Italic          =   "False"
            Left            =   335
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            Scope           =   0
            TabPanelIndex   =   2
            Text            =   "Server:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   72
            Underline       =   "False"
            Visible         =   "True"
            Width           =   120
            BehaviorIndex   =   47
         End
         Begin SEditField edt_proxy_host
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   48
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_proxy"
            Italic          =   "False"
            Left            =   335
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
            TabPanelIndex   =   2
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   89
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   134
            BehaviorIndex   =   48
         End
         Begin StaticText lbl_proxy_port
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   49
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_proxy"
            Italic          =   "False"
            Left            =   335
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            Scope           =   0
            TabPanelIndex   =   2
            Text            =   "Port:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   112
            Underline       =   "False"
            Visible         =   "True"
            Width           =   120
            BehaviorIndex   =   49
         End
         Begin SEditField edt_proxy_port
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   50
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_proxy"
            Italic          =   "False"
            Left            =   335
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
            TabPanelIndex   =   2
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   129
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   50
            BehaviorIndex   =   50
         End
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
		  
		  Init = True
		  edt_general_ccli.Text = SmartML.GetValue(App.MyMainSettings.DocumentElement, "ccli/@number")
		  chk_general_version_check.Value = SmartML.GetValueB(App.MyMainSettings.DocumentElement, "version/@check", False)
		  edt_proxy_host.Text = SmartML.GetValue(App.MyMainSettings.DocumentElement, "proxy/@host")
		  edt_proxy_port.Text = SmartML.GetValue(App.MyMainSettings.DocumentElement, "proxy/@port")
		  
		  //++
		  // EMP, July 2007
		  // Simplified this logic a little since there is now a way to return FolderItem from preferences
		  //--
		  DocsFolder = App.MainPreferences.GetValueFI(Prefs.kDocumentsFolder, DefaultDocsFolder, True)
		  rad_documents_default.Value = (DocsFolder.URLPath = DefaultDocsFolder.URLPath)
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
		  
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "startmode/@sets", True)
		  if s = "1" then rad_start_sets.Value = True Else rad_start_songs.Value = True
		  
		  // Select which SButton.Paint to use
		  
		  chk_general_newpaint.Value = SmartML.GetValueB(App.MyMainSettings.DocumentElement, "paint/@new", True, False)
		  //--
		  App.CenterInControlScreen Me
		  
		  '++JRC Display DocsFolder Location
		  nte_folder_folder.Text = DocsFolder.FormatFolderName
		  '--
		  //++ EMP July 2007
		  // Add FolderDB flag
		  chk_documents_oldfolderdb.Value = App.MainPreferences.GetValueB(Prefs.kUseOldFolderDB)
		  
		  SetupLogfileSettings
		  Init = False
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

	#tag Method, Flags = &h1
		Protected Sub SetupLogfileSettings()
		  logFileSaved = App.MainPreferences.GetValueFI(App.kLogOutput)
		  logLevelSaved = App.MainPreferences.GetValueN(App.kLogLevel)
		  logToConsoleSaved = App.MainPreferences.GetValueB(App.kLogOutput + App.kLogConsole, True)
		  logAppend = App.MainPreferences.GetValueB(App.kLogOutput + App.kLogAppend, False)
		  
		  chk_logging_console.State = logToConsoleSaved
		  chk_logging_append.State = logAppend
		  
		  pop_logging_level.DeleteAllRows
		  
		  pop_logging_level.AddRow(App.T.Translate("general_settings/logging/level/@disabled"))
		  
		  For i As Integer = App.DebugWriter.MINDEBUGLEVEL To App.DebugWriter.MAXDEBUGLEVEL
		    pop_logging_level.AddRow CStr(i)
		  Next
		  
		  If App.DebugWriter.Enabled Then
		    pop_logging_level.ListIndex = logLevelSaved - App.DebugWriter.MINDEBUGLEVEL + 1
		  Else
		    pop_logging_level.ListIndex = 0
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SaveLogfileSettings()
		  Dim needReInit As Boolean = False
		  
		  If chk_logging_append.Value <> logAppend Then
		    App.MainPreferences.SetValueB(App.kLogOutput + App.kLogAppend, chk_logging_append.Value)
		  End If
		  
		  If chk_logging_console.Value <> logToConsoleSaved Then
		    App.MainPreferences.SetValueB(App.kLogOutput + App.kLogConsole, chk_logging_console.Value)
		    needReInit = True
		    If chk_logging_console.Value Then
		      App.MainPreferences.SetValueFI(App.kLogOutput, Nil)
		    End If
		  End If
		  
		  If logFileNew <> logFileSaved Then
		    App.MainPreferences.SetValueFI(App.kLogOutput, logFileNew)
		    needReInit = True
		  End If
		  
		  If logLevelSaved <> CDbl(pop_logging_level.Text) Then
		    App.MainPreferences.SetValueN(App.kLogLevel, CDbl(pop_logging_level.Text))
		  End If
		  
		  If needReInit Then
		    App.DebugWriter.SetOutput(logFileNew, chk_logging_append.Value)
		  End If
		  
		  Dim logLevelNew As Integer
		  If pop_logging_level.ListIndex = 0 Then
		    logLevelNew = App.DebugWriter.MINDEBUGLEVEL - 1
		  Else
		    logLevelNew = pop_logging_level.Text.CDbl
		  End If
		  
		  '++JRC Lets save the new log level (Sleepy time Ed ;)
		  App.MainPreferences.SetValueN(App.kLogLevel, logLevelNew)
		  
		  App.DebugWriter.Level = logLevelNew
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

	#tag Property, Flags = &h1
		Protected logFileSaved As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected logLevelSaved As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected logToConsoleSaved As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected logAppend As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected logFileNew As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Init As Boolean
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
		  
		  SaveLogfileSettings
		  
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
#tag Events rad_documents_default
	#tag Event
		Sub Action()
		  btn_browse.Enabled = False
		  
		  If NewDocsFolder = Nil Then
		    If DocsFolder.URLPath <> DefaultDocsFolder.URLPath Then
		      NewDocsFolder = DefaultDocsFolder
		      nte_folder_folder.Text = NewDocsFolder.FormatFolderName
		    End If
		  Else
		    NewDocsFolder = DefaultDocsFolder
		    nte_folder_folder.Text = NewDocsFolder.FormatFolderName
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
		  
		  nte_folder_folder.Text = NewDocsFolder.FormatFolderName
		  // Is this the default?
		  rad_documents_default.Value = (NewDocsFolder.URLPath = DefaultDocsFolder.URLPath)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_logging_level
	#tag Event
		Sub Change()
		  Dim enabled As Boolean
		  
		  enabled = (Me.ListIndex > 0)
		  
		  chk_logging_append.Enabled = enabled
		  chk_logging_console.Enabled = enabled
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_logging_console
	#tag Event
		Sub Action()
		  //++
		  // If the user deselects output to the console,
		  // prompt for the log file using the last logfile
		  // as the default.
		  //--
		  If Init Then Return
		  If Me.Value Then
		    logFileNew = Nil
		    Return
		  End If
		  
		  Dim dlg As New SaveAsDialog
		  Dim logType As New FileType
		  Dim f As FolderItem
		  
		  logType.Name = "Log files"
		  logType.Extensions = "log;txt"
		  
		  dlg.ActionButtonCaption = App.T.Translate("shared/select/@caption")
		  dlg.CancelButtonCaption = App.T.Translate("shared/cancel/@caption")
		  dlg.Filter = logType
		  If Not (logFileSaved Is Nil) Then
		    dlg.InitialDirectory = logFileSaved.Parent
		    dlg.SuggestedFileName = logFileSaved.Name
		  Else
		    dlg.InitialDirectory = DocumentsFolder
		    dlg.SuggestedFileName = "OpenSong.log"
		  End If
		  
		  dlg.PromptText = App.T.Translate("general_settings/logging/dialog/@caption")
		  dlg.Title = App.T.Translate("general_settings/logging/dialog/@title")
		  
		  f = dlg.ShowModalWithin(Self)
		  
		  If (f Is Nil) Then
		    If (logFileNew Is Nil) Then
		      If (logFileSaved Is Nil) Then
		        Me.Value = True
		      Else
		        logFileNew = logFileSaved
		      End If
		    End If
		  Else
		    logFileNew = f
		  End If
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
