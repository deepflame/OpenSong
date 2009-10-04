#tag Window
Begin Window MainSettingsWindow
   BackColor       =   16777215
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   482
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "General Settings"
   Visible         =   True
   Width           =   619
   Begin PushButton btn_ok
      AutoDeactivate  =   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   401
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   449
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   509
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   449
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin TabPanel tab_general_general
      AutoDeactivate  =   True
      Bold            =   ""
      Enabled         =   True
      Height          =   430
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   ""
      TabDefinition   =   "Basic configuration\rFile locations\rSystem"
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   7
      Underline       =   ""
      Value           =   1
      Visible         =   True
      Width           =   579
      Begin GroupBox grp_settings_general
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "General"
         Enabled         =   True
         Height          =   130
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   False
         Left            =   35
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   44
         Underline       =   False
         Visible         =   True
         Width           =   250
         Begin StaticText lbl_general_ccli
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_general"
            Italic          =   False
            Left            =   51
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            Text            =   "Church CCLI License"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "System"
            TextSize        =   0
            Top             =   58
            Underline       =   False
            Visible         =   True
            Width           =   215
         End
         Begin TextField edt_general_ccli
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_general"
            Italic          =   False
            Left            =   51
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   73
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   120
         End
         Begin CheckBox chk_general_version_check
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Check for newer versions on startup"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_general"
            Italic          =   False
            Left            =   50
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            Top             =   102
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   220
         End
         Begin StaticText lbl_general_language
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_general"
            Italic          =   False
            Left            =   50
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            Text            =   "Language:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "System"
            TextSize        =   0
            Top             =   128
            Underline       =   False
            Visible         =   True
            Width           =   150
         End
         Begin PopupMenu pop_general_language
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_general"
            InitialValue    =   ""
            Italic          =   False
            Left            =   50
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   145
            Underline       =   False
            Visible         =   True
            Width           =   200
         End
      End
      Begin GroupBox grp_settings_user_defined
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "User Defined Field Names"
         Enabled         =   True
         Height          =   178
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   False
         Left            =   35
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   1
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   230
         Underline       =   False
         Visible         =   True
         Width           =   250
         Begin StaticText lbl_define_user1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_user_defined"
            Italic          =   False
            Left            =   50
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            Text            =   "User Defined 1:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   250
            Underline       =   False
            Visible         =   True
            Width           =   200
         End
         Begin SEditField edt_define_user1
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_user_defined"
            Italic          =   False
            Left            =   50
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   265
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   200
         End
         Begin StaticText lbl_define_user2
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_user_defined"
            Italic          =   False
            Left            =   50
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            Text            =   "User Defined 2:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   290
            Underline       =   False
            Visible         =   True
            Width           =   200
         End
         Begin SEditField edt_define_user2
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_user_defined"
            Italic          =   False
            Left            =   50
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   305
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   200
         End
         Begin SEditField edt_define_user3
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_user_defined"
            Italic          =   False
            Left            =   50
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   345
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   200
         End
         Begin StaticText lbl_define_user3
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_user_defined"
            Italic          =   False
            Left            =   50
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   1
            Text            =   "User Defined 3:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   330
            Underline       =   False
            Visible         =   True
            Width           =   200
         End
         Begin PushButton btn_define_load
            AutoDeactivate  =   True
            Bold            =   False
            Cancel          =   False
            Caption         =   "Load Language Defaults"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_user_defined"
            Italic          =   False
            Left            =   50
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   374
            Underline       =   False
            Visible         =   True
            Width           =   200
         End
      End
      Begin GroupBox grp_settings_fonts
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Fonts"
         Enabled         =   True
         Height          =   364
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   False
         Left            =   361
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   44
         Underline       =   False
         Visible         =   True
         Width           =   221
         Begin StaticText lbl_fonts_text_fields
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Italic          =   False
            Left            =   378
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            Text            =   "Text Fields:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   162
            Underline       =   False
            Visible         =   True
            Width           =   120
         End
         Begin StaticText lbl_fonts_fixed_width
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Italic          =   False
            Left            =   378
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            Text            =   "Fixed-width Text:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   212
            Underline       =   False
            Visible         =   True
            Width           =   120
         End
         Begin SFontCanvas can_fonts_headings
            AcceptFocus     =   False
            AcceptMouseDown =   true
            AcceptTabs      =   False
            AdvancedOptions =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Left            =   378
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   77
            UseFocusRing    =   True
            Visible         =   True
            Width           =   195
         End
         Begin StaticText lbl_fonts_buttons
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Italic          =   False
            Left            =   378
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            Text            =   "Buttons:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   262
            Underline       =   False
            Visible         =   True
            Width           =   120
         End
         Begin SFontCanvas can_fonts_labels
            AcceptFocus     =   False
            AcceptMouseDown =   true
            AcceptTabs      =   False
            AdvancedOptions =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Left            =   378
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   127
            UseFocusRing    =   True
            Visible         =   True
            Width           =   195
         End
         Begin StaticText lbl_fonts_large_headings
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Italic          =   False
            Left            =   378
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   1
            Text            =   "Large Headings:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   311
            Underline       =   False
            Visible         =   True
            Width           =   120
         End
         Begin SFontCanvas can_fonts_text_fields
            AcceptFocus     =   False
            AcceptMouseDown =   true
            AcceptTabs      =   False
            AdvancedOptions =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Left            =   378
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   177
            UseFocusRing    =   True
            Visible         =   True
            Width           =   195
         End
         Begin CheckBox chk_general_newpaint
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Use new control design"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Italic          =   False
            Left            =   378
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   7
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   378
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   134
         End
         Begin SFontCanvas can_fonts_fixed_width
            AcceptFocus     =   False
            AcceptMouseDown =   true
            AcceptTabs      =   False
            AdvancedOptions =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Left            =   378
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   227
            UseFocusRing    =   True
            Visible         =   True
            Width           =   195
         End
         Begin StaticText lbl_fonts_labels
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Italic          =   False
            Left            =   378
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   9
            TabPanelIndex   =   1
            Text            =   "Labels:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   112
            Underline       =   False
            Visible         =   True
            Width           =   120
         End
         Begin StaticText lbl_fonts_headings
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Italic          =   False
            Left            =   378
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   10
            TabPanelIndex   =   1
            Text            =   "Headings:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   62
            Underline       =   False
            Visible         =   True
            Width           =   120
         End
         Begin SFontCanvas can_fonts_buttons
            AcceptFocus     =   False
            AcceptMouseDown =   true
            AcceptTabs      =   False
            AdvancedOptions =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Left            =   378
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   11
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   277
            UseFocusRing    =   True
            Visible         =   True
            Width           =   195
         End
         Begin SFontCanvas can_fonts_large_headings
            AcceptFocus     =   False
            AcceptMouseDown =   true
            AcceptTabs      =   False
            AdvancedOptions =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   45
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_fonts"
            Left            =   377
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   12
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   327
            UseFocusRing    =   True
            Visible         =   True
            Width           =   195
         End
      End
      Begin GroupBox grp_settings_documents_folder
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Documents Folder"
         Enabled         =   True
         Height          =   203
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   False
         Left            =   34
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   2
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   44
         Underline       =   False
         Visible         =   True
         Width           =   235
         Begin RadioButton rad_documents_default
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Default"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_documents_folder"
            Italic          =   False
            Left            =   49
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   89
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   205
         End
         Begin RadioButton rad_documents_custom
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Custom:"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_documents_folder"
            Italic          =   False
            Left            =   49
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   109
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   205
         End
         Begin StaticText nte_folder_folder
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   31
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_documents_folder"
            Italic          =   False
            Left            =   49
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            Text            =   "\\"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   137
            Underline       =   False
            Visible         =   True
            Width           =   211
         End
         Begin PushButton btn_browse
            AutoDeactivate  =   True
            Bold            =   False
            Cancel          =   False
            Caption         =   "Browse..."
            Default         =   False
            Enabled         =   False
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_documents_folder"
            Italic          =   False
            Left            =   90
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   176
            Underline       =   False
            Visible         =   True
            Width           =   120
         End
         Begin StaticText nte_documents_warning
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   27
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_documents_folder"
            Italic          =   False
            Left            =   49
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   True
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   2
            Text            =   "(use with caution; forces restart)"
            TextAlign       =   0
            TextColor       =   16711680
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   62
            Underline       =   False
            Visible         =   True
            Width           =   205
         End
         Begin Checkbox chk_documents_oldfolderdb
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Use Pre-V1.1 FolderDB cache"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_documents_folder"
            Italic          =   ""
            Left            =   50
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            State           =   0
            TabIndex        =   5
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   10
            Top             =   210
            Underline       =   ""
            Value           =   False
            Visible         =   True
            Width           =   204
         End
      End
      Begin GroupBox grp_settings_startmode
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Start Mode"
         Enabled         =   True
         Height          =   40
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   False
         Left            =   35
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   182
         Underline       =   False
         Visible         =   True
         Width           =   250
         Begin RadioButton rad_start_songs
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Songs"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_startmode"
            Italic          =   False
            Left            =   46
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   198
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   110
         End
         Begin RadioButton rad_start_sets
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Sets"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_startmode"
            Italic          =   False
            Left            =   165
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   198
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   110
         End
      End
      Begin GroupBox grp_settings_logging
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Logging"
         Enabled         =   True
         Height          =   154
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   ""
         Left            =   34
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   3
         TextFont        =   "SmallSystem"
         TextSize        =   0
         Top             =   44
         Underline       =   ""
         Visible         =   True
         Width           =   235
         Begin StaticText lbl_logging_level
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_logging"
            Italic          =   ""
            Left            =   48
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Multiline       =   ""
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   3
            Text            =   "Log level (0-10)"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "SmallSystem"
            TextSize        =   0
            Top             =   65
            Underline       =   ""
            Visible         =   True
            Width           =   206
         End
         Begin Checkbox chk_logging_console
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Log to system console"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_logging"
            Italic          =   ""
            Left            =   48
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "SmallSystem"
            TextSize        =   0
            Top             =   119
            Underline       =   ""
            Value           =   False
            Visible         =   True
            Width           =   206
         End
         Begin PopupMenu pop_logging_level
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_logging"
            InitialValue    =   "Disabled\r1 (Info)\r2\r3 (Warn)\r4 (Debug)\r5\r6\r7\r8\r9 (Detailed)\r10"
            Italic          =   ""
            Left            =   48
            ListIndex       =   0
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            Top             =   87
            Underline       =   ""
            Visible         =   True
            Width           =   206
         End
         Begin Checkbox chk_logging_append
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Append to logfile"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_logging"
            Italic          =   ""
            Left            =   48
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            State           =   0
            TabIndex        =   3
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "SmallSystem"
            TextSize        =   0
            Top             =   140
            Underline       =   ""
            Value           =   False
            Visible         =   True
            Width           =   206
         End
      End
      Begin GroupBox grp_settings_imagequality
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Set Image Quality"
         Enabled         =   True
         Height          =   241
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   ""
         Left            =   295
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   3
         TextFont        =   "System"
         TextSize        =   0
         Top             =   44
         Underline       =   ""
         Visible         =   True
         Width           =   280
         Begin StaticText txt_imagequality_note
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   120
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_imagequality"
            Italic          =   ""
            Left            =   310
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Multiline       =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   3
            Text            =   "OpenSong tries to store the images that are used in a set in JPEG format. The items below control the quality and behaviour of image storage. The quality slider below will be disabled if QuickTime is not installed as OpenSong depends on that for storing JPEG images in user selectable quality."
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "System"
            TextSize        =   0
            Top             =   65
            Underline       =   ""
            Visible         =   True
            Width           =   250
         End
         Begin CheckBox chk_imagequality_extern
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Do not include images from backgrounds"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_imagequality"
            Italic          =   ""
            Left            =   310
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            Top             =   233
            Underline       =   ""
            Value           =   False
            Visible         =   True
            Width           =   250
         End
         Begin PopupMenu pop_imagequality_compression
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_imagequality"
            InitialValue    =   "Full, minimum quality\r\nHigh, low quality\r\nMedium, normal quality\r\nLittle, high quality\r\nLow, maximum quality\r\nNone, lossless"
            Italic          =   ""
            Left            =   310
            ListIndex       =   0
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            Top             =   206
            Underline       =   ""
            Visible         =   True
            Width           =   250
         End
         Begin StaticText lbl_imagequality_compression
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_imagequality"
            Italic          =   ""
            Left            =   310
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Multiline       =   ""
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   3
            Text            =   "Image compression:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "System"
            TextSize        =   0
            Top             =   189
            Underline       =   ""
            Visible         =   True
            Width           =   250
         End
      End
      Begin GroupBox grp_settings_proxy
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "HTTP Proxy"
         Enabled         =   True
         Height          =   70
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   False
         Left            =   34
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   3
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   215
         Underline       =   False
         Visible         =   True
         Width           =   235
         Begin SEditField edt_proxy_port
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_proxy"
            Italic          =   False
            Left            =   195
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   0
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "SmallSystem"
            TextSize        =   0
            Top             =   258
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   50
         End
         Begin StaticText lbl_proxy_port
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_proxy"
            Italic          =   False
            Left            =   195
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   3
            Text            =   "Port:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "SmallSystem"
            TextSize        =   0
            Top             =   238
            Underline       =   False
            Visible         =   True
            Width           =   63
         End
         Begin SEditField edt_proxy_host
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_proxy"
            Italic          =   False
            Left            =   49
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   2
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "SmallSystem"
            TextSize        =   0
            Top             =   258
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   134
         End
         Begin StaticText lbl_proxy_host
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_proxy"
            Italic          =   False
            Left            =   49
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   3
            Text            =   "Server:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "SmallSystem"
            TextSize        =   0
            Top             =   238
            Underline       =   False
            Visible         =   True
            Width           =   120
         End
      End
      Begin GroupBox grp_activity_log
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Activity Log Settings"
         Enabled         =   True
         Height          =   72
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   ""
         Left            =   34
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   3
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   309
         Underline       =   ""
         Visible         =   True
         Width           =   235
         Begin CheckBox chk_logging_enable
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Enable Logging"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_activity_log"
            Italic          =   ""
            Left            =   44
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            State           =   0
            TabIndex        =   0
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            Top             =   331
            Underline       =   ""
            Value           =   False
            Visible         =   True
            Width           =   214
         End
         Begin CheckBox chk_logging_prompt
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Prompt Before Presenting"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_activity_log"
            Italic          =   ""
            Left            =   44
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            Top             =   353
            Underline       =   ""
            Value           =   False
            Visible         =   True
            Width           =   214
         End
      End
      Begin GroupBox grp_settings_applications
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "External applications"
         Enabled         =   True
         Height          =   113
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_general_general"
         Italic          =   ""
         Left            =   295
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   2
         TextFont        =   "SmallSystem"
         TextSize        =   0
         Top             =   44
         Underline       =   ""
         Visible         =   True
         Width           =   280
         Begin StaticText lbl_applications_pptview
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_applications"
            Italic          =   ""
            Left            =   309
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Multiline       =   ""
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            Text            =   "Location of Powerpoint Viewer"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "SmallSystem"
            TextSize        =   0
            Top             =   65
            Underline       =   ""
            Visible         =   True
            Width           =   253
         End
         Begin TextField edt_applications_pptview
            AcceptTabs      =   ""
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   &hFFFFFF
            Bold            =   ""
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_applications"
            Italic          =   ""
            Left            =   309
            LimitText       =   0
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Mask            =   ""
            Multiline       =   ""
            Password        =   ""
            ReadOnly        =   True
            Scope           =   0
            ScrollbarHorizontal=   ""
            ScrollbarVertical=   True
            Styled          =   ""
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &h000000
            TextFont        =   "System"
            TextSize        =   0
            Top             =   87
            Underline       =   ""
            UseFocusRing    =   True
            Visible         =   True
            Width           =   253
         End
         Begin PushButton btn_applications_pptview_browse
            AutoDeactivate  =   True
            Bold            =   False
            Cancel          =   False
            Caption         =   "Browse..."
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_applications"
            Italic          =   False
            Left            =   375
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   121
            Underline       =   False
            Visible         =   True
            Width           =   120
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
		  
		  PPTViewLocation = App.MainPreferences.GetValueFI(Prefs.kPPTViewLocation, Nil, False)
		  If Not IsNull( PPTViewLocation ) Then
		    edt_applications_pptview.Text = PPTViewLocation.AbsolutePath()
		  End If
		  
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
		  If App.IsPortable Then
		    nte_folder_folder.Text = "Portable Installation"
		  Else
		    nte_folder_folder.Text = DocsFolder.FormatFolderName
		  End If
		  '--
		  //++ EMP July 2007
		  // Add FolderDB flag
		  chk_documents_oldfolderdb.Value = App.MainPreferences.GetValueB(Prefs.kUseOldFolderDB)
		  
		  Dim QualityValue As Integer
		  Dim QualitySetting As ImageQualityEnum
		  Dim QTExporter as QTGraphicsExporter
		  
		  pop_imagequality_compression.DeleteAllRows
		  For i = 0 To UBound(App.ImageQualityList)
		    pop_imagequality_compression.AddRow App.ImageQualityList(i)
		  Next i
		  
		  #If Not TargetLinux
		    QTExporter= GetQTGraphicsExporter("JPEG")
		    pop_imagequality_compression.Enabled = (QTExporter <> Nil)
		  #Else
		    pop_imagequality_compression.Enabled = False
		  #EndIf
		  QualityValue = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "image_quality/@compression", False)
		  QualitySetting = ImageQualityEnum(QualityValue)
		  
		  Select Case QualitySetting
		  Case ImageQualityEnum.FullCompression
		    pop_imagequality_compression.ListIndex = 0
		  Case ImageQualityEnum.HighCompression
		    pop_imagequality_compression.ListIndex = 1
		  Case ImageQualityEnum.LittleCompression
		    pop_imagequality_compression.ListIndex = 3
		  Case ImageQualityEnum.LowCompression
		    pop_imagequality_compression.ListIndex = 4
		  Case ImageQualityEnum.NoCompression
		    pop_imagequality_compression.ListIndex = 5
		  Else
		    pop_imagequality_compression.ListIndex = 2
		  End Select
		  
		  chk_imagequality_extern.Value = SmartML.GetValueB(App.MyMainSettings.DocumentElement, "image_quality/@exclude_backgrounds", False)
		  
		  SetupLogfileSettings
		  Init = False
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor()
		  If App.IsPortable Then
		    rad_documents_default.Enabled = false
		    rad_documents_custom.Enabled = false
		    btn_browse.Enabled = false
		  End If
		  DefaultDocsFolder = App.AppDocumentsFolderForOpenSong
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
		  
		  '++JRC Comatibilty with RB 2009
		  chk_logging_console.Value = logToConsoleSaved
		  chk_logging_append.Value = logAppend
		  
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
		  
		  '++JRC This looks like a good place to load the song activity settings as well
		  'Lets set logging to enabled by default
		  ActivityLogEnabled =  App.MainPreferences.GetValueB(App.kActivityLog, True)
		  'Lets set Prompting to disabled by default
		  PromptBeforePresenting =  App.MainPreferences.GetValueB(App.kPromptBeforePresenting, False)
		  
		  '++JRC Comatibilty with RB 2009
		  chk_logging_enable.Value = ActivityLogEnabled
		  chk_logging_prompt.Value = PromptBeforePresenting
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
		  
		  '++JRC This looks like a good place to save the song activity logging settings as well
		  If chk_logging_enable.Value <> ActivityLogEnabled Then
		    App.MainPreferences.SetValueB(App.kActivityLog, chk_logging_enable.Value)
		  End If
		  If chk_logging_prompt.Value <> PromptBeforePresenting Then
		    App.MainPreferences.SetValueB(App.kPromptBeforePresenting, chk_logging_prompt.Value)
		  End If
		  
		  '++JRC
		  'Load in the Song Activity Log if not already loaded
		  'This eliminates the the need for a restart
		  '++JRC Load Song Activity Log so the user can view the log
		  'reguardless of whether logging is enabled or not
		  If Globals.SongActivityLog = Nil Then
		    Globals.SongActivityLog = New ActivityLog
		    'TODO Decide where we want to store the log file
		    '+++EMP Use FolderItem and .Child instead of AbsolutePath
		    If NOT Globals.SongActivityLog.Load(DocsFolder.Child("Settings").Child("ActivityLog.xml")) Then
		      MsgBox  App.T.Translate("errors/activity_disabled")  '++JRC Translated
		      Globals.SongActivityLog = Nil
		    End If
		  End If
		  '--
		  
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

	#tag Property, Flags = &h1
		Protected ActivityLogEnabled As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected PromptBeforePresenting As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected PPTViewLocation As FolderItem = Nil
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
		  If Not T.IsLoaded Then
		    T = Nil
		  End If
		  If T <> Nil Then
		    App.T = T
		    'save language selection in globals
		    'SmartML.SetValue App.MyGlobals.DocumentElement, "language/@file", pop_general_language.Text
		    App.MainPreferences.SetValue(Prefs.kLanguage, pop_general_language.Text)
		    MainWindow.TranslateMe
		    App.TranslateMe
		  Else
		    InputBox.Message "Error in translation. " + SmartML.GetErrorMessage()
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
		  
		  SmartML.SetValueN(App.MyMainSettings.DocumentElement, "image_quality/@compression", pop_imagequality_compression.ListIndex+1)
		  SmartML.SetValueB(App.MyMainSettings.DocumentElement, "image_quality/@exclude_backgrounds", chk_imagequality_extern.Value)
		  
		  SaveLogfileSettings
		  App.MainPreferences.SetValueFI(Prefs.kPPTViewLocation, PPTViewLocation)
		  
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
		    dlg.InitialDirectory = App.AppDocumentsFolder
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
#tag Events btn_applications_pptview_browse
	#tag Event
		Sub Action()
		  Dim dlg As New OpenDialog
		  
		  #If TargetLinux
		    dlg.InitialDirectory = SpecialFolder.Bin
		  #Else
		    dlg.InitialDirectory = SpecialFolder.Applications
		  #EndIf
		  
		  Dim NewPPTViewLocation As FolderItem = dlg.ShowModal
		  If NewPPTViewLocation = Nil Then Return // User cancelled
		  
		  PPTViewLocation = NewPPTViewLocation
		  edt_applications_pptview.Text = PPTViewLocation.AbsolutePath()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
