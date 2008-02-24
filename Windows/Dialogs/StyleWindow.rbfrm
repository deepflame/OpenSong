#tag Window
Begin Window StyleWindow
   BackColor       =   16777215
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   1
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   486
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
   Title           =   "Style Editor"
   Visible         =   "True"
   Width           =   580
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
      Left            =   428
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   441
      Underline       =   "False"
      Visible         =   True
      Width           =   70
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
      Left            =   504
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   441
      Underline       =   "False"
      Visible         =   True
      Width           =   70
      BehaviorIndex   =   1
   End
   Begin GroupBox grp_style_fonts_and_alignment
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Style Editor"
      ControlOrder    =   2
      Enabled         =   True
      Height          =   456
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   10
      Underline       =   "False"
      Visible         =   True
      Width           =   410
      BehaviorIndex   =   2
      Begin StaticText lbl_font_subtitle
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   3
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   "False"
         Left            =   25
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Text            =   "Subtitle:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   125
         Underline       =   "False"
         Visible         =   True
         Width           =   250
         BehaviorIndex   =   3
      End
      Begin SFontCanvas can_font_subtitle
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "True"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   4
         Enabled         =   True
         EraseBackground =   "True"
         Height          =   80
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   25
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Top             =   140
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   250
         BehaviorIndex   =   4
      End
      Begin PushButton btn_title_margin
         AutoDeactivate  =   "True"
         Bold            =   ""
         Cancel          =   ""
         Caption         =   "Margins"
         ControlOrder    =   5
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   ""
         Left            =   343
         LockBottom      =   ""
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   10
         Top             =   67
         Underline       =   ""
         Visible         =   True
         Width           =   66
         BehaviorIndex   =   5
      End
      Begin SAlignCanvas sal_align_title
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   6
         Enabled         =   True
         EraseBackground =   "True"
         Height          =   44
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   287
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Top             =   56
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   44
         BehaviorIndex   =   6
      End
      Begin StaticText lbl_font_align
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   7
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   "False"
         Left            =   287
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Text            =   "Align:"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   26
         Underline       =   "False"
         Visible         =   True
         Width           =   122
         BehaviorIndex   =   7
      End
      Begin StaticText lbl_font_title
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   9
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   "False"
         Left            =   25
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Text            =   "Title:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   26
         Underline       =   "False"
         Visible         =   True
         Width           =   250
         BehaviorIndex   =   9
      End
      Begin SFontCanvas can_font_title
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "True"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   8
         Enabled         =   True
         EraseBackground =   "True"
         Height          =   80
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   25
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Top             =   41
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   250
         BehaviorIndex   =   8
      End
      Begin SAlignCanvas sal_align_subtitle
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   11
         Enabled         =   True
         EraseBackground =   "True"
         Height          =   44
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   287
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Top             =   155
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   44
         BehaviorIndex   =   11
      End
      Begin PushButton btn_subtitle_margin
         AutoDeactivate  =   "True"
         Bold            =   ""
         Cancel          =   ""
         Caption         =   "Margins"
         ControlOrder    =   10
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   ""
         Left            =   343
         LockBottom      =   ""
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   10
         Top             =   165
         Underline       =   ""
         Visible         =   True
         Width           =   66
         BehaviorIndex   =   10
      End
      Begin SFontCanvas can_font_body
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "True"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   12
         Enabled         =   True
         EraseBackground =   "True"
         Height          =   80
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   25
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Top             =   239
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   250
         BehaviorIndex   =   12
      End
      Begin StaticText lbl_font_body
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   14
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   "False"
         Left            =   25
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Text            =   "Body:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   224
         Underline       =   "False"
         Visible         =   True
         Width           =   250
         BehaviorIndex   =   14
      End
      Begin SAlignCanvas sal_align_body
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   13
         Enabled         =   True
         EraseBackground =   "True"
         Height          =   44
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   287
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Top             =   254
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   44
         BehaviorIndex   =   13
      End
      Begin PushButton btn_body_margin
         AutoDeactivate  =   "True"
         Bold            =   ""
         Cancel          =   ""
         Caption         =   "Margins"
         ControlOrder    =   16
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   ""
         Left            =   343
         LockBottom      =   ""
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   10
         Top             =   250
         Underline       =   ""
         Visible         =   True
         Width           =   66
         BehaviorIndex   =   16
      End
      Begin PushButton btn_body_tabs
         AutoDeactivate  =   "True"
         Bold            =   ""
         Cancel          =   ""
         Caption         =   "Tabulators"
         ControlOrder    =   15
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   ""
         Left            =   343
         LockBottom      =   ""
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   10
         Top             =   285
         Underline       =   ""
         Visible         =   True
         Width           =   66
         BehaviorIndex   =   15
      End
      Begin SubtitleList lst_song_subtitles
         AutoDeactivate  =   "True"
         AutoHideScrollbars=   "True"
         Bold            =   "False"
         ColumnCount     =   3
         ColumnsResizable=   "False"
         ColumnWidths    =   "0,15%,*"
         ControlOrder    =   18
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   "False"
         EnableDragReorder=   "True"
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   "False"
         HeadingIndex    =   -1
         Height          =   72
         HelpTag         =   ""
         Hierarchical    =   "False"
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         InitialValue    =   "		1\r\n		2\r\n		3\r\n		4\r\n		5"
         Italic          =   "False"
         Left            =   26
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         RequiresSelection=   ""
         Scope           =   0
         ScrollbarHorizontal=   "False"
         ScrollBarVertical=   "False"
         SelectionType   =   0
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   338
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   140
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
         BehaviorIndex   =   17
      End
      Begin StaticText lbl_font_subtitles
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   17
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   14
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   "False"
         Left            =   25
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Text            =   "Song Subtitles:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   323
         Underline       =   "False"
         Visible         =   True
         Width           =   77
         BehaviorIndex   =   18
      End
      Begin CheckBox chk_font_descriptive_subtitle_info
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Include descriptive text on subtitles"
         ControlOrder    =   19
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   "False"
         Left            =   26
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   413
         Underline       =   "False"
         Value           =   "False"
         Visible         =   True
         Width           =   300
         BehaviorIndex   =   19
      End
      Begin CheckBox chk_font_highlight_chorus
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Highlight choruses"
         ControlOrder    =   20
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   "False"
         Left            =   26
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   433
         Underline       =   "False"
         Value           =   "False"
         Visible         =   True
         Width           =   300
         BehaviorIndex   =   20
      End
   End
   Begin GroupBox grp_style_background
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Background"
      ControlOrder    =   21
      Enabled         =   True
      Height          =   279
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   430
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   10
      Underline       =   "False"
      Visible         =   True
      Width           =   140
      BehaviorIndex   =   21
      Begin SColorCanvas can_background_color
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   23
         Enabled         =   True
         EraseBackground =   "True"
         Height          =   30
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_background"
         IsColorSet      =   0
         Left            =   500
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MyColor         =   0
         Scope           =   0
         TabPanelIndex   =   0
         Top             =   50
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   30
         BehaviorIndex   =   22
      End
      Begin StaticText lbl_background_image
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   24
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   "False"
         Left            =   460
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Text            =   "Image:"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   90
         Underline       =   "False"
         Visible         =   True
         Width           =   80
         BehaviorIndex   =   23
      End
      Begin SImageCanvas can_background_image
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         bgColor         =   0
         ControlOrder    =   25
         Enabled         =   True
         EraseBackground =   "True"
         Height          =   60
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_background"
         Left            =   460
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Top             =   105
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   80
         BehaviorIndex   =   24
      End
      Begin StaticText nte_background_right_click_to_clear
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   27
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   "True"
         Left            =   430
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         Text            =   "(right-click to clear)"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   9
         Top             =   185
         Underline       =   "False"
         Visible         =   True
         Width           =   140
         BehaviorIndex   =   25
      End
      Begin StaticText nte_background_click_to_change
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   26
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   "True"
         Left            =   430
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         Text            =   "(left-click to change)"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   9
         Top             =   170
         Underline       =   "False"
         Visible         =   True
         Width           =   140
         BehaviorIndex   =   26
      End
      Begin StaticText lbl_background_position
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   28
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   "False"
         Left            =   446
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Text            =   "Position:"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   206
         Underline       =   "False"
         Visible         =   True
         Width           =   108
         BehaviorIndex   =   27
      End
      Begin PopupMenu pop_background_position
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   29
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_background"
         InitialValue    =   ""
         Italic          =   "False"
         Left            =   460
         ListIndex       =   0
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   12
         Top             =   221
         Underline       =   "False"
         Visible         =   True
         Width           =   80
         BehaviorIndex   =   28
      End
      Begin StaticText lbl_background_trim_bottom
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   30
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   "False"
         Left            =   440
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Text            =   "Trim Bottom*:"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   244
         Underline       =   "False"
         Visible         =   True
         Width           =   120
         BehaviorIndex   =   29
      End
      Begin SEditFieldNumeric edt_background_trim_bottom
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
         EnforceRange    =   0
         Format          =   ""
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   "False"
         Left            =   480
         LimitText       =   4
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Mask            =   ""
         Maximum         =   0
         Minimum         =   0
         Multiline       =   "False"
         Password        =   "False"
         ReadOnly        =   "False"
         Scope           =   0
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         SignalRangeErrors=   0
         Styled          =   "False"
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   259
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   30
         BehaviorIndex   =   30
      End
      Begin StaticText lbl_background_color
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   22
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   "False"
         Left            =   440
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Text            =   "Color:"
         TextAlign       =   2
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   55
         Underline       =   "False"
         Visible         =   True
         Width           =   55
         BehaviorIndex   =   31
      End
      Begin StaticText txt_background_pixels
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   32
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   "False"
         Left            =   515
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         Multiline       =   "False"
         Scope           =   0
         TabPanelIndex   =   0
         Text            =   "px"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   259
         Underline       =   "False"
         Visible         =   True
         Width           =   20
         BehaviorIndex   =   32
      End
   End
   Begin StaticText nte_style_trim_note
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   33
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   80
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   432
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Multiline       =   "True"
      Scope           =   0
      TabPanelIndex   =   0
      Text            =   "*Cuts the bottom of the background to hide watermarks, web site urls, etc. (To avoid distortion, this also trims from the sides to compensate.)"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   9
      Top             =   301
      Underline       =   "False"
      Visible         =   True
      Width           =   140
      BehaviorIndex   =   33
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  App.T.TranslateWindow Me, "style_editor", App.TranslationFonts
		  pop_background_position.AddRow App.T.Translate("style_editor/background/position/row0/@caption")
		  pop_background_position.AddRow App.T.Translate("style_editor/background/position/row1/@caption")
		  
		  App.CenterInControlScreen Me
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Edit(styleNode As XmlNode, slideNode as XmlNode, SongStyle As Boolean = True) As Boolean
		  self.styleNode = styleNode
		  self.PreviewSlideNode = slideNode
		  
		  ReturnValue = False
		  workingStyle = New SlideStyle(styleNode)
		  SongStyleShow SongStyle
		  LoadValues
		  
		  ShowModalWithin MainWindow
		  SmartML.RemoveChildren(styleNode)
		  SmartML.CloneChildren(workingStyle.ToXML.DocumentElement, styleNode)
		  Return ReturnValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadValues()
		  can_background_color.SetColor workingStyle.BGColor
		  can_background_image.SetImage workingStyle.Background
		  can_background_image.bgColor = workingStyle.BGColor
		  
		  edt_background_trim_bottom.Text = CStr(workingStyle.StripFooter)
		  
		  sal_align_body.SetHAlign workingStyle.BodyAlign
		  sal_align_body.SetVAlign workingStyle.BodyVAlign
		  chk_font_highlight_chorus.Value = workingStyle.HighlightChorus
		  
		  sal_align_title.SetHAlign workingStyle.TitleAlign
		  sal_align_title.SetVAlign workingStyle.TitleVAlign
		  
		  sal_align_subtitle.SetHAlign workingStyle.SubtitleAlign
		  sal_align_subtitle.SetVAlign workingStyle.SubtitleVAlign
		  chk_font_descriptive_subtitle_info.Value = workingStyle.DescriptiveSubtitles
		  
		  can_font_title.SetFont workingStyle.TitleFont
		  can_font_body.SetFont workingStyle.BodyFont
		  can_font_subtitle.SetFont workingStyle.SubtitleFont
		  pop_background_position.ListIndex = workingStyle.Position - 1
		  
		  If IsSong Then
		    lst_song_subtitles.SetSelected(workingStyle.SubtitleList)
		  End If
		  
		  Return
		  
		  //--------------------------------------------------//
		  Dim c As Color
		  dim temp As String
		  dim TempNode As  XmlNode
		  
		  If SmartML.GetValueC(styleNode, "background/@color", c) Then
		    can_background_color.SetColor c
		  Else
		    can_background_color.ClearColor
		  End If
		  
		  can_background_image.SetImageAsString SmartML.GetValue(styleNode, "background")
		  edt_background_trim_bottom.Text = Str(SmartML.GetValueN(styleNode, "background/@strip_footer"))
		  
		  sal_align_body.SetHAlign SmartML.GetValue(styleNode, "body/@align")
		  sal_align_body.SetVAlign SmartML.GetValue(styleNode, "body/@valign")
		  chk_font_highlight_chorus.Value = SmartML.GetValueB(styleNode, "body/@highlight_chorus")
		  
		  sal_align_title.SetHAlign SmartML.GetValue(styleNode, "title/@align")
		  sal_align_title.SetVAlign SmartML.GetValue(styleNode, "title/@valign")
		  
		  sal_align_subtitle.SetHAlign SmartML.GetValue(styleNode, "subtitle/@align")
		  sal_align_subtitle.SetVAlign SmartML.GetValue(styleNode, "subtitle/@valign")
		  chk_font_descriptive_subtitle_info.Value = SmartML.GetValueB(styleNode, "subtitle/@descriptive")
		  
		  can_font_title.SetFont SmartML.GetValueF(styleNode, "title")
		  can_font_body.SetFont SmartML.GetValueF(styleNode, "body")
		  can_font_subtitle.SetFont SmartML.GetValueF(styleNode, "subtitle")
		  
		  pop_background_position.ListIndex = SmartML.GetValueN(styleNode, "background/@position") - 1
		  If pop_background_position.ListIndex = -1 Then pop_background_position.ListIndex = SlideStyle.POS_STRETCH - 1
		  
		  if Not IsSong then
		    lst_song_subtitles.Visible = False
		    lbl_font_subtitles.Visible = False
		  Else
		    temp = SmartML.GetValue(styleNode, "song_subtitle")
		    lst_song_subtitles.SetSelected(temp)
		    lst_song_subtitles.Visible = True
		    lbl_font_subtitles.Visible = True
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SongStyleShow(IsSongStyle As Boolean)
		  IsSong = IsSongStyle
		  lst_song_subtitles.Visible = IsSongStyle
		  chk_font_descriptive_subtitle_info.Visible = IsSongStyle
		  chk_font_highlight_chorus.Visible = IsSongStyle
		  lbl_font_subtitles.Visible = False
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected IsSong As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected ReturnValue As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected styleNode As XmlNode
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected workingStyle As SlideStyle
	#tag EndProperty

	#tag Property, Flags = &h21
		Private PreviewSlideNode As XmlNode
	#tag EndProperty


#tag EndWindowCode

#tag Events btn_ok
	#tag Event
		Sub Action()
		  Dim c As Color
		  
		  If can_background_color.GetColor(c) Then
		    SmartML.SetValueC(styleNode, "background/@color", c)
		  Else
		    SmartML.SetValue(styleNode, "background/@color", "")
		  End If
		  SmartML.SetValue(styleNode, "background", can_background_image.GetImageAsString)
		  SmartML.SetValue(styleNode, "background/@strip_footer", edt_background_trim_bottom.Text)
		  
		  SmartML.SetValue styleNode, "body/@align", sal_align_body.GetHAlign
		  SmartML.SetValue styleNode, "body/@valign", sal_align_body.GetVAlign
		  SmartML.SetValueB styleNode, "body/@highlight_chorus", chk_font_highlight_chorus.Value
		  
		  SmartML.SetValue styleNode, "title/@align", sal_align_title.GetHAlign
		  SmartML.SetValue styleNode, "title/@valign", sal_align_title.GetVAlign
		  
		  SmartML.SetValue styleNode, "subtitle/@align", sal_align_subtitle.GetHAlign
		  SmartML.SetValue styleNode, "subtitle/@valign", sal_align_subtitle.GetVAlign
		  SmartML.SetValueB styleNode, "subtitle/@descriptive", chk_font_descriptive_subtitle_info.Value
		  
		  SmartML.SetValueF(styleNode, "title", can_font_title.GetFont)
		  SmartML.SetValueF(styleNode, "body", can_font_body.GetFont)
		  SmartML.SetValueF(styleNode, "subtitle", can_font_subtitle.GetFont)
		  
		  SmartML.SetValueN(styleNode, "background/@position", pop_background_position.ListIndex + 1)
		  
		  Dim temp As String
		  
		  If IsSong Then
		    temp = lst_song_subtitles.GetSelectedOptions
		    SmartML.SetValue styleNode, "song_subtitle",  temp
		  End If
		  
		  ReturnValue = True
		  
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
#tag Events can_font_subtitle
	#tag Event
		Sub Action()
		  workingStyle.SubtitleFont = Me.GetFont
		  can_background_image.Repaint
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_title_margin
	#tag Event
		Sub Action()
		  Dim result as Boolean
		  Dim tempStyle As SlideStyle
		  
		  tempStyle = New SlideStyle(workingStyle)
		  result = StyleMarginWindow.Edit(tempStyle, self.PreviewSlideNode, StyleSectionEnum.Title)
		  
		  If result Then workingStyle.TitleMargins(tempStyle.TitleMargins())
		  
		  can_background_image.Repaint
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sal_align_title
	#tag Event
		Sub Open()
		  Me.SetValid "YYYNNNYYY"
		End Sub
	#tag EndEvent
	#tag Event
		Sub AlignChanged(HAlign As String, VAlign As String)
		  workingStyle.TitleAlign = Me.GetHAlign
		  workingStyle.TitleVAlign = Me.GetVAlign
		  can_background_image.Repaint
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_font_title
	#tag Event
		Sub Action()
		  workingStyle.TitleFont = Me.GetFont
		  can_background_image.Repaint
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_subtitle_margin
	#tag Event
		Sub Action()
		  Dim result as Boolean
		  Dim tempStyle As SlideStyle
		  
		  tempStyle = New SlideStyle(workingStyle)
		  
		  result = StyleMarginWindow.Edit(tempStyle, self.PreviewSlideNode, StyleSectionEnum.Subtitle)
		  
		  If result Then workingStyle.SubtitleMargins(tempStyle.SubtitleMargins())
		  
		  can_background_image.Repaint
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sal_align_subtitle
	#tag Event
		Sub Open()
		  Me.SetValid "YYYNNNYYY"
		End Sub
	#tag EndEvent
	#tag Event
		Sub AlignChanged(HAlign As String, VAlign As String)
		  workingStyle.SubtitleAlign = Me.GetHAlign
		  workingStyle.SubtitleVAlign = Me.GetVAlign
		  can_background_image.Repaint
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_font_body
	#tag Event
		Sub Action()
		  workingStyle.BodyFont = Me.GetFont
		  can_background_image.Repaint
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sal_align_body
	#tag Event
		Sub AlignChanged(HAlign As String, VAlign As String)
		  workingStyle.BodyAlign = Me.GetHAlign
		  workingStyle.BodyVAlign = Me.GetVAlign
		  If HAlign () = "left" Then
		    btn_body_tabs.Enabled = true
		  Else
		    btn_body_tabs.Enabled = false
		  End If
		  can_background_image.Repaint
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_body_tabs
	#tag Event
		Sub Action()
		  dim result as Boolean
		  Dim tempStyle As SlideStyle
		  tempStyle = New SlideStyle(workingStyle)
		  Dim i As Integer
		  
		  result = StyleTabsWindow.Edit(tempStyle, self.PreviewSlideNode)
		  if result Then
		    workingStyle.BodyTabClear()
		    
		    For i = 0 to tempStyle.BodyTabCount()-1
		      workingStyle.BodyTabAdd(tempStyle.BodyTabGet(i))
		    Next i
		  End If
		  
		  can_background_image.Repaint
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_body_margin
	#tag Event
		Sub Action()
		  dim result as Boolean
		  Dim tempStyle As SlideStyle
		  tempStyle = New SlideStyle(workingStyle)
		  
		  result = StyleMarginWindow.Edit(tempStyle, self.PreviewSlideNode, StyleSectionEnum.Body)
		  
		  If result Then workingStyle.BodyMargins(tempStyle.BodyMargins())
		  
		  can_background_image.Repaint
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_song_subtitles
	#tag Event
		Sub LostFocus()
		  workingStyle.SubtitleList = Me.GetSelectedOptions
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_font_descriptive_subtitle_info
	#tag Event
		Sub Action()
		  workingStyle.DescriptiveSubtitles = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_font_highlight_chorus
	#tag Event
		Sub Action()
		  workingStyle.HighlightChorus = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_background_color
	#tag Event
		Sub Action()
		  Dim hasColor As Boolean
		  Dim c As Color
		  hasColor = Me.GetColor(c)
		  If hasColor Then
		    workingStyle.BGColor = c
		  Else
		    workingStyle.BGColor = &c000000
		  End If
		  can_background_image.bgColor = workingStyle.BGColor
		  can_background_image.Repaint
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_background_image
	#tag Event
		Sub Action()
		  workingStyle.Background = Me.GetImageAsPicture
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_background_position
	#tag Event
		Sub Change()
		  can_background_image.SetImagePosition Me.ListIndex + 1
		  workingStyle.Position = Me.ListIndex + 1
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_background_trim_bottom
	#tag Event
		Sub TextChange()
		  workingStyle.StripFooter = Me.Value
		  can_background_image.Repaint
		End Sub
	#tag EndEvent
#tag EndEvents
