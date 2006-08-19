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
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   398
      Top             =   393
      Width           =   70
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
      Left            =   474
      Top             =   393
      Width           =   70
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
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
   Begin GroupBox grp_style_fonts_and_alignment
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   10
      Top             =   10
      Width           =   380
      Height          =   405
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Style Editor"
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
      BehaviorIndex   =   2
      Begin StaticText lbl_font_title
         Index           =   -2147483648
         ControlOrder    =   3
         Left            =   25
         Top             =   26
         Width           =   250
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Title:"
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
         InitialParent   =   "grp_style_fonts_and_alignment"
         BehaviorIndex   =   3
      End
      Begin SFontCanvas can_font_title
         ControlOrder    =   4
         Width           =   250
         Height          =   80
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "grp_style_fonts_and_alignment"
         Index           =   -2147483648
         Left            =   25
         Top             =   41
         AdvancedOptions =   "True"
         BehaviorIndex   =   4
      End
      Begin StaticText lbl_font_align
         Index           =   -2147483648
         ControlOrder    =   5
         Left            =   300
         Top             =   26
         Width           =   73
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
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
         InitialParent   =   "grp_style_fonts_and_alignment"
         BehaviorIndex   =   5
      End
      Begin SAlignCanvas sal_align_title
         Index           =   -2147483648
         ControlOrder    =   6
         Left            =   315
         Top             =   56
         Width           =   44
         Height          =   44
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "grp_style_fonts_and_alignment"
         BehaviorIndex   =   6
      End
      Begin StaticText lbl_font_subtitle
         Index           =   -2147483648
         ControlOrder    =   7
         Left            =   25
         Top             =   125
         Width           =   250
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Subtitle:"
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
         InitialParent   =   "grp_style_fonts_and_alignment"
         BehaviorIndex   =   7
      End
      Begin SFontCanvas can_font_subtitle
         ControlOrder    =   8
         Width           =   250
         Height          =   80
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "grp_style_fonts_and_alignment"
         Index           =   -2147483648
         Left            =   25
         Top             =   140
         AdvancedOptions =   "True"
         BehaviorIndex   =   8
      End
      Begin SAlignCanvas sal_align_subtitle
         Index           =   -2147483648
         ControlOrder    =   9
         Left            =   315
         Top             =   155
         Width           =   44
         Height          =   44
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "grp_style_fonts_and_alignment"
         BehaviorIndex   =   9
      End
      Begin StaticText lbl_font_body
         Index           =   -2147483648
         ControlOrder    =   10
         Left            =   25
         Top             =   224
         Width           =   250
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Body:"
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
         InitialParent   =   "grp_style_fonts_and_alignment"
         BehaviorIndex   =   10
      End
      Begin SFontCanvas can_font_body
         ControlOrder    =   11
         Width           =   250
         Height          =   80
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "grp_style_fonts_and_alignment"
         Index           =   -2147483648
         Left            =   25
         Top             =   239
         AdvancedOptions =   "True"
         BehaviorIndex   =   11
      End
      Begin SAlignCanvas sal_align_body
         Index           =   -2147483648
         ControlOrder    =   12
         Left            =   315
         Top             =   254
         Width           =   44
         Height          =   44
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "grp_style_fonts_and_alignment"
         BehaviorIndex   =   12
      End
      Begin StaticText lbl_font_subtitles
         Index           =   -2147483648
         ControlOrder    =   13
         Left            =   25
         Top             =   323
         Width           =   77
         Height          =   14
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
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
         InitialParent   =   "grp_style_fonts_and_alignment"
         BehaviorIndex   =   13
      End
      Begin SubtitleList lst_song_subtitles
         Index           =   -2147483648
         ControlOrder    =   14
         Left            =   109
         Top             =   323
         Width           =   140
         Height          =   72
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         ColumnCount     =   3
         ColumnWidths    =   "0,15%,*"
         HasHeading      =   "False"
         UseFocusRing    =   "True"
         InitialValue    =   "		1\r\n		2\r\n		3\r\n		4\r\n		5"
         HeadingIndex    =   -1
         ScrollbarHorizontal=   "False"
         ScrollBarVertical=   "False"
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         DefaultRowHeight=   -1
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
         InitialParent   =   "grp_style_fonts_and_alignment"
         BehaviorIndex   =   14
      End
   End
   Begin GroupBox grp_style_background
      Index           =   -2147483648
      ControlOrder    =   15
      Left            =   400
      Top             =   10
      Width           =   140
      Height          =   279
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Background"
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
      BehaviorIndex   =   15
      Begin StaticText lbl_background_color
         Index           =   -2147483648
         ControlOrder    =   16
         Left            =   410
         Top             =   55
         Width           =   55
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Color:"
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
         InitialParent   =   "grp_style_background"
         BehaviorIndex   =   16
      End
      Begin SColorCanvas can_background_color
         Index           =   -2147483648
         ControlOrder    =   17
         Left            =   470
         Top             =   50
         Width           =   30
         Height          =   30
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   True
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "grp_style_background"
         IsColorSet      =   0
         MyColor         =   &h000000
         BehaviorIndex   =   17
      End
      Begin StaticText lbl_background_image
         Index           =   -2147483648
         ControlOrder    =   18
         Left            =   430
         Top             =   90
         Width           =   80
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Image:"
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
         InitialParent   =   "grp_style_background"
         BehaviorIndex   =   18
      End
      Begin SImageCanvas can_background_image
         ControlOrder    =   19
         Width           =   80
         Height          =   60
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   "True"
         UseFocusRing    =   "True"
         Backdrop        =   0
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         EraseBackground =   "True"
         InitialParent   =   "grp_style_background"
         Index           =   -2147483648
         Left            =   430
         Top             =   105
         BehaviorIndex   =   19
      End
      Begin StaticText nte_background_click_to_change
         Index           =   -2147483648
         ControlOrder    =   20
         Left            =   400
         Top             =   170
         Width           =   140
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "(left-click to change)"
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
         InitialParent   =   "grp_style_background"
         BehaviorIndex   =   20
      End
      Begin StaticText nte_background_right_click_to_clear
         Index           =   -2147483648
         ControlOrder    =   21
         Left            =   400
         Top             =   185
         Width           =   140
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
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
         InitialParent   =   "grp_style_background"
         BehaviorIndex   =   21
      End
      Begin StaticText lbl_background_position
         Index           =   -2147483648
         ControlOrder    =   22
         Left            =   416
         Top             =   206
         Width           =   108
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Position:"
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
         InitialParent   =   "grp_style_background"
         BehaviorIndex   =   22
      End
      Begin PopupMenu pop_background_position
         Index           =   -2147483648
         ControlOrder    =   23
         Left            =   430
         Top             =   221
         Width           =   80
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Enabled         =   True
         InitialValue    =   ""
         ListIndex       =   0
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "System"
         TextSize        =   12
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_style_background"
         BehaviorIndex   =   23
      End
      Begin StaticText lbl_background_trim_bottom
         Index           =   -2147483648
         ControlOrder    =   24
         Left            =   410
         Top             =   244
         Width           =   120
         Height          =   15
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "Trim Bottom*:"
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
         InitialParent   =   "grp_style_background"
         BehaviorIndex   =   24
      End
      Begin EditField edt_background_trim_bottom
         Index           =   -2147483648
         ControlOrder    =   25
         Left            =   450
         Top             =   259
         Width           =   30
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
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
         TextSize        =   11
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
         InitialParent   =   "grp_style_background"
         BehaviorIndex   =   25
      End
      Begin StaticText txt_background_pixels
         Index           =   -2147483648
         ControlOrder    =   26
         Left            =   485
         Top             =   259
         Width           =   20
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "px"
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
         InitialParent   =   "grp_style_background"
         BehaviorIndex   =   26
      End
   End
   Begin StaticText nte_style_trim_note
      Index           =   -2147483648
      ControlOrder    =   27
      Left            =   402
      Top             =   301
      Width           =   140
      Height          =   80
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Text            =   "*Cuts the bottom of the background to hide watermarks, web site urls, etc. (To avoid distortion, this also trims from the sides to compensate.)"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   9
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   27
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
