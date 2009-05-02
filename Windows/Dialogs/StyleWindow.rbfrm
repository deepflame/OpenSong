#tag Window
Begin Window StyleWindow
   BackColor       =   16777215
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   486
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
   Title           =   "Style Editor"
   Visible         =   True
   Width           =   580
   Begin PushButton btn_ok
      AutoDeactivate  =   True
      BehaviorIndex   =   0
      Bold            =   False
      Cancel          =   False
      Caption         =   "OK"
      ControlOrder    =   0
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   428
      LockBottom      =   False
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
      Top             =   441
      Underline       =   False
      Visible         =   True
      Width           =   70
      BehaviorIndex   =   0
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   True
      BehaviorIndex   =   1
      Bold            =   False
      Cancel          =   True
      Caption         =   "Cancel"
      ControlOrder    =   1
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   504
      LockBottom      =   False
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
      Top             =   441
      Underline       =   False
      Visible         =   True
      Width           =   70
      BehaviorIndex   =   1
   End
   Begin GroupBox grp_style_fonts_and_alignment
      AutoDeactivate  =   True
      BehaviorIndex   =   2
      Bold            =   False
      Caption         =   "Style Editor"
      ControlOrder    =   2
      Enabled         =   True
      Height          =   327
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   10
      Underline       =   False
      Visible         =   True
      Width           =   410
      BehaviorIndex   =   2
      Begin SFontCanvas can_font_subtitle
         AcceptFocus     =   False
         AcceptMouseDown =   true
         AcceptTabs      =   False
         AdvancedOptions =   True
         AutoDeactivate  =   True
         Backdrop        =   0
         BehaviorIndex   =   3
         ControlOrder    =   3
         Enabled         =   True
         EraseBackground =   True
         Height          =   80
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   25
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   144
         UseFocusRing    =   True
         Visible         =   True
         Width           =   250
         BehaviorIndex   =   3
      End
      Begin SFontCanvas can_font_title
         AcceptFocus     =   False
         AcceptMouseDown =   true
         AcceptTabs      =   False
         AdvancedOptions =   True
         AutoDeactivate  =   True
         Backdrop        =   0
         BehaviorIndex   =   4
         ControlOrder    =   4
         Enabled         =   True
         EraseBackground =   True
         Height          =   80
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   25
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   45
         UseFocusRing    =   True
         Visible         =   True
         Width           =   250
         BehaviorIndex   =   4
      End
      Begin StaticText lbl_font_align
         AutoDeactivate  =   True
         BehaviorIndex   =   5
         Bold            =   False
         ControlOrder    =   5
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   False
         Left            =   287
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Align:"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   30
         Underline       =   False
         Visible         =   True
         Width           =   122
         BehaviorIndex   =   5
      End
      Begin SAlignCanvas sal_align_title
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         BehaviorIndex   =   6
         ControlOrder    =   6
         Enabled         =   True
         EraseBackground =   True
         Height          =   44
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   287
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   60
         UseFocusRing    =   True
         Visible         =   True
         Width           =   44
         BehaviorIndex   =   6
      End
      Begin PushButton btn_title_margin
         AutoDeactivate  =   True
         BehaviorIndex   =   7
         Bold            =   ""
         Cancel          =   ""
         Caption         =   "Margins"
         ControlOrder    =   7
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   ""
         Left            =   343
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   10
         Top             =   71
         Underline       =   ""
         Visible         =   True
         Width           =   66
         BehaviorIndex   =   7
      End
      Begin PushButton btn_subtitle_margin
         AutoDeactivate  =   True
         BehaviorIndex   =   8
         Bold            =   ""
         Cancel          =   ""
         Caption         =   "Margins"
         ControlOrder    =   8
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   ""
         Left            =   343
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   10
         Top             =   169
         Underline       =   ""
         Visible         =   True
         Width           =   66
         BehaviorIndex   =   8
      End
      Begin SAlignCanvas sal_align_subtitle
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         BehaviorIndex   =   9
         ControlOrder    =   9
         Enabled         =   True
         EraseBackground =   True
         Height          =   44
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   287
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   159
         UseFocusRing    =   True
         Visible         =   True
         Width           =   44
         BehaviorIndex   =   9
      End
      Begin CheckBox chk_font_title
         AutoDeactivate  =   True
         BehaviorIndex   =   10
         Bold            =   ""
         Caption         =   "Title:"
         ControlOrder    =   10
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   ""
         Left            =   25
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         Top             =   28
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   250
         BehaviorIndex   =   10
      End
      Begin CheckBox chk_font_subtitle
         AutoDeactivate  =   True
         BehaviorIndex   =   11
         Bold            =   ""
         Caption         =   "Subtitle:"
         ControlOrder    =   11
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   ""
         Left            =   25
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         Top             =   127
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   250
         BehaviorIndex   =   11
      End
      Begin PushButton btn_body_tabs
         AutoDeactivate  =   True
         BehaviorIndex   =   12
         Bold            =   ""
         Cancel          =   ""
         Caption         =   "Tabulators"
         ControlOrder    =   12
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   ""
         Left            =   343
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   10
         Top             =   291
         Underline       =   ""
         Visible         =   True
         Width           =   66
         BehaviorIndex   =   12
      End
      Begin PushButton btn_body_margin
         AutoDeactivate  =   True
         BehaviorIndex   =   13
         Bold            =   ""
         Cancel          =   ""
         Caption         =   "Margins"
         ControlOrder    =   13
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   ""
         Left            =   343
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   10
         Top             =   256
         Underline       =   ""
         Visible         =   True
         Width           =   66
         BehaviorIndex   =   13
      End
      Begin CheckBox chk_font_body
         AutoDeactivate  =   True
         BehaviorIndex   =   14
         Bold            =   ""
         Caption         =   "Body:"
         ControlOrder    =   17
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Italic          =   ""
         Left            =   25
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         Top             =   224
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   250
         BehaviorIndex   =   14
      End
      Begin SFontCanvas can_font_body
         AcceptFocus     =   False
         AcceptMouseDown =   true
         AcceptTabs      =   False
         AdvancedOptions =   True
         AutoDeactivate  =   True
         Backdrop        =   0
         BehaviorIndex   =   15
         ControlOrder    =   18
         Enabled         =   True
         EraseBackground =   True
         Height          =   80
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   25
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   245
         UseFocusRing    =   True
         Visible         =   True
         Width           =   250
         BehaviorIndex   =   15
      End
      Begin SAlignCanvas sal_align_body
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         BehaviorIndex   =   16
         ControlOrder    =   24
         Enabled         =   True
         EraseBackground =   True
         Height          =   44
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_fonts_and_alignment"
         Left            =   287
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   260
         UseFocusRing    =   True
         Visible         =   True
         Width           =   44
         BehaviorIndex   =   16
      End
   End
   Begin GroupBox grp_style_background
      AutoDeactivate  =   True
      BehaviorIndex   =   17
      Bold            =   False
      Caption         =   "Background"
      ControlOrder    =   14
      Enabled         =   True
      Height          =   279
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   430
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   10
      Underline       =   False
      Visible         =   True
      Width           =   140
      BehaviorIndex   =   17
      Begin StaticText lbl_background_color
         AutoDeactivate  =   True
         BehaviorIndex   =   18
         Bold            =   False
         ControlOrder    =   15
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   False
         Left            =   440
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Color:"
         TextAlign       =   2
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   55
         Underline       =   False
         Visible         =   True
         Width           =   55
         BehaviorIndex   =   18
      End
      Begin StaticText lbl_background_image
         AutoDeactivate  =   True
         BehaviorIndex   =   19
         Bold            =   False
         ControlOrder    =   16
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   False
         Left            =   460
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Image:"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   90
         Underline       =   False
         Visible         =   True
         Width           =   80
         BehaviorIndex   =   19
      End
      Begin StaticText nte_background_click_to_change
         AutoDeactivate  =   True
         BehaviorIndex   =   20
         Bold            =   False
         ControlOrder    =   19
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   True
         Left            =   430
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "(left-click to change)"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   9
         Top             =   170
         Underline       =   False
         Visible         =   True
         Width           =   140
         BehaviorIndex   =   20
      End
      Begin StaticText nte_background_right_click_to_clear
         AutoDeactivate  =   True
         BehaviorIndex   =   21
         Bold            =   False
         ControlOrder    =   20
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   True
         Left            =   430
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "(right-click to clear)"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   9
         Top             =   185
         Underline       =   False
         Visible         =   True
         Width           =   140
         BehaviorIndex   =   21
      End
      Begin StaticText lbl_background_position
         AutoDeactivate  =   True
         BehaviorIndex   =   22
         Bold            =   False
         ControlOrder    =   21
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   False
         Left            =   446
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Position:"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   206
         Underline       =   False
         Visible         =   True
         Width           =   108
         BehaviorIndex   =   22
      End
      Begin StaticText lbl_background_trim_bottom
         AutoDeactivate  =   True
         BehaviorIndex   =   23
         Bold            =   False
         ControlOrder    =   22
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   False
         Left            =   440
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Trim Bottom*:"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   244
         Underline       =   False
         Visible         =   True
         Width           =   120
         BehaviorIndex   =   23
      End
      Begin PopupMenu pop_background_position
         AutoDeactivate  =   True
         BehaviorIndex   =   24
         Bold            =   False
         ControlOrder    =   23
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_background"
         InitialValue    =   ""
         Italic          =   False
         Left            =   460
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   12
         Top             =   221
         Underline       =   False
         Visible         =   True
         Width           =   80
         BehaviorIndex   =   24
      End
      Begin StaticText txt_background_pixels
         AutoDeactivate  =   True
         BehaviorIndex   =   25
         Bold            =   False
         ControlOrder    =   25
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   False
         Left            =   515
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "px"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   259
         Underline       =   False
         Visible         =   True
         Width           =   20
         BehaviorIndex   =   25
      End
      Begin SColorCanvas can_background_color
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         BehaviorIndex   =   26
         ControlOrder    =   29
         Enabled         =   True
         EraseBackground =   True
         Height          =   30
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_background"
         IsColorSet      =   0
         Left            =   500
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         MyColor         =   0
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   50
         UseFocusRing    =   True
         Visible         =   True
         Width           =   30
         BehaviorIndex   =   26
      End
      Begin SImageCanvas can_background_image
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         BehaviorIndex   =   27
         bgColor         =   0
         ControlOrder    =   33
         Enabled         =   True
         EraseBackground =   True
         Height          =   60
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_background"
         Left            =   460
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   105
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
         BehaviorIndex   =   27
      End
      Begin SEditFieldNumeric edt_background_trim_bottom
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         BackColor       =   16777215
         BehaviorIndex   =   28
         Bold            =   False
         Border          =   True
         ControlOrder    =   34
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         EnforceRange    =   0
         Format          =   ""
         Height          =   20
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_background"
         Italic          =   False
         Left            =   480
         LimitText       =   4
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Mask            =   ""
         Maximum         =   0
         Minimum         =   0
         Multiline       =   False
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         SignalRangeErrors=   0
         Styled          =   False
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   259
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   30
         BehaviorIndex   =   28
      End
   End
   Begin StaticText nte_style_trim_note
      AutoDeactivate  =   True
      BehaviorIndex   =   29
      Bold            =   False
      ControlOrder    =   26
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   80
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   432
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "*Cuts the bottom of the background to hide watermarks, web site urls, etc. (To avoid distortion, this also trims from the sides to compensate.)"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   9
      Top             =   301
      Underline       =   False
      Visible         =   True
      Width           =   140
      BehaviorIndex   =   29
   End
   Begin GroupBox grp_style_options
      AutoDeactivate  =   True
      BehaviorIndex   =   30
      Bold            =   ""
      Caption         =   "Textual options"
      ControlOrder    =   27
      Enabled         =   True
      Height          =   125
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   10
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   341
      Underline       =   ""
      Visible         =   True
      Width           =   410
      BehaviorIndex   =   30
      Begin StaticText lbl_options_subtitles
         AutoDeactivate  =   True
         BehaviorIndex   =   31
         Bold            =   False
         ControlOrder    =   28
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   14
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_options"
         Italic          =   False
         Left            =   25
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Song Subtitles:"
         TextAlign       =   0
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   361
         Underline       =   False
         Visible         =   True
         Width           =   155
         BehaviorIndex   =   31
      End
      Begin CheckBox chk_options_descriptive_subtitle
         AutoDeactivate  =   True
         BehaviorIndex   =   32
         Bold            =   False
         Caption         =   "Include descriptive text on subtitles"
         ControlOrder    =   30
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_options"
         Italic          =   False
         Left            =   200
         LockBottom      =   False
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
         Top             =   376
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   209
         BehaviorIndex   =   32
      End
      Begin CheckBox chk_options_highlight_chorus
         AutoDeactivate  =   True
         BehaviorIndex   =   33
         Bold            =   False
         Caption         =   "Highlight choruses"
         ControlOrder    =   31
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_options"
         Italic          =   False
         Left            =   200
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   396
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   209
         BehaviorIndex   =   33
      End
      Begin CheckBox chk_options_verse_in_title
         AutoDeactivate  =   True
         BehaviorIndex   =   34
         Bold            =   ""
         Caption         =   "Include verse numbers in title"
         ControlOrder    =   32
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_style_options"
         Italic          =   ""
         Left            =   200
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   416
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   209
         BehaviorIndex   =   34
      End
      Begin SubtitleList lst_song_subtitles
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         BehaviorIndex   =   35
         Bold            =   False
         ColumnCount     =   3
         ColumnsResizable=   False
         ColumnWidths    =   "0,15%,*"
         ControlOrder    =   35
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   True
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   False
         HeadingIndex    =   -1
         Height          =   72
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   2147483648
         InitialParent   =   "grp_style_options"
         InitialValue    =   "		1\r\n		2\r\n		3\r\n		4\r\n		5"
         Italic          =   False
         Left            =   26
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         RequiresSelection=   ""
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   False
         SelectionType   =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   376
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   154
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
         BehaviorIndex   =   35
      End
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
		  Me.ReturnValue = False
		  PreviewSlideNode = slideNode
		  
		  workingStyle = New SlideStyle(styleNode)
		  SongStyleShow SongStyle
		  LoadValues
		  
		  ShowModalWithin MainWindow
		  
		  If Me.ReturnValue Then
		    '++JRC This will eat all the changes we just saved in btn_ok.Action, is this the intent?
		    'Since we're saving everything to workingStyle as we go, this may be NBD
		    'will leave it for now
		    SmartML.RemoveChildren(styleNode)
		    SmartML.CloneChildren(workingStyle.ToXML.DocumentElement, styleNode)
		  End If
		  Return Me.ReturnValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadValues()
		  can_background_color.SetColor workingStyle.BGColor
		  can_background_image.SetImage( workingStyle.Background() )
		  can_background_image.bgColor = workingStyle.BGColor
		  
		  edt_background_trim_bottom.Text = CStr(workingStyle.StripFooter)
		  
		  '++JRC
		  chk_font_title.Value = workingStyle.TitleEnable
		  chk_font_subtitle.Value = workingStyle.SubtitleEnable
		  chk_font_body.Value = workingStyle.BodyEnable
		  '--
		  
		  sal_align_body.SetAlign workingStyle.BodyAlign, workingStyle.BodyVAlign
		  If workingStyle.BodyAlign = "left" Then
		    btn_body_tabs.Enabled = True
		  Else
		    btn_body_tabs.Enabled = False
		  End If
		  chk_options_highlight_chorus.Value = workingStyle.HighlightChorus
		  
		  sal_align_title.SetAlign workingStyle.TitleAlign, workingStyle.TitleVAlign
		  chk_options_verse_in_title.Value = workingStyle.TitleIncludeVerse
		  
		  sal_align_subtitle.SetAlign workingStyle.SubtitleAlign,workingStyle.SubtitleVAlign
		  chk_options_descriptive_subtitle.Value = workingStyle.DescriptiveSubtitles
		  
		  can_font_title.SetFont workingStyle.TitleFont
		  can_font_body.SetFont workingStyle.BodyFont
		  can_font_subtitle.SetFont workingStyle.SubtitleFont
		  
		  pop_background_position.ListIndex = workingStyle.Position - 1
		  If pop_background_position.ListIndex = -1 Then pop_background_position.ListIndex = SlideStyle.POS_STRETCH - 1
		  
		  If IsSong Then
		    lst_song_subtitles.SetSelected(workingStyle.SubtitleList)
		  End If
		  
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SongStyleShow(IsSongStyle As Boolean)
		  IsSong = IsSongStyle
		  
		  lst_song_subtitles.Visible = IsSongStyle
		  chk_options_descriptive_subtitle.Visible = IsSongStyle
		  chk_options_highlight_chorus.Visible = IsSongStyle
		  lbl_options_subtitles.Visible = IsSongStyle
		  chk_options_verse_in_title.Visible = IsSongStyle
		  grp_style_options.Visible = IsSongStyle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub EnableTitle(Enable As Boolean)
		  workingStyle.TitleEnable = Enable
		  
		  If Enable Then
		    can_font_title.SetEnabled(true)
		    sal_align_title.Enabled = true
		    btn_title_margin.Enabled = true
		  Else
		    can_font_title.SetEnabled(false)
		    sal_align_title.Enabled = false
		    btn_title_margin.Enabled = false
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub EnableSubtitle(Enable As Boolean)
		  workingStyle.SubtitleEnable = Enable
		  
		  If Enable Then
		    can_font_subtitle.SetEnabled(true)
		    sal_align_subtitle.Enabled = true
		    btn_subtitle_margin.Enabled = true
		  Else
		    can_font_subtitle.SetEnabled(false)
		    sal_align_subtitle.Enabled = false
		    btn_subtitle_margin.Enabled = false
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub EnableBody(Enable As Boolean)
		  workingStyle.BodyEnable = Enable
		  
		  If Enable Then
		    can_font_body.SetEnabled(true)
		    sal_align_body.Enabled = true
		    btn_body_margin.Enabled = true
		    
		    If workingStyle.BodyAlign = "left" Then
		      btn_body_tabs.Enabled = True
		    Else
		      btn_body_tabs.Enabled = False
		    End If
		  Else
		    can_font_body.SetEnabled(false)
		    sal_align_body.Enabled = false
		    btn_body_margin.Enabled = false
		    btn_body_tabs.Enabled = false
		    
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected IsSong As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected ReturnValue As Boolean
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
		  StyleWindow.ReturnValue = True
		  
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_cancel
	#tag Event
		Sub Action()
		  StyleWindow.ReturnValue = False
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
#tag Events can_font_title
	#tag Event
		Sub Action()
		  workingStyle.TitleFont = Me.GetFont
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
		  If(workingStyle.TitleAlign <> HAlign) Or (workingStyle.TitleVAlign <> VAlign) Then
		    workingStyle.TitleAlign = HAlign
		    workingStyle.TitleVAlign = VAlign
		    can_background_image.Repaint
		  End If
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
		  If( workingStyle.SubtitleAlign <> HAlign) Or (workingStyle.SubtitleVAlign <> VAlign) Then
		    workingStyle.SubtitleAlign = HAlign
		    workingStyle.SubtitleVAlign = VAlign
		    can_background_image.Repaint
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_font_title
	#tag Event
		Sub Action()
		  EnableTitle(Me.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_font_subtitle
	#tag Event
		Sub Action()
		  EnableSubtitle(Me.Value)
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
#tag Events chk_font_body
	#tag Event
		Sub Action()
		  EnableBody(Me.Value)
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
		  If (workingStyle.BodyAlign <> HAlign) Or (workingStyle.BodyVAlign <> VAlign) Then
		    workingStyle.BodyAlign = HAlign
		    workingStyle.BodyVAlign = VAlign
		    
		    If HAlign () = "left" Then
		      btn_body_tabs.Enabled = true
		    Else
		      btn_body_tabs.Enabled = false
		    End If
		    can_background_image.Repaint
		  End If
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
		  workingStyle.Background = Me.GetImage()
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
#tag Events chk_options_descriptive_subtitle
	#tag Event
		Sub Action()
		  workingStyle.DescriptiveSubtitles = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_options_highlight_chorus
	#tag Event
		Sub Action()
		  workingStyle.HighlightChorus = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_options_verse_in_title
	#tag Event
		Sub Action()
		  workingStyle.TitleIncludeVerse = Me.Value
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
