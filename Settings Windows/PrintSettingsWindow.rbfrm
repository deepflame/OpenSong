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
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   365
      Top             =   294
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
      TextSize        =   11
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   0
   End
   Begin PushButton btn_cancel
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   445
      Top             =   294
      Width           =   69
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "&Cancel"
      Default         =   "False"
      Cancel          =   "True"
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
      BehaviorIndex   =   1
   End
   Begin TabPanel tab_main_tabs
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   10
      Top             =   10
      Width           =   505
      Height          =   275
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Facing          =   0
      TabDefinition   =   "Fonts\rLayout\rMargins"
      Panels          =   ""
      SmallTabs       =   "False"
      Value           =   2
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      TextFont        =   "Arial"
      TextSize        =   11
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   2
      Begin Canvas can_print_margins
         Index           =   -2147483648
         ControlOrder    =   3
         Left            =   15
         Top             =   36
         Width           =   495
         Height          =   245
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   3
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   True
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "tab_main_tabs"
         BehaviorIndex   =   3
         Begin StaticText lbl_page_top
            Index           =   -2147483648
            ControlOrder    =   4
            Left            =   205
            Top             =   36
            Width           =   105
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   3
            Text            =   "Top:"
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
            InitialParent   =   "can_print_margins"
            BehaviorIndex   =   15
         End
         Begin StaticText lbl_page_bottom
            Index           =   -2147483648
            ControlOrder    =   5
            Left            =   205
            Top             =   234
            Width           =   105
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   3
            Text            =   "Bottom:"
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
            InitialParent   =   "can_print_margins"
            BehaviorIndex   =   4
         End
         Begin StaticText lbl_page_left
            Index           =   -2147483648
            ControlOrder    =   6
            Left            =   101
            Top             =   137
            Width           =   95
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   3
            Text            =   "Left:"
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
            InitialParent   =   "can_print_margins"
            BehaviorIndex   =   14
         End
         Begin Rectangle nil_page
            Index           =   -2147483648
            ControlOrder    =   9
            Left            =   200
            Top             =   81
            Width           =   115
            Height          =   150
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   3
            Visible         =   True
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            Enabled         =   True
            FillColor       =   16777215
            BorderWidth     =   1
            TopLeftColor    =   0
            BottomRightColor=   0
            InitialParent   =   "can_print_margins"
            BehaviorIndex   =   5
            Begin StaticText lbl_page_height
               Index           =   -2147483648
               ControlOrder    =   11
               Left            =   205
               Top             =   161
               Width           =   105
               Height          =   15
               LockLeft        =   "False"
               LockTop         =   "False"
               LockRight       =   "False"
               LockBottom      =   "False"
               TabPanelIndex   =   3
               Text            =   "Height:"
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
               InitialParent   =   "nil_page"
               BehaviorIndex   =   6
            End
            Begin StaticText lbl_page_width
               Index           =   -2147483648
               ControlOrder    =   13
               Left            =   205
               Top             =   110
               Width           =   105
               Height          =   15
               LockLeft        =   "False"
               LockTop         =   "False"
               LockRight       =   "False"
               LockBottom      =   "False"
               TabPanelIndex   =   3
               Text            =   "Width:"
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
               InitialParent   =   "nil_page"
               BehaviorIndex   =   7
            End
            Begin SEditFieldNumeric edt_page_width
               Index           =   -2147483648
               ControlOrder    =   29
               Left            =   217
               Top             =   127
               Width           =   80
               Height          =   22
               LockLeft        =   ""
               LockTop         =   ""
               LockRight       =   ""
               LockBottom      =   ""
               TabPanelIndex   =   3
               Border          =   "True"
               Multiline       =   ""
               ScrollbarHorizontal=   ""
               ScrollbarVertical=   "True"
               Styled          =   ""
               Password        =   ""
               UseFocusRing    =   "True"
               TextColor       =   &h000000
               BackColor       =   &hFFFFFF
               Enabled         =   "True"
               Format          =   ""
               Visible         =   "True"
               HelpTag         =   ""
               AutoDeactivate  =   "True"
               TextFont        =   "System"
               TextSize        =   0
               Bold            =   ""
               Italic          =   ""
               Underline       =   ""
               Text            =   ""
               Mask            =   ""
               ReadOnly        =   ""
               LimitText       =   0
               AcceptTabs      =   ""
               Alignment       =   0
               DataSource      =   ""
               DataField       =   ""
               InitialParent   =   "nil_page"
               EnforceRange    =   0
               Maximum         =   0
               Minimum         =   0
               BehaviorIndex   =   8
            End
            Begin SEditFieldNumeric edt_page_height
               Index           =   -2147483648
               ControlOrder    =   31
               Left            =   217
               Top             =   179
               Width           =   80
               Height          =   22
               LockLeft        =   ""
               LockTop         =   ""
               LockRight       =   ""
               LockBottom      =   ""
               TabPanelIndex   =   3
               Border          =   "True"
               Multiline       =   ""
               ScrollbarHorizontal=   ""
               ScrollbarVertical=   "True"
               Styled          =   ""
               Password        =   ""
               UseFocusRing    =   "True"
               TextColor       =   &h000000
               BackColor       =   &hFFFFFF
               Enabled         =   "True"
               Format          =   ""
               Visible         =   "True"
               HelpTag         =   ""
               AutoDeactivate  =   "True"
               TextFont        =   "System"
               TextSize        =   0
               Bold            =   ""
               Italic          =   ""
               Underline       =   ""
               Text            =   ""
               Mask            =   ""
               ReadOnly        =   ""
               LimitText       =   0
               AcceptTabs      =   ""
               Alignment       =   0
               DataSource      =   ""
               DataField       =   ""
               InitialParent   =   "nil_page"
               EnforceRange    =   0
               Maximum         =   0
               Minimum         =   0
               BehaviorIndex   =   9
            End
         End
         Begin StaticText lbl_page_right
            Index           =   -2147483648
            ControlOrder    =   12
            Left            =   325
            Top             =   137
            Width           =   95
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   3
            Text            =   "Right:"
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
            InitialParent   =   "can_print_margins"
            BehaviorIndex   =   17
         End
         Begin GroupBox grp_page_units
            Index           =   -2147483648
            ControlOrder    =   32
            Left            =   38
            Top             =   47
            Width           =   150
            Height          =   78
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   3
            Caption         =   "Units"
            Enabled         =   True
            Visible         =   True
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            TextFont        =   "System"
            TextSize        =   12
            Bold            =   "False"
            Italic          =   "False"
            Underline       =   "False"
            InitialParent   =   "can_print_margins"
            BehaviorIndex   =   10
            Begin RadioButton rad_page_inches
               Index           =   -2147483648
               ControlOrder    =   34
               Left            =   54
               Top             =   71
               Width           =   118
               Height          =   20
               LockLeft        =   "False"
               LockTop         =   "False"
               LockRight       =   "False"
               LockBottom      =   "False"
               TabPanelIndex   =   3
               Caption         =   "Inches"
               Enabled         =   True
               Visible         =   True
               HelpTag         =   ""
               AutoDeactivate  =   "True"
               TextFont        =   "System"
               TextSize        =   12
               Bold            =   "False"
               Italic          =   "False"
               Underline       =   "False"
               Value           =   "False"
               InitialParent   =   "grp_page_units"
               BehaviorIndex   =   11
            End
            Begin RadioButton rad_page_cm
               Index           =   -2147483648
               ControlOrder    =   35
               Left            =   54
               Top             =   95
               Width           =   118
               Height          =   20
               LockLeft        =   "False"
               LockTop         =   "False"
               LockRight       =   "False"
               LockBottom      =   "False"
               TabPanelIndex   =   3
               Caption         =   "cm"
               Enabled         =   True
               Visible         =   True
               HelpTag         =   ""
               AutoDeactivate  =   "True"
               TextFont        =   "System"
               TextSize        =   12
               Bold            =   "False"
               Italic          =   "False"
               Underline       =   "False"
               Value           =   "False"
               InitialParent   =   "grp_page_units"
               BehaviorIndex   =   12
            End
         End
         Begin SEditFieldNumeric edt_page_top
            Index           =   -2147483648
            ControlOrder    =   33
            Left            =   217
            Top             =   55
            Width           =   80
            Height          =   22
            LockLeft        =   ""
            LockTop         =   ""
            LockRight       =   ""
            LockBottom      =   ""
            TabPanelIndex   =   3
            Border          =   "True"
            Multiline       =   ""
            ScrollbarHorizontal=   ""
            ScrollbarVertical=   "True"
            Styled          =   ""
            Password        =   ""
            UseFocusRing    =   "True"
            TextColor       =   &h000000
            BackColor       =   &hFFFFFF
            Enabled         =   "True"
            Format          =   ""
            Visible         =   "True"
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            TextFont        =   "System"
            TextSize        =   0
            Bold            =   ""
            Italic          =   ""
            Underline       =   ""
            Text            =   ""
            Mask            =   ""
            ReadOnly        =   ""
            LimitText       =   0
            AcceptTabs      =   ""
            Alignment       =   0
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "can_print_margins"
            EnforceRange    =   0
            Maximum         =   0
            Minimum         =   0
            BehaviorIndex   =   38
         End
         Begin SEditFieldNumeric edt_page_left
            Index           =   -2147483648
            ControlOrder    =   36
            Left            =   108
            Top             =   154
            Width           =   80
            Height          =   22
            LockLeft        =   ""
            LockTop         =   ""
            LockRight       =   ""
            LockBottom      =   ""
            TabPanelIndex   =   3
            Border          =   "True"
            Multiline       =   ""
            ScrollbarHorizontal=   ""
            ScrollbarVertical=   "True"
            Styled          =   ""
            Password        =   ""
            UseFocusRing    =   "True"
            TextColor       =   &h000000
            BackColor       =   &hFFFFFF
            Enabled         =   "True"
            Format          =   ""
            Visible         =   "True"
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            TextFont        =   "System"
            TextSize        =   0
            Bold            =   ""
            Italic          =   ""
            Underline       =   ""
            Text            =   ""
            Mask            =   ""
            ReadOnly        =   ""
            LimitText       =   0
            AcceptTabs      =   ""
            Alignment       =   0
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "can_print_margins"
            EnforceRange    =   0
            Maximum         =   0
            Minimum         =   0
            BehaviorIndex   =   13
         End
         Begin SEditFieldNumeric edt_page_right
            Index           =   -2147483648
            ControlOrder    =   37
            Left            =   332
            Top             =   154
            Width           =   80
            Height          =   22
            LockLeft        =   ""
            LockTop         =   ""
            LockRight       =   ""
            LockBottom      =   ""
            TabPanelIndex   =   3
            Border          =   "True"
            Multiline       =   ""
            ScrollbarHorizontal=   ""
            ScrollbarVertical=   "True"
            Styled          =   ""
            Password        =   ""
            UseFocusRing    =   "True"
            TextColor       =   &h000000
            BackColor       =   &hFFFFFF
            Enabled         =   "True"
            Format          =   ""
            Visible         =   "True"
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            TextFont        =   "System"
            TextSize        =   0
            Bold            =   ""
            Italic          =   ""
            Underline       =   ""
            Text            =   ""
            Mask            =   ""
            ReadOnly        =   ""
            LimitText       =   0
            AcceptTabs      =   ""
            Alignment       =   0
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "can_print_margins"
            EnforceRange    =   0
            Maximum         =   0
            Minimum         =   0
            BehaviorIndex   =   16
         End
         Begin SEditFieldNumeric edt_page_bottom
            Index           =   -2147483648
            ControlOrder    =   38
            Left            =   217
            Top             =   251
            Width           =   80
            Height          =   22
            LockLeft        =   ""
            LockTop         =   ""
            LockRight       =   ""
            LockBottom      =   ""
            TabPanelIndex   =   3
            Border          =   "True"
            Multiline       =   ""
            ScrollbarHorizontal=   ""
            ScrollbarVertical=   "True"
            Styled          =   ""
            Password        =   ""
            UseFocusRing    =   "True"
            TextColor       =   &h000000
            BackColor       =   &hFFFFFF
            Enabled         =   "True"
            Format          =   ""
            Visible         =   "True"
            HelpTag         =   ""
            AutoDeactivate  =   "True"
            TextFont        =   "System"
            TextSize        =   0
            Bold            =   ""
            Italic          =   ""
            Underline       =   ""
            Text            =   ""
            Mask            =   ""
            ReadOnly        =   ""
            LimitText       =   0
            AcceptTabs      =   ""
            Alignment       =   0
            DataSource      =   ""
            DataField       =   ""
            InitialParent   =   "can_print_margins"
            EnforceRange    =   0
            Maximum         =   0
            Minimum         =   0
            BehaviorIndex   =   18
         End
      End
      Begin StaticText lbl_layout_heading_border_thickness
         Index           =   -2147483648
         ControlOrder    =   7
         Left            =   30
         Top             =   55
         Width           =   300
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   2
         Text            =   "Heading Border Thickness:"
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
         InitialParent   =   "tab_main_tabs"
         BehaviorIndex   =   19
      End
      Begin EditField edt_layout_heading_border_thickness
         Index           =   -2147483648
         ControlOrder    =   8
         Left            =   30
         Top             =   70
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
         Mask            =   ""
         ReadOnly        =   "False"
         LimitText       =   4
         AcceptTabs      =   "False"
         Alignment       =   0
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "tab_main_tabs"
         BehaviorIndex   =   20
      End
      Begin CheckBox chk_layout_title_in_caps
         Index           =   -2147483648
         ControlOrder    =   10
         Left            =   30
         Top             =   100
         Width           =   300
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   2
         Caption         =   "Title in CAPS"
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
         InitialParent   =   "tab_main_tabs"
         BehaviorIndex   =   21
      End
      Begin StaticText lbl_font_title
         Index           =   -2147483648
         ControlOrder    =   14
         Left            =   20
         Top             =   65
         Width           =   60
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   1
         Text            =   "Title:"
         TextAlign       =   2
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
         InitialParent   =   "tab_main_tabs"
         BehaviorIndex   =   22
      End
      Begin StaticText lbl_font_lyrics
         Index           =   -2147483648
         ControlOrder    =   15
         Left            =   20
         Top             =   230
         Width           =   60
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   1
         Text            =   "Lyrics:"
         TextAlign       =   2
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
         InitialParent   =   "tab_main_tabs"
         BehaviorIndex   =   23
      End
      Begin StaticText lbl_font_chords
         Index           =   -2147483648
         ControlOrder    =   16
         Left            =   255
         Top             =   65
         Width           =   80
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   1
         Text            =   "Chords:"
         TextAlign       =   2
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
         InitialParent   =   "tab_main_tabs"
         BehaviorIndex   =   24
      End
      Begin StaticText lbl_font_capo
         Index           =   -2147483648
         ControlOrder    =   17
         Left            =   255
         Top             =   120
         Width           =   80
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   1
         Text            =   "Capo Chords:"
         TextAlign       =   2
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
         InitialParent   =   "tab_main_tabs"
         BehaviorIndex   =   25
      End
      Begin StaticText lbl_font_author
         Index           =   -2147483648
         ControlOrder    =   18
         Left            =   20
         Top             =   120
         Width           =   60
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   1
         Text            =   "Author:"
         TextAlign       =   2
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
         InitialParent   =   "tab_main_tabs"
         BehaviorIndex   =   26
      End
      Begin Canvas can_print_fonts
         Index           =   -2147483648
         ControlOrder    =   19
         Left            =   15
         Top             =   37
         Width           =   495
         Height          =   245
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   1
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   True
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "tab_main_tabs"
         BehaviorIndex   =   27
         Begin StaticText lbl_font_copyright
            Index           =   -2147483648
            ControlOrder    =   20
            Left            =   255
            Top             =   175
            Width           =   80
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   1
            Text            =   "Copyright:"
            TextAlign       =   2
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
            InitialParent   =   "can_print_fonts"
            BehaviorIndex   =   28
         End
         Begin StaticText lbl_font_sections
            Index           =   -2147483648
            ControlOrder    =   21
            Left            =   20
            Top             =   175
            Width           =   60
            Height          =   15
            LockLeft        =   "False"
            LockTop         =   "False"
            LockRight       =   "False"
            LockBottom      =   "False"
            TabPanelIndex   =   1
            Text            =   "Sections:"
            TextAlign       =   2
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
            InitialParent   =   "can_print_fonts"
            BehaviorIndex   =   29
         End
         Begin SFontCanvas can_font_title
            ControlOrder    =   22
            Width           =   160
            Height          =   50
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
            InitialParent   =   "can_print_fonts"
            Index           =   -2147483648
            Left            =   85
            Top             =   50
            AdvancedOptions =   "False"
            BehaviorIndex   =   30
         End
         Begin SFontCanvas can_font_author
            ControlOrder    =   23
            Width           =   160
            Height          =   50
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
            InitialParent   =   "can_print_fonts"
            Index           =   -2147483648
            Left            =   85
            Top             =   105
            AdvancedOptions =   "False"
            BehaviorIndex   =   31
         End
         Begin SFontCanvas can_font_sections
            ControlOrder    =   24
            Width           =   160
            Height          =   50
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
            InitialParent   =   "can_print_fonts"
            Index           =   -2147483648
            Left            =   85
            Top             =   160
            AdvancedOptions =   "False"
            BehaviorIndex   =   32
         End
         Begin SFontCanvas can_font_lyrics
            ControlOrder    =   25
            Width           =   160
            Height          =   50
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
            InitialParent   =   "can_print_fonts"
            Index           =   -2147483648
            Left            =   85
            Top             =   215
            AdvancedOptions =   "False"
            BehaviorIndex   =   33
         End
         Begin SFontCanvas can_font_chords
            ControlOrder    =   26
            Width           =   160
            Height          =   50
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
            InitialParent   =   "can_print_fonts"
            Index           =   -2147483648
            Left            =   340
            Top             =   50
            AdvancedOptions =   "False"
            BehaviorIndex   =   34
         End
         Begin SFontCanvas can_font_capo
            ControlOrder    =   27
            Width           =   160
            Height          =   50
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
            InitialParent   =   "can_print_fonts"
            Index           =   -2147483648
            Left            =   340
            Top             =   105
            AdvancedOptions =   "False"
            BehaviorIndex   =   35
         End
         Begin SFontCanvas can_font_copyright
            ControlOrder    =   28
            Width           =   160
            Height          =   50
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
            InitialParent   =   "can_print_fonts"
            Index           =   -2147483648
            Left            =   340
            Top             =   160
            AdvancedOptions =   "False"
            BehaviorIndex   =   36
         End
      End
      Begin Canvas can_print_layout
         Index           =   -2147483648
         ControlOrder    =   30
         Left            =   15
         Top             =   37
         Width           =   495
         Height          =   245
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   2
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   True
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "tab_main_tabs"
         BehaviorIndex   =   37
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
	  
	  'If rad_page_inches.Value Then
	  '
	  'SmartML.SetValueN(PS, "page/@top", InchesToPoints(edt_page_top.Value))
	  'SmartML.SetValueN(PS, "page/@bottom", InchesToPoints(edt_page_bottom.Value))
	  'SmartML.SetValueN(PS, "page/@left", InchesToPoints(edt_page_left.Value))
	  'SmartML.SetValueN(PS, "page/@right", InchesToPoints(edt_page_right.Value))
	  '
	  'SmartML.SetValueN(PS, "page/@width", InchesToPoints(edt_page_width.Value))
	  'SmartML.SetValueN(PS, "page/@height", InchesToPoints(edt_page_height.Value))
	  '
	  'Else
	  '
	  'SmartML.SetValueN(PS, "page/@top", CMtoPoints(edt_page_top.Value))
	  'SmartML.SetValueN(PS, "page/@bottom", CMtoPoints(edt_page_bottom.Value))
	  'SmartML.SetValueN(PS, "page/@left", CMtoPoints(edt_page_left.Value))
	  'SmartML.SetValueN(PS, "page/@right", CMtoPoints(edt_page_right.Value))
	  '
	  'SmartML.SetValueN(PS, "page/@width", CMtoPoints(edt_page_width.Value))
	  'SmartML.SetValueN(PS, "page/@height", CMtoPoints(edt_page_height.Value))
	  '
	  'End If
	  
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
