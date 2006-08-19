#tag Window
Begin Window PrintSettingsWindow
   Placement       =   0
   Width           =   525
   Height          =   325
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   1
   Composite       =   "True"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Print Settings"
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
      Left            =   365
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   294
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
      ControlOrder    =   0
      BehaviorIndex   =   1
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "&Cancel"
      Default         =   "False"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   445
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   294
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
      ControlOrder    =   1
      BehaviorIndex   =   2
   End
   Begin TabPanel tab_main_tabs
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Facing          =   0
      Height          =   275
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      PanelCount      =   3
      SmallTabs       =   "False"
      TabDefinition   =   "Fonts\rLayout\rMargins"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   10
      Underline       =   "False"
      Value           =   3
      Visible         =   "True"
      Width           =   505
      ControlOrder    =   2
      BehaviorIndex   =   0
      Begin Canvas can_print_margins
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   245
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_main_tabs"
         Left            =   15
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   3
         Top             =   35
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   495
         ControlOrder    =   3
         BehaviorIndex   =   3
         Begin StaticText lbl_page_top
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
            InitialParent   =   "can_print_margins"
            Italic          =   "False"
            Left            =   205
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            MultiLine       =   "False"
            TabPanelIndex   =   3
            Text            =   "Top:"
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   40
            Underline       =   "False"
            Visible         =   "True"
            Width           =   105
            ControlOrder    =   4
            BehaviorIndex   =   4
         End
         Begin SEditFieldNumeric edt_page_top
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
            DisplayFormat   =   "##0.00"
            Enabled         =   "True"
            EnforceRange    =   "False"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Italic          =   "False"
            Left            =   235
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Mask            =   ""
            Maximum         =   "-nan"
            Minimum         =   "-nan"
            MultiLine       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollBar       =   "True"
            ScrollBarHorizontal=   "False"
            ScrollBarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   3
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   55
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   45
            ControlOrder    =   5
            BehaviorIndex   =   33
         End
         Begin StaticText lbl_page_left
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
            InitialParent   =   "can_print_margins"
            Italic          =   "False"
            Left            =   100
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            MultiLine       =   "False"
            TabPanelIndex   =   3
            Text            =   "Left:"
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   130
            Underline       =   "False"
            Visible         =   "True"
            Width           =   95
            ControlOrder    =   6
            BehaviorIndex   =   5
         End
         Begin SEditFieldNumeric edt_page_left
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
            DisplayFormat   =   "##0.00"
            Enabled         =   "True"
            EnforceRange    =   "False"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Italic          =   "False"
            Left            =   125
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Mask            =   ""
            Maximum         =   "-nan"
            Minimum         =   "-nan"
            MultiLine       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollBar       =   "True"
            ScrollBarHorizontal=   "False"
            ScrollBarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   3
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   145
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   45
            ControlOrder    =   7
            BehaviorIndex   =   35
         End
         Begin StaticText lbl_page_bottom
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
            InitialParent   =   "can_print_margins"
            Italic          =   "False"
            Left            =   205
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            MultiLine       =   "False"
            TabPanelIndex   =   3
            Text            =   "Bottom:"
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   235
            Underline       =   "False"
            Visible         =   "True"
            Width           =   105
            ControlOrder    =   8
            BehaviorIndex   =   6
         End
         Begin SEditFieldNumeric edt_page_bottom
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
            DisplayFormat   =   "##0.00"
            Enabled         =   "True"
            EnforceRange    =   "False"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Italic          =   "False"
            Left            =   235
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Mask            =   ""
            Maximum         =   "-nan"
            Minimum         =   "-nan"
            MultiLine       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollBar       =   "True"
            ScrollBarHorizontal=   "False"
            ScrollBarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   3
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   250
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   45
            ControlOrder    =   9
            BehaviorIndex   =   36
         End
         Begin StaticText lbl_page_right
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
            InitialParent   =   "can_print_margins"
            Italic          =   "False"
            Left            =   325
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            MultiLine       =   "False"
            TabPanelIndex   =   3
            Text            =   "Right:"
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   132
            Underline       =   "False"
            Visible         =   "True"
            Width           =   95
            ControlOrder    =   10
            BehaviorIndex   =   7
         End
         Begin SEditFieldNumeric edt_page_right
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
            DisplayFormat   =   "##0.00"
            Enabled         =   "True"
            EnforceRange    =   "False"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Italic          =   "False"
            Left            =   345
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Mask            =   ""
            Maximum         =   "-nan"
            Minimum         =   "-nan"
            MultiLine       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollBar       =   "True"
            ScrollBarHorizontal=   "False"
            ScrollBarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   3
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   145
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   45
            ControlOrder    =   11
            BehaviorIndex   =   34
         End
         Begin Rectangle nil_page
            AutoDeactivate  =   "True"
            BalloonHelp     =   ""
            BorderWidth     =   1
            BottomRightColor=   0
            DisabledBalloonHelp=   ""
            Enabled         =   "True"
            FillColor       =   16777215
            Height          =   150
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Left            =   200
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   3
            Top             =   80
            TopLeftColor    =   0
            Visible         =   "True"
            Width           =   115
            ControlOrder    =   12
            BehaviorIndex   =   8
            Begin StaticText lbl_page_width
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
               InitialParent   =   "nil_page"
               Italic          =   "False"
               Left            =   205
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               MultiLine       =   "False"
               TabPanelIndex   =   3
               Text            =   "Width:"
               TextAlign       =   1
               TextColor       =   0
               TextFont        =   "Arial"
               TextSize        =   10
               Top             =   115
               Underline       =   "False"
               Visible         =   "True"
               Width           =   105
               ControlOrder    =   13
               BehaviorIndex   =   9
            End
            Begin SEditFieldNumeric edt_page_width
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
               DisplayFormat   =   "##0.00"
               Enabled         =   "True"
               EnforceRange    =   "False"
               Format          =   ""
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "nil_page"
               Italic          =   "False"
               Left            =   235
               LimitText       =   0
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               Mask            =   ""
               Maximum         =   "-nan"
               Minimum         =   "-nan"
               MultiLine       =   "False"
               Password        =   "False"
               ReadOnly        =   "False"
               ScrollBar       =   "True"
               ScrollBarHorizontal=   "False"
               ScrollBarVertical=   "True"
               Styled          =   "False"
               TabPanelIndex   =   3
               Text            =   ""
               TextColor       =   0
               TextFont        =   "Arial"
               TextSize        =   10
               Top             =   130
               Underline       =   "False"
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   45
               ControlOrder    =   14
               BehaviorIndex   =   37
            End
            Begin StaticText lbl_page_height
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
               InitialParent   =   "nil_page"
               Italic          =   "False"
               Left            =   205
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               MultiLine       =   "False"
               TabPanelIndex   =   3
               Text            =   "Height:"
               TextAlign       =   1
               TextColor       =   0
               TextFont        =   "Arial"
               TextSize        =   10
               Top             =   160
               Underline       =   "False"
               Visible         =   "True"
               Width           =   105
               ControlOrder    =   15
               BehaviorIndex   =   10
            End
            Begin SEditFieldNumeric edt_page_height
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
               DisplayFormat   =   "##0.00"
               Enabled         =   "True"
               EnforceRange    =   "False"
               Format          =   ""
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "nil_page"
               Italic          =   "False"
               Left            =   235
               LimitText       =   0
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               Mask            =   ""
               Maximum         =   "-nan"
               Minimum         =   "-nan"
               MultiLine       =   "False"
               Password        =   "False"
               ReadOnly        =   "False"
               ScrollBar       =   "True"
               ScrollBarHorizontal=   "False"
               ScrollBarVertical=   "True"
               Styled          =   "False"
               TabPanelIndex   =   3
               Text            =   ""
               TextColor       =   0
               TextFont        =   "Arial"
               TextSize        =   10
               Top             =   175
               Underline       =   "False"
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   45
               ControlOrder    =   16
               BehaviorIndex   =   38
            End
         End
         Begin GroupBox grp_page_units
            AutoDeactivate  =   "True"
            BalloonHelp     =   ""
            Bold            =   "False"
            Caption         =   "Units"
            DisabledBalloonHelp=   ""
            Enabled         =   "True"
            Height          =   78
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Italic          =   "False"
            Left            =   38
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   3
            TextFont        =   "System"
            TextSize        =   12
            Top             =   46
            Underline       =   "False"
            Visible         =   "True"
            Width           =   150
            ControlOrder    =   36
            BehaviorIndex   =   30
            Begin RadioButton rad_page_inches
               AutoDeactivate  =   "True"
               BalloonHelp     =   ""
               Bold            =   "False"
               Caption         =   "Inches"
               DisabledBalloonHelp=   ""
               Enabled         =   "True"
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_page_units"
               Italic          =   "False"
               Left            =   54
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   3
               TextFont        =   "System"
               TextSize        =   12
               Top             =   70
               Underline       =   "False"
               Value           =   "False"
               Visible         =   "True"
               Width           =   118
               ControlOrder    =   37
               BehaviorIndex   =   31
            End
            Begin RadioButton rad_page_cm
               AutoDeactivate  =   "True"
               BalloonHelp     =   ""
               Bold            =   "False"
               Caption         =   "cm"
               DisabledBalloonHelp=   ""
               Enabled         =   "True"
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_page_units"
               Italic          =   "False"
               Left            =   54
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   3
               TextFont        =   "System"
               TextSize        =   12
               Top             =   94
               Underline       =   "False"
               Value           =   "False"
               Visible         =   "True"
               Width           =   118
               ControlOrder    =   38
               BehaviorIndex   =   32
            End
         End
      End
      Begin Canvas can_print_fonts
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   245
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_main_tabs"
         Left            =   15
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   1
         Top             =   35
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   495
         ControlOrder    =   17
         BehaviorIndex   =   11
         Begin StaticText lbl_font_title
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
            InitialParent   =   "can_print_fonts"
            Italic          =   "False"
            Left            =   20
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            MultiLine       =   "False"
            TabPanelIndex   =   1
            Text            =   "Title:"
            TextAlign       =   2
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   65
            Underline       =   "False"
            Visible         =   "True"
            Width           =   60
            ControlOrder    =   18
            BehaviorIndex   =   12
         End
         Begin StaticText lbl_font_lyrics
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
            InitialParent   =   "can_print_fonts"
            Italic          =   "False"
            Left            =   20
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            MultiLine       =   "False"
            TabPanelIndex   =   1
            Text            =   "Lyrics:"
            TextAlign       =   2
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   230
            Underline       =   "False"
            Visible         =   "True"
            Width           =   60
            ControlOrder    =   19
            BehaviorIndex   =   13
         End
         Begin StaticText lbl_font_chords
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
            InitialParent   =   "can_print_fonts"
            Italic          =   "False"
            Left            =   255
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            MultiLine       =   "False"
            TabPanelIndex   =   1
            Text            =   "Chords:"
            TextAlign       =   2
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   65
            Underline       =   "False"
            Visible         =   "True"
            Width           =   80
            ControlOrder    =   20
            BehaviorIndex   =   14
         End
         Begin StaticText lbl_font_capo
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
            InitialParent   =   "can_print_fonts"
            Italic          =   "False"
            Left            =   255
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            MultiLine       =   "False"
            TabPanelIndex   =   1
            Text            =   "Capo Chords:"
            TextAlign       =   2
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   120
            Underline       =   "False"
            Visible         =   "True"
            Width           =   80
            ControlOrder    =   21
            BehaviorIndex   =   15
         End
         Begin StaticText lbl_font_author
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
            InitialParent   =   "can_print_fonts"
            Italic          =   "False"
            Left            =   20
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            MultiLine       =   "False"
            TabPanelIndex   =   1
            Text            =   "Author:"
            TextAlign       =   2
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   120
            Underline       =   "False"
            Visible         =   "True"
            Width           =   60
            ControlOrder    =   22
            BehaviorIndex   =   16
         End
         Begin StaticText lbl_font_copyright
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
            InitialParent   =   "can_print_fonts"
            Italic          =   "False"
            Left            =   255
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            MultiLine       =   "False"
            TabPanelIndex   =   1
            Text            =   "Copyright:"
            TextAlign       =   2
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   175
            Underline       =   "False"
            Visible         =   "True"
            Width           =   80
            ControlOrder    =   23
            BehaviorIndex   =   17
         End
         Begin StaticText lbl_font_sections
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
            InitialParent   =   "can_print_fonts"
            Italic          =   "False"
            Left            =   20
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            MultiLine       =   "False"
            TabPanelIndex   =   1
            Text            =   "Sections:"
            TextAlign       =   2
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   175
            Underline       =   "False"
            Visible         =   "True"
            Width           =   60
            ControlOrder    =   24
            BehaviorIndex   =   18
         End
         Begin SFontCanvas can_font_title
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AdvancedOptions =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            BalloonHelp     =   ""
            DisabledBalloonHelp=   ""
            Enabled         =   "True"
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Left            =   85
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   1
            Top             =   50
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   160
            ControlOrder    =   25
            BehaviorIndex   =   19
         End
         Begin SFontCanvas can_font_author
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AdvancedOptions =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            BalloonHelp     =   ""
            DisabledBalloonHelp=   ""
            Enabled         =   "True"
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Left            =   85
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   1
            Top             =   105
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   160
            ControlOrder    =   26
            BehaviorIndex   =   20
         End
         Begin SFontCanvas can_font_sections
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AdvancedOptions =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            BalloonHelp     =   ""
            DisabledBalloonHelp=   ""
            Enabled         =   "True"
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Left            =   85
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   1
            Top             =   160
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   160
            ControlOrder    =   27
            BehaviorIndex   =   21
         End
         Begin SFontCanvas can_font_lyrics
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AdvancedOptions =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            BalloonHelp     =   ""
            DisabledBalloonHelp=   ""
            Enabled         =   "True"
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Left            =   85
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   1
            Top             =   215
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   160
            ControlOrder    =   28
            BehaviorIndex   =   22
         End
         Begin SFontCanvas can_font_chords
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AdvancedOptions =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            BalloonHelp     =   ""
            DisabledBalloonHelp=   ""
            Enabled         =   "True"
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Left            =   340
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   1
            Top             =   50
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   160
            ControlOrder    =   29
            BehaviorIndex   =   23
         End
         Begin SFontCanvas can_font_capo
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AdvancedOptions =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            BalloonHelp     =   ""
            DisabledBalloonHelp=   ""
            Enabled         =   "True"
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Left            =   340
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   1
            Top             =   105
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   160
            ControlOrder    =   30
            BehaviorIndex   =   24
         End
         Begin SFontCanvas can_font_copyright
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AdvancedOptions =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            BalloonHelp     =   ""
            DisabledBalloonHelp=   ""
            Enabled         =   "True"
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_fonts"
            Left            =   340
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   1
            Top             =   160
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   160
            ControlOrder    =   31
            BehaviorIndex   =   25
         End
      End
      Begin Canvas can_print_layout
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   245
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_main_tabs"
         Left            =   15
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   2
         Top             =   35
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   495
         ControlOrder    =   32
         BehaviorIndex   =   26
         Begin StaticText lbl_layout_heading_border_thickness
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
            InitialParent   =   "can_print_layout"
            Italic          =   "False"
            Left            =   30
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            MultiLine       =   "False"
            TabPanelIndex   =   2
            Text            =   "Heading Border Thickness:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   55
            Underline       =   "False"
            Visible         =   "True"
            Width           =   300
            ControlOrder    =   33
            BehaviorIndex   =   27
         End
         Begin EditField edt_layout_heading_border_thickness
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
            InitialParent   =   "can_print_layout"
            Italic          =   "False"
            Left            =   30
            LimitText       =   4
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
            TabPanelIndex   =   2
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   70
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   50
            ControlOrder    =   34
            BehaviorIndex   =   28
         End
         Begin CheckBox chk_layout_title_in_caps
            AutoDeactivate  =   "True"
            BalloonHelp     =   ""
            Bold            =   "False"
            Caption         =   "Title in CAPS"
            DataField       =   ""
            DataSource      =   ""
            DisabledBalloonHelp=   ""
            Enabled         =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_layout"
            Italic          =   "False"
            Left            =   30
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   2
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   100
            Underline       =   "False"
            Value           =   "False"
            Visible         =   "True"
            Width           =   300
            ControlOrder    =   35
            BehaviorIndex   =   29
         End
      End
   End
End
#tag EndWindow

#tag WindowCode
#tag Event
	Sub Open()
	  
	  Dim PS As XmlElement
	  
	  PS = App.MyPrintSettings.DocumentElement
	  
	  ValuesInPoints = SmartML.GetValueB(PS, "page/@points", False)
	  
	  rad_page_inches.Value = SmartML.GetValueB(PS, "page/@inches", True, True)
	  rad_page_cm.Value = Not rad_page_inches.Value
	  
	  If ValuesInPoints Then
	    If rad_page_inches.Value Then
	      edt_page_top.SetValue  PointsToInches(SmartML.GetValueN(PS, "page/@top"))
	      edt_page_bottom.SetValue  PointsToInches(SmartML.GetValueN(PS, "page/@bottom"))
	      edt_page_left.SetValue  PointsToInches(SmartML.GetValueN(PS, "page/@left"))
	      edt_page_right.SetValue  PointsToInches(SmartML.GetValueN(PS, "page/@right"))
	      
	      edt_page_width.SetValue PointsToInches(SmartML.GetValueN(PS, "page/@width"))
	      edt_page_height.SetValue PointsToInches(SmartML.GetValueN(PS, "page/@height"))
	      
	    Else
	      edt_page_top.SetValue  PointsToCM(SmartML.GetValueN(PS, "page/@top"))
	      edt_page_bottom.SetValue  PointsToCM(SmartML.GetValueN(PS, "page/@bottom"))
	      edt_page_left.SetValue  PointsToCM(SmartML.GetValueN(PS, "page/@left"))
	      edt_page_right.SetValue  PointsToCM(SmartML.GetValueN(PS, "page/@right"))
	      
	      edt_page_width.SetValue PointsToCM(SmartML.GetValueN(PS, "page/@width"))
	      edt_page_height.SetValue PointsToCM(SmartML.GetValueN(PS, "page/@height"))
	    End If
	  Else
	    edt_page_top.SetValue  SmartML.GetValueN(PS, "page/@top")
	    edt_page_bottom.SetValue  SmartML.GetValueN(PS, "page/@bottom")
	    edt_page_left.SetValue  SmartML.GetValueN(PS, "page/@left")
	    edt_page_right.SetValue  SmartML.GetValueN(PS, "page/@right")
	    
	    edt_page_width.SetValue SmartML.GetValueN(PS, "page/@width")
	    edt_page_height.SetValue SmartML.GetValueN(PS, "page/@height")
	    
	  End If
	  Initializing = False
	  
	  // Mac and Windows use PrinterSetup for page size.
	  #If TargetMacOS
	    edt_page_width.Enabled = False
	    edt_page_height.Enabled = False
	  #ElseIf TargetWin32
	    edt_page_width.Enabled = False
	    edt_page_height.Enabled = False
	  #Endif  
	  
	  
	  can_font_title.SetFont SmartML.GetValueF(PS, "title")
	  can_font_author.SetFont SmartML.GetValueF(PS, "author")
	  can_font_sections.SetFont SmartML.GetValueF(PS, "heading")
	  can_font_lyrics.SetFont SmartML.GetValueF(PS, "lyrics")
	  can_font_chords.SetFont SmartML.GetValueF(PS, "chords")
	  can_font_capo.SetFont SmartML.GetValueF(PS, "capo_chords")
	  can_font_copyright.SetFont SmartML.GetValueF(PS, "copyright")
	  
	  chk_layout_title_in_caps.Value = SmartML.GetValueB(PS, "style/@caps_song_title")
	  edt_layout_heading_border_thickness.Text = SmartML.GetValue(PS, "style/@border_thickness")
	  
	  App.T.TranslateWindow Me, "print_settings", App.TranslationFonts
	  App.CenterInControlScreen Me
	End Sub
#tag EndEvent


#tag Method, Flags = &h0
	Sub Constructor()
	  Initializing = True // This needs to happen before the Open event EMP 06 Feb 06
	  // call the Window constructor, or Open events will not fire
	  Super.Window()
	  
	End Sub
#tag EndMethod

#tag Method, Flags = &h1
	Protected Sub ToCM(e As SEditFieldNumeric)
	  e.SetValue PointsToCM(InchesToPoints(e.Value))
	End Sub
#tag EndMethod

#tag Method, Flags = &h1
	Protected Sub ToInches(e As SEditFieldNumeric)
	  e.SetValue PointsToInches(CMtoPoints(e.Value))
	End Sub
#tag EndMethod


#tag Property, Flags = &h1
	Protected Initializing As Boolean
#tag EndProperty

#tag Property, Flags = &h1
	#tag Note
		
		This flag indicates if the margin values in the PrintSettings XML are in points.
		
		This allows for a smooth transition from storing in inches or cm to storing in
		points, and therefore being somewhat more precise and in line with the rest
		of the page calculations since the base unit of measure for the Graphics object
		is a point.
		
		See documentation in the OpenSongUtils module for the conversion factors used.
		
	#tag EndNote
	Protected ValuesInPoints As Boolean
#tag EndProperty


#tag EndWindowCode

#tag Events btn_ok
#tag Event
	Sub Action()
	  Dim PS As XmlElement
	  
	  PS = App.MyPrintSettings.DocumentElement
	  
	  SmartML.SetValueF(PS, "title", can_font_title.GetFont)
	  SmartML.SetValueF(PS, "author", can_font_author.GetFont)
	  SmartML.SetValueF(PS, "heading", can_font_sections.GetFont)
	  SmartML.SetValueF(PS, "lyrics", can_font_lyrics.GetFont)
	  SmartML.SetValueF(PS, "chords", can_font_chords.GetFont)
	  SmartML.SetValueF(PS, "capo_chords", can_font_capo.GetFont)
	  SmartML.SetValueF(PS, "copyright", can_font_copyright.GetFont)
	  
	  SmartML.SetValueB(PS, "page/@inches", rad_page_inches.Value)
	  SmartML.SetValueB(PS, "page/@points", True) // Flags unit values in the settings as being in points rather than in/cm
	  
	  If rad_page_inches.Value Then
	    
	    SmartML.SetValueN(PS, "page/@top", InchesToPoints(edt_page_top.Value))
	    SmartML.SetValueN(PS, "page/@bottom", InchesToPoints(edt_page_bottom.Value))
	    SmartML.SetValueN(PS, "page/@left", InchesToPoints(edt_page_left.Value))
	    SmartML.SetValueN(PS, "page/@right", InchesToPoints(edt_page_right.Value))
	    
	    SmartML.SetValueN(PS, "page/@width", InchesToPoints(edt_page_width.Value))
	    SmartML.SetValueN(PS, "page/@height", InchesToPoints(edt_page_height.Value))
	    
	  Else
	    
	    SmartML.SetValueN(PS, "page/@top", CMtoPoints(edt_page_top.Value))
	    SmartML.SetValueN(PS, "page/@bottom", CMtoPoints(edt_page_bottom.Value))
	    SmartML.SetValueN(PS, "page/@left", CMtoPoints(edt_page_left.Value))
	    SmartML.SetValueN(PS, "page/@right", CMtoPoints(edt_page_right.Value))
	    
	    SmartML.SetValueN(PS, "page/@width", CMtoPoints(edt_page_width.Value))
	    SmartML.SetValueN(PS, "page/@height", CMtoPoints(edt_page_height.Value))
	    
	  End If
	  
	  SmartML.SetValueB(PS, "style/@caps_song_title", chk_layout_title_in_caps.Value)
	  SmartML.SetValue(PS, "style/@border_thickness", edt_layout_heading_border_thickness.Text)
	  
	  //++
	  // Bug 1462055: Save settings on dialog exit
	  //
	  If Not SmartML.XDocToFile(App.MyPrintSettings, App.DocsFolder.Child("Settings").Child("PrintSettings")) Then SmartML.DisplayError
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
#tag Events edt_page_top
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_page_top.Text  = c.Text
	      return true
	    end if
	    
	  end if
	  c.close
	End Function
#tag EndEvent
#tag EndEvents
#tag Events edt_page_left
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_page_left.Text  = c.Text
	      return true
	    end if
	    
	  end if
	  c.close
	End Function
#tag EndEvent
#tag EndEvents
#tag Events edt_page_bottom
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_page_bottom.Text  = c.Text
	      return true
	    end if
	    
	  end if
	  c.close
	End Function
#tag EndEvent
#tag EndEvents
#tag Events edt_page_right
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_page_right.Text  = c.Text
	      return true
	    end if
	    
	  end if
	  c.close
	End Function
#tag EndEvent
#tag EndEvents
#tag Events edt_page_width
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_page_width.Text  = c.Text
	      return true
	    end if
	    
	  end if
	  c.close
	End Function
#tag EndEvent
#tag EndEvents
#tag Events edt_page_height
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_page_height.Text  = c.Text
	      return true
	    end if
	    
	  end if
	  c.close
	End Function
#tag EndEvent
#tag EndEvents
#tag Events edt_layout_heading_border_thickness
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_layout_heading_border_thickness.Text  = Left(c.Text, 4)
	      return true
	    end if
	    
	  end if
	  c.close
	End Function
#tag EndEvent
#tag EndEvents
#tag Events rad_page_inches
#tag Event
	Sub Action()
	  //
	  // Switch to inches.  Use 2.54cm to the inch as the conversion factor
	  //
	  // Ed Palmer, 6 Feb 2006
	  //
	  If Initializing Then Return
	  ToInches(edt_page_top)
	  ToInches(edt_page_left)
	  ToInches(edt_page_right)
	  ToInches(edt_page_bottom)
	  ToInches(edt_page_height)
	  ToInches(edt_page_width)
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events rad_page_cm
#tag Event
	Sub Action()
	  //
	  // Switch displayed measurements to centimeters
	  //
	  If Initializing Then Return // wait until everything is set up
	  ToCM(edt_page_top)
	  ToCM(edt_page_left)
	  ToCM(edt_page_right)
	  ToCM(edt_page_bottom)
	  ToCM(edt_page_height)
	  ToCM(edt_page_width)
	End Sub
#tag EndEvent
#tag EndEvents
