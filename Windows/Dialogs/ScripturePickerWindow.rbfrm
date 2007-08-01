#tag Window
Begin Window ScripturePickerWindow
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
   Visible         =   "True"
   Width           =   570
   Begin GroupBox grp_quick_lookup
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Quick Lookup"
      ControlOrder    =   0
      Enabled         =   "True"
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
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   10
      Underline       =   "False"
      Visible         =   "True"
      Width           =   360
      BehaviorIndex   =   0
      Begin StaticText lbl_quick_reference
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   1
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   "True"
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
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   36
         Underline       =   "False"
         Visible         =   "True"
         Width           =   65
         BehaviorIndex   =   1
      End
      Begin SEditField edt_quick_lookup
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         Bold            =   "False"
         Border          =   "True"
         ControlOrder    =   2
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
         BehaviorIndex   =   28
      End
      Begin PushButton btn_quick_lookup
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Cancel          =   "False"
         Caption         =   "Lookup"
         ControlOrder    =   3
         Default         =   "False"
         Enabled         =   "True"
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
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   35
         Underline       =   "False"
         Visible         =   "True"
         Width           =   69
         BehaviorIndex   =   2
      End
      Begin StaticText nte_quick_example
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   21
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   "True"
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
         TextFont        =   "Arial"
         TextSize        =   9
         Top             =   60
         Underline       =   "False"
         Visible         =   "True"
         Width           =   210
         BehaviorIndex   =   3
      End
   End
   Begin GroupBox grp_Books
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   ""
      ControlOrder    =   4
      Enabled         =   "True"
      Height          =   375
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   3
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   90
      Underline       =   "False"
      Visible         =   "True"
      Width           =   220
      BehaviorIndex   =   4
      Begin ListBox lst_scr_ot
         AutoDeactivate  =   "True"
         AutoHideScrollbars=   "True"
         Bold            =   "False"
         ColumnCount     =   1
         ColumnsResizable=   "False"
         ColumnWidths    =   ""
         ControlOrder    =   24
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   "True"
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
         InitialParent   =   "grp_Books"
         InitialValue    =   "Genesis\r\nExodus\r\nLeviticus\r\nNumbers\r\nDeuteronomy\r\nJoshua\r\nJudges\r\nRuth\r\n1 Samuel\r\n2 Samuel\r\n1 Kings\r\n2 Kings\r\n1 Chronicles\r\n2 Chronicles\r\nEzra\r\nNehemiah\r\nEsther\r\nJob\r\nPsalms\r\nProverbs\r\nEcclesiastes\r\nSong of Solomon\r\nIsaiah\r\nJeremiah\r\nLamentations\r\nEzekiel\r\nDaniel\r\nHosea\r\nJoel\r\nAmos\r\nObadiah\r\nJonah\r\nMicah\r\nNahum\r\nHabakkuk\r\nZephaniah\r\nHaggai\r\nZechariah\r\nMalachi"
         Italic          =   "False"
         Left            =   10
         LockBottom      =   "True"
         LockLeft        =   "True"
         LockRight       =   "False"
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
         Visible         =   "True"
         Width           =   100
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
         BehaviorIndex   =   5
      End
      Begin ListBox lst_scr_nt
         AutoDeactivate  =   "True"
         AutoHideScrollbars=   "True"
         Bold            =   "False"
         ColumnCount     =   1
         ColumnsResizable=   "False"
         ColumnWidths    =   ""
         ControlOrder    =   25
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   "True"
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
         InitialParent   =   "grp_Books"
         InitialValue    =   "Matthew\r\nMark\r\nLuke\r\nJohn\r\nActs\r\nRomans\r\n1 Corinthians\r\n2 Corinthians\r\nGalatians\r\nEphesians\r\nPhilippians\r\nColossians\r\n1 Thessalonians\r\n2 Thessalonians\r\n1 Timothy\r\n2 Timothy\r\nTitus\r\nPhilemon\r\nHebrews\r\nJames\r\n1 Peter\r\n2 Peter\r\n1 John\r\n2 John\r\n3 John\r\nJude\r\nRevelation"
         Italic          =   "False"
         Left            =   115
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
         Visible         =   "True"
         Width           =   100
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
         BehaviorIndex   =   6
      End
   End
   Begin ListBox lst_scr_chapter
      AutoDeactivate  =   "True"
      AutoHideScrollbars=   "True"
      Bold            =   "False"
      ColumnCount     =   1
      ColumnsResizable=   "False"
      ColumnWidths    =   ""
      ControlOrder    =   5
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   "True"
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
      Visible         =   "True"
      Width           =   50
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      BehaviorIndex   =   7
   End
   Begin ListBox lst_scr_from_verse
      AutoDeactivate  =   "True"
      AutoHideScrollbars=   "True"
      Bold            =   "False"
      ColumnCount     =   1
      ColumnsResizable=   "False"
      ColumnWidths    =   ""
      ControlOrder    =   6
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   "True"
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
      Visible         =   "True"
      Width           =   50
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      BehaviorIndex   =   8
   End
   Begin ListBox lst_scr_to_verse
      AutoDeactivate  =   "True"
      AutoHideScrollbars=   "True"
      Bold            =   "False"
      ColumnCount     =   1
      ColumnsResizable=   "False"
      ColumnWidths    =   ""
      ControlOrder    =   7
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   "True"
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
      Visible         =   "True"
      Width           =   50
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      BehaviorIndex   =   9
   End
   Begin GroupBox grp_options_version
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Version"
      ControlOrder    =   8
      Enabled         =   "True"
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
      Top             =   255
      Underline       =   "False"
      Visible         =   "True"
      Width           =   145
      BehaviorIndex   =   10
      Begin PopupMenu pop_scr_version
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   9
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   "True"
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
         Top             =   275
         Underline       =   "False"
         Visible         =   "True"
         Width           =   95
         BehaviorIndex   =   11
      End
   End
   Begin GroupBox grp_options_verses_per_slide
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Verses Per Slide"
      ControlOrder    =   10
      Enabled         =   "True"
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
      Top             =   320
      Underline       =   "False"
      Visible         =   "True"
      Width           =   145
      BehaviorIndex   =   12
      Begin RadioButton rad_verses_one
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   1
         ControlOrder    =   11
         Enabled         =   "True"
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
         Top             =   340
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   35
         BehaviorIndex   =   13
      End
      Begin RadioButton rad_verses_two
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   2
         ControlOrder    =   12
         Enabled         =   "True"
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
         Top             =   340
         Underline       =   "False"
         Value           =   "True"
         Visible         =   "True"
         Width           =   35
         BehaviorIndex   =   14
      End
      Begin RadioButton rad_verses_three
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   3
         ControlOrder    =   13
         Enabled         =   "True"
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
         Top             =   340
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   35
         BehaviorIndex   =   15
      End
   End
   Begin GroupBox grp_options_format
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Format"
      ControlOrder    =   14
      Enabled         =   "True"
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
      Top             =   380
      Underline       =   "False"
      Visible         =   "True"
      Width           =   145
      BehaviorIndex   =   16
      Begin RadioButton rad_format_paragraph
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Paragraph"
         ControlOrder    =   15
         Enabled         =   "True"
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
         Top             =   400
         Underline       =   "False"
         Value           =   "True"
         Visible         =   "True"
         Width           =   120
         BehaviorIndex   =   17
      End
      Begin RadioButton rad_format_verse
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Verse"
         ControlOrder    =   16
         Enabled         =   "True"
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
         Top             =   420
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   120
         BehaviorIndex   =   18
      End
   End
   Begin PushButton btn_Insert
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Insert"
      ControlOrder    =   17
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
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   116
      Underline       =   "False"
      Visible         =   "False"
      Width           =   69
      BehaviorIndex   =   19
   End
   Begin PushButton btn_add
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Add"
      ControlOrder    =   18
      Default         =   "True"
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
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   150
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
      BehaviorIndex   =   20
   End
   Begin PushButton btn_done
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Done"
      ControlOrder    =   19
      Default         =   "False"
      Enabled         =   "True"
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
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   185
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
      BehaviorIndex   =   21
   End
   Begin PushButton btn_search
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Search"
      ControlOrder    =   20
      Default         =   "False"
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   484
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   35
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
      BehaviorIndex   =   22
   End
   Begin StaticText txt_verse_dash
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   22
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
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
      Visible         =   "True"
      Width           =   10
      BehaviorIndex   =   23
   End
   Begin StaticText txt_verse_colon
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   23
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
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
      Visible         =   "True"
      Width           =   10
      BehaviorIndex   =   24
   End
   Begin SEditField edt_preview
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
      Format          =   ""
      Height          =   90
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
      Top             =   472
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   530
      BehaviorIndex   =   27
   End
   Begin StaticText StaticText1
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   27
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
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
      Visible         =   "True"
      Width           =   100
      BehaviorIndex   =   25
   End
   Begin StaticText lbl_bible_book
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   28
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   6
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
      Top             =   78
      Underline       =   "False"
      Visible         =   "True"
      Width           =   100
      BehaviorIndex   =   26
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  Globals.Status_ScripturePickerOpen = False
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim n As Integer
		  n = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@per_slide")
		  If n = 0 Then n = 2
		  If n = 1 Then
		    rad_verses_one.Value = True
		  ElseIf n = 2 Then
		    rad_verses_two.Value = True
		  Else
		    rad_verses_three.Value = True
		  End If
		  
		  Dim s As String
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "last_scripture/@format")
		  If s = "verse" Then
		    rad_format_verse.Value = True
		  Else
		    rad_format_paragraph.Value = True
		  End If
		  
		  App.T.TranslateWindow Me, "scripture_lookup", App.TranslationFonts
		  App.CenterInControlScreen Me
		  
		  btn_search.Enabled = App.MyBible.IsSearchable
		  
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
	#tag EndEvent

	#tag Event
		Sub Resizing()
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
	#tag EndEvent


#tag MenuHandler
		Function mnu_copy_paste() As Boolean Handles mnu_copy_paste.Action
			
		End Function
#tag EndMenuHandler


	#tag Method, Flags = &h1
		Protected Function ActiveBookName() As String
		  If lst_scr_ot.ListIndex >= 0 Then Return lst_scr_ot.List(lst_scr_ot.ListIndex)
		  If lst_scr_nt.ListIndex >= 0 Then Return lst_scr_nt.List(lst_scr_nt.ListIndex)
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ActiveBookNum() As Integer
		  If lst_scr_ot.ListIndex >= 0 Then Return lst_scr_ot.ListIndex + 1
		  If lst_scr_nt.ListIndex >= 0 Then Return lst_scr_nt.ListIndex + 1 + App.MyBible.GetOTCount
		  Return 0
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
		    App.MyBible.GetVerseRange(CurrentBookNumber, CDbl(lst_scr_chapter.Cell(lst_scr_chapter.ListIndex, 0)), lst_scr_from_verse.ListIndex + 1, vFrom, vTo)
		    passage = passage + vFrom
		    App.MyBible.GetVerseRange(CurrentBookNumber, CDbl(lst_scr_chapter.Cell(lst_scr_chapter.ListIndex, 0)), lst_scr_from_verse.ListIndex + cntVerses, vFrom, vTo)
		    If vTo = "" Then
		      passage = passage + "-" + vFrom
		    Else
		      passage = passage + "-" + vTo
		    End If
		    verses = App.MyBible.GetPassage(CurrentBookNumber, lst_scr_chapter.ListIndex + 1, lst_scr_from_verse.ListIndex + 1, lst_scr_from_verse.ListIndex + cntVerses)
		  ElseIf lst_scr_to_verse.ListIndex > lst_scr_from_verse.ListIndex Then
		    'passage = ActiveBookName + " " + Str(lst_scr_chapter.ListIndex+1) + ":" + Str(lst_scr_from_verse.ListIndex+1) + "-" + Str(lst_scr_to_verse.ListIndex+1)
		    'verses = App.MyBible.GetPassage(ActiveBookName, Str(lst_scr_chapter.ListIndex + 1), Str(lst_scr_from_verse.ListIndex+1), Str(lst_scr_to_verse.ListIndex + 1))
		    verses = App.MyBible.GetPassage(CurrentBookNumber, lst_scr_chapter.ListIndex + 1, lst_scr_from_verse.ListIndex + 1, lst_scr_to_verse.ListIndex + 1)
		    passage = ActiveBookName + " " + lst_scr_chapter.Cell(lst_scr_chapter.ListIndex, 0) + ":"
		    App.MyBible.GetVerseRange(CurrentBookNumber, CDbl(lst_scr_chapter.Cell(lst_scr_chapter.ListIndex, 0)), lst_scr_from_verse.ListIndex + 1, vFrom, vTo)
		    passage = passage + vFrom
		    App.MyBible.GetVerseRange(CurrentBookNumber, CDbl(lst_scr_chapter.Cell(lst_scr_chapter.ListIndex, 0)), lst_scr_to_verse.ListIndex + 1, vFrom, vTo)
		    If vTo = "" Then
		      passage = passage + "-" + vFrom
		    Else
		      passage = passage + "-" + vTo
		    End If
		  Else
		    'passage = ActiveBookName + " " + Str(lst_scr_chapter.ListIndex+1) + ":" + Str(lst_scr_from_verse.ListIndex+1)
		    'verses = App.MyBible.GetPassage(ActiveBookName, Str(lst_scr_chapter.ListIndex + 1), Str(lst_scr_from_verse.ListIndex+1), Str(lst_scr_from_verse.ListIndex+1))
		    verses = App.MyBible.GetPassage(CurrentBookNumber, lst_scr_chapter.ListIndex + 1, lst_scr_from_verse.ListIndex + 1, lst_scr_from_verse.ListIndex + 1)
		    passage = ActiveBookName + " " + lst_scr_chapter.Cell(lst_scr_chapter.ListIndex, 0) + ":"
		    App.MyBible.GetVerseRange(CurrentBookNumber, CDbl(lst_scr_chapter.Cell(lst_scr_chapter.ListIndex, 0)), lst_scr_to_verse.ListIndex + 1, vFrom, vTo)
		    passage = passage + vFrom
		    If vTo <> "" Then passage = passage + "-" + vTo
		  End If
		  '*******************************
		  
		  ' ----- SET TITLE -----
		  SmartML.SetValue Node, "@name", passage
		  SmartML.SetValue Node, "@type", "scripture"
		  SmartML.SetValue Node, "title", passage
		  SmartML.SetValue Node, "subtitle", App.MyBible.GetBibleName
		  
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
		Sub Constructor()
		  // call the Window constructor, or Open events will not fire
		  Super.Window()
		  
		  Dim x, i, cnt As Integer
		  Dim f As FolderItem
		  Dim default As String
		  
		  Initializing = True
		  
		  f = App.AppFolder.Child("OpenSong Scripture")
		  cnt = f.Count
		  
		  default = SmartML.GetValue(App.MyMainSettings.DocumentElement, "last_scripture/@version")
		  ' MG: In order to properly increment the list and set the listindex I had to add this
		  i = 0
		  '******************************
		  For x = 1 to cnt
		    If f.Item(x).Directory=false and f.item(x).Visible Then 'bhenny- don't display directories in list (or hidden files...EMP)
		      pop_scr_version.AddRow f.Item(x).Name
		      If f.Item(x).Name = default Then pop_scr_version.ListIndex = i ' MG: sets the list index correctly in case there are subfolders
		      i = i + 1
		    End if
		  Next x
		  
		  If f.Count > 0 And pop_scr_version.ListIndex < 0 Then pop_scr_version.ListIndex = 0
		  
		  Initializing = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CurrentBookNumber() As Integer
		  If lst_scr_ot.ListIndex >= 0 Then Return lst_scr_ot.CellTag(lst_scr_ot.ListIndex, 0).IntegerValue
		  If lst_scr_nt.ListIndex >= 0 Then Return lst_scr_nt.CellTag(lst_scr_nt.ListIndex, 0).IntegerValue
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
		  
		  BookName = App.MyBible.LookupBookName(temp)
		  
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
		  App.DebugWriter.Write "ScripturePickerWindow.Popup: Enter"
		  
		  If App.MyBible = Nil Then
		    App.DebugWriter.Write "ScripturePickerWindow.Popup: Exit (no Bible loaded)"
		    Return True
		  End If
		  
		  Me.Node = node
		  Me.Live = live
		  edt_quick_lookup.Text = ""
		  OldSel = -1
		  'Dim book As Integer
		  ReturnValue = False
		  book = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@book")
		  If book > 0 And book <= App.MyBible.GetOTCount Then
		    lst_scr_nt.ListIndex = -1
		    lst_scr_ot.ListIndex = book - 1
		    'lst_scr_ot.SetFocus
		  ElseIf book > 0 Then
		    lst_scr_ot.ListIndex = -1
		    lst_scr_nt.ListIndex = book - 1 - App.MyBible.GetOTCount
		    'lst_scr_nt.SetFocus
		  Else 'No previously selected book
		    book = 1 'Assume Genesis
		    lst_scr_nt.ListIndex = -1
		    lst_scr_ot.ListIndex = book - 1
		  End If
		  
		  If book > 0 Then
		    If SmartML.GetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@chapter") > 0 Then
		      lst_scr_chapter.ListIndex = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@chapter") - 1
		      lst_scr_from_verse.ListIndex = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@verse") - 1
		      lst_scr_to_verse.ListIndex = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@thru") - 1
		    Else 'No Previously selected chapter
		      lst_scr_chapter.ListIndex = 0 'Assume chapter 1
		      'From & To verses will be set automatically by the chapter change
		    End If
		    
		  End If
		  
		  If Live Then
		    ' MG: The Insert button will add slides on the fly directly to the presentation
		    btn_Insert.Visible = True
		    btn_Insert.Caption = App.T.Translate("shared/insert/@caption")
		    PresentMode = PresentWindow.Mode
		    '**************************
		    btn_add.Caption = App.T.Translate("shared/add/@caption")
		    btn_done.Caption = App.T.Translate("shared/close/@caption") 'MG: Close just makes more sense to me here
		  End If
		  btn_search.Caption = App.T.Translate("shared/search/@caption") ' MG: Without this the Search button was blank!
		  '++JRC
		  Globals.Status_ScripturePickerOpen = True
		  setPreview
		  '--
		  ShowModalWithin(MainWindow)
		  
		  If ReturnValue And book >= 0 Then
		    SmartML.SetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@book", book)
		    SmartML.SetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@chapter", chapter)
		    SmartML.SetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@verse", verse)
		    SmartML.SetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@thru", thru)
		  End If
		  
		  App.DebugWriter.Write "ScripturePickerWindow.Popup: Exit"
		  Return ReturnValue
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ScrollNT()
		  dim ot as integer
		  ot = app.mybible.GetOTCount
		  
		  If lst_scr_nt.ListIndex = -1 Then Return
		  
		  lst_scr_ot.ListIndex = -1
		  book = lst_scr_nt.ListIndex + ot + 1
		  CurrentBook = lst_scr_nt.Text
		  
		  Dim chapternum, x As Integer
		  chapternum = App.MyBible.GetChapterCount(lst_scr_nt.ListIndex+1+ ot)
		  If chapternum < lst_scr_chapter.ListCount Then
		    For x = lst_scr_chapter.ListCount - 1 DownTo chapternum
		      lst_scr_chapter.RemoveRow x
		    Next x
		  ElseIf chapternum > lst_scr_chapter.ListCount Then
		    For x = lst_scr_chapter.ListCount To chapternum - 1
		      lst_scr_chapter.AddRow Str(x+1)
		    Next x
		  End If
		  lst_scr_chapter.ListIndex = 0
		  
		  setPreview 'bhenny added
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ScrollOT()
		  If lst_scr_ot.ListIndex = -1 Then Return
		  
		  lst_scr_nt.ListIndex = -1
		  book = lst_scr_ot.ListIndex + 1
		  CurrentBook = lst_scr_ot.Text
		  
		  Dim chapternum, x As Integer
		  chapternum = App.MyBible.GetChapterCount(lst_scr_ot.ListIndex+1)
		  If chapternum < lst_scr_chapter.ListCount Then
		    For x = lst_scr_chapter.ListCount - 1 DownTo chapternum
		      lst_scr_chapter.RemoveRow x
		    Next x
		  ElseIf chapternum > lst_scr_chapter.ListCount Then
		    For x = lst_scr_chapter.ListCount To chapternum - 1
		      lst_scr_chapter.AddRow Str(x+1)
		    Next x
		  End If
		  lst_scr_chapter.ListIndex = 0
		  
		  setPreview 'bhenny added
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setPreview()
		  'bhenny- added to set the text in the preview box to the scripture
		  //
		  // November 2006, Ed Palmer
		  // Change to use a revised GetPassage that clears up some issues
		  // with multiple verse verses.
		  //
		  Dim verses(0), toVerse As String
		  Dim x As Integer
		  Dim BookNum As Integer
		  
		  App.DebugWriter.Write "ScripturePickerWindow.setPreview: Enter"
		  'clear box
		  edt_preview.text=""
		  
		  If Initializing Then
		    App.DebugWriter.Write "ScripturePickerWindow.setPreview: Exit (Initializing)"
		    Return
		  End If
		  
		  Try
		    verses = App.MyBible.GetPassage(CurrentBookNumber, lst_scr_chapter.ListIndex + 1, lst_scr_from_verse.ListIndex + 1, lst_scr_to_verse.ListIndex + 1)
		  Catch ex As NilObjectException
		    App.DebugWriter.Write "ScripturePickerWindow.setPreview: NOE calling GetPassage"
		    If App.MyBible = Nil Then
		      App.DebugWriter.Write chr(9) + "MyBible is Nil"
		    End If
		    App.DebugWriter.Write "ScripturePickerWindow.setPreview: Exit"
		    Return
		  End Try
		  
		  'add them to the box
		  for x=1 To UBound(verses)
		    If rad_format_verse.Value Then
		      edt_preview.text= edt_preview.text + Chr(10) + verses(x)
		    Else
		      if x=1 then
		        edt_preview.text= verses(x)
		      else
		        edt_preview.text= edt_preview.text + " " + verses(x)
		      end if
		    End If
		  Next x
		  App.DebugWriter.Write "ScripturePickerWindow.setPreview: Exit"
		End Sub
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
		  
		  book= App.MyBible.GetBookNum(bookName)-1
		  
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


	#tag Property, Flags = &h1
		Protected book As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected chapter As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			This holds the full name of the currently selected book to make it easier
			than having to chase the ListIndex of both lst_scr_nt & lst_scr_nt
		#tag EndNote
		Protected CurrentBook As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Initializing As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Live As Boolean
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
		Protected thru As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected verse As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events edt_quick_lookup
	#tag Event
		Sub GotFocus()
		  btn_quick_lookup.Enabled = Me.Text <> ""
		  btn_quick_lookup.Default = Me.Text <> ""
		  btn_add.Default = Not btn_quick_lookup.Default
		End Sub
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
		  btn_quick_lookup.Enabled = Me.Text <> ""
		  btn_add.Default = Me.Text = ""
		  btn_quick_lookup.Default = Not btn_add.Default
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  'dim c As New Clipboard
		  '
		  ''If Asc(Key) = 13 Or Asc(Key) = 10 Then
		  ''Lookup edt_quick_lookup.Text
		  ''Return True
		  ''End If
		  '
		  'if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		  'if c.TextAvailable then
		  'edt_quick_lookup.Text  = c.Text
		  'end if
		  'end if
		  '
		  'c.close
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btn_quick_lookup
	#tag Event
		Sub Action()
		  Lookup edt_quick_lookup.Text
		  btn_add.SetFocus
		  btn_add.Default = True
		  Me.Default = False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_chapter
	#tag Event
		Sub Change()
		  //
		  // Chapter changed.  Update the verse lists (from and to)
		  // Updated September 2005 to get a list of verses instead of just
		  // a count.
		  //
		  // Ed Palmer
		  Dim versenum, x As Integer
		  Dim VerseList(0) As String
		  
		  if me.listindex >= 0 then
		    
		    VerseList = App.MyBible.GetVerseNumbers(ActiveBookNum,  Val(Me.Text))
		    versenum = App.MyBible.GetVerseCount(ActiveBookNum, Me.ListIndex+1)
		    
		    'If versenum < lst_scr_from_verse.ListCount Then
		    'For x = lst_scr_from_verse.ListCount - 1 DownTo versenum
		    'lst_scr_from_verse.RemoveRow x
		    'lst_scr_to_verse.RemoveRow x
		    'Next x
		    'ElseIf versenum > lst_scr_from_verse.ListCount Then
		    'For x = lst_scr_from_verse.ListCount To versenum - 1
		    'lst_scr_from_verse.AddRow Str(x+1)
		    'lst_scr_to_verse.AddRow Str(x+1)
		    'Next x
		    'End If
		    lst_scr_from_verse.DeleteAllRows
		    lst_scr_to_verse.DeleteAllRows
		    
		    'For x = lst_scr_from_verse.ListCount - 1 DownTo 0
		    'lst_scr_from_verse.RemoveRow x
		    'lst_scr_to_verse.RemoveRow x
		    'Next
		    
		    For x = 1 to UBound(VerseList)
		      lst_scr_from_verse.AddRow VerseList(x)
		      lst_scr_to_verse.AddRow VerseList(x)
		    Next
		    
		    lst_scr_from_verse.ListIndex = 0
		    lst_scr_to_verse.ListIndex = 0
		    chapter = Val(Me.Text)
		  else
		    'me.listindex = 0
		  end if
		  
		  setPreview 'bhenny added
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_from_verse
	#tag Event
		Sub Change()
		  If Me.ListIndex > lst_scr_to_verse.ListIndex Then lst_scr_to_verse.ListIndex = Me.ListIndex
		  'lst_scr_to_verse.ListIndex = Me.ListIndex
		  btn_add.Enabled = True
		  btn_Insert.Enabled = True
		  
		  verse = Me.ListIndex + 1
		  
		  setPreview 'bhenny added
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_to_verse
	#tag Event
		Sub Change()
		  If Me.ListIndex < lst_scr_from_verse.ListIndex Then lst_scr_from_verse.ListIndex = Me.ListIndex
		  thru = Me.ListIndex + 1
		  
		  setPreview 'bhenny added
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_scr_version
	#tag Event
		Sub Change()
		  //
		  // Updated November 2006 to put the book number in the CellTag of the listbox
		  //
		  Dim i As Integer
		  dim ot as integer
		  dim nt as integer
		  Dim x as Integer
		  Dim BookNames(), oldBible As String
		  Dim OldCursor As MouseCursor
		  Dim newSelection As Integer
		  Dim BookNumbers() As Integer
		  Dim OldBook, NewBook As Integer
		  Dim OldBookName As String
		  Dim OldNumOTBooks, OldNumNTBooks As Integer
		  Dim OldChapter, OldVerse, OldThru As integer
		  Dim f As FolderItem
		  
		  if me.ListIndex=-1 then 'bhenny- it was throwing an exception when ListIndex was -1
		    return
		  end if
		  
		  //++
		  // Is this really a change, or just the control getting set?
		  //--
		  If App.MyBible <> Nil Then
		    oldBible = App.MyBible.GetBibleFilename
		    '++JRC We need to execute the code following this return while we're Initializing,
		    'otherwise the preview text will never show
		    If oldBible = Me.Text And NOT Initializing Then Return // No real change, don't do anything
		  End If
		  
		  OldBookName = CurrentBook
		  OldBook = book
		  OldNumOTBooks = NumOTBooks
		  OldNumNTBooks = NumNTBooks
		  OldChapter = chapter
		  OldVerse = verse
		  OldThru = thru
		  OldCursor = App.MouseCursor
		  App.MouseCursor = WatchCursor
		  
		  newSelection = Me.ListIndex
		  
		  oldBible= App.MyBible.GetBibleFilename
		  If App.MyBible.GetBibleFileName <> Me.List(Me.ListIndex) Then
		    //++
		    // Unload the old Bible from memory
		    //--
		    App.MyBible = Nil
		    App.MyBible = New Bible
		    
		    If Not App.MyBible.LoadBible(App.AppFolder.Child("OpenSong Scripture").Child(Me.List(Me.ListIndex))) Then
		      InputBox.Message Str(App.MyBible.ErrorCode) + ": " + App.MyBible.ErrorString
		      App.MouseCursor = OldCursor
		      // Delete the bad one from the list
		      Me.RemoveRow newSelection
		      'bhenny- if there is an error load the old bible
		      for x=0 to Me.ListCount-1
		        if Me.List(x)=oldBible then
		          Me.ListIndex=x
		          App.MyBible = Nil
		          App.MyBible = New Bible
		          if App.MyBible.LoadBible(App.AppFolder.Child("OpenSong Scripture").Child(Me.List(Me.ListIndex)))=false then return
		          exit
		        end if
		      next x
		      
		    End If
		    // Save which version we are using now...
		    SmartML.SetValue(App.MyMainSettings.DocumentElement, "last_scripture/@version", Me.List(Me.ListIndex))
		    btn_search.Enabled = App.MyBible.IsSearchable
		  End If
		  
		  If App.MyBible <> Nil Then
		    'ot = App.MyBible.GetOTCount
		    'nt = App.MyBible.GetNTCount
		    try
		      ot = App.MyBible.GetOTBooks(BookNames, BookNumbers)
		      
		      If ot < lst_scr_ot.ListCount Then
		        For x = lst_scr_ot.ListCount - 1 DownTo ot
		          lst_scr_ot.RemoveRow x
		        Next x
		      ElseIf ot > lst_scr_ot.ListCount Then
		        For x = lst_scr_ot.ListCount To ot - 1
		          lst_scr_ot.AddRow Str(x+1)
		        Next x
		      End If
		      ot = ot - 1
		      For i = 0 to ot
		        lst_scr_ot.List(i) = BookNames(i)
		        'If this book name is the same as the previously selected one
		        'flag it, of course this won't work if this Bible has different book names
		        If OldBookName = BookNames(i) Then NewBook = i + 1
		        lst_scr_ot.CellTag(i, 0) = BookNumbers(i)
		      Next
		      lst_scr_ot.ListIndex = 0
		    catch err
		      if err isa OutOfBoundsException then
		        msgbox "Loading OT List: "+str(i)+ " is out of bounds"
		      end if
		    end try
		    
		    try
		      nt = App.MyBible.GetNTBooks(BookNames, BookNumbers)
		      
		      If nt < lst_scr_nt.ListCount Then
		        For x = lst_scr_nt.ListCount - 1 DownTo nt
		          lst_scr_nt.RemoveRow x
		        Next x
		      ElseIf ot > lst_scr_nt.ListCount Then
		        For x = lst_scr_nt.ListCount To nt - 1
		          lst_scr_nt.AddRow Str(x+1)
		        Next x
		      End If
		      if lst_scr_nt.ListIndex > nt - 1 then
		        lst_scr_nt.Listindex = 0
		      end if
		      'ScrollNT
		      
		      nt = nt - 1
		      
		      For i = 0 to nt
		        lst_scr_nt.List(i) = BookNames(i)
		        'If this book name is the same as the previously selected one
		        'flag it, of course this won't work if this Bible has different book names
		        If OldBookName = BookNames(i) Then NewBook = ot + i + 2
		        lst_scr_nt.CellTag(i, 0) = BookNumbers(i)
		      Next
		      
		    catch err2
		      if err2 isa OutOfBoundsException then
		        msgbox "Loading NT List: "+str(i)+ " is out of bounds"
		      end if
		    end try
		    
		    If NewBook > 0 Then
		      If NewBook > ot Then 'New Testament
		        lst_scr_nt.ListIndex = NewBook - ot - 2
		        lst_scr_ot.Listindex = -1
		      Else 'Old Testament
		        lst_scr_nt.ListIndex = -1
		        lst_scr_ot.Listindex = NewBook - 1
		      End If
		      If OldChapter <= App.MyBible.GetChapterCount(NewBook ) Then lst_scr_chapter.ListIndex = OldChapter - 1
		      If OldVerse <= App.MyBible.GetVerseCount(ActiveBookNum, lst_scr_chapter.ListIndex+1)Then lst_scr_from_verse.ListIndex = OldVerse - 1
		      If OldThru <= App.MyBible.GetVerseCount(ActiveBookNum, lst_scr_chapter.ListIndex+1) Then lst_scr_to_verse.ListIndex = OldThru - 1
		      
		    Else 'Old Bible book not found, use default
		      if lst_scr_ot.ListCount>0 then 'have it select Matthew (assuming there is a Matthew) if bible is just nt
		        lst_scr_nt.ListIndex = -1
		        lst_scr_ot.Listindex = 0
		        NewBook = 1
		      else
		        lst_scr_nt.ListIndex = 0
		        lst_scr_ot.Listindex = -1
		        NewBook = ot + 1
		      end if
		      OldBook = NewBook
		    End If
		    
		    'ScrollOT
		    App.MouseCursor = OldCursor
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_format_paragraph
	#tag Event
		Sub Action()
		  setPreview
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_format_verse
	#tag Event
		Sub Action()
		  setPreview
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_Insert
	#tag Event
		Sub Action()
		  // Change the Insert button to default
		  // so the operator only has to press the Enter
		  // key to advance.
		  Me.Default = True
		  BuildScripture(True)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_add
	#tag Event
		Sub Action()
		  BuildScripture
		  // This change fixes the situation where only the last two verses are shown
		  // when the ScripturePickerWindow is invoked during a set.
		  // There are two side effects:
		  //    1. The window will close and reopen when a set is being designed.
		  //     2. This alters the set being presented (the old way backs out the XML changes
		  //          to the set when it closes).
		  // I don't see an easy remedy to #2, and #1 is a by-product that I believe acceptable.
		  //
		  // For total accuracy, SetChanged should be set to True and a check for changes
		  // should be added to Presenter mode.  Personally, I see these on-the-fly additions
		  // as throw-aways.
		  // EMP, 8/23/05
		  //
		  
		  'If Not Live Then Close  //EMP 8/23/05: Fixes presenter bug at the expense of changing the set
		  Close //EMP 8/23/05
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_done
	#tag Event
		Sub Action()
		  ReturnValue = False
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_search
	#tag Event
		Sub Action()
		  SearchWindow.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_ot
	#tag Event
		Sub Change()
		  If lst_scr_nt.ListIndex <> -1 Then OldSel = -1
		  //++
		  // Save where we are on each change.
		  // That way, if the control loses focus and then
		  // gets clicked (generating a change), the chapter
		  // and verse don't reset if the book doesn't change.
		  If Me.ListCount > 0 Then
		    'If Me.ListIndex <> Me.CellTag(0, 0).IntegerValue Then
		    If Me.ListIndex <> OldSel Then
		      'Me.CellTag(0, 0) = Me.ListIndex
		      OldSel = Me.ListIndex
		      ScrollOT
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_nt
	#tag Event
		Sub Change()
		  If lst_scr_ot.ListIndex <> -1 Then OldSel = -1
		  //++
		  // Save where we are on each change.
		  // That way, if the control loses focus and then
		  // gets clicked (generating a change), the chapter
		  // and verse don't reset if the book doesn't change.
		  If Me.ListCount > 0 Then
		    'If Me.ListIndex <> Me.CellTag(0, 0).IntegerValue Then
		    If Me.ListIndex <> OldSel Then
		      'Me.CellTag(0, 0) = Me.ListIndex
		      OldSel = Me.ListIndex
		      ScrollNT
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
