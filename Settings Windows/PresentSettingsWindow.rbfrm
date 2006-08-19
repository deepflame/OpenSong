#tag Window
Begin Window PresentSettingsWindow
   Placement       =   0
   Width           =   620
   Height          =   438
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   1
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Presentation Settings"
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
      Left            =   462
      Top             =   407
      Width           =   70
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
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
      Left            =   542
      Top             =   407
      Width           =   69
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
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
   Begin TabPanel tab_present_settings
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   10
      Top             =   14
      Width           =   600
      Height          =   385
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Facing          =   0
      TabDefinition   =   "Styles\rOptions"
      Panels          =   ""
      SmallTabs       =   "False"
      Value           =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      TextFont        =   "System"
      TextSize        =   12
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   2
      Begin StaticText lbl_style_default_slides
         Index           =   -2147483648
         ControlOrder    =   3
         Left            =   48
         Top             =   65
         Width           =   160
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   1
         Text            =   "Default Slide Style:"
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
         Italic          =   "False"
         Underline       =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "tab_present_settings"
         BehaviorIndex   =   3
      End
      Begin SStyleCanvas can_style_default
         Index           =   -2147483648
         ControlOrder    =   4
         Left            =   47
         Top             =   80
         Width           =   160
         Height          =   120
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   1
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "tab_present_settings"
         BehaviorIndex   =   4
      End
      Begin StaticText nte_style_click_to_change_1
         Index           =   -2147483648
         ControlOrder    =   5
         Left            =   47
         Top             =   200
         Width           =   160
         Height          =   13
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   1
         Text            =   "(click to change)"
         TextAlign       =   1
         TextColor       =   0
         Multiline       =   "False"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   9
         Bold            =   "False"
         Italic          =   "True"
         Underline       =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "tab_present_settings"
         BehaviorIndex   =   5
      End
      Begin StaticText lbl_style_scripture_slides
         Index           =   -2147483648
         ControlOrder    =   6
         Left            =   253
         Top             =   65
         Width           =   160
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   1
         Text            =   "Scripture Slide Style:"
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
         Italic          =   "False"
         Underline       =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "tab_present_settings"
         BehaviorIndex   =   6
      End
      Begin SStyleCanvas can_style_scripture
         Index           =   -2147483648
         ControlOrder    =   7
         Left            =   254
         Top             =   80
         Width           =   160
         Height          =   120
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   1
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "tab_present_settings"
         BehaviorIndex   =   7
      End
      Begin StaticText nte_style_click_to_change_2
         Index           =   -2147483648
         ControlOrder    =   8
         Left            =   254
         Top             =   200
         Width           =   160
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   1
         Text            =   "(click to change)"
         TextAlign       =   1
         TextColor       =   0
         Multiline       =   "False"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   9
         Bold            =   "False"
         Italic          =   "True"
         Underline       =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "tab_present_settings"
         BehaviorIndex   =   8
      End
      Begin GroupBox grp_settings_alerts
         Index           =   -2147483648
         ControlOrder    =   9
         Left            =   38
         Top             =   237
         Width           =   387
         Height          =   130
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   1
         Caption         =   "Alerts"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "tab_present_settings"
         BehaviorIndex   =   9
         Begin StaticText lbl_alerts_align
            Index           =   -2147483648
            ControlOrder    =   10
            Left            =   46
            Top             =   277
            Width           =   90
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   1
            Text            =   "Align:"
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
            Italic          =   "False"
            Underline       =   "False"
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "grp_settings_alerts"
            BehaviorIndex   =   10
         End
         Begin SAlignCanvas sal_alerts
            Index           =   -2147483648
            ControlOrder    =   11
            Left            =   70
            Top             =   292
            Width           =   44
            Height          =   44
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   1
            Visible         =   "True"
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            Enabled         =   "True"
            UseFocusRing    =   "True"
            Backdrop        =   0
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            EraseBackground =   "True"
            InitialParent   =   "grp_settings_alerts"
            BehaviorIndex   =   11
         End
         Begin StaticText lbl_alerts_font
            Index           =   -2147483648
            ControlOrder    =   12
            Left            =   140
            Top             =   258
            Width           =   250
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   1
            Text            =   "Font:"
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
            Italic          =   "False"
            Underline       =   "False"
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "grp_settings_alerts"
            BehaviorIndex   =   12
         End
         Begin SFontCanvas can_alerts_font
            ControlOrder    =   13
            Width           =   250
            Height          =   80
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   1
            Visible         =   "True"
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            Enabled         =   "True"
            UseFocusRing    =   "True"
            Backdrop        =   0
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            EraseBackground =   "True"
            InitialParent   =   "grp_settings_alerts"
            Index           =   -2147483648
            Left            =   140
            Top             =   272
            AdvancedOptions =   "True"
            BehaviorIndex   =   13
         End
      End
      Begin GroupBox grp_option_logo
         Index           =   -2147483648
         ControlOrder    =   14
         Left            =   445
         Top             =   65
         Width           =   142
         Height          =   302
         LockLeft        =   "False"
         LockTop         =   "True"
         LockRight       =   "True"
         LockBottom      =   "False"
         TabPanelIndex   =   1
         Caption         =   "Logo"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "tab_present_settings"
         BehaviorIndex   =   14
         Begin SImageCanvas can_logo
            ControlOrder    =   15
            Width           =   80
            Height          =   60
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   1
            Visible         =   "True"
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            Enabled         =   "True"
            UseFocusRing    =   "True"
            Backdrop        =   0
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            EraseBackground =   "True"
            InitialParent   =   "grp_option_logo"
            Index           =   -2147483648
            Left            =   475
            Top             =   95
            BehaviorIndex   =   15
         End
         Begin StaticText nte_logo_click_to_change_1
            Index           =   -2147483648
            ControlOrder    =   16
            Left            =   450
            Top             =   159
            Width           =   137
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   1
            Text            =   "(click to change)"
            TextAlign       =   1
            TextColor       =   0
            Multiline       =   "True"
            Enabled         =   True
            Visible         =   True
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            TextFont        =   "Arial"
            TextSize        =   9
            Bold            =   "False"
            Italic          =   "True"
            Underline       =   "False"
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "grp_option_logo"
            BehaviorIndex   =   16
         End
         Begin StaticText nte_logo_right_click_to_clear_1
            Index           =   -2147483648
            ControlOrder    =   17
            Left            =   450
            Top             =   172
            Width           =   137
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   1
            Text            =   "(right-click to clear)"
            TextAlign       =   1
            TextColor       =   0
            Multiline       =   "True"
            Enabled         =   True
            Visible         =   True
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            TextFont        =   "Arial"
            TextSize        =   9
            Bold            =   "False"
            Italic          =   "True"
            Underline       =   "False"
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "grp_option_logo"
            BehaviorIndex   =   17
         End
         Begin StaticText lbl_logo_mask
            Index           =   -2147483648
            ControlOrder    =   18
            Left            =   454
            Top             =   223
            Width           =   125
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   1
            Text            =   "Mask:"
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
            Italic          =   "False"
            Underline       =   "False"
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "grp_option_logo"
            BehaviorIndex   =   18
         End
         Begin SImageCanvas can_logo_mask
            ControlOrder    =   19
            Width           =   80
            Height          =   60
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   1
            Visible         =   "True"
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            Enabled         =   "True"
            UseFocusRing    =   "True"
            Backdrop        =   0
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            EraseBackground =   "True"
            InitialParent   =   "grp_option_logo"
            Index           =   -2147483648
            Left            =   475
            Top             =   238
            BehaviorIndex   =   19
         End
         Begin StaticText nte_logo_click_to_change_2
            Index           =   -2147483648
            ControlOrder    =   20
            Left            =   454
            Top             =   302
            Width           =   125
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   1
            Text            =   "(click to change)"
            TextAlign       =   1
            TextColor       =   0
            Multiline       =   "True"
            Enabled         =   True
            Visible         =   True
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            TextFont        =   "Arial"
            TextSize        =   9
            Bold            =   "False"
            Italic          =   "True"
            Underline       =   "False"
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "grp_option_logo"
            BehaviorIndex   =   20
         End
         Begin StaticText nte_logo_right_click_to_clear_2
            Index           =   -2147483648
            ControlOrder    =   21
            Left            =   454
            Top             =   315
            Width           =   125
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   1
            Text            =   "(right-click to clear)"
            TextAlign       =   1
            TextColor       =   0
            Multiline       =   "True"
            Enabled         =   True
            Visible         =   True
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            TextFont        =   "Arial"
            TextSize        =   9
            Bold            =   "False"
            Italic          =   "True"
            Underline       =   "False"
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "grp_option_logo"
            BehaviorIndex   =   21
         End
      End
      Begin GroupBox grp_settings_style
         Index           =   -2147483648
         ControlOrder    =   22
         Left            =   28
         Top             =   41
         Width           =   392
         Height          =   345
         LockLeft        =   "True"
         LockTop         =   "True"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   2
         Caption         =   "Style"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "tab_present_settings"
         BehaviorIndex   =   22
         Begin CheckBox chk_style_use_transitions
            Index           =   -2147483648
            ControlOrder    =   23
            Left            =   43
            Top             =   61
            Width           =   140
            Height          =   20
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Caption         =   "Use Transitions*"
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
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   23
         End
         Begin StaticText lbl_style_frames
            Index           =   -2147483648
            ControlOrder    =   24
            Left            =   37
            Top             =   80
            Width           =   151
            Height          =   20
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Text            =   "Frames"
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
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   24
         End
         Begin Slider sld_style_frames
            Index           =   -2147483648
            ControlOrder    =   25
            Left            =   37
            Top             =   99
            Width           =   112
            Height          =   16
            LockLeft        =   "True"
            LockTop         =   "True"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Enabled         =   True
            Visible         =   True
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            Minimum         =   0
            Value           =   5
            Maximum         =   10
            LineStep        =   1
            PageStep        =   1
            LiveScroll      =   "True"
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   25
         End
         Begin EditField edt_style_frames
            Index           =   -2147483648
            ControlOrder    =   26
            Left            =   161
            Top             =   95
            Width           =   27
            Height          =   20
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
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
            Mask            =   "9#"
            ReadOnly        =   "False"
            LimitText       =   2
            AcceptTabs      =   "False"
            Alignment       =   0
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   26
         End
         Begin StaticText lbl_style_time
            Index           =   -2147483648
            ControlOrder    =   27
            Left            =   37
            Top             =   117
            Width           =   151
            Height          =   20
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Text            =   "Time:"
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
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   27
         End
         Begin Slider sld_style_time
            Index           =   -2147483648
            ControlOrder    =   28
            Left            =   38
            Top             =   137
            Width           =   112
            Height          =   16
            LockLeft        =   "True"
            LockTop         =   "True"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Enabled         =   True
            Visible         =   True
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            Minimum         =   50
            Value           =   100
            Maximum         =   1000
            LineStep        =   10
            PageStep        =   20
            LiveScroll      =   "True"
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   28
         End
         Begin EditField edt_style_time
            Index           =   -2147483648
            ControlOrder    =   29
            Left            =   150
            Top             =   137
            Width           =   38
            Height          =   20
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
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
            Mask            =   "99##"
            ReadOnly        =   "False"
            LimitText       =   4
            AcceptTabs      =   "False"
            Alignment       =   0
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   29
         End
         Begin StaticText lbl_style_border_thickness
            Index           =   -2147483648
            ControlOrder    =   30
            Left            =   37
            Top             =   163
            Width           =   140
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Text            =   "Border Thickness:"
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
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   30
         End
         Begin EditField edt_style_border_thickness
            Index           =   -2147483648
            ControlOrder    =   31
            Left            =   37
            Top             =   178
            Width           =   50
            Height          =   20
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
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
            Mask            =   "999#"
            ReadOnly        =   "False"
            LimitText       =   4
            AcceptTabs      =   "False"
            Alignment       =   0
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   31
         End
         Begin StaticText lbl_style_initial_mode
            Index           =   -2147483648
            ControlOrder    =   32
            Left            =   37
            Top             =   203
            Width           =   140
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Text            =   "Initial Mode:"
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
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   32
         End
         Begin PopupMenu pop_style_initial_mode
            Index           =   -2147483648
            ControlOrder    =   33
            Left            =   37
            Top             =   218
            Width           =   140
            Height          =   20
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
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
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   33
         End
         Begin StaticText lbl_style_subtitles
            Index           =   -2147483648
            ControlOrder    =   34
            Left            =   37
            Top             =   243
            Width           =   140
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Text            =   "Song Subtitles:"
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
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   34
         End
         Begin SubtitleList lst_style_subtitles
            Index           =   -2147483648
            ControlOrder    =   35
            Left            =   37
            Top             =   259
            Width           =   151
            Height          =   74
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Visible         =   "True"
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            Enabled         =   "True"
            ColumnCount     =   3
            ColumnWidths    =   "0,15%,*"
            HasHeading      =   "False"
            UseFocusRing    =   "True"
            InitialValue    =   "		Copyright\r\n		Author\r\n		Hymn Number\r\n		CCLI License Number\r\n		CCLI Song Number"
            HeadingIndex    =   -1
            ScrollbarHorizontal=   "False"
            ScrollBarVertical=   "False"
            GridLinesHorizontal=   0
            GridLinesVertical=   1
            DefaultRowHeight=   14
            _ScrollWidth    =   -1
            _ScrollOffset   =   0
            TextFont        =   "Arial"
            TextSize        =   11
            Bold            =   "False"
            Italic          =   "False"
            Underline       =   "False"
            Hierarchical    =   "False"
            EnableDrag      =   "False"
            EnableDragReorder=   "True"
            RequiresSelection=   ""
            SelectionType   =   0
            ColumnsResizable=   "False"
            AutoHideScrollbars=   "True"
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   35
         End
         Begin CheckBox chk_style_highlight_chorus
            Index           =   -2147483648
            ControlOrder    =   36
            Left            =   37
            Top             =   343
            Width           =   145
            Height          =   22
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Caption         =   "Highlight Chorus"
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
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   36
         End
         Begin StaticText lbl_style_mouse_cursor
            Index           =   -2147483648
            ControlOrder    =   37
            Left            =   222
            Top             =   203
            Width           =   136
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Text            =   "Mouse Cursor:"
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
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   37
         End
         Begin PopupMenu pop_style_mouse_cursor
            Index           =   -2147483648
            ControlOrder    =   38
            Left            =   222
            Top             =   218
            Width           =   136
            Height          =   20
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
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
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   38
         End
         Begin CheckBox chk_style_blanks
            Index           =   -2147483648
            ControlOrder    =   39
            Left            =   222
            Top             =   259
            Width           =   176
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Caption         =   "Insert Blank Slides"
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
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   39
         End
         Begin StaticText txt_style_blanks_between
            Index           =   -2147483648
            ControlOrder    =   40
            Left            =   237
            Top             =   274
            Width           =   161
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Text            =   "Between Set Items"
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
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   40
         End
         Begin Canvas nil_blanks
            Index           =   -2147483648
            ControlOrder    =   41
            Left            =   221
            Top             =   294
            Width           =   177
            Height          =   76
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Visible         =   True
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            Enabled         =   True
            UseFocusRing    =   "False"
            Backdrop        =   0
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            EraseBackground =   "True"
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   41
            Begin StaticText lbl_style_blank_style
               Index           =   -2147483648
               ControlOrder    =   42
               Left            =   222
               Top             =   299
               Width           =   145
               Height          =   20
               LockLeft        =   "False"
               LockTop         =   "False"
               LockRight       =   "False"
               LockBottom      =   "False"
               TabPanelIndex   =   2
               Text            =   "Blanks take style of:"
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
               InitialParent   =   "nil_blanks"
               BehaviorIndex   =   42
            End
            Begin RadioButton rad_style_blank_prev
               Index           =   -2147483648
               ControlOrder    =   43
               Left            =   222
               Top             =   318
               Width           =   170
               Height          =   20
               LockLeft        =   "False"
               LockTop         =   "False"
               LockRight       =   "False"
               LockBottom      =   "False"
               TabPanelIndex   =   2
               Caption         =   "Previous slide"
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
               InitialParent   =   "nil_blanks"
               BehaviorIndex   =   43
            End
            Begin RadioButton rad_style_blank_next
               Index           =   -2147483648
               ControlOrder    =   44
               Left            =   222
               Top             =   341
               Width           =   170
               Height          =   20
               LockLeft        =   "False"
               LockTop         =   "False"
               LockRight       =   "False"
               LockBottom      =   "False"
               TabPanelIndex   =   2
               Caption         =   "Next slide"
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
               InitialParent   =   "nil_blanks"
               BehaviorIndex   =   44
            End
         End
         Begin StaticText txt_style_transition_note
            Index           =   -2147483648
            ControlOrder    =   45
            Left            =   200
            Top             =   55
            Width           =   204
            Height          =   123
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Text            =   "*Transitions are greatly affected by screen resolution. If you are experiencing slow transitions, consider decreasing the resolution of the monitor that the presentation resides on. Also, if you notice that transitions are not showing up, it may be because your color levels are too low on the presentation monitor."
            TextAlign       =   0
            TextColor       =   0
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
            InitialParent   =   "grp_settings_style"
            BehaviorIndex   =   45
         End
      End
      Begin GroupBox grp_settings_monitor
         Index           =   -2147483648
         ControlOrder    =   46
         Left            =   432
         Top             =   41
         Width           =   150
         Height          =   161
         LockLeft        =   "False"
         LockTop         =   "True"
         LockRight       =   "True"
         LockBottom      =   "False"
         TabPanelIndex   =   2
         Caption         =   "Monitor Settings"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "tab_present_settings"
         BehaviorIndex   =   46
         Begin StaticText lbl_monitor_control
            Index           =   -2147483648
            ControlOrder    =   47
            Left            =   447
            Top             =   55
            Width           =   130
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Text            =   "Control Monitor:"
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
            InitialParent   =   "grp_settings_monitor"
            BehaviorIndex   =   47
         End
         Begin PopupMenu pop_monitor_control
            Index           =   -2147483648
            ControlOrder    =   48
            Left            =   447
            Top             =   70
            Width           =   40
            Height          =   20
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Enabled         =   True
            InitialValue    =   "1\r\n2"
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
            InitialParent   =   "grp_settings_monitor"
            BehaviorIndex   =   48
         End
         Begin StaticText lbl_monitor_presentation
            Index           =   -2147483648
            ControlOrder    =   49
            Left            =   447
            Top             =   95
            Width           =   130
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Text            =   "Presentation Monitor:"
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
            InitialParent   =   "grp_settings_monitor"
            BehaviorIndex   =   49
         End
         Begin PopupMenu pop_monitor_presentation
            Index           =   -2147483648
            ControlOrder    =   50
            Left            =   447
            Top             =   110
            Width           =   40
            Height          =   20
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Enabled         =   True
            InitialValue    =   "1\r\n2"
            ListIndex       =   1
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
            InitialParent   =   "grp_settings_monitor"
            BehaviorIndex   =   50
         End
         Begin StaticText nte_monitor_detected
            Index           =   -2147483648
            ControlOrder    =   51
            Left            =   442
            Top             =   135
            Width           =   130
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Text            =   "(1 monitor(s) detected.)"
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
            InitialParent   =   "grp_settings_monitor"
            BehaviorIndex   =   51
         End
         Begin StaticText lbl_monitor_default_mode
            Index           =   -2147483648
            ControlOrder    =   52
            Left            =   447
            Top             =   155
            Width           =   125
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Text            =   "Default Mode:"
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
            InitialParent   =   "grp_settings_monitor"
            BehaviorIndex   =   52
         End
         Begin PopupMenu pop_monitor_mode
            Index           =   -2147483648
            ControlOrder    =   53
            Left            =   447
            Top             =   169
            Width           =   127
            Height          =   20
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
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
            InitialParent   =   "grp_settings_monitor"
            BehaviorIndex   =   53
         End
      End
      Begin GroupBox grp_settings_misc
         Index           =   -2147483648
         ControlOrder    =   54
         Left            =   432
         Top             =   286
         Width           =   150
         Height          =   100
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   2
         Caption         =   "Misc"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "tab_present_settings"
         BehaviorIndex   =   54
         Begin CheckBox chk_style_exit_prompt
            Index           =   -2147483648
            ControlOrder    =   55
            Left            =   442
            Top             =   307
            Width           =   135
            Height          =   26
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Caption         =   "Prompt when exiting"
            Enabled         =   True
            Visible         =   True
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            TextFont        =   "Arial"
            TextSize        =   11
            Bold            =   "False"
            Italic          =   "False"
            Underline       =   "False"
            Value           =   "False"
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "grp_settings_misc"
            BehaviorIndex   =   55
         End
         Begin CheckBox chk_style_descriptive_subtitle_info
            Index           =   -2147483648
            ControlOrder    =   59
            Left            =   442
            Top             =   333
            Width           =   135
            Height          =   20
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Caption         =   "Descriptive subtitle info"
            Enabled         =   True
            Visible         =   True
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            TextFont        =   "Arial"
            TextSize        =   11
            Bold            =   "False"
            Italic          =   "False"
            Underline       =   "False"
            Value           =   "False"
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "grp_settings_misc"
            BehaviorIndex   =   56
         End
      End
      Begin GroupBox grp_settings_audio
         Index           =   -2147483648
         ControlOrder    =   56
         Left            =   432
         Top             =   205
         Width           =   150
         Height          =   75
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   2
         Caption         =   "Audio"
         Enabled         =   True
         Visible         =   "False"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "tab_present_settings"
         BehaviorIndex   =   57
         Begin StaticText lbl_audio_file_to_play
            Index           =   -2147483648
            ControlOrder    =   57
            Left            =   441
            Top             =   223
            Width           =   100
            Height          =   20
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Text            =   "File to Play:"
            TextAlign       =   0
            TextColor       =   0
            Multiline       =   "False"
            Enabled         =   True
            Visible         =   True
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            TextFont        =   "Arial"
            TextSize        =   11
            Bold            =   "False"
            Italic          =   "False"
            Underline       =   "False"
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "grp_settings_audio"
            BehaviorIndex   =   58
         End
         Begin PushButton btn_audio_browse
            Index           =   -2147483648
            ControlOrder    =   58
            Left            =   503
            Top             =   222
            Width           =   69
            Height          =   22
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Caption         =   "Browse"
            Default         =   "False"
            Cancel          =   "False"
            Enabled         =   True
            Visible         =   True
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            TextFont        =   "Arial"
            TextSize        =   11
            Bold            =   "False"
            Italic          =   "False"
            Underline       =   "False"
            InitialParent   =   "grp_settings_audio"
            BehaviorIndex   =   59
         End
         Begin PushButton btn_audio_stop
            Index           =   -2147483648
            ControlOrder    =   60
            Left            =   440
            Top             =   250
            Width           =   40
            Height          =   22
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Caption         =   "Stop"
            Default         =   "False"
            Cancel          =   "False"
            Enabled         =   True
            Visible         =   True
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            TextFont        =   "Arial"
            TextSize        =   11
            Bold            =   "False"
            Italic          =   "False"
            Underline       =   "False"
            InitialParent   =   "grp_settings_audio"
            BehaviorIndex   =   60
         End
         Begin PushButton btn_audio_play
            Index           =   -2147483648
            ControlOrder    =   61
            Left            =   485
            Top             =   250
            Width           =   40
            Height          =   22
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   2
            Caption         =   "Play"
            Default         =   "False"
            Cancel          =   "False"
            Enabled         =   True
            Visible         =   True
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            TextFont        =   "Arial"
            TextSize        =   11
            Bold            =   "False"
            Italic          =   "False"
            Underline       =   "False"
            InitialParent   =   "grp_settings_audio"
            BehaviorIndex   =   61
         End
      End
   End
   Begin Timer AudioTimer
      Index           =   -2147483648
      ControlOrder    =   62
      Left            =   418
      Top             =   400
      Mode            =   2
      Period          =   500
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   62
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
	  App.MouseCursor = WatchCursor
	  App.DebugWriter.Write("Opening PresentSettingsWindow")
	  Me.BackColor = FillColor
	  
	  edt_style_border_thickness.Text = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "style/@thickness")
	  chk_style_use_transitions.Value = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@transition")
	  chk_style_blanks.Value = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@blanks")
	  
	  chk_style_exit_prompt.Value = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@exit_prompt")
	  '++JRC
	  chk_style_descriptive_subtitle_info.Value = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@descriptive_subtitle_info")
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
	  pop_monitor_control.ListIndex = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control") - 1
	  If pop_monitor_control.ListIndex < 0 Then pop_monitor_control.ListIndex = 0
	  pop_monitor_presentation.ListIndex = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@present") - 1
	  If pop_monitor_presentation.ListIndex < 0 Then pop_monitor_presentation.ListIndex = 1
	  
	  can_style_default.SetStyleNode SmartML.GetNode(App.MyPresentSettings.DocumentElement, "default_style")
	  can_style_scripture.SetStyleNode SmartML.GetNode(App.MyPresentSettings.DocumentElement, "scripture_style")
	  
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
	  
	  sld_style_frames.Enabled = chk_style_use_transitions.Value
	  sld_style_time.Enabled = chk_style_use_transitions.Value
	  edt_style_frames.Enabled = chk_style_use_transitions.Value
	  edt_style_time.Enabled = chk_style_use_transitions.Value
	  lbl_style_time.Enabled = chk_style_use_transitions.Value
	  lbl_style_frames.Enabled = chk_style_use_transitions.Value
	  //--
	  
	  //++EMP, 11/05
	  // Selectable highlight of choruses
	  chk_style_highlight_chorus.Value = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, _
	  "style/@highlight_chorus", True, True)
	  
	  // Determine if blanks use the previous or next slide's style
	  
	  rad_style_blank_next.Value = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, _
	  "style/@blank_uses_next", True, True)
	  rad_style_blank_prev.Value = Not rad_style_blank_next.Value
	  //--
	  
	  lst_style_subtitles.SetSelected(SmartML.GetValue(App.MyPresentSettings.DocumentElement, _
	  "style/@song_subtitles"))
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
	Protected FilterString As string
#tag EndProperty

#tag Property, Flags = &h1
	Protected IsAudioPlaying As Boolean
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
	  
	  SmartML.SetValue Settings, "alert/@valign", sal_alerts.GetVAlign
	  SmartML.SetValue Settings, "alert/@align", sal_alerts.GetHAlign
	  SmartML.SetValueF Settings, "alert", can_alerts_font.GetFont
	  
	  SmartML.SetValue(Settings, "logo", can_logo.GetImageAsString)
	  SmartML.SetValue(Settings, "logo_mask", can_logo_mask.GetImageAsString)
	  
	  //++EMP 09/05
	  SmartML.SetValueN(Settings, "style/@transition_frames", sld_style_frames.Value)
	  SmartML.SetValueN(Settings, "style/@transition_time", sld_style_time.Value)
	  //--
	  
	  //++EMP 11/05
	  // Moved from Action routines for individual controls so cancelling this form will truly cancel.
	  
	  SmartML.SetValueB Settings, "style/@blanks", chk_style_blanks.Value
	  SmartML.SetValueB Settings, "style/@transition", chk_style_use_transitions.Value
	  SmartML.SetValueB Settings, "style/@highlight_chorus", chk_style_highlight_chorus.Value
	  
	  SmartML.SetValueB Settings, "style/@exit_prompt", chk_style_exit_prompt.Value
	  '++JRC 12/05
	  SmartML.SetValueB Settings, "style/@descriptive_subtitle_info", chk_style_descriptive_subtitle_info.Value
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
	  
	  SmartML.SetValue Settings, "style/@song_subtitles", lst_style_subtitles.GetSelectedOptions
	  
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
	  
	  sld_style_frames.Enabled = Me.Value
	  sld_style_time.Enabled = Me.Value
	  edt_style_frames.Enabled = Me.Value
	  edt_style_time.Enabled = Me.Value
	  lbl_style_time.Enabled = Me.Value
	  lbl_style_frames.Enabled = Me.Value
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
