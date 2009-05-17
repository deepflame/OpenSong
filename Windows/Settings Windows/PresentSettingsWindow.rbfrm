#tag Window
Begin Window PresentSettingsWindow
   BackColor       =   16777215
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   438
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
   Title           =   "Presentation Settings"
   Visible         =   True
   Width           =   672
   Begin PushButton btn_ok
      AutoDeactivate  =   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   514
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   407
      Underline       =   False
      Visible         =   True
      Width           =   70
      BehaviorIndex   =   0
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
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   594
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   407
      Underline       =   False
      Visible         =   True
      Width           =   69
      BehaviorIndex   =   1
   End
   Begin TabPanel tab_present_settings
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   385
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "Styles\rOptions"
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      Top             =   14
      Underline       =   False
      Value           =   1
      Visible         =   True
      Width           =   653
      BehaviorIndex   =   2
      Begin StaticText lbl_style_default_slides
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   48
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         Text            =   "Default Slide Style:"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   65
         Underline       =   False
         Visible         =   True
         Width           =   160
         BehaviorIndex   =   3
      End
      Begin SStyleCanvas can_style_default
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         Enabled         =   True
         EraseBackground =   True
         Height          =   120
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "tab_present_settings"
         Left            =   47
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         SongStyle       =   True
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   80
         UseFocusRing    =   True
         Visible         =   True
         Width           =   160
         BehaviorIndex   =   4
      End
      Begin StaticText nte_style_click_to_change_1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   13
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   True
         Left            =   47
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         Text            =   "(click to change)"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   9
         Top             =   200
         Underline       =   False
         Visible         =   True
         Width           =   160
         BehaviorIndex   =   5
      End
      Begin StaticText lbl_style_scripture_slides
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   253
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   1
         Text            =   "Scripture Slide Style:"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   65
         Underline       =   False
         Visible         =   True
         Width           =   160
         BehaviorIndex   =   6
      End
      Begin SStyleCanvas can_style_scripture
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         Enabled         =   True
         EraseBackground =   True
         Height          =   120
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "tab_present_settings"
         Left            =   254
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         SongStyle       =   False
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   80
         UseFocusRing    =   True
         Visible         =   True
         Width           =   160
         BehaviorIndex   =   7
      End
      Begin StaticText nte_style_click_to_change_2
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   True
         Left            =   254
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   1
         Text            =   "(click to change)"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   9
         Top             =   200
         Underline       =   False
         Visible         =   True
         Width           =   160
         BehaviorIndex   =   8
      End
      Begin GroupBox grp_settings_alerts
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Alerts"
         Enabled         =   True
         Height          =   130
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   38
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   1
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   237
         Underline       =   False
         Visible         =   True
         Width           =   387
         BehaviorIndex   =   9
         Begin StaticText lbl_alerts_align
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_alerts"
            Italic          =   False
            Left            =   46
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            Text            =   "Align:"
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   277
            Underline       =   False
            Visible         =   True
            Width           =   90
            BehaviorIndex   =   10
         End
         Begin SAlignCanvas sal_alerts
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            Enabled         =   True
            EraseBackground =   True
            Height          =   44
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_alerts"
            Left            =   70
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   292
            UseFocusRing    =   True
            Visible         =   True
            Width           =   44
            BehaviorIndex   =   11
         End
         Begin StaticText lbl_alerts_font
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_alerts"
            Italic          =   False
            Left            =   140
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            Text            =   "Font:"
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   258
            Underline       =   False
            Visible         =   True
            Width           =   250
            BehaviorIndex   =   12
         End
         Begin SFontCanvas can_alerts_font
            AcceptFocus     =   False
            AcceptMouseDown =   true
            AcceptTabs      =   False
            AdvancedOptions =   True
            AutoDeactivate  =   True
            Backdrop        =   0
            Enabled         =   True
            EraseBackground =   True
            Height          =   80
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_alerts"
            Left            =   140
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   272
            UseFocusRing    =   True
            Visible         =   True
            Width           =   250
            BehaviorIndex   =   13
         End
      End
      Begin GroupBox grp_option_logo
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Logo"
         Enabled         =   True
         Height          =   302
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   498
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   1
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   65
         Underline       =   False
         Visible         =   True
         Width           =   142
         BehaviorIndex   =   14
         Begin SImageCanvas can_logo
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            bgColor         =   0
            Enabled         =   True
            EraseBackground =   True
            Height          =   60
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_option_logo"
            Left            =   528
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   95
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
            BehaviorIndex   =   15
         End
         Begin StaticText nte_logo_click_to_change_1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_option_logo"
            Italic          =   True
            Left            =   503
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            Text            =   "(click to change)"
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   9
            Top             =   159
            Underline       =   False
            Visible         =   True
            Width           =   137
            BehaviorIndex   =   16
         End
         Begin StaticText nte_logo_right_click_to_clear_1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_option_logo"
            Italic          =   True
            Left            =   503
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            Text            =   "(right-click to clear)"
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   9
            Top             =   172
            Underline       =   False
            Visible         =   True
            Width           =   137
            BehaviorIndex   =   17
         End
         Begin StaticText lbl_logo_mask
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_option_logo"
            Italic          =   False
            Left            =   507
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            Text            =   "Mask:"
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   223
            Underline       =   False
            Visible         =   True
            Width           =   125
            BehaviorIndex   =   18
         End
         Begin SImageCanvas can_logo_mask
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            bgColor         =   0
            Enabled         =   True
            EraseBackground =   True
            Height          =   60
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_option_logo"
            Left            =   528
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   238
            UseFocusRing    =   True
            Visible         =   True
            Width           =   80
            BehaviorIndex   =   19
         End
         Begin StaticText nte_logo_click_to_change_2
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_option_logo"
            Italic          =   True
            Left            =   507
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   True
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   1
            Text            =   "(click to change)"
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   9
            Top             =   302
            Underline       =   False
            Visible         =   True
            Width           =   125
            BehaviorIndex   =   20
         End
         Begin StaticText nte_logo_right_click_to_clear_2
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_option_logo"
            Italic          =   True
            Left            =   507
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   True
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   1
            Text            =   "(right-click to clear)"
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   9
            Top             =   315
            Underline       =   False
            Visible         =   True
            Width           =   125
            BehaviorIndex   =   21
         End
      End
      Begin GroupBox grp_settings_transitions
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Transitions"
         Enabled         =   True
         Height          =   161
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   ""
         Left            =   28
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   2
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   41
         Underline       =   ""
         Visible         =   True
         Width           =   392
         BehaviorIndex   =   22
         Begin CheckBox chk_style_use_transitions
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Use transitions by default"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_transitions"
            Italic          =   False
            Left            =   37
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
            Top             =   58
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   151
            BehaviorIndex   =   23
         End
         Begin StaticText lbl_style_frames
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_transitions"
            Italic          =   False
            Left            =   37
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   2
            Text            =   "Frames"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   82
            Underline       =   False
            Visible         =   True
            Width           =   151
            BehaviorIndex   =   24
         End
         Begin Slider sld_style_frames
            AutoDeactivate  =   True
            Enabled         =   True
            Height          =   16
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_transitions"
            Left            =   37
            LineStep        =   1
            LiveScroll      =   True
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Maximum         =   10
            Minimum         =   0
            PageStep        =   1
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   101
            Value           =   5
            Visible         =   True
            Width           =   112
            BehaviorIndex   =   25
         End
         Begin EditField edt_style_frames
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
            Index           =   2147483648
            InitialParent   =   "grp_settings_transitions"
            Italic          =   False
            Left            =   161
            LimitText       =   2
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   "9#"
            Multiline       =   False
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   3
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   97
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   27
            BehaviorIndex   =   26
         End
         Begin StaticText lbl_style_time
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_transitions"
            Italic          =   False
            Left            =   37
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   2
            Text            =   "Time:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   117
            Underline       =   False
            Visible         =   True
            Width           =   151
            BehaviorIndex   =   27
         End
         Begin Slider sld_style_time
            AutoDeactivate  =   True
            Enabled         =   True
            Height          =   16
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_transitions"
            Left            =   38
            LineStep        =   10
            LiveScroll      =   True
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Maximum         =   1000
            Minimum         =   50
            PageStep        =   20
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   137
            Value           =   100
            Visible         =   True
            Width           =   112
            BehaviorIndex   =   28
         End
         Begin EditField edt_style_time
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
            Index           =   2147483648
            InitialParent   =   "grp_settings_transitions"
            Italic          =   False
            Left            =   150
            LimitText       =   4
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   "99##"
            Multiline       =   False
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   6
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   137
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   38
            BehaviorIndex   =   29
         End
         Begin StaticText txt_style_transition_note
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   131
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_transitions"
            Italic          =   False
            Left            =   202
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   True
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   2
            Text            =   "*Transitions are greatly affected by screen resolution. If you are experiencing slow transitions, consider decreasing the resolution of the monitor that the presentation resides on. Also, if you notice that transitions are not showing up, it may be because your color levels are too low on the presentation monitor."
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   58
            Underline       =   False
            Visible         =   True
            Width           =   204
            BehaviorIndex   =   30
         End
      End
      Begin GroupBox grp_settings_style
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Style"
         Enabled         =   True
         Height          =   181
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   28
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   2
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   205
         Underline       =   False
         Visible         =   True
         Width           =   392
         BehaviorIndex   =   31
         Begin StaticText lbl_style_border_thickness
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_style"
            Italic          =   False
            Left            =   37
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            Text            =   "Border Thickness:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   223
            Underline       =   False
            Visible         =   True
            Width           =   140
            BehaviorIndex   =   32
         End
         Begin EditField edt_style_border_thickness
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
            Index           =   2147483648
            InitialParent   =   "grp_settings_style"
            Italic          =   False
            Left            =   37
            LimitText       =   4
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   "999#"
            Multiline       =   False
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   238
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   50
            BehaviorIndex   =   33
         End
         Begin StaticText lbl_style_initial_mode
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_style"
            Italic          =   False
            Left            =   37
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            Text            =   "Initial Mode:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   262
            Underline       =   False
            Visible         =   True
            Width           =   140
            BehaviorIndex   =   34
         End
         Begin PopupMenu pop_style_initial_mode
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_style"
            InitialValue    =   ""
            Italic          =   False
            Left            =   37
            ListIndex       =   0
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
            Top             =   277
            Underline       =   False
            Visible         =   True
            Width           =   140
            BehaviorIndex   =   35
         End
         Begin StaticText lbl_style_mouse_cursor
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_style"
            Italic          =   False
            Left            =   37
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   2
            Text            =   "Mouse Cursor:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   299
            Underline       =   False
            Visible         =   True
            Width           =   136
            BehaviorIndex   =   36
         End
         Begin CheckBox chk_style_blanks
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Insert blank slides"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_style"
            Italic          =   False
            Left            =   212
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   228
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   176
            BehaviorIndex   =   37
         End
         Begin PopupMenu pop_style_mouse_cursor
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_style"
            InitialValue    =   ""
            Italic          =   False
            Left            =   37
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   314
            Underline       =   False
            Visible         =   True
            Width           =   140
            BehaviorIndex   =   38
         End
         Begin StaticText txt_style_blanks_between
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_style"
            Italic          =   False
            Left            =   232
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   2
            Text            =   "between set items"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   243
            Underline       =   False
            Visible         =   True
            Width           =   161
            BehaviorIndex   =   39
         End
         Begin Canvas nil_blanks
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            Enabled         =   True
            EraseBackground =   True
            Height          =   72
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_style"
            Left            =   212
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   262
            UseFocusRing    =   False
            Visible         =   True
            Width           =   177
            BehaviorIndex   =   40
            Begin StaticText lbl_style_blank_style
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   2147483648
               InitialParent   =   "nil_blanks"
               Italic          =   False
               Left            =   224
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Multiline       =   False
               Scope           =   0
               TabIndex        =   0
               TabPanelIndex   =   2
               Text            =   "Blanks take style of:"
               TextAlign       =   0
               TextColor       =   0
               TextFont        =   "Arial"
               TextSize        =   10
               Top             =   266
               Underline       =   False
               Visible         =   True
               Width           =   164
               BehaviorIndex   =   41
            End
            Begin RadioButton rad_style_blank_prev
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Previous slide"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   2147483648
               InitialParent   =   "nil_blanks"
               Italic          =   False
               Left            =   224
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
               Top             =   285
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   164
               BehaviorIndex   =   42
            End
            Begin RadioButton rad_style_blank_next
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Next slide"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   2147483648
               InitialParent   =   "nil_blanks"
               Italic          =   False
               Left            =   224
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
               Top             =   308
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   164
               BehaviorIndex   =   43
            End
         End
      End
      Begin GroupBox grp_settings_monitor
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Monitor Settings"
         Enabled         =   True
         Height          =   161
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   432
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   10
         TabPanelIndex   =   2
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   41
         Underline       =   False
         Visible         =   True
         Width           =   208
         BehaviorIndex   =   44
         Begin StaticText lbl_monitor_presentation
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_monitor"
            Italic          =   False
            Left            =   447
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            Text            =   "Presentation Monitor:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   95
            Underline       =   False
            Visible         =   True
            Width           =   130
            BehaviorIndex   =   45
         End
         Begin PopupMenu pop_monitor_presentation
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_monitor"
            InitialValue    =   "1\r\n2"
            Italic          =   False
            Left            =   447
            ListIndex       =   1
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
            Top             =   110
            Underline       =   False
            Visible         =   True
            Width           =   40
            BehaviorIndex   =   46
         End
         Begin StaticText nte_monitor_detected
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_monitor"
            Italic          =   True
            Left            =   442
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            Text            =   "(1 monitor(s) detected.)"
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   135
            Underline       =   False
            Visible         =   True
            Width           =   130
            BehaviorIndex   =   47
         End
         Begin PopupMenu pop_monitor_control
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_monitor"
            InitialValue    =   "1\r\n2"
            Italic          =   False
            Left            =   447
            ListIndex       =   0
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
            Top             =   70
            Underline       =   False
            Visible         =   True
            Width           =   40
            BehaviorIndex   =   48
         End
         Begin StaticText lbl_monitor_control
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_monitor"
            Italic          =   False
            Left            =   447
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   2
            Text            =   "Control Monitor:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   55
            Underline       =   False
            Visible         =   True
            Width           =   130
            BehaviorIndex   =   49
         End
         Begin StaticText lbl_monitor_default_mode
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_monitor"
            Italic          =   False
            Left            =   447
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   2
            Text            =   "Default Mode:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   155
            Underline       =   False
            Visible         =   True
            Width           =   125
            BehaviorIndex   =   50
         End
         Begin PopupMenu pop_monitor_mode
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_monitor"
            InitialValue    =   ""
            Italic          =   False
            Left            =   447
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   169
            Underline       =   False
            Visible         =   True
            Width           =   127
            BehaviorIndex   =   51
         End
      End
      Begin GroupBox grp_settings_audio
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Audio"
         Enabled         =   True
         Height          =   75
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   432
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   2
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   205
         Underline       =   False
         Visible         =   False
         Width           =   208
         BehaviorIndex   =   52
         Begin StaticText lbl_audio_file_to_play
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_audio"
            Italic          =   False
            Left            =   441
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            Text            =   "File to Play:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   11
            Top             =   223
            Underline       =   False
            Visible         =   True
            Width           =   100
            BehaviorIndex   =   53
         End
         Begin PushButton btn_audio_browse
            AutoDeactivate  =   True
            Bold            =   False
            Cancel          =   False
            Caption         =   "Browse"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_audio"
            Italic          =   False
            Left            =   503
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
            TextSize        =   11
            Top             =   222
            Underline       =   False
            Visible         =   True
            Width           =   69
            BehaviorIndex   =   54
         End
         Begin PushButton btn_audio_play
            AutoDeactivate  =   True
            Bold            =   False
            Cancel          =   False
            Caption         =   "Play"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_audio"
            Italic          =   False
            Left            =   485
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
            TextSize        =   11
            Top             =   250
            Underline       =   False
            Visible         =   True
            Width           =   40
            BehaviorIndex   =   55
         End
         Begin PushButton btn_audio_stop
            AutoDeactivate  =   True
            Bold            =   False
            Cancel          =   False
            Caption         =   "Stop"
            Default         =   False
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_audio"
            Italic          =   False
            Left            =   440
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
            TextSize        =   11
            Top             =   250
            Underline       =   False
            Visible         =   True
            Width           =   40
            BehaviorIndex   =   56
         End
      End
      Begin GroupBox grp_settings_misc
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Misc"
         Enabled         =   True
         Height          =   94
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   432
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   12
         TabPanelIndex   =   2
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   292
         Underline       =   False
         Visible         =   True
         Width           =   208
         BehaviorIndex   =   57
         Begin CheckBox chk_style_exit_prompt
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Prompt when exiting"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   26
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_misc"
            Italic          =   False
            Left            =   441
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
            TextSize        =   11
            Top             =   306
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   143
            BehaviorIndex   =   58
         End
         Begin CheckBox chk_style_powerpoint_custom
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Use Custom Powerpoint Command:"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   23
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_misc"
            Italic          =   False
            Left            =   441
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
            TextSize        =   11
            Top             =   333
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   188
            BehaviorIndex   =   59
         End
         Begin SEditField edt_style_custom_ppcommand
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
            Height          =   16
            HelpTag         =   ""
            Index           =   2147483648
            InitialParent   =   "grp_settings_misc"
            Italic          =   ""
            Left            =   469
            LimitText       =   0
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Mask            =   ""
            Multiline       =   ""
            Password        =   ""
            ReadOnly        =   ""
            Scope           =   0
            ScrollbarHorizontal=   ""
            ScrollbarVertical=   True
            Styled          =   ""
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "/bin/something %filename%"
            TextColor       =   &h000000
            TextFont        =   "System"
            TextSize        =   0
            Top             =   363
            Underline       =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   161
            BehaviorIndex   =   60
         End
      End
   End
   Begin Timer AudioTimer
      Height          =   32
      Index           =   2147483648
      InitialParent   =   ""
      Left            =   418
      LockedInPosition=   False
      Mode            =   2
      Period          =   500
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   400
      Width           =   32
      BehaviorIndex   =   61
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
		  dim s as string
		  Dim n As Integer 'EMP 09/05
		  Dim subtitles() As String 'EMP 12/05
		  
		  App.MouseCursor = System.Cursors.Wait
		  App.DebugWriter.Write("Opening PresentSettingsWindow")
		  Me.BackColor = FillColor
		  
		  edt_style_border_thickness.Text = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "style/@thickness")
		  chk_style_use_transitions.Value = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@transition")
		  chk_style_blanks.Value = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@blanks")
		  
		  chk_style_exit_prompt.Value = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@exit_prompt")
		  
		  '++TH
		  chk_style_powerpoint_custom.Value= SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "powerpoint/@usecustomcommand",true,false)
		  edt_style_custom_ppcommand.Text = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "powerpoint/@customcommand",true)
		  
		  '++JRC
		  Dim file As String
		  file = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "style/@default_audio")
		  CurrAudioFile = GetFolderItem(file)
		  If CurrAudioFile <> Nil Then
		    CurrAudio = CurrAudioFile.OpenAsSound
		  end if
		  if CurrAudio = Nil then
		    CurrAudioFile = Nil
		    btn_audio_play.Enabled = false
		    btn_audio_stop.Enabled = false
		  else
		    btn_audio_play.Enabled = true
		    'btn_audio_stop.Enabled = true
		  end if
		  
		  IsAudioPlaying = false
		  '--
		  //++
		  // Bug 1554999: Update list of monitors to accomodate systems with more than two monitors
		  //--
		  pop_monitor_control.DeleteAllRows
		  pop_monitor_presentation.DeleteAllRows
		  For n = 1 To Max(2, ScreenCount) // Permit dual-monitor configuration even if on single-monitor system.
		    pop_monitor_control.AddRow CStr(n)
		    pop_monitor_presentation.AddRow CStr(n)
		  Next
		  
		  pop_monitor_control.ListIndex = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control") - 1
		  If pop_monitor_control.ListIndex < 0 Then pop_monitor_control.ListIndex = 0
		  pop_monitor_presentation.ListIndex = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@present") - 1
		  If pop_monitor_presentation.ListIndex < 0 Then pop_monitor_presentation.ListIndex = 1
		  
		  can_style_default.SetStyleNode SmartML.GetNode(App.MyPresentSettings.DocumentElement, "default_style")
		  DefaultStyle = New SlideStyle(can_style_default.GetStyleNode)
		  can_style_scripture.SetStyleNode SmartML.GetNode(App.MyPresentSettings.DocumentElement, "scripture_style")
		  ScriptureStyle = New SlideStyle(can_style_scripture.GetStyleNode)
		  
		  sal_alerts.SetVAlign SmartML.GetValue(App.MyPresentSettings.DocumentElement, "alert/@valign")
		  sal_alerts.SetHAlign SmartML.GetValue(App.MyPresentSettings.DocumentElement, "alert/@align")
		  can_alerts_font.SetFont SmartML.GetValueF(App.MyPresentSettings.DocumentElement, "alert")
		  
		  can_logo.SetImageAsString SmartML.GetValue(App.MyPresentSettings.DocumentElement, "logo")
		  can_logo_mask.SetImageAsString SmartML.GetValue(App.MyPresentSettings.DocumentElement, "logo_mask")
		  
		  pop_style_initial_mode.AddRow App.T.Translate("presentation_settings/style/modes/normal/@caption")
		  pop_style_initial_mode.AddRow App.T.Translate("presentation_settings/style/modes/black/@caption")
		  pop_style_initial_mode.AddRow App.T.Translate("presentation_settings/style/modes/white/@caption")
		  pop_style_initial_mode.AddRow App.T.Translate("presentation_settings/style/modes/logo/@caption")
		  pop_style_initial_mode.AddRow App.T.Translate("presentation_settings/style/modes/hidden/@caption")
		  pop_style_initial_mode.AddRow App.T.Translate("presentation_settings/style/modes/frozen/@caption")
		  
		  pop_style_mouse_cursor.AddRow App.T.Translate("presentation_settings/style/mouse_cursor/arrow/@caption")
		  pop_style_mouse_cursor.AddRow App.T.Translate("presentation_settings/style/mouse_cursor/cross/@caption")
		  pop_style_mouse_cursor.AddRow App.T.Translate("presentation_settings/style/mouse_cursor/hidden/@caption")
		  pop_style_mouse_cursor.AddRow App.T.Translate("presentation_settings/style/mouse_cursor/hourglass/@caption")
		  pop_style_mouse_cursor.AddRow App.T.Translate("presentation_settings/style/mouse_cursor/ibeam/@caption")
		  
		  pop_monitor_mode.AddRow App.T.Translate("songs_mode/selected_song/present/single_screen/@caption")
		  pop_monitor_mode.AddRow App.T.Translate("songs_mode/selected_song/present/dual_screen/@caption")
		  pop_monitor_mode.AddRow App.T.Translate("songs_mode/selected_song/present/preview_dual_screen/@caption")
		  
		  pop_monitor_mode.Listindex = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "presentation_mode/@code", True) - 1
		  
		  Dim temp As String
		  temp = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "style/@initial_mode")
		  Select Case temp
		  Case "B"
		    pop_style_initial_mode.ListIndex = 1
		  Case "W"
		    pop_style_initial_mode.ListIndex = 2
		  Case "L"
		    pop_style_initial_mode.ListIndex = 3
		  Case "H"
		    pop_style_initial_mode.ListIndex = 4
		  Case "F"
		    pop_style_initial_mode.ListIndex = 5
		  Else
		    pop_style_initial_mode.ListIndex = 0
		  End Select
		  
		  'Josh
		  temp = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "style/@mouse_cursor")
		  Select Case temp
		  Case "arrow"
		    pop_style_mouse_cursor.ListIndex = 0
		  Case "cross"
		    pop_style_mouse_cursor.ListIndex = 1
		  Case "hidden"
		    pop_style_mouse_cursor.ListIndex = 2
		  Case "hourglass"
		    pop_style_mouse_cursor.ListIndex = 3
		  Case "ibeam"
		    pop_style_mouse_cursor.ListIndex = 4
		  Else
		    pop_style_mouse_cursor.ListIndex = 0
		  End Select
		  
		  App.MouseCursor = Nil
		  
		  App.T.TranslateWindow Me, "presentation_settings", App.TranslationFonts
		  s = App.T.Translate("presentation_settings/style/initial_mode/@caption")
		  nte_monitor_detected.Caption = Replace(nte_monitor_detected.Caption, "%1", Str(ScreenCount))
		  nte_monitor_detected.Caption = Replace(nte_monitor_detected.Caption, "%1", Str(ScreenCount))
		  
		  //++EMP 09/05
		  // Code for user-selectable transitions
		  
		  n = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "style/@transition_frames", False)
		  If n = 0 Then n = 5
		  sld_style_frames.Value = n
		  edt_style_frames.Text = Str(n)
		  
		  n = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "style/@transition_time", False)
		  If n = 0 Then n = 100
		  sld_style_time.Value = n
		  edt_style_time.Text = Str(n)
		  
		  'sld_style_frames.Enabled = chk_style_use_transitions.Value
		  'sld_style_time.Enabled = chk_style_use_transitions.Value
		  'edt_style_frames.Enabled = chk_style_use_transitions.Value
		  'edt_style_time.Enabled = chk_style_use_transitions.Value
		  'lbl_style_time.Enabled = chk_style_use_transitions.Value
		  'lbl_style_frames.Enabled = chk_style_use_transitions.Value
		  //--
		  
		  //++EMP, 11/05
		  // Determine if blanks use the previous or next slide's style
		  
		  rad_style_blank_next.Value = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, _
		  "style/@blank_uses_next", True, True)
		  rad_style_blank_prev.Value = Not rad_style_blank_next.Value
		  //--
		  
		  App.CenterInControlScreen Me
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub PopTo(str As String, pop As PopupMenu)
		  Dim i As Integer
		  For i = 0 To pop.ListCount - 1
		    If Lowercase(str) = Lowercase(pop.List(i)) Then
		      pop.ListIndex = i
		      Return
		    End If
		  Next i
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BGImage As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		BGImageFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrAudio As Sound
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrAudioFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected DefaultStyle As SlideStyle
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected FilterString As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected IsAudioPlaying As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected ScriptureStyle As SlideStyle
	#tag EndProperty


	#tag Constant, Name = ROW_AUTHOR, Type = Integer, Dynamic = False, Default = \"1", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ROW_CCLI_LICENSE, Type = Integer, Dynamic = False, Default = \"4", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ROW_CCLI_NUMBER, Type = Integer, Dynamic = False, Default = \"3", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ROW_COPYRIGHT, Type = Integer, Dynamic = False, Default = \"0", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ROW_HYMN_NUMBER, Type = Integer, Dynamic = False, Default = \"2", Scope = Protected
	#tag EndConstant


#tag EndWindowCode

#tag Events btn_ok
	#tag Event
		Sub Action()
		  Dim Settings As XmlElement
		  
		  Settings = App.MyPresentSettings.DocumentElement
		  
		  SmartML.SetValue Settings, "@version", "1.0" // Tag this so other parts of the program will know which schema to use.
		  
		  SmartML.SetValue Settings, "alert/@valign", sal_alerts.GetVAlign
		  SmartML.SetValue Settings, "alert/@align", sal_alerts.GetHAlign
		  SmartML.SetValueF Settings, "alert", can_alerts_font.GetFont
		  
		  SmartML.SetValue(Settings, "logo", can_logo.GetImageAsString)
		  SmartML.SetValue(Settings, "logo_mask", can_logo_mask.GetImageAsString)
		  
		  //++EMP 09/05
		  SmartML.SetValueN(Settings, "style/@transition_frames", sld_style_frames.Value)
		  SmartML.SetValueN(Settings, "style/@transition_time", sld_style_time.Value)
		  //--
		  
		  //++TH
		  SmartML.SetValue(Settings, "powerpoint/@customcommand",edt_style_custom_ppcommand.Text)
		  SmartML.SetValueB(Settings, "powerpoint/@usecustomcommand",chk_style_powerpoint_custom.Value)
		  
		  //++EMP 11/05
		  // Moved from Action routines for individual controls so cancelling this form will truly cancel.
		  
		  SmartML.SetValueB Settings, "style/@blanks", chk_style_blanks.Value
		  SmartML.SetValueB Settings, "style/@transition", chk_style_use_transitions.Value
		  
		  SmartML.SetValueB Settings, "style/@exit_prompt", chk_style_exit_prompt.Value
		  '++JRC 12/05
		  if CurrAudioFile <> Nil then
		    SmartML.SetValue(Settings, "style/@default_audio", CurrAudioFile.AbsolutePath) 'save filename
		  end if
		  '--
		  
		  SmartML.SetValueN Settings, "monitors/@control", pop_monitor_control.ListIndex+1
		  SmartML.SetValueN Settings, "monitors/@present", pop_monitor_presentation.ListIndex+1
		  
		  ' pop_pres_mode added EMP, 2005
		  ' Allows user to specify default presentation mode (single screen, dual, preview)
		  ' Eventual goal is to support a hotkey to go to presenter mode
		  '
		  SmartML.SetValueN(Settings, "presentation_mode/@code", pop_monitor_mode.ListIndex + 1)
		  
		  // Initial presentation mode
		  Dim temp As String
		  Select Case pop_style_initial_mode.ListIndex
		  Case 0
		    temp = "N"
		  Case 1
		    temp = "B"
		  Case 2
		    temp = "W"
		  Case 3
		    temp = "L"
		  Case 4
		    temp = "H"
		  Case 5
		    temp = "F"
		  End Select
		  SmartML.SetValue Settings, "style/@initial_mode", temp
		  
		  Select Case pop_style_mouse_cursor.ListIndex
		  Case 0
		    temp = "arrow"
		  Case 1
		    temp = "cross"
		  Case 2
		    temp = "hidden"
		  Case 3
		    temp = "hourglass"
		  Case 4
		    temp = "ibeam"
		  End Select
		  SmartML.SetValue Settings, "style/@mouse_cursor", temp
		  
		  'SmartML.SetValue Settings, "style/@song_subtitles", lst_style_subtitles.GetSelectedOptions
		  '
		  ' Subtitle selection moves to the default style to help address an issue with subtitles not being properly
		  ' overridden.
		  '
		  SmartML.SetValueB Settings, "style/@blank_uses_next", rad_style_blank_next.Value
		  
		  '++JRC: Stop Audio if its playing
		  if IsAudioPlaying = true then
		    //++EMP, 17 Feb 2006
		    //call Globals.SXMSAudio.SXMSWinampStop()
		    //--
		  end if
		  '--
		  //++
		  // Bug 1462055: Save settings on dialog close
		  //
		  If Not SmartML.XDocToFile(App.MyPresentSettings, App.DocsFolder.Child("Settings").Child("PresentSettings")) Then SmartML.DisplayError
		  //--
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_cancel
	#tag Event
		Sub Action()
		  '++JRC: Stop Audio if its playing
		  //++EMP 17 Feb 2006
		  //if IsAudioPlaying = true then
		  //call Globals.SXMSAudio.SXMSWinampStop()
		  //end if
		  '--
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sal_alerts
	#tag Event
		Sub Open()
		  Me.SetValid "YYYNNNYYY"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_style_use_transitions
	#tag Event
		Sub Action()
		  'Keep the settings active as transitions can be enabled on a per sheet basis
		  
		  'sld_style_frames.Enabled = Me.Value
		  'sld_style_time.Enabled = Me.Value
		  'edt_style_frames.Enabled = Me.Value
		  'edt_style_time.Enabled = Me.Value
		  'lbl_style_time.Enabled = Me.Value
		  'lbl_style_frames.Enabled = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sld_style_frames
	#tag Event
		Sub ValueChanged()
		  edt_style_frames.Text = Str(Me.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_style_frames
	#tag Event
		Sub LostFocus()
		  Dim n As Integer
		  n = CDbl(Me.Text)
		  if n < sld_style_frames.Minimum Then
		    Me.Text = Str(sld_style_frames.Minimum)
		  ElseIf n > sld_style_frames.Maximum Then
		    Me.Text = Str(sld_style_frames.Maximum)
		  Else
		    sld_style_frames.Value = n
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sld_style_time
	#tag Event
		Sub ValueChanged()
		  edt_style_time.Text = Str(Me.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_style_time
	#tag Event
		Sub LostFocus()
		  Dim n As Integer
		  n = CDbl(Me.Text)
		  if n < sld_style_time.Minimum Then
		    Me.Text = Str(sld_style_time.Minimum)
		  ElseIf n > sld_style_time.Maximum Then
		    Me.Text = Str(sld_style_time.Maximum)
		  Else
		    sld_style_time.Value = n
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_style_border_thickness
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_style_border_thickness.Text  = Left(c.Text, 4)
		      return true
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  SmartML.SetValueN App.MyPresentSettings.DocumentElement, "style/@thickness", Val(edt_style_border_thickness.Text)
		  GraphicsX.ThicknessFactor = Val(edt_style_border_thickness.Text)
		  Refresh False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_style_blanks
	#tag Event
		Sub Action()
		  // Disable blanks style radio box if unchecked
		  nil_blanks.Enabled = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lbl_monitor_default_mode
	#tag Event
		Sub Open()
		  Dim s as String
		  s = App.T.Translate("presentation_settings/style/initial_mode/@caption")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_audio_browse
	#tag Event
		Sub Action()
		  //++EMP, 17 Feb 2006
		  // Joshua's audio module isn't cross-platform ready,
		  // so it is commented out for the mainstream release
		  //--
		  //
		  ''++JRC
		  'Dim FileName As MemoryBlock
		  'Dim FilterIndex As MemoryBlock
		  'Dim Pos As integer
		  'Dim error As integer
		  'Declare Function OpenFileDialog lib "UTILITY.DLL" (Handle as integer, Title as Cstring, FileTypes as Ptr, FilterIndex as Ptr) as Ptr
		  '
		  'FilterIndex = NewMemoryBlock(4)
		  'FileName = OpenFileDialog(Me.Handle, App.T.Translate("open_titles/audio"), Globals.Filters, FilterIndex)
		  'CurrAudioFile = GetFolderItem(FileName.CString(0))
		  'If CurrAudioFile = Nil Then
		  'CurrAudio = Nil
		  'Return
		  'end if
		  'FilterString  = Globals.GetFilterString(FilterIndex.Long(0))
		  'Pos = Instr(FilterString, " (*.")
		  'FilterString = App.AppFolder.Child("Plugins").AbsolutePath + Mid(FilterString, 0, Pos)
		  '
		  'if IsAudioPlaying = true then
		  'call Globals.SXMSAudio.SXMSWinampStop()
		  'IsAudioPlaying = false
		  'btn_audio_play.Enabled = false
		  'btn_audio_stop.Enabled = false
		  'end if
		  '
		  'error = Globals.SXMSAudio.SXMSWinampLoadPlugIn(FilterString)
		  '
		  'if error = 0 then
		  'InputBox.Message App.T.Translate("errors\plugin_load_failed", FilterString)
		  'return
		  'end if
		  ''CurrAudio = Nil
		  ''CurrAudio = CurrAudioFile.OpenAsSound
		  ''if CurrAudio = Nil then
		  ''CurrAudioFile = Nil
		  ''btn_audio_play.Enabled = false
		  ''btn_audio_stop.Enabled = false
		  ''else
		  'btn_audio_play.Enabled = true
		  ''btn_audio_stop.Enabled = true
		  ''end if
		  '
		  'IsAudioPlaying = false
		  ''--
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_audio_play
	#tag Event
		Sub Action()
		  //++EMP, 17 Feb 2006
		  // Joshua's audio add-on isn't cross-platform ready,
		  // so it is commented out for the mainstream release
		  //--
		  ''++JRC
		  'Dim error As integer
		  'Declare Sub delay lib "UTILITY.DLL" (Seconds as integer)
		  '
		  'if IsAudioPlaying = false then
		  'error = Globals.SXMSAudio.SXMSWinampPlay(CurrAudioFile.AbsolutePath)
		  'if error = 1 and Globals.SXMSAudio.SXMSWinampIsPlaying  = 1 then
		  ''btn_audio_play.Enabled = false
		  'btn_audio_play.Caption = App.T.Translate("presentation_settings/audio/pause/@caption")
		  'btn_audio_stop.Enabled = true
		  'IsAudioPlaying = true
		  'end if
		  'else
		  'error = 0
		  'error = Globals.SXMSAudio.SXMSWinampGetPaused()
		  'if error = 0 then
		  'Call Globals.SXMSAudio.SXMSWinampSetPause(1)
		  'btn_audio_play.Caption = App.T.Translate("presentation_settings/audio/play/@caption")
		  ''MsgBox "Paused"
		  ''delay(5)
		  'else
		  'Call Globals.SXMSAudio.SXMSWinampSetPause(0)
		  'btn_audio_play.Caption = App.T.Translate("presentation_settings/audio/pause/@caption")
		  ''MsgBox "UnPaused"
		  ''delay(5)
		  'end if
		  'end if
		  ''--
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_audio_stop
	#tag Event
		Sub Action()
		  '++JRC
		  //++EMP, 17 Feb 2006
		  //call Globals.SXMSAudio.SXMSWinampStop()
		  //btn_audio_play.Enabled = true
		  //btn_audio_stop.Enabled = false
		  //IsAudioPlaying = false
		  //--
		  '--
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_style_powerpoint_custom
	#tag Event
		Sub Action()
		  edt_style_custom_ppcommand.Enabled = chk_style_powerpoint_custom.Value
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AudioTimer
	#tag Event
		Sub Action()
		  '++JRC
		  //++EMP 17 Feb 2006
		  // Commented out for mainstream version
		  //--
		  'Just check every few seconds if CurrAudio has finished playing
		  'Dim error As integer
		  '
		  'if IsAudioPlaying = true then
		  'error = 0
		  'error = Globals.SXMSAudio.SXMSWinampIsPlaying
		  'if error  = 0 then
		  'btn_audio_play.Enabled = true
		  'btn_audio_stop.Enabled = false
		  'IsAudioPlaying = false
		  'btn_audio_play.Caption = App.T.Translate("presentation_settings/audio/play/@caption")
		  '
		  'end if
		  'end if
		  '--
		End Sub
	#tag EndEvent
#tag EndEvents
