#tag Window
Begin Window PrintSettingsWindow
   BackColor       =   16777215
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "True"
   Frame           =   1
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   325
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
   Title           =   "Print Settings"
   Visible         =   "True"
   Width           =   525
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
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "&Cancel"
      ControlOrder    =   1
      Default         =   "False"
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
   End
   Begin TabPanel tab_main_tabs
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   2
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
      Panels          =   ""
      SmallTabs       =   "False"
      TabDefinition   =   "Fonts\rLayout\rMargins"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   10
      Underline       =   "False"
      Value           =   2
      Visible         =   "True"
      Width           =   505
      Begin Canvas can_print_fonts
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   3
         Enabled         =   "True"
         EraseBackground =   "True"
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
         TextFont        =   "System"
         TextSize        =   0
         Top             =   35
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   495
         Begin StaticText lbl_font_title
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   4
            DataField       =   ""
            DataSource      =   ""
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
            Multiline       =   "False"
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
         End
         Begin SFontCanvas can_font_title
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AdvancedOptions =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   5
            Enabled         =   "True"
            EraseBackground =   "True"
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
            TextFont        =   "System"
            TextSize        =   0
            Top             =   50
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   160
         End
         Begin StaticText lbl_font_author
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   6
            DataField       =   ""
            DataSource      =   ""
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
            Multiline       =   "False"
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
         End
         Begin SFontCanvas can_font_author
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AdvancedOptions =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   7
            Enabled         =   "True"
            EraseBackground =   "True"
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
            TextFont        =   "System"
            TextSize        =   0
            Top             =   105
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   160
         End
         Begin StaticText lbl_font_sections
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   8
            DataField       =   ""
            DataSource      =   ""
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
            Multiline       =   "False"
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
         End
         Begin SFontCanvas can_font_sections
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AdvancedOptions =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   9
            Enabled         =   "True"
            EraseBackground =   "True"
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
            TextFont        =   "System"
            TextSize        =   0
            Top             =   160
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   160
         End
         Begin StaticText lbl_font_lyrics
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   10
            DataField       =   ""
            DataSource      =   ""
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
            Multiline       =   "False"
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
         End
         Begin SFontCanvas can_font_lyrics
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AdvancedOptions =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   11
            Enabled         =   "True"
            EraseBackground =   "True"
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
            TextFont        =   "System"
            TextSize        =   0
            Top             =   215
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   160
         End
         Begin StaticText lbl_font_chords
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   12
            DataField       =   ""
            DataSource      =   ""
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
            Multiline       =   "False"
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
         End
         Begin SFontCanvas can_font_chords
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AdvancedOptions =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   13
            Enabled         =   "True"
            EraseBackground =   "True"
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
            TextFont        =   "System"
            TextSize        =   0
            Top             =   50
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   160
         End
         Begin StaticText lbl_font_capo
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   14
            DataField       =   ""
            DataSource      =   ""
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
            Multiline       =   "False"
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
         End
         Begin SFontCanvas can_font_capo
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AdvancedOptions =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   15
            Enabled         =   "True"
            EraseBackground =   "True"
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
            TextFont        =   "System"
            TextSize        =   0
            Top             =   105
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   160
         End
         Begin StaticText lbl_font_copyright
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   16
            DataField       =   ""
            DataSource      =   ""
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
            Multiline       =   "False"
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
         End
         Begin SFontCanvas can_font_copyright
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AdvancedOptions =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   17
            Enabled         =   "True"
            EraseBackground =   "True"
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
            TextFont        =   "System"
            TextSize        =   0
            Top             =   160
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   160
         End
      End
      Begin Canvas can_print_layout
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   18
         Enabled         =   "True"
         EraseBackground =   "True"
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
         TextFont        =   "System"
         TextSize        =   0
         Top             =   35
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   495
         Begin StaticText lbl_layout_heading_border_thickness
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   19
            DataField       =   ""
            DataSource      =   ""
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
            Multiline       =   "False"
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
         End
         Begin EditField edt_layout_heading_border_thickness
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   20
            DataField       =   ""
            DataSource      =   ""
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
            Top             =   70
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   50
         End
         Begin CheckBox chk_layout_title_in_caps
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Title in CAPS"
            ControlOrder    =   21
            DataField       =   ""
            DataSource      =   ""
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
         End
      End
      Begin Canvas can_print_margins
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   22
         Enabled         =   "True"
         EraseBackground =   "True"
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
         TextFont        =   "System"
         TextSize        =   0
         Top             =   35
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   495
         Begin StaticText lbl_page_top
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   23
            DataField       =   ""
            DataSource      =   ""
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
            Multiline       =   "False"
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
         End
         Begin SEditFieldNumeric edt_page_top
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   24
            DataField       =   ""
            DataSource      =   ""
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
            Maximum         =   431
            Minimum         =   4.310000e+6
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            SignalRangeErrors=   0
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
         End
         Begin StaticText lbl_page_left
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   25
            DataField       =   ""
            DataSource      =   ""
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
            Multiline       =   "False"
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
         End
         Begin SEditFieldNumeric edt_page_left
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   26
            DataField       =   ""
            DataSource      =   ""
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
            Maximum         =   4.310000e+6
            Minimum         =   4.310000e+6
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            SignalRangeErrors=   0
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
         End
         Begin StaticText lbl_page_bottom
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   27
            DataField       =   ""
            DataSource      =   ""
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
            Multiline       =   "False"
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
         End
         Begin SEditFieldNumeric edt_page_bottom
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   28
            DataField       =   ""
            DataSource      =   ""
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
            Maximum         =   4.310000e+6
            Minimum         =   4.310000e+6
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            SignalRangeErrors=   0
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
         End
         Begin StaticText lbl_page_right
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   29
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_print_margins"
            Italic          =   "False"
            Left            =   320
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
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
         End
         Begin SEditFieldNumeric edt_page_right
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   30
            DataField       =   ""
            DataSource      =   ""
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
            Maximum         =   4.310000e+6
            Minimum         =   4.310000e+6
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            SignalRangeErrors=   0
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
         End
         Begin Rectangle nil_page
            AutoDeactivate  =   "True"
            BorderWidth     =   1
            BottomRightColor=   0
            ControlOrder    =   31
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
            TextFont        =   "System"
            TextSize        =   0
            Top             =   80
            TopLeftColor    =   0
            Visible         =   "True"
            Width           =   115
            Begin StaticText lbl_page_width
               AutoDeactivate  =   "True"
               Bold            =   "False"
               ControlOrder    =   32
               DataField       =   ""
               DataSource      =   ""
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
               Multiline       =   "False"
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
            End
            Begin SEditFieldNumeric edt_page_width
               AcceptTabs      =   "False"
               Alignment       =   0
               AutoDeactivate  =   "True"
               BackColor       =   16777215
               Bold            =   "False"
               Border          =   "True"
               ControlOrder    =   33
               DataField       =   ""
               DataSource      =   ""
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
               Maximum         =   4.310000e+6
               Minimum         =   4.310000e+6
               Multiline       =   "False"
               Password        =   "False"
               ReadOnly        =   "False"
               ScrollbarHorizontal=   "False"
               ScrollbarVertical=   "True"
               SignalRangeErrors=   0
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
            End
            Begin StaticText lbl_page_height
               AutoDeactivate  =   "True"
               Bold            =   "False"
               ControlOrder    =   34
               DataField       =   ""
               DataSource      =   ""
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
               Multiline       =   "False"
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
            End
            Begin SEditFieldNumeric edt_page_height
               AcceptTabs      =   "False"
               Alignment       =   0
               AutoDeactivate  =   "True"
               BackColor       =   16777215
               Bold            =   "False"
               Border          =   "True"
               ControlOrder    =   35
               DataField       =   ""
               DataSource      =   ""
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
               Maximum         =   4.310000e+6
               Minimum         =   4.310000e+6
               Multiline       =   "False"
               Password        =   "False"
               ReadOnly        =   "False"
               ScrollbarHorizontal=   "False"
               ScrollbarVertical=   "True"
               SignalRangeErrors=   0
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
            End
         End
      End
      Begin GroupBox grp_page_units
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Units"
         ControlOrder    =   36
         Enabled         =   "True"
         Height          =   78
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_main_tabs"
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
         Begin RadioButton rad_page_inches
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Inches"
            ControlOrder    =   37
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
         End
         Begin RadioButton rad_page_cm
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "cm"
            ControlOrder    =   38
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
         End
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  
		  Dim PS As XmlElement
		  Dim Setup As PrinterSetup
		  
		  PS = App.MyPrintSettings.DocumentElement
		  Setup = App.GetPrinterSetup(False, Nil)
		  
		  ValuesInPoints = SmartML.GetValueB(PS, "page/@points", False)
		  
		  rad_page_inches.Value = SmartML.GetValueB(PS, "page/@inches", True, True)
		  rad_page_cm.Value = Not rad_page_inches.Value
		  SetupMarginMinimums(Setup, rad_page_inches.Value)
		  
		  If ValuesInPoints Then
		    If rad_page_inches.Value Then
		      edt_page_top.SetValue  Max(PointsToInches(SmartML.GetValueN(PS, "page/@top")), edt_page_top.Minimum)
		      edt_page_bottom.SetValue  Max(PointsToInches(SmartML.GetValueN(PS, "page/@bottom")), edt_page_bottom.Minimum)
		      edt_page_left.SetValue  Max(PointsToInches(SmartML.GetValueN(PS, "page/@left")), edt_page_left.Minimum)
		      edt_page_right.SetValue  Max(PointsToInches(SmartML.GetValueN(PS, "page/@right")), edt_page_right.Minimum)
		      
		      If Setup <> Nil Then
		        edt_page_width.SetValue Setup.PageWidth / Setup.HorizontalResolution
		        edt_page_height.SetValue Setup.PageHeight / Setup.VerticalResolution
		      Else
		        edt_page_width.SetValue PointsToInches(SmartML.GetValueN(PS, "page/@width"))
		        edt_page_height.SetValue PointsToInches(SmartML.GetValueN(PS, "page/@height"))
		      End If
		      
		    Else
		      edt_page_top.SetValue  Max(PointsToCM(SmartML.GetValueN(PS, "page/@top")), edt_page_top.Minimum)
		      edt_page_bottom.SetValue  Max(PointsToCM(SmartML.GetValueN(PS, "page/@bottom")), edt_page_bottom.Minimum)
		      edt_page_left.SetValue  Max(PointsToCM(SmartML.GetValueN(PS, "page/@left")), edt_page_left.Minimum)
		      edt_page_right.SetValue  Max(PointsToCM(SmartML.GetValueN(PS, "page/@right")), edt_page_right.Minimum)
		      
		      If Setup <> Nil Then
		        edt_page_width.SetValue PointsToCM(InchesToPoints(Setup.PageWidth / Setup.HorizontalResolution))
		        edt_page_height.SetValue PointsToCM(InchesToPoints(Setup.PageHeight / Setup.VerticalResolution))
		      Else
		        edt_page_width.SetValue PointsToCM(SmartML.GetValueN(PS, "page/@width"))
		        edt_page_height.SetValue PointsToCM(SmartML.GetValueN(PS, "page/@height"))
		      End If
		    End If
		  Else
		    edt_page_top.SetValue  SmartML.GetValueN(PS, "page/@top")
		    edt_page_bottom.SetValue  SmartML.GetValueN(PS, "page/@bottom")
		    edt_page_left.SetValue  SmartML.GetValueN(PS, "page/@left")
		    edt_page_right.SetValue  SmartML.GetValueN(PS, "page/@right")
		    If Setup <> Nil Then
		      edt_page_width.SetValue Setup.PageWidth / Setup.HorizontalResolution
		      edt_page_height.SetValue Setup.PageHeight / Setup.VerticalResolution
		    Else
		      edt_page_width.SetValue SmartML.GetValueN(PS, "page/@width")
		      edt_page_height.SetValue SmartML.GetValueN(PS, "page/@height")
		    End If
		    rad_page_inches.Value = True
		  End If
		  edt_page_top.EnforceRange = True
		  edt_page_left.EnforceRange = True
		  edt_page_right.EnforceRange = True
		  edt_page_bottom.EnforceRange = True
		  Initializing = False
		  
		  // Mac and Windows use PrinterSetup for page size.
		  #If TargetMacOS Or TargetWin32
		    edt_page_width.ReadOnly = True
		    edt_page_height.ReadOnly = True
		  #Else
		    edt_page_width.ReadOnly = False
		    edt_page_height.ReadOnly = False
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
		Protected Sub SetupMarginMinimums(Setup As PrinterSetup, UseInches As Boolean)
		  
		  If Setup <> Nil Then
		    If UseInches Then
		      edt_page_top.Minimum = Abs(Setup.PageTop) / Setup.VerticalResolution
		      edt_page_bottom.Minimum = (Setup.PageHeight - Setup.Height - Abs(Setup.PageTop)) / Setup.VerticalResolution
		      edt_page_left.Minimum = Abs(Setup.PageLeft) / Setup.HorizontalResolution
		      edt_page_right.Minimum = (Setup.PageWidth - Setup.Width - Abs(Setup.PageLeft)) / Setup.HorizontalResolution
		      
		      edt_page_top.Maximum = (Setup.Height + Abs(Setup.PageTop)) / Setup.VerticalResolution
		      edt_page_bottom.Maximum = (Setup.PageHeight - Abs(Setup.PageTop)) / Setup.VerticalResolution
		      edt_page_left.Maximum = (Setup.Width + Abs(Setup.PageLeft)) / Setup.HorizontalResolution
		      edt_page_right.Maximum = (Setup.Width - Abs(Setup.PageLeft)) / Setup.HorizontalResolution
		    Else
		      edt_page_top.Minimum = PointsToCM(InchesToPoints(Abs(Setup.PageTop) / Setup.VerticalResolution))
		      edt_page_bottom.Minimum = PointsToCM(InchesToPoints((Setup.PageHeight - Setup.Height - Abs(Setup.PageTop)) / Setup.VerticalResolution))
		      edt_page_left.Minimum = PointsToCM(InchesToPoints(Abs(Setup.PageLeft) / Setup.HorizontalResolution))
		      edt_page_right.Minimum = PointsToCM(InchesToPoints((Setup.PageWidth - Setup.Width - Abs(Setup.PageLeft)) / Setup.HorizontalResolution))
		      
		      edt_page_top.Maximum = PointsToCM(InchesToPoints((Setup.Height + Abs(Setup.PageTop)) / Setup.VerticalResolution))
		      edt_page_bottom.Maximum = PointsToCM(InchesToPoints((Setup.PageHeight - Abs(Setup.PageTop)) / Setup.VerticalResolution))
		      edt_page_left.Maximum = PointsToCM(InchesToPoints((Setup.Width + Abs(Setup.PageLeft)) / Setup.HorizontalResolution))
		      edt_page_right.Maximum = PointsToCM(InchesToPoints((Setup.Width - Abs(Setup.PageLeft)) / Setup.HorizontalResolution))
		      
		    End If
		  Else // Setup = Nil
		    edt_page_top.Minimum = 0
		    edt_page_bottom.Minimum = 0
		    edt_page_left.Minimum = 0
		    edt_page_right.Minimum = 0
		    
		    edt_page_top.Maximum = 1.0e100
		    edt_page_left.Maximum = 1.0e100
		    edt_page_bottom.Maximum = 1.0e100
		    edt_page_right.Maximum = 1.0e100
		  End If // Setup <> Nil
		  
		  edt_page_top.EnforceRange = True
		  edt_page_right.EnforceRange = True
		  edt_page_bottom.EnforceRange = True
		  edt_page_left.EnforceRange = True
		  
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
