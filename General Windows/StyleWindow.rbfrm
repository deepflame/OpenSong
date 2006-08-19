#tag Window
Begin Window StyleWindow
   Placement       =   0
   Width           =   550
   Height          =   428
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   1
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Style Editor"
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
      Left            =   398
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   393
      Underline       =   "False"
      Visible         =   "True"
      Width           =   70
      ControlOrder    =   0
      BehaviorIndex   =   2
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Cancel"
      Default         =   "False"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   474
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   393
      Underline       =   "False"
      Visible         =   "True"
      Width           =   70
      ControlOrder    =   1
      BehaviorIndex   =   3
   End
   Begin GroupBox grp_style_fonts_and_alignment
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Style Editor"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   405
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   10
      Underline       =   "False"
      Visible         =   "True"
      Width           =   380
      ControlOrder    =   2
      BehaviorIndex   =   0
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
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   "False"
         Left            =   25
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Title:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   26
         Underline       =   "False"
         Visible         =   "True"
         Width           =   250
         ControlOrder    =   3
         BehaviorIndex   =   14
      End
      Begin SFontCanvas can_font_title
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "True"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   80
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   25
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         Top             =   41
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   250
         ControlOrder    =   4
         BehaviorIndex   =   17
      End
      Begin StaticText lbl_font_align
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
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   "False"
         Left            =   300
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Align:"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   26
         Underline       =   "False"
         Visible         =   "True"
         Width           =   73
         ControlOrder    =   5
         BehaviorIndex   =   20
      End
      Begin SAlignCanvas sal_align_title
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   44
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   315
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         Top             =   56
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   44
         ControlOrder    =   6
         BehaviorIndex   =   21
      End
      Begin StaticText lbl_font_subtitle
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
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   "False"
         Left            =   25
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Subtitle:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   125
         Underline       =   "False"
         Visible         =   "True"
         Width           =   250
         ControlOrder    =   7
         BehaviorIndex   =   16
      End
      Begin SFontCanvas can_font_subtitle
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "True"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   80
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   25
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         Top             =   140
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   250
         ControlOrder    =   8
         BehaviorIndex   =   19
      End
      Begin SAlignCanvas sal_align_subtitle
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   44
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   315
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         Top             =   155
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   44
         ControlOrder    =   9
         BehaviorIndex   =   22
      End
      Begin StaticText lbl_font_body
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
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   "False"
         Left            =   25
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Body:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   224
         Underline       =   "False"
         Visible         =   "True"
         Width           =   250
         ControlOrder    =   10
         BehaviorIndex   =   15
      End
      Begin SFontCanvas can_font_body
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AdvancedOptions =   "True"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   80
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   25
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         Top             =   239
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   250
         ControlOrder    =   11
         BehaviorIndex   =   18
      End
      Begin SAlignCanvas sal_align_body
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   44
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   315
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         Top             =   254
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   44
         ControlOrder    =   12
         BehaviorIndex   =   23
      End
      Begin StaticText lbl_font_subtitles
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
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
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Song Subtitles:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   323
         Underline       =   "False"
         Visible         =   "True"
         Width           =   77
         ControlOrder    =   13
         BehaviorIndex   =   24
      End
      Begin SubtitleList lst_song_subtitles
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         ColumnCount     =   3
         ColumnsResizable=   "False"
         ColumnWidths    =   "0,15%,*"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         DisabledBalloonHelp=   ""
         EnableDrag      =   "False"
         EnableDragReorder=   "True"
         Enabled         =   "True"
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
         Left            =   109
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         ScrollBarHorizontal=   "False"
         ScrollBarVertical=   "False"
         ScrollPosition  =   0
         ScrollPositionX =   0
         SelectionType   =   0
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   323
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   140
         ControlOrder    =   14
         BehaviorIndex   =   25
      End
   End
   Begin GroupBox grp_style_background
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Background"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   279
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   400
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   10
      Underline       =   "False"
      Visible         =   "True"
      Width           =   140
      ControlOrder    =   15
      BehaviorIndex   =   1
      Begin StaticText lbl_background_color
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
         InitialParent   =   "grp_style_background"
         Italic          =   "False"
         Left            =   410
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Color:"
         TextAlign       =   2
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   55
         Underline       =   "False"
         Visible         =   "True"
         Width           =   55
         ControlOrder    =   16
         BehaviorIndex   =   9
      End
      Begin SColorCanvas can_background_color
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   30
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_background"
         Left            =   470
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         Top             =   50
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   30
         ControlOrder    =   17
         BehaviorIndex   =   8
      End
      Begin StaticText lbl_background_image
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
         InitialParent   =   "grp_style_background"
         Italic          =   "False"
         Left            =   430
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Image:"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   90
         Underline       =   "False"
         Visible         =   "True"
         Width           =   80
         ControlOrder    =   18
         BehaviorIndex   =   10
      End
      Begin SImageCanvas can_background_image
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   60
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_background"
         Left            =   430
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         Top             =   105
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   80
         ControlOrder    =   19
         BehaviorIndex   =   11
      End
      Begin StaticText nte_background_click_to_change
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
         InitialParent   =   "grp_style_background"
         Italic          =   "True"
         Left            =   400
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "True"
         TabPanelIndex   =   0
         Text            =   "(left-click to change)"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   9
         Top             =   170
         Underline       =   "False"
         Visible         =   "True"
         Width           =   140
         ControlOrder    =   20
         BehaviorIndex   =   12
      End
      Begin StaticText nte_background_right_click_to_clear
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
         InitialParent   =   "grp_style_background"
         Italic          =   "True"
         Left            =   400
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "True"
         TabPanelIndex   =   0
         Text            =   "(right-click to clear)"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   9
         Top             =   185
         Underline       =   "False"
         Visible         =   "True"
         Width           =   140
         ControlOrder    =   21
         BehaviorIndex   =   13
      End
      Begin StaticText lbl_background_position
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
         InitialParent   =   "grp_style_background"
         Italic          =   "False"
         Left            =   416
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Position:"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   206
         Underline       =   "False"
         Visible         =   "True"
         Width           =   108
         ControlOrder    =   22
         BehaviorIndex   =   27
      End
      Begin PopupMenu pop_background_position
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_background"
         InitialValue    =   ""
         Italic          =   "False"
         Left            =   430
         ListIndex       =   0
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   12
         Top             =   221
         Underline       =   "False"
         Visible         =   "True"
         Width           =   80
         ControlOrder    =   23
         BehaviorIndex   =   26
      End
      Begin StaticText lbl_background_trim_bottom
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
         InitialParent   =   "grp_style_background"
         Italic          =   "False"
         Left            =   410
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "Trim Bottom*:"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   244
         Underline       =   "False"
         Visible         =   "True"
         Width           =   120
         ControlOrder    =   24
         BehaviorIndex   =   5
      End
      Begin EditField edt_background_trim_bottom
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
         InitialParent   =   "grp_style_background"
         Italic          =   "False"
         Left            =   450
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
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   259
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   30
         ControlOrder    =   25
         BehaviorIndex   =   6
      End
      Begin StaticText txt_background_pixels
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   "False"
         Left            =   485
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         MultiLine       =   "False"
         TabPanelIndex   =   0
         Text            =   "px"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   259
         Underline       =   "False"
         Visible         =   "True"
         Width           =   20
         ControlOrder    =   26
         BehaviorIndex   =   7
      End
   End
   Begin StaticText nte_style_trim_note
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   80
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   402
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "True"
      TabPanelIndex   =   0
      Text            =   "*Cuts the bottom of the background to hide watermarks, web site urls, etc. (To avoid distortion, this also trims from the sides to compensate.)"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   9
      Top             =   301
      Underline       =   "False"
      Visible         =   "True"
      Width           =   140
      ControlOrder    =   27
      BehaviorIndex   =   4
   End
End
#tag EndWindow

#tag WindowCode
#tag Event
	Sub Open()
	  
	  lst_song_subtitles.SetSelected(SmartML.GetValue(styleNode, "song_subtitle"))
	  
	  App.T.TranslateWindow Me, "style_editor", App.TranslationFonts
	  pop_background_position.AddRow App.T.Translate("style_editor/background/position/row0/@caption")
	  pop_background_position.AddRow App.T.Translate("style_editor/background/position/row1/@caption")
	  
	  App.CenterInControlScreen Me
	End Sub
#tag EndEvent


#tag Method, Flags = &h0
	Function Edit(styleNode As XmlNode) As Boolean
	  Self.styleNode = styleNode
	  LoadValues
	  ReturnValue = False
	  ShowModalWithin MainWindow
	  Return ReturnValue
	End Function
#tag EndMethod

#tag Method, Flags = &h1
	Protected Function GetStyleNodeName() As String
	  dim Style As string
	  App.DebugWriter.Write "StyleWindow::GetStyleNodeName: StyleNode.Name = '" + styleNode.Name + "'"
	  if styleNode.Name = "style" then
	    Style = "song_subtitle"
	  else
	    Style = ""
	  end if
	  Return Style
	End Function
#tag EndMethod

#tag Method, Flags = &h21
	Private Sub LoadValues()
	  Dim c As Color
	  dim temp As String
	  dim TempNode As  XmlNode
	  Dim Style As String
	  
	  Style = GetStyleNodeName
	  
	  If SmartML.GetValueC(styleNode, "background/@color", c) Then
	    can_background_color.SetColor c
	  Else
	    can_background_color.ClearColor
	  End If
	  
	  can_background_image.SetImageAsString SmartML.GetValue(styleNode, "background")
	  edt_background_trim_bottom.Text = Str(SmartML.GetValueN(styleNode, "background/@strip_footer"))
	  
	  sal_align_body.SetHAlign SmartML.GetValue(styleNode, "body/@align")
	  sal_align_body.SetVAlign SmartML.GetValue(styleNode, "body/@valign")
	  
	  sal_align_title.SetHAlign SmartML.GetValue(styleNode, "title/@align")
	  sal_align_title.SetVAlign SmartML.GetValue(styleNode, "title/@valign")
	  
	  sal_align_subtitle.SetHAlign SmartML.GetValue(styleNode, "subtitle/@align")
	  sal_align_subtitle.SetVAlign SmartML.GetValue(styleNode, "subtitle/@valign")
	  
	  can_font_title.SetFont SmartML.GetValueF(styleNode, "title")
	  can_font_body.SetFont SmartML.GetValueF(styleNode, "body")
	  can_font_subtitle.SetFont SmartML.GetValueF(styleNode, "subtitle")
	  
	  pop_background_position.ListIndex = SmartML.GetValueN(styleNode, "background/@position") - 1
	  If pop_background_position.ListIndex = -1 Then pop_background_position.ListIndex = SlideStyle.POS_STRETCH - 1
	  
	  if Style = "" then
	    lst_song_subtitles.Visible = False
	    lbl_font_subtitles.Visible = False
	  Else
	    temp = SmartML.GetValue(styleNode, Style)
	    lst_song_subtitles.SetSelected(temp)
	    lst_song_subtitles.Visible = True
	    lbl_font_subtitles.Visible = True
	  end if
	  
	End Sub
#tag EndMethod


#tag Property, Flags = &h0
	IsSong As boolean
#tag EndProperty

#tag Property, Flags = &h1
	Protected ReturnValue As Boolean
#tag EndProperty

#tag Property, Flags = &h0
	styleNode As XmlNode
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
	  
	  SmartML.SetValue styleNode, "title/@align", sal_align_title.GetHAlign
	  SmartML.SetValue styleNode, "title/@valign", sal_align_title.GetVAlign
	  
	  SmartML.SetValue styleNode, "subtitle/@align", sal_align_subtitle.GetHAlign
	  SmartML.SetValue styleNode, "subtitle/@valign", sal_align_subtitle.GetVAlign
	  
	  SmartML.SetValueF(styleNode, "title", can_font_title.GetFont)
	  SmartML.SetValueF(styleNode, "body", can_font_body.GetFont)
	  SmartML.SetValueF(styleNode, "subtitle", can_font_subtitle.GetFont)
	  
	  SmartML.SetValueN(styleNode, "background/@position", pop_background_position.ListIndex + 1)
	  
	  dim Style As string
	  
	  Style = GetStyleNodeName
	  
	  Dim temp As String
	  
	  If len(Style) > 0 Then
	    temp = lst_song_subtitles.GetSelectedOptions
	    SmartML.SetValue styleNode, Style,  temp
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
#tag Events sal_align_title
#tag Event
	Sub Open()
	  Me.SetValid "YYYNNNYYY"
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events sal_align_subtitle
#tag Event
	Sub Open()
	  Me.SetValid "YYYNNNYYY"
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events pop_background_position
#tag Event
	Sub Change()
	  can_background_image.SetImagePosition Me.ListIndex + 1
	  
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events edt_background_trim_bottom
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_background_trim_bottom.Text  = Left(c.Text, 4)
	      return true
	    end if
	    
	  end if
	End Function
#tag EndEvent
#tag EndEvents
