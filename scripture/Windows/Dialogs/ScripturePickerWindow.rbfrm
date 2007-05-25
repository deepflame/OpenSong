#tag Window
Begin Window ScripturePickerWindow Implements iScripturePicker
   BackColor       =   16777215
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   1
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   570
   LiveResize      =   "True"
   MacProcID       =   1046
   MaxHeight       =   32000
   MaximizeButton  =   "True"
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   "True"
   MinHeight       =   570
   MinimizeButton  =   "True"
   MinWidth        =   570
   Placement       =   0
   Resizeable      =   "True"
   Title           =   "Scripture Lookup"
   Visible         =   "False"
   Width           =   570
   Begin PushButton btn_done
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Done"
      ControlOrder    =   0
      Default         =   "False"
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   455
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   10
      Top             =   185
      Underline       =   "False"
      Visible         =   True
      Width           =   69
      BehaviorIndex   =   0
   End
   Begin GroupBox grp_quick_lookup
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Quick Lookup"
      ControlOrder    =   1
      Enabled         =   True
      Height          =   75
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   105
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   11
      Top             =   10
      Underline       =   "False"
      Visible         =   True
      Width           =   360
      BehaviorIndex   =   1
      Begin StaticText lbl_quick_reference
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   2
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_quick_lookup"
         Italic          =   "False"
         Left            =   110
         LockBottom      =   "False"
         LockLeft        =   "True"
         LockRight       =   "False"
         LockTop         =   "True"
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "Reference:"
         TextAlign       =   2
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   10
         Top             =   36
         Underline       =   "False"
         Visible         =   True
         Width           =   65
         BehaviorIndex   =   2
      End
      Begin StaticText nte_quick_example
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   3
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   12
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_quick_lookup"
         Italic          =   "True"
         Left            =   175
         LockBottom      =   "False"
         LockLeft        =   "True"
         LockRight       =   "True"
         LockTop         =   "True"
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "Ex: ""2Pet 1:1-2"" or ""2Pet 1:1-2 (KJV)"""
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   9
         Top             =   60
         Underline       =   "False"
         Visible         =   True
         Width           =   210
         BehaviorIndex   =   3
      End
      Begin SEditField edt_quick_lookup
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         Bold            =   "False"
         Border          =   "True"
         ControlOrder    =   5
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   "True"
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_quick_lookup"
         Italic          =   "False"
         Left            =   180
         LimitText       =   0
         LockBottom      =   "False"
         LockLeft        =   "True"
         LockRight       =   "True"
         LockTop         =   "True"
         Mask            =   ""
         Multiline       =   "False"
         Password        =   "False"
         ReadOnly        =   "False"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "False"
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   12
         Top             =   35
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   200
         BehaviorIndex   =   4
      End
      Begin PushButton btn_quick_lookup
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Cancel          =   "False"
         Caption         =   "Lookup"
         ControlOrder    =   24
         Default         =   "False"
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_quick_lookup"
         Italic          =   "False"
         Left            =   389
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "True"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   10
         Top             =   35
         Underline       =   "False"
         Visible         =   True
         Width           =   69
         BehaviorIndex   =   5
      End
   End
   Begin PushButton btn_search
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Search"
      ControlOrder    =   4
      Default         =   "False"
      Enabled         =   "False"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   486
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   10
      Top             =   34
      Underline       =   "False"
      Visible         =   True
      Width           =   69
      BehaviorIndex   =   6
   End
   Begin GroupBox grp_Books
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   ""
      ControlOrder    =   6
      Enabled         =   True
      Height          =   388
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   20
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   91
      Underline       =   "False"
      Visible         =   True
      Width           =   200
      BehaviorIndex   =   7
      Begin ListBox lst_scr_ot
         AutoDeactivate  =   "True"
         AutoHideScrollbars=   "True"
         Bold            =   ""
         ColumnCount     =   1
         ColumnsResizable=   ""
         ColumnWidths    =   ""
         ControlOrder    =   7
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   ""
         EnableDragReorder=   ""
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   ""
         HeadingIndex    =   -1
         Height          =   360
         HelpTag         =   ""
         Hierarchical    =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_Books"
         InitialValue    =   ""
         Italic          =   ""
         Left            =   30
         LockBottom      =   "True"
         LockLeft        =   "True"
         LockRight       =   "False"
         LockTop         =   "True"
         RequiresSelection=   ""
         ScrollbarHorizontal=   ""
         ScrollBarVertical=   "True"
         SelectionType   =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   100
         Underline       =   ""
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   80
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
         BehaviorIndex   =   8
      End
      Begin ListBox lst_scr_nt
         AutoDeactivate  =   "True"
         AutoHideScrollbars=   "True"
         Bold            =   ""
         ColumnCount     =   1
         ColumnsResizable=   ""
         ColumnWidths    =   ""
         ControlOrder    =   8
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   ""
         EnableDragReorder=   ""
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   ""
         HeadingIndex    =   -1
         Height          =   360
         HelpTag         =   ""
         Hierarchical    =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_Books"
         InitialValue    =   ""
         Italic          =   ""
         Left            =   122
         LockBottom      =   "True"
         LockLeft        =   ""
         LockRight       =   "True"
         LockTop         =   "True"
         RequiresSelection=   ""
         ScrollbarHorizontal=   ""
         ScrollBarVertical=   "True"
         SelectionType   =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   100
         Underline       =   ""
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   85
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
         BehaviorIndex   =   9
      End
   End
   Begin ListBox lst_scr_chapter
      AutoDeactivate  =   "True"
      AutoHideScrollbars=   "True"
      Bold            =   "False"
      ColumnCount     =   1
      ColumnsResizable=   "False"
      ColumnWidths    =   ""
      ControlOrder    =   9
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   "False"
      HeadingIndex    =   -1
      Height          =   360
      HelpTag         =   ""
      Hierarchical    =   "False"
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   229
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      RequiresSelection=   ""
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      SelectionType   =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   100
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   50
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      BehaviorIndex   =   10
   End
   Begin ListBox lst_scr_from_verse
      AutoDeactivate  =   "True"
      AutoHideScrollbars=   "True"
      Bold            =   "False"
      ColumnCount     =   1
      ColumnsResizable=   "False"
      ColumnWidths    =   ""
      ControlOrder    =   10
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   "False"
      HeadingIndex    =   -1
      Height          =   360
      HelpTag         =   ""
      Hierarchical    =   "False"
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   290
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      RequiresSelection=   ""
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      SelectionType   =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   100
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   50
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      BehaviorIndex   =   11
   End
   Begin ListBox lst_scr_to_verse
      AutoDeactivate  =   "True"
      AutoHideScrollbars=   "True"
      Bold            =   "False"
      ColumnCount     =   1
      ColumnsResizable=   "False"
      ColumnWidths    =   ""
      ControlOrder    =   11
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   "False"
      HeadingIndex    =   -1
      Height          =   360
      HelpTag         =   ""
      Hierarchical    =   "False"
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   355
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      RequiresSelection=   ""
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      SelectionType   =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   100
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   50
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      BehaviorIndex   =   12
   End
   Begin GroupBox grp_options_version
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Version"
      ControlOrder    =   12
      Enabled         =   True
      Height          =   55
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   415
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   218
      Underline       =   "False"
      Visible         =   True
      Width           =   145
      BehaviorIndex   =   13
      Begin PopupMenu pop_scr_version
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   13
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_options_version"
         InitialValue    =   ""
         Italic          =   "False"
         Left            =   440
         ListIndex       =   0
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   12
         Top             =   238
         Underline       =   "False"
         Visible         =   True
         Width           =   95
         BehaviorIndex   =   14
      End
   End
   Begin GroupBox grp_options_verses_per_slide
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Verses Per Slide"
      ControlOrder    =   14
      Enabled         =   True
      Height          =   50
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   415
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   283
      Underline       =   "False"
      Visible         =   True
      Width           =   145
      BehaviorIndex   =   15
      Begin RadioButton rad_verses_one
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   1
         ControlOrder    =   15
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_options_verses_per_slide"
         Italic          =   "False"
         Left            =   430
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   303
         Underline       =   "False"
         Value           =   "False"
         Visible         =   True
         Width           =   35
         BehaviorIndex   =   16
      End
      Begin RadioButton rad_verses_two
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   2
         ControlOrder    =   16
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_options_verses_per_slide"
         Italic          =   "False"
         Left            =   475
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   303
         Underline       =   "False"
         Value           =   "True"
         Visible         =   True
         Width           =   35
         BehaviorIndex   =   17
      End
      Begin RadioButton rad_verses_three
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   3
         ControlOrder    =   17
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_options_verses_per_slide"
         Italic          =   "False"
         Left            =   520
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   303
         Underline       =   "False"
         Value           =   "False"
         Visible         =   True
         Width           =   35
         BehaviorIndex   =   18
      End
   End
   Begin GroupBox grp_options_format
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Format"
      ControlOrder    =   18
      Enabled         =   True
      Height          =   70
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   415
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   343
      Underline       =   "False"
      Visible         =   True
      Width           =   145
      BehaviorIndex   =   19
      Begin RadioButton rad_format_paragraph
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Paragraph"
         ControlOrder    =   19
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_options_format"
         Italic          =   "False"
         Left            =   430
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   363
         Underline       =   "False"
         Value           =   "True"
         Visible         =   True
         Width           =   120
         BehaviorIndex   =   20
      End
      Begin RadioButton rad_format_verse
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Verse"
         ControlOrder    =   20
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_options_format"
         Italic          =   "False"
         Left            =   430
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   383
         Underline       =   "False"
         Value           =   "False"
         Visible         =   True
         Width           =   120
         BehaviorIndex   =   21
      End
   End
   Begin Checkbox chk_shownumbers
      AutoDeactivate  =   "True"
      Bold            =   ""
      Caption         =   "Number Verses"
      ControlOrder    =   21
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   415
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   10
      Top             =   426
      Underline       =   ""
      Value           =   "True"
      Visible         =   True
      Width           =   145
      BehaviorIndex   =   22
   End
   Begin PushButton btn_insert
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Insert"
      ControlOrder    =   22
      Default         =   "False"
      Enabled         =   "False"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   455
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   10
      Top             =   116
      Underline       =   "False"
      Visible         =   "False"
      Width           =   69
      BehaviorIndex   =   23
   End
   Begin PushButton btn_add
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Add"
      ControlOrder    =   23
      Default         =   "True"
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   455
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   10
      Top             =   150
      Underline       =   "False"
      Visible         =   True
      Width           =   69
      BehaviorIndex   =   24
   End
   Begin EditField edt_preview
      AcceptTabs      =   "False"
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   16777215
      Bold            =   "False"
      Border          =   "True"
      ControlOrder    =   25
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   71
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   20
      LimitText       =   0
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "False"
      Mask            =   ""
      Multiline       =   "True"
      Password        =   "False"
      ReadOnly        =   "True"
      ScrollbarHorizontal=   "False"
      ScrollbarVertical=   "True"
      Styled          =   "False"
      TabPanelIndex   =   0
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   491
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   530
      BehaviorIndex   =   25
   End
   Begin StaticText txt_verse_dash
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   26
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   342
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "-"
      TextAlign       =   1
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   260
      Underline       =   "False"
      Visible         =   True
      Width           =   10
      BehaviorIndex   =   26
   End
   Begin StaticText txt_verse_colon
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   27
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   277
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   ":"
      TextAlign       =   1
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   260
      Underline       =   "False"
      Visible         =   True
      Width           =   10
      BehaviorIndex   =   27
   End
   Begin StaticText StaticText1
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   28
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   -818
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "Label:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   150
      Underline       =   "False"
      Visible         =   True
      Width           =   100
      BehaviorIndex   =   28
   End
   Begin StaticText lbl_bible_book
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   29
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   20
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "Bible Book"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   69
      Underline       =   "False"
      Visible         =   True
      Width           =   100
      BehaviorIndex   =   29
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  SPController = Nil
		  Globals.Status_ScripturePickerOpen = False
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  App.T.TranslateWindow Me, "scripture_lookup", App.TranslationFonts
		  App.CenterInControlScreen Me
		  
		  '++JRC Ensure the scrollbars are enabled if necessary
		  lst_scr_nt.ScrollPosition = 1
		  lst_scr_nt.ScrollPosition = 0
		  lst_scr_ot.ScrollPosition = 1
		  lst_scr_ot.ScrollPosition = 0
		  '--
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  ResizeBookLists
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  ResizeBookLists
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Function ActiveBookName() As String
		  If lst_scr_ot.ListIndex >= 0 Then Return lst_scr_ot.List(lst_scr_ot.ListIndex)
		  If lst_scr_nt.ListIndex >= 0 Then Return lst_scr_nt.List(lst_scr_nt.ListIndex)
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub BuildScripture(Optional Insert as boolean = false)
		  Dim verses(0), passage As String
		  Dim x, advance As Integer
		  Dim vStart, vStop, cntVerses as Integer
		  Dim slides, slide As XmlNode
		  Dim vFrom, vTo As String
		  advance = 0
		  
		  Node.Name = "slide_group"
		  '  MG:  This is primarily for Insert.  Make sure that the reference doesn't have more than can be displayed in a live slide
		  If rad_verses_one.Value then
		    cntVerses = 1
		  ElseIf rad_verses_two.Value then
		    cntVerses = 2
		  Else
		    cntVerses = 3
		  End If
		  
		  //++
		  // Original code here would use the ListIndex as the verse reference.  With Bibles that combine verses or
		  // have sub-verses (The Portugese Bible is an example of the former, the New American Bible the latter),
		  // the references don't exactly correspond to the ListIndex.  Retrieve this directly from the Bible object.
		  //--
		  
		  If Insert And (lst_scr_to_verse.listindex - lst_scr_from_verse.listindex + 1 > cntVerses) Then
		    'passage = ActiveBookName + " " + Str(lst_scr_chapter.ListIndex+1) + ":" + Str(lst_scr_from_verse.ListIndex+1) + "-" + Str(lst_scr_from_verse.ListIndex+cntVerses)
		    'verses = App.MyBible.GetPassage(ActiveBookName, Str(lst_scr_chapter.ListIndex + 1), Str(lst_scr_from_verse.ListIndex+1), Str(lst_scr_from_verse.ListIndex+cntVerses))
		    passage = ActiveBookName + " " + lst_scr_chapter.Cell(lst_scr_chapter.ListIndex, 0) + ":"
		    Bible(App.MyBible).GetVerseRange(ActiveBookNumber, CDbl(lst_scr_chapter.Cell(lst_scr_chapter.ListIndex, 0)), lst_scr_from_verse.ListIndex + 1, vFrom, vTo)
		    passage = passage + vFrom
		    Bible(App.MyBible).GetVerseRange(ActiveBookNumber, CDbl(lst_scr_chapter.Cell(lst_scr_chapter.ListIndex, 0)), lst_scr_from_verse.ListIndex + cntVerses, vFrom, vTo)
		    If vTo = "" Then
		      passage = passage + "-" + vFrom
		    Else
		      passage = passage + "-" + vTo
		    End If
		    verses = App.MyBible.GetPassage(ActiveBookNumber, lst_scr_chapter.ListIndex + 1, lst_scr_from_verse.ListIndex + 1, lst_scr_from_verse.ListIndex + cntVerses)
		  ElseIf lst_scr_to_verse.ListIndex > lst_scr_from_verse.ListIndex Then
		    'passage = ActiveBookName + " " + Str(lst_scr_chapter.ListIndex+1) + ":" + Str(lst_scr_from_verse.ListIndex+1) + "-" + Str(lst_scr_to_verse.ListIndex+1)
		    'verses = App.MyBible.GetPassage(ActiveBookName, Str(lst_scr_chapter.ListIndex + 1), Str(lst_scr_from_verse.ListIndex+1), Str(lst_scr_to_verse.ListIndex + 1))
		    verses = App.MyBible.GetPassage(ActiveBookNumber, lst_scr_chapter.ListIndex + 1, lst_scr_from_verse.ListIndex + 1, lst_scr_to_verse.ListIndex + 1)
		    passage = ActiveBookName + " " + lst_scr_chapter.Cell(lst_scr_chapter.ListIndex, 0) + ":"
		    Bible(App.MyBible).GetVerseRange(ActiveBookNumber, CDbl(lst_scr_chapter.Cell(lst_scr_chapter.ListIndex, 0)), lst_scr_from_verse.ListIndex + 1, vFrom, vTo)
		    passage = passage + vFrom
		    Bible(App.MyBible).GetVerseRange(ActiveBookNumber, CDbl(lst_scr_chapter.Cell(lst_scr_chapter.ListIndex, 0)), lst_scr_to_verse.ListIndex + 1, vFrom, vTo)
		    If vTo = "" Then
		      passage = passage + "-" + vFrom
		    Else
		      passage = passage + "-" + vTo
		    End If
		  Else
		    'passage = ActiveBookName + " " + Str(lst_scr_chapter.ListIndex+1) + ":" + Str(lst_scr_from_verse.ListIndex+1)
		    'verses = App.MyBible.GetPassage(ActiveBookName, Str(lst_scr_chapter.ListIndex + 1), Str(lst_scr_from_verse.ListIndex+1), Str(lst_scr_from_verse.ListIndex+1))
		    verses = App.MyBible.GetPassage(ActiveBookNumber, lst_scr_chapter.ListIndex + 1, lst_scr_from_verse.ListIndex + 1, lst_scr_from_verse.ListIndex + 1)
		    passage = ActiveBookName + " " + lst_scr_chapter.Cell(lst_scr_chapter.ListIndex, 0) + ":"
		    Bible(App.MyBible).GetVerseRange(ActiveBookNumber, CDbl(lst_scr_chapter.Cell(lst_scr_chapter.ListIndex, 0)), lst_scr_to_verse.ListIndex + 1, vFrom, vTo)
		    passage = passage + vFrom
		    If vTo <> "" Then passage = passage + "-" + vTo
		  End If
		  '*******************************
		  
		  ' ----- SET TITLE -----
		  SmartML.SetValue Node, "@name", passage
		  SmartML.SetValue Node, "@type", "scripture"
		  SmartML.SetValue Node, "title", passage
		  SmartML.SetValue Node, "subtitle", App.MyBible.name
		  
		  ' MG: Have to clear the slide cache in case Insert is used before Add
		  slides = SmartML.GetNode(Node, "slides", False)
		  If slides <> Nil Then Node.RemoveChild slides
		  '*******************************
		  slides = SmartML.GetNode(Node, "slides", True)
		  
		  ' ----- SET VERSES -----
		  For x = 1 To UBound(verses)
		    If rad_verses_one.Value Or (rad_verses_two.Value And advance = 2) Or (rad_verses_three.Value And advance = 3) Then
		      advance = 0
		    End If
		    If advance = 0 Then
		      slide = SmartML.InsertChild(slides, "slide", slides.ChildCount)
		      SmartML.SetValue slide, "body", verses(x)
		    Else
		      If rad_format_verse.Value Then
		        SmartML.SetValue slide, "body", SmartML.GetValue(slide, "body", True) + Chr(10) + verses(x)
		      Else
		        SmartML.SetValue slide, "body", SmartML.GetValue(slide, "body", True) + " " + verses(x)
		      End If
		    End If
		    advance = advance + 1
		  Next x
		  
		  ' MG: When inserting, redraw the presentation window, but get the focus back here so the escape key doesn't kill the wrong thing!
		  '         Also, if more verses are selected than can be displayed, reset the lst_scr_FROM_verse to the next available.
		  'If Live Then
		  If Insert Then
		    PresentWindow.Mode = "N"
		    PresentWindow.ResetPaint slide
		    ScripturePickerWindow.SetFocus
		    
		    If lst_scr_to_verse.listindex - lst_scr_from_verse.listindex + 1 > cntVerses Then
		      vStart = lst_scr_from_verse.listIndex
		      vStop = lst_scr_to_verse.listIndex
		      lst_scr_from_verse.listIndex = vStart + cntVerses
		      lst_scr_to_verse.listIndex = vStop
		    End If
		  ElseIf Live and PresentWindow.Mode <> PresentMode Then 'If not inserting, ensure the show remains in the mode it was before
		    PresentWindow.Mode = PresentMode
		  End If
		  '*******************************
		  ReturnValue = True
		  
		  SmartML.SetValue(App.MyMainSettings.DocumentElement, "last_scripture/@version", pop_scr_version.List(pop_scr_version.ListIndex))
		  
		  If rad_verses_one.Value Then
		    SmartML.SetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@per_slide", 1)
		  ElseIf rad_verses_two.Value Then
		    SmartML.SetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@per_slide", 2)
		  Else
		    SmartML.SetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@per_slide", 3)
		  End If
		  
		  If rad_format_verse.Value Then
		    SmartML.SetValue(App.MyMainSettings.DocumentElement, "last_scripture/@format", "verse")
		  Else
		    SmartML.SetValue(App.MyMainSettings.DocumentElement, "last_scripture/@format", "paragraph")
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(controller As ScripturePickerController)
		  
		  // call the Window constructor, or Open events will not fire
		  Super.Window()
		  
		  Try
		    SPController = controller
		    SPController.registerObserver self
		  Catch e As NilObjectException
		    // If controller is Nil, then there's a logic error higher up in the program
		    App.DebugWriter.Write "ScripturePickerWindow.Constructor: Controller is Nil!?", 1
		    App.DebugWriter.Write "Stack dump: "
		    App.DebugWriter.Write Join(RuntimeException(e).Stack, EndOfLine)
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SelectedBookNumber() As Integer
		  If lst_scr_ot.ListIndex >= 0 Then Return lst_scr_ot.CellTag(lst_scr_ot.ListIndex, 0).IntegerValue
		  If lst_scr_nt.ListIndex >= 0 Then Return lst_scr_nt.CellTag(lst_scr_nt.ListIndex, 0).IntegerValue
		  
		  System.DebugLog "ScripturePickerWindow.CurrentBookNumber: both OT & NT lists have no selection."
		  Return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FindVerseIndex(List As ListBox, Verse As Integer, aix As String) As Integer
		  //+
		  // Look at the contents of a listbox and find the item that contains the given verse reference.
		  //
		  // Ed Palmer, November 2006
		  //--
		  
		  Dim listVerse As Integer
		  Dim listAix As String
		  Dim i As Integer
		  Dim lc As Integer
		  Dim searching As Boolean = True
		  
		  lc = List.ListCount
		  
		  i = -1
		  While searching And (i < lc - 1)
		    i = i + 1
		    If Not SplitVerseNumber(List.Cell(i, 0), listVerse, listAix) Then Return -1 // Error in verse format; treat as "verse not found"
		    If listVerse = Verse Then
		      If listaix = aix Then
		        Searching = False
		      ElseIf listaix > aix Then // Went one too far
		        i = i - 1
		        Searching = False
		      End If
		    ElseIf listVerse > Verse Then // Moved past the correct verse
		      i = i - 1
		      Searching = False
		    End If
		  Wend
		  
		  If Searching Then Return -1 // Nothing found
		  
		  Return i
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Lookup(lookup As String)
		  //
		  // Updated to pass the book to the Bible object for decoding
		  // Allows the use of abbreviations that aren't necessarily the
		  // first few characters of the book name
		  //
		  // Ed Palmer, September 2005
		  //
		  Dim s(0) As String
		  
		  Dim temp As String
		  Dim open_paren_loc, close_paren_loc As Integer
		  Dim i, first_space_loc, colon_loc, dash_loc, second_space_loc As Integer
		  Dim BookName As String
		  Dim re As RegEx
		  Dim reresult As RegExMatch
		  Dim verse As Integer
		  Dim aix As String
		  
		  If Len(lookup) = 0 Then
		    InputBox.Message App.T.Translate("scripture_lookup/bad_reference/empty")
		    Return
		  End If
		  
		  ' Look for version
		  open_paren_loc = InStr(lookup, "(")
		  close_paren_loc = InStr(lookup, ")")
		  If open_paren_loc > 0 And close_paren_loc > 0 And _
		    (close_paren_loc > open_paren_loc) Then
		    temp = Mid(lookup, open_paren_loc + 1, close_paren_loc - open_paren_loc - 1)
		    i = 0
		    
		    //++
		    // Bug 1467887: If xlations such as SCH and SCH51 exist, entering SCH may
		    // return SCH51.  Test for exact match first, then substring.
		    //--
		    While i < pop_scr_version.ListCount
		      If Lowercase(pop_scr_version.List(i)) = Lowercase(temp) Then
		        pop_scr_version.ListIndex = i
		        i = pop_scr_version.ListCount
		      End If
		      i = i + 1
		    Wend
		    If i = pop_scr_version.ListCount Then // No exact match, try substring
		      While i < pop_scr_version.ListCount
		        If InStr(Lowercase(pop_scr_version.List(i)),  Lowercase(temp)) > 0 Then
		          pop_scr_version.ListIndex = i
		          i = pop_scr_version.ListCount
		        End If
		        i = i + 1
		      Wend
		    End If
		    
		    If i = pop_scr_version.ListCount Then
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/version", Lowercase(temp))
		      Return
		    End If
		  End If
		  
		  ' Look for book
		  first_space_loc = InStr(lookup, " ")
		  
		  Select Case first_space_loc
		  Case 0
		    InputBox.Message App.T.Translate("scripture_lookup/bad_reference/book", "")
		    Return
		  Case 2
		    lookup = Left(lookup, 1) + Right(lookup, len(lookup) - 2)
		  Case else
		  End Select
		  
		  temp = Left(lookup, first_space_loc - 1)
		  
		  BookName = Bible(App.MyBible).LookupBookName(temp)
		  
		  If BookName = "" Then
		    If App.MyBible.ErrorString = "" Then // Nothing found
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/book")
		    Else // Multiples found
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/ambiguous", _
		      temp, App.MyBible.ErrorString)
		    End If
		    Return
		  End If
		  
		  ' This was the original code to do the lookup.  Modified to just
		  ' set the selection in the list boxes now
		  i = 0
		  While i < lst_scr_ot.ListCount
		    If lst_scr_ot.List(i) = BookName Then
		      lst_scr_ot.ListIndex = i
		      i = lst_scr_ot.ListCount 'This breaks the While and skips the next while
		    End If
		    i = i + 1
		  Wend
		  If i = lst_scr_ot.ListCount Then
		    i = 0
		    While i < lst_scr_nt.ListCount
		      If lst_scr_nt.List(i) = BookName Then
		        lst_scr_nt.ListIndex = i
		        i = lst_scr_nt.ListCount
		      End If
		      i = i + 1
		    Wend
		    If i = lst_scr_nt.ListCount Then
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/version", Lowercase(temp))
		      Return
		    End If
		  End If
		  
		  ' Look for chapter
		  colon_loc = InStr(first_space_loc + 1, lookup, ":")
		  If colon_loc = 0 Then
		    colon_loc = InStr(first_space_loc + 1, lookup, " ")
		    If colon_loc = 0 Then
		      colon_loc = Len(lookup)
		    End If
		    ' Looks like it ended with a chapter.
		    temp = Mid(lookup, first_space_loc + 1, colon_loc - first_space_loc)
		    i = Val(temp)
		    If i < 0 Then
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/chapter", "")
		      Return
		    ElseIf i > lst_scr_chapter.ListCount Then
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/chapter", Lowercase(temp))
		      Return
		    End If
		    lst_scr_chapter.ListIndex = i - 1 // We can assume that the chapters are numbered sequentially from 1
		    lst_scr_to_verse.ListIndex = lst_scr_to_verse.ListCount - 1
		    BuildScripture
		    Return
		  End If
		  temp = Mid(lookup, first_space_loc + 1, colon_loc - first_space_loc)
		  i = Val(temp)
		  If i <= 0 Then
		    InputBox.Message App.T.Translate("scripture_lookup/bad_reference/chapter", "")
		    Return
		  ElseIf i > lst_scr_chapter.ListCount Then
		    InputBox.Message App.T.Translate("scripture_lookup/bad_reference/chapter", Lowercase(temp))
		    Return
		  End If
		  lst_scr_chapter.ListIndex = i - 1
		  
		  ' Look for from verse
		  dash_loc = InStr(colon_loc + 1, lookup, "-")
		  If dash_loc = 0 Then
		    dash_loc = InStr(colon_loc + 1, lookup, " ")
		    If dash_loc = 0 Then
		      dash_loc = Len(lookup) + 1
		    End If
		  End If
		  temp = Mid(lookup, colon_loc + 1, dash_loc - colon_loc)
		  If SplitVerseNumber(temp, Verse, aix) Then
		    i = FindVerseIndex(lst_scr_from_verse, verse, aix)
		    If i < 0 Then
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/verse", "")
		      Return
		    End If
		  Else
		    InputBox.Message App.T.Translate("scripture_lookup/bad_reference/verse", Lowercase(temp))
		    Return
		  End If
		  
		  lst_scr_from_verse.ListIndex = i
		  
		  ' Look for to verse
		  second_space_loc = InStr(dash_loc + 1, lookup, " ")
		  If second_space_loc = 0 Then
		    second_space_loc = Len(lookup) + 1
		  End If
		  temp = Mid(lookup, dash_loc + 1, second_space_loc - dash_loc)
		  If Trim(temp) = "" Then
		    ' There was probably no verse specified
		  Else
		    If SplitVerseNumber(temp, verse, aix) Then
		      i = FindVerseIndex(lst_scr_to_verse, verse, aix)
		      If i < 0 Then
		        InputBox.Message App.T.Translate("scripture_lookup/bad_reference/verse_range")
		        Return
		      Else
		        lst_scr_to_verse.ListIndex = i
		      End If
		    Else
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/verse", Lowercase(temp))
		      Return
		    End If
		  End If
		  
		  BuildScripture
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Popup(node As XmlNode, live As Boolean = False) As Boolean
		  'App.DebugWriter.Write "ScripturePickerWindow.Popup: Enter"
		  '
		  'If App.MyBible = Nil Then
		  'App.DebugWriter.Write "ScripturePickerWindow.Popup: Exit (no Bible loaded)"
		  'Return True
		  'End If
		  '
		  'Me.Node = node
		  'Me.Live = live
		  'edt_quick_lookup.Text = ""
		  'OldSel = -1
		  ''Dim book As Integer
		  'ReturnValue = False
		  'book = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@book")
		  'If book > 0 And book <= App.MyBible.GetOTCount Then
		  'lst_scr_nt.ListIndex = -1
		  'lst_scr_ot.ListIndex = book - 1
		  ''lst_scr_ot.SetFocus
		  'ElseIf book > 0 Then
		  'lst_scr_ot.ListIndex = -1
		  'lst_scr_nt.ListIndex = book - 1 - App.MyBible.GetOTCount
		  ''lst_scr_nt.SetFocus
		  'Else 'No previously selected book
		  'book = 1 'Assume Genesis
		  'lst_scr_nt.ListIndex = -1
		  'lst_scr_ot.ListIndex = book - 1
		  'End If
		  '
		  'If book > 0 Then
		  'If SmartML.GetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@chapter") > 0 Then
		  'lst_scr_chapter.ListIndex = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@chapter") - 1
		  'lst_scr_from_verse.ListIndex = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@verse") - 1
		  'lst_scr_to_verse.ListIndex = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@thru") - 1
		  'Else 'No Previously selected chapter
		  'lst_scr_chapter.ListIndex = 0 'Assume chapter 1
		  ''From & To verses will be set automatically by the chapter change
		  'End If
		  '
		  'End If
		  '
		  'If Live Then
		  '' MG: The Insert button will add slides on the fly directly to the presentation
		  'btn_Insert.Visible = True
		  'btn_Insert.Caption = App.T.Translate("shared/insert/@caption")
		  'PresentMode = PresentWindow.Mode
		  ''**************************
		  'btn_add.Caption = App.T.Translate("shared/add/@caption")
		  'btn_done.Caption = App.T.Translate("shared/close/@caption") 'MG: Close just makes more sense to me here
		  'End If
		  'btn_search.Caption = App.T.Translate("shared/search/@caption") ' MG: Without this the Search button was blank!
		  ''++JRC
		  'Globals.Status_ScripturePickerOpen = True
		  'setPreview
		  ''--
		  'ShowModalWithin(MainWindow)
		  '
		  'If ReturnValue And book >= 0 Then
		  'SmartML.SetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@book", book)
		  'SmartML.SetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@chapter", chapter)
		  'SmartML.SetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@verse", verse)
		  'SmartML.SetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@thru", thru)
		  'End If
		  '
		  'App.DebugWriter.Write "ScripturePickerWindow.Popup: Exit"
		  'Return ReturnValue
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setSearchResult(verse as String)
		  dim parts(), bookName as String
		  Dim book, chap, ver, x as Integer
		  
		  
		  parts= verse.split(" ")
		  
		  'combine all parts of the book name
		  bookName=parts(0)
		  for x=1 to UBound(parts)-1
		    bookName= bookName+" "+parts(x)
		  next x
		  
		  book= Bible(App.MyBible).GetBookNum(bookName)-1
		  
		  parts= parts(UBound(parts)).split(":")
		  chap=Val(parts(0))-1
		  ver=Val(parts(1))-1
		  
		  if (book<lst_scr_ot.ListCount) then
		    lst_scr_ot.ListIndex= book
		    lst_scr_nt.ListIndex=-1
		  else
		    lst_scr_nt.ListIndex= book- lst_scr_ot.ListCount
		    lst_scr_ot.ListIndex=-1
		  end if
		  
		  lst_scr_chapter.ListIndex=chap
		  lst_scr_to_verse.ListIndex=ver
		  lst_scr_from_verse.ListIndex=ver
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SplitVerseNumber(reference As String, ByRef verse As Integer, ByRef aix As String) As Boolean
		  //+
		  // Split a verse reference into numeric and alphabetic components
		  //
		  // Ed Palmer, November 2006
		  //--
		  
		  Dim re As New RegEx
		  Dim result As RegExMatch
		  Dim vnum As Integer
		  Dim valpha As String
		  
		  re.SearchPattern = "([0-9]+)([A-Za-z]*)[^A-Za-z0-9]*"
		  
		  result = re.Search(reference)
		  
		  If result = Nil Then Return False // Not in proper format
		  
		  verse = CDbl(result.SubExpressionString(1)) // Numeric portion
		  aix = result.SubExpressionString(2) // Alpha portion (may be empty string)
		  
		  Return True
		Catch ex
		  Return False // likely result is Nil or something messed up in the Search
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TestLookup(ref As String)
		  Dim s As String
		  Dim i As Integer
		  
		  If Mid(ref, 2, 1) = " " Then ref = Left(ref, 1) + Mid(ref, 3)
		  ref = ReplaceAll(ref, ":", " ")
		  ref = ReplaceAll(ref, "-", " ")
		  
		  If Len(ref) = 0 Then
		    InputBox.Message App.T.Translate("scripture_lookup/bad_reference/empty")
		    Return
		  End If
		  
		  ' --- Find version ---
		  s = NthField(ref, " ", CountFields(ref, " "))
		  If Left(s, 1) = "(" Then
		    s = Lowercase(Mid(s, 2, s.Len-2))
		    i = 0
		    While i < pop_scr_version.ListCount
		      If InStr(Lowercase(pop_scr_version.List(i)), s) > 0 Then
		        pop_scr_version.ListIndex = i
		        i = pop_scr_version.ListCount
		      End If
		      i = i + 1
		    Wend
		    If i = pop_scr_version.ListCount Then
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/version", s)
		      Return
		    End If
		  End If
		  
		  ' --- Find book ---
		  s = NthField(ref, " ", 1)
		  If s.Len > 0 Then
		    i = 0
		    While i < lst_scr_ot.ListCount
		      If InStr(Lowercase(ReplaceAll(lst_scr_ot.List(i), " ", "")), Lowercase(s)) = 1 Then
		        lst_scr_ot.ListIndex = i
		        i = lst_scr_ot.ListCount
		      End If
		      i = i + 1
		    Wend
		    If i = lst_scr_ot.ListCount Then
		      i = 0
		      While i < lst_scr_nt.ListCount
		        If InStr(Lowercase(ReplaceAll(lst_scr_nt.List(i), " ", "")), Lowercase(s)) = 1 Then
		          lst_scr_nt.ListIndex = i
		          i = lst_scr_nt.ListCount
		        End If
		        i = i + 1
		      Wend
		      If i = lst_scr_nt.ListCount Then
		        InputBox.Message App.T.Translate("scripture_lookup/bad_reference/book", s)
		        Return
		      End If
		    End If
		  Else
		    InputBox.Message App.T.Translate("scripture_lookup/bad_reference/book", "")
		    Return
		  End If
		  
		  ' --- Find chapter ---
		  s = NthField(ref, " ", 2)
		  If s.Len > 0 Then
		    i = s.Val
		    If i <= 0 Then
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/chapter", s)
		      Return
		    ElseIf i > lst_scr_chapter.ListCount Then
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/chapter", s)
		      Return
		    End If
		    lst_scr_chapter.ListIndex = i - 1
		    lst_scr_to_verse.ListIndex = lst_scr_to_verse.ListCount - 1
		  Else
		    InputBox.Message App.T.Translate("scripture_lookup/bad_reference/chapter", "")
		    Return
		  End If
		  
		  ' --- Find from verse
		  s = NthField(ref, " ", 3)
		  If s.Len > 0 Then
		    i = Val(s)
		    If i <= 0 Then
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/verse", s)
		      Return
		    ElseIf i > lst_scr_from_verse.ListCount Then
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/verse", s)
		      Return
		    End If
		    lst_scr_from_verse.ListIndex = i - 1
		  Else
		    InputBox.Message App.T.Translate("scripture_lookup/bad_reference/verse", "")
		    Return
		  End If
		  
		  ' --- Find to verse
		  s = NthField(ref, " ", 4)
		  If s.Len > 0 Then
		    i = Val(s)
		    If i = 0 Then
		      ' There was probably no verse specified
		    ElseIf i < lst_scr_from_verse.ListIndex+1 Then
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/verse_range", s)
		      Return
		    Else
		      If i > lst_scr_to_verse.ListCount Then i = lst_scr_to_verse.ListCount
		      lst_scr_to_verse.ListIndex = i - 1
		    End If
		  Else
		    InputBox.Message App.T.Translate("scripture_lookup/bad_reference/verse_range", "")
		    Return
		  End If
		  
		  BuildScripture
		  Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ChangeBible(newBible As iBible)
		  App.DebugWriter.Write "ScripturePickerWindow.ChangeBible", 4
		  //
		  // Store the new bible
		  //
		  If newBible = Nil Then Return
		  MyBible = newBible
		  
		  //
		  // Build the version popup
		  //
		  Dim bibles() As String
		  bibles = BibleFactory.BibleList
		  pop_scr_version.DeleteAllRows
		  pop_scr_version.AddRows(bibles)
		  pop_scr_version.ListIndex = bibles.IndexOf(newBible.Name)
		  
		  //
		  // Load the lists from the new bible
		  //
		  RebuildBooklistListBoxes
		  
		  ActiveBible = newBible.Name
		  
		  ActiveBookNumber = -1
		  lst_scr_ot.ListIndex = -1
		  lst_scr_nt.ListIndex = -1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RebuildBooklistListboxes()
		  //
		  // Rebuild the OT & NT listboxes from the current bible
		  //
		  
		  //
		  // Clear old values
		  //
		  lst_scr_ot.DeleteAllRows
		  lst_scr_nt.DeleteAllRows
		  lst_scr_chapter.DeleteAllRows
		  lst_scr_from_verse.DeleteAllRows
		  lst_scr_to_verse.DeleteAllRows
		  
		  Dim s() As String
		  Dim n() As Integer
		  
		  Dim i As Integer
		  Dim cnt As Integer
		  
		  cnt = MyBible.GetOTBooks(s, n) - 1
		  
		  For i = 0 To cnt
		    lst_scr_ot.AddRow s(i)
		    lst_scr_ot.CellTag(i, 0) = n(i)
		  Next
		  
		  ReDim s(-1)
		  ReDim n(-1)
		  
		  cnt = MyBible.GetNTBooks(s, n) - 1
		  
		  For i = 0 To cnt
		    lst_scr_nt.AddRow s(i)
		    lst_scr_nt.CellTag(i, 0) = n(i)
		  Next
		  
		  lst_scr_ot.ListIndex = -1
		  lst_scr_nt.ListIndex = -1
		  OldSel = -1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SendCommand(command As String, parameter As Variant = Nil)
		  'System.DebugLog "ScripturePickerWindow.SendCommand: Sending " + command
		  
		  SPController.CommandNotification(command, Self, parameter)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetSelection(bookNumber As Integer, chapterNumber As Integer, fromVerse As Integer, toVerse As Integer)
		  Dim i As Integer
		  Dim bookIndex As Integer = -1
		  Dim bookControl As Listbox = Nil
		  Dim notBookControl As Listbox = Nil
		  Dim chapterCount As Integer
		  Dim verseList() As String
		  
		  bookIndex = FindBookInListbox(bookNumber, lst_scr_ot)
		  If bookIndex >= 0 Then
		    bookControl = lst_scr_ot
		    notBookControl = lst_scr_nt
		  Else
		    bookIndex = FindBookInListbox(bookNumber, lst_scr_nt)
		    If bookIndex >= 0 Then bookControl = lst_scr_nt
		    notBookControl = lst_scr_ot
		  End If
		  
		  If bookControl = Nil Then
		    System.DebugLog "ScripturePickerWindow.SetSelection: couldn't find book " + CStr(bookNumber)
		    Return
		  End If
		  
		  //
		  // Was this a change? If so, rebuild chapter and verse listboxes
		  //
		  
		  If bookControl.CellTag(bookIndex, 0) <> ActiveBookNumber Then
		    RebuildChapterListbox(bookNumber, chapterNumber)
		    RebuildVerseListboxes(bookNumber, chapterNumber)
		  End If
		  
		  ActiveBookNumber = bookNumber
		  bookControl.ListIndex = bookIndex
		  notBookControl.ListIndex = -1
		  
		  //
		  // The bible object deals with one-based offsets, but for
		  // simplicity translate that now into zero-based for the
		  // listboxes.
		  // Check for chapter change in case a new chapter
		  // was selected within the same book.
		  //
		  If ActiveChapterNumber <> chapterNumber - 1 Then
		    RebuildVerseListboxes(bookNumber, chapterNumber)
		  End If
		  ActiveChapterNumber = chapterNumber - 1
		  ActiveFromVerse = fromVerse - 1
		  ActiveThruVerse = toVerse - 1
		  
		  lst_scr_chapter.ListIndex = ActiveChapterNumber
		  lst_scr_from_verse.ListIndex = ActiveFromVerse
		  lst_scr_to_verse.ListIndex = ActiveThruVerse
		  
		  UpdatePreview
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FindBookInListbox(bookNumber As Integer, bookControl As ListBox) As Integer
		  //
		  // Look through the listbox to find a matching book number in the CellTag
		  //
		  // Brute force, but simple
		  //
		  
		  Dim i, j As Integer
		  
		  If bookControl = Nil Then Return -1
		  
		  j = bookControl.ListCount - 1
		  For i = 0 To j
		    If bookControl.CellTag(i, 0) = bookNumber Then
		      Return i
		    End If
		  Next
		  
		  Return -1
		  
		Catch ex
		  System.DebugLog "ScripturePicker.FindBookInListbox: caught a " + ex.ToString
		  Return -1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RebuildChapterListbox(bookNumber As Integer, chapterNumber As Integer)
		  Dim chapterCount As Integer
		  
		  lst_scr_chapter.DeleteAllRows
		  chapterCount = MyBible.GetChapterCount(bookNumber)
		  For i As Integer = 1 To chapterCount
		    lst_scr_chapter.AddRow CStr(i)
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub BookSelected(newBook As Integer)
		  SendCommand ScripturePickerController.cmdSelectBook, newbook
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PassageChanged()
		  Dim newPassage() As String
		  
		  //
		  // Pack the current selections into the string
		  //
		  // Really should be an object
		  //
		  newPassage.Append CStr(CurrentBookNumber)
		  newPassage.Append CStr(CurrentChapter)
		  newPassage.Append CStr(CurrentFromVerseIndex)
		  newPassage.Append CStr(CurrentThruVerseIndex)
		  
		  SendCommand ScripturePickerController.cmdSelectionChanged, Join(newPassage, Chr(0))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub UpdatePreview()
		  Dim verses() As String
		  Dim sep As String
		  
		  If MyBible Is Nil Then Return
		  
		  verses = MyBible.GetPassage(CurrentBookNumber, CurrentChapter, CurrentFromVerseIndex, CurrentThruVerseIndex, chk_shownumbers.Value)
		  
		  If rad_format_paragraph.Value Then
		    sep = " "
		  ElseIf rad_format_verse.Value Then
		    sep = EndOfLine
		  End If
		  
		  edt_preview.Text = Join(verses, sep)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableUI()
		  App.DebugWriter.Write "ScripturePickerWindow.DisableUI", 4
		  //
		  // Disable all the controls on the window
		  //
		  
		  Dim count As Integer
		  Dim c As RectControl
		  count = Self.ControlCount - 1
		  
		  Self.MouseCursor = WatchCursor
		  
		  For i As Integer = 0 To count
		    If Not (Self.Control(i) IsA RectControl) Then Continue
		    c = RectControl(Self.Control(i))
		    If c.Enabled Then
		      EnabledControls.Append c
		      c.Enabled = False
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableUI()
		  App.DebugWriter.Write "ScripturePickerWindow.EnableUI", 4
		  Dim max As Integer
		  
		  max = UBound(EnabledControls)
		  
		  For i As Integer = max DownTo 0
		    EnabledControls(i).Enabled = True
		    EnabledControls.Remove i
		  Next
		  Self.MouseCursor = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  App.DebugWriter.Write "ScripturePickerWindow.Destructor"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ResizeBookLists()
		  //
		  // Add code to balance book lists
		  // The Lock... attributes for controls don't seem
		  // to be able to deal with two adjacent controls that need to resize equally
		  // when the window size changes
		  //
		  // Ed Palmer, October 2005
		  //
		  Dim listwidth As Integer
		  
		  listwidth = (grp_Books.Width / 2) - 11
		  lst_scr_nt.Left = lst_scr_ot.Left + listwidth + 5
		  lst_scr_ot.Width = listwidth
		  lst_scr_nt.Width = listwidth
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentBookNumber() As Integer
		  If lst_scr_ot.ListIndex > -1 Then
		    Return lst_scr_ot.CellTag(lst_scr_ot.ListIndex, 0)
		  Else
		    Return lst_scr_nt.CellTag(lst_scr_nt.ListIndex, 0)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentChapter() As Integer
		  Return lst_scr_chapter.ListIndex + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentFromVerseIndex() As Integer
		  Return lst_scr_from_verse.ListIndex + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentThruVerseIndex() As Integer
		  Return lst_scr_to_verse.ListIndex + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FormatAsParagraph(useParagraphFormat As Boolean)
		  PropertiesUpdating = True
		  rad_format_paragraph.Value = useParagraphFormat
		  rad_format_verse.Value = Not useParagraphFormat
		  
		  UpdatePreview
		  PropertiesUpdating = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowVerseNumbers(show As Boolean)
		  PropertiesUpdating = True
		  chk_shownumbers.Value = show
		  
		  UpdatePreview
		  PropertiesUpdating = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub VersesPerSlide(verseCount As Integer)
		  If verseCount < 1 Or verseCount > 3 Then Return
		  PropertiesUpdating = True
		  
		  Select Case verseCount
		  Case 1
		    rad_verses_one.Value = True
		  Case 2
		    rad_verses_two.Value = True
		  Case 3
		    rad_verses_three.Value = True
		  End Select
		  
		  UpdatePreview
		  PropertiesUpdating = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentChapterNumber() As Integer
		  // Part of the iScripturePicker interface.
		  
		  Return lst_scr_chapter.ListIndex + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ChangePassage(bookNumber As Integer, chapterNumber As Integer, fromVerse As Integer, thruVerse As Integer)
		  // Part of the iScripturePicker interface.
		  //
		  // Callback indicating the selected passage has changed.
		  // Update controls accordingly
		  //
		  
		  //
		  // Validate before changing
		  //
		  
		  If MyBible = Nil Then Return
		  If MyBible.ValidateCitation(bookNumber, chapterNumber, fromVerse, thruVerse) Then
		    SetSelection(bookNumber, chapterNumber, fromVerse, thruVerse)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CloseScripturePicker()
		  // Part of the iScripturePicker interface.
		  
		  Self.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VersesPerSlide() As Integer
		  // Part of the iScripturePicker interface.
		  If rad_verses_one.Value Then
		    Return 1
		  ElseIf rad_verses_two.Value Then
		    Return 2
		  ElseIf rad_verses_three.Value Then
		    Return 3
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FormatAsParagraph() As Boolean
		  // Part of the iScripturePicker interface.
		  
		  Return rad_format_paragraph.Value
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowVerseNumbers() As Boolean
		  // Part of the iScripturePicker interface.
		  Return chk_shownumbers.Value
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RebuildVerseListboxes(bookNumber As Integer, chapterNumber As Integer)
		  Dim verseList() As String
		  lst_scr_from_verse.DeleteAllRows
		  lst_scr_to_verse.DeleteAllRows
		  verseList = MyBible.GetVerseNumbers(bookNumber, chapterNumber)
		  For i As Integer = 0 To UBound(verseList)
		    lst_scr_from_verse.AddRow verseList(i)
		    lst_scr_to_verse.AddRow verseList(i)
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Initializing As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private PresentationIsRunning As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Node As XmlNode
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected NumNTBooks As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected NumOTBooks As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected OldSel As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected PresentMode As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected ReturnValue As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected MyBible As iBible
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SPController As ScripturePickerController
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Used by lst_scr_from_verse to determine if a value change has occurred
		#tag EndNote
		Private ActiveFromVerse As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Used by lst_scr_to_verse to determine if a value change has occurred
		#tag EndNote
		Private ActiveThruVerse As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Used by lst_scr_chapter.Change to determine if a change has occurred.
		#tag EndNote
		Private ActiveChapterNumber As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Used by Change events of lst_scr_ot and lst_scr_nt to determine if a change has occurred.
		#tag EndNote
		Private ActiveBookNumber As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Used by pop_scr_version.Change to determine if a change has occurred.
		#tag EndNote
		Private ActiveBible As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			If True, indicates the window is opened from a presentation.
			If False, indicates the window is opened from an editor.
		#tag EndNote
		#tag Getter
			Get
			Return PresentationIsRunning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			btn_insert.Visible = value
			PresentationIsRunning = value
			End Set
		#tag EndSetter
		Live As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected EnabledControls() As RectControl
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected PropertiesUpdating As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Bindings
	#tag BeginBinding
		SourceItem = 8
		DestinationItem = 7
		ItemType = bindListBoxes
		ItemDescription = Notify lst_scr_ot when lst_scr_nt has a selection
	#tag EndBinding
	#tag BeginBinding
		SourceItem = 7
		DestinationItem = 8
		ItemType = bindListBoxes
		ItemDescription = Notify lst_scr_nt when lst_scr_ot has a selection
	#tag EndBinding
#tag EndBindings
#tag Events btn_done
	#tag Event
		Sub Action()
		  SendCommand(ScripturePickerController.cmdDone)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_search
	#tag Event
		Sub Action()
		  SendCommand(ScripturePickerController.cmdSearch)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_quick_lookup
	#tag Event
		Sub GotFocus()
		  btn_quick_lookup.Enabled = (Me.Text.Len > 0)
		  If Me.Text.Len > 0 Then
		    btn_quick_lookup.Default = True
		  Else
		    btn_add.Default = True
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  'If Asc(Key) = 13 Or Asc(Key) = 10 Then
		  'Lookup edt_quick_lookup.Text
		  'Return True
		  'End If
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    if c.TextAvailable then
		      edt_quick_lookup.Text  = c.Text
		    end if
		  end if
		  
		  c.close
		End Function
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  btn_quick_lookup.Default = False
		  btn_add.Default = True
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  btn_quick_lookup.Enabled = False
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  btn_quick_lookup.Enabled = (Me.Text.Len > 0)
		  If Me.Text.Len > 0 Then
		    btn_quick_lookup.Default = True
		  Else
		    btn_add.Default = True
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_ot
	#tag Event
		Sub Change()
		  If Me.ListIndex = -1 Then Return
		  If Me.CellTag(Me.ListIndex, 0) = ActiveBookNumber Then Return
		  
		  BookSelected (Me.CellTag(Me.ListIndex, 0))
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_nt
	#tag Event
		Sub Change()
		  If Me.ListIndex = -1 Then Return
		  If Me.CellTag(Me.ListIndex, 0) = ActiveBookNumber Then Return
		  
		  BookSelected(Me.CellTag(Me.ListIndex, 0))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_chapter
	#tag Event
		Sub Change()
		  If Me.ListIndex = -1 Then Return
		  If Me.ListIndex = ActiveChapterNumber Then Return
		  
		  PassageChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_from_verse
	#tag Event
		Sub Change()
		  Dim newSel As Integer
		  newSel = Me.ListIndex
		  
		  If newSel = -1 Then Return
		  If newSel = ActiveFromVerse Then Return
		  
		  If newSel > ActiveThruVerse Then
		    ActiveThruVerse = newSel
		    lst_scr_to_verse.ListIndex = newSel
		  End If
		  
		  PassageChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_to_verse
	#tag Event
		Sub Change()
		  Dim NewSel As Integer
		  NewSel = Me.ListIndex
		  
		  If NewSel = -1 Then Return // List maintenance in progress
		  If NewSel = ActiveThruVerse Then Return
		  
		  // If a value less than ActiveFromVerse is selected, move it also
		  If NewSel < ActiveFromVerse Then
		    ActiveFromVerse = NewSel // Set first to keep Change from firing
		    lst_scr_from_verse.ListIndex = NewSel
		  End If
		  PassageChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_scr_version
	#tag Event
		Sub Change()
		  If pop_scr_version.Text = ActiveBible Then Return
		  SendCommand "selectbible", pop_scr_version.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_verses_one
	#tag Event
		Sub Action()
		  If PropertiesUpdating Then Return
		  SendCommand ScripturePickerController.cmdFormatChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_verses_two
	#tag Event
		Sub Action()
		  If PropertiesUpdating Then Return
		  SendCommand ScripturePickerController.cmdFormatChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_verses_three
	#tag Event
		Sub Action()
		  If PropertiesUpdating Then Return
		  SendCommand ScripturePickerController.cmdFormatChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_format_paragraph
	#tag Event
		Sub Action()
		  If PropertiesUpdating Then Return
		  SendCommand ScripturePickerController.cmdFormatChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_format_verse
	#tag Event
		Sub Action()
		  If PropertiesUpdating Then Return
		  SendCommand ScripturePickerController.cmdFormatChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_shownumbers
	#tag Event
		Sub Action()
		  If PropertiesUpdating Then Return
		  SendCommand ScripturePickerController.cmdFormatChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_insert
	#tag Event
		Sub Action()
		  BuildScripture(True)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_add
	#tag Event
		Sub Action()
		  SendCommand(ScripturePickerController.cmdAddToSet)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_quick_lookup
	#tag Event
		Sub Action()
		  Try
		    SendCommand(ScripturePickerController.cmdQuickLookup, edt_quick_lookup.Text)
		  Catch e As BibleRefException
		    InputBox.Message e.Message
		  End Try
		End Sub
	#tag EndEvent
#tag EndEvents
