#tag Window
Begin Window ScripturePickerWindow
   Placement       =   0
   Width           =   570
   Height          =   570
   MinWidth        =   570
   MinHeight       =   570
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   1
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Scripture Lookup"
   Visible         =   "True"
   FullScreen      =   "False"
   MenuBarVisible  =   "True"
   CloseButton     =   "True"
   Resizeable      =   "True"
   LiveResize      =   "True"
   MaximizeButton  =   "True"
   MinimizeButton  =   "True"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   0
   Begin GroupBox grp_quick_lookup
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   105
      Top             =   10
      Width           =   360
      Height          =   75
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Caption         =   "Quick Lookup"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   0
   End
   Begin StaticText lbl_quick_reference
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   110
      Top             =   36
      Width           =   65
      Height          =   20
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "Reference:"
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
      InitialParent   =   "grp_quick_lookup"
      TabPanelIndex   =   0
      BehaviorIndex   =   1
   End
   Begin EditField edt_quick_lookup
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   180
      Top             =   35
      Width           =   200
      Height          =   22
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
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
      TextSize        =   12
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Text            =   ""
      Mask            =   ""
      ReadOnly        =   "False"
      LimitText       =   0
      AcceptTabs      =   "False"
      Alignment       =   0
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "grp_quick_lookup"
      TabPanelIndex   =   0
      BehaviorIndex   =   2
   End
   Begin PushButton btn_quick_lookup
      Index           =   -2147483648
      ControlOrder    =   3
      Left            =   385
      Top             =   35
      Width           =   69
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Caption         =   "Lookup"
      Default         =   "False"
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
      InitialParent   =   "grp_quick_lookup"
      TabPanelIndex   =   0
      BehaviorIndex   =   3
   End
   Begin GroupBox grp_Books
      Index           =   -2147483648
      ControlOrder    =   4
      Left            =   3
      Top             =   90
      Width           =   220
      Height          =   375
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      Caption         =   ""
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   12
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin ListBox lst_scr_chapter
      Index           =   -2147483648
      ControlOrder    =   5
      Left            =   229
      Top             =   100
      Width           =   50
      Height          =   360
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      ColumnCount     =   1
      ColumnWidths    =   ""
      HasHeading      =   "False"
      UseFocusRing    =   "True"
      InitialValue    =   ""
      HeadingIndex    =   -1
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      DefaultRowHeight=   -1
      _ScrollWidth    =   -1
      _ScrollOffset   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Hierarchical    =   "False"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      RequiresSelection=   ""
      SelectionType   =   0
      ColumnsResizable=   "False"
      AutoHideScrollbars=   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   8
   End
   Begin ListBox lst_scr_from_verse
      Index           =   -2147483648
      ControlOrder    =   6
      Left            =   290
      Top             =   100
      Width           =   50
      Height          =   360
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      ColumnCount     =   1
      ColumnWidths    =   ""
      HasHeading      =   "False"
      UseFocusRing    =   "True"
      InitialValue    =   ""
      HeadingIndex    =   -1
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      DefaultRowHeight=   -1
      _ScrollWidth    =   -1
      _ScrollOffset   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Hierarchical    =   "False"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      RequiresSelection=   ""
      SelectionType   =   0
      ColumnsResizable=   "False"
      AutoHideScrollbars=   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   9
   End
   Begin ListBox lst_scr_to_verse
      Index           =   -2147483648
      ControlOrder    =   7
      Left            =   355
      Top             =   100
      Width           =   50
      Height          =   360
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      ColumnCount     =   1
      ColumnWidths    =   ""
      HasHeading      =   "False"
      UseFocusRing    =   "True"
      InitialValue    =   ""
      HeadingIndex    =   -1
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      DefaultRowHeight=   -1
      _ScrollWidth    =   -1
      _ScrollOffset   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Hierarchical    =   "False"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      RequiresSelection=   ""
      SelectionType   =   0
      ColumnsResizable=   "False"
      AutoHideScrollbars=   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   10
   End
   Begin GroupBox grp_options_version
      Index           =   -2147483648
      ControlOrder    =   8
      Left            =   415
      Top             =   255
      Width           =   145
      Height          =   55
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Caption         =   "Version"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   11
   End
   Begin PopupMenu pop_scr_version
      Index           =   -2147483648
      ControlOrder    =   9
      Left            =   440
      Top             =   275
      Width           =   95
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      Enabled         =   True
      InitialValue    =   ""
      ListIndex       =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   12
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "grp_options_version"
      TabPanelIndex   =   0
      BehaviorIndex   =   12
   End
   Begin GroupBox grp_options_verses_per_slide
      Index           =   -2147483648
      ControlOrder    =   10
      Left            =   415
      Top             =   320
      Width           =   145
      Height          =   50
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Caption         =   "Verses Per Slide"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   13
   End
   Begin RadioButton rad_verses_one
      Index           =   -2147483648
      ControlOrder    =   11
      Left            =   430
      Top             =   340
      Width           =   35
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   1
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
      InitialParent   =   "grp_options_verses_per_slide"
      TabPanelIndex   =   0
      BehaviorIndex   =   14
   End
   Begin RadioButton rad_verses_two
      Index           =   -2147483648
      ControlOrder    =   12
      Left            =   475
      Top             =   340
      Width           =   35
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   2
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "True"
      InitialParent   =   "grp_options_verses_per_slide"
      TabPanelIndex   =   0
      BehaviorIndex   =   15
   End
   Begin RadioButton rad_verses_three
      Index           =   -2147483648
      ControlOrder    =   13
      Left            =   520
      Top             =   340
      Width           =   35
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   3
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
      InitialParent   =   "grp_options_verses_per_slide"
      TabPanelIndex   =   0
      BehaviorIndex   =   16
   End
   Begin GroupBox grp_options_format
      Index           =   -2147483648
      ControlOrder    =   14
      Left            =   415
      Top             =   380
      Width           =   145
      Height          =   70
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Caption         =   "Format"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   17
   End
   Begin RadioButton rad_format_paragraph
      Index           =   -2147483648
      ControlOrder    =   15
      Left            =   430
      Top             =   400
      Width           =   120
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Paragraph"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "True"
      InitialParent   =   "grp_options_format"
      TabPanelIndex   =   0
      BehaviorIndex   =   18
   End
   Begin RadioButton rad_format_verse
      Index           =   -2147483648
      ControlOrder    =   16
      Left            =   430
      Top             =   420
      Width           =   120
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Verse"
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
      InitialParent   =   "grp_options_format"
      TabPanelIndex   =   0
      BehaviorIndex   =   19
   End
   Begin PushButton btn_Insert
      Index           =   -2147483648
      ControlOrder    =   17
      Left            =   455
      Top             =   116
      Width           =   69
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Caption         =   "Insert"
      Default         =   "False"
      Cancel          =   "False"
      Enabled         =   "False"
      Visible         =   "False"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   20
   End
   Begin PushButton btn_add
      Index           =   -2147483648
      ControlOrder    =   18
      Left            =   455
      Top             =   150
      Width           =   69
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Caption         =   "Add"
      Default         =   "True"
      Cancel          =   "False"
      Enabled         =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   21
   End
   Begin PushButton btn_done
      Index           =   -2147483648
      ControlOrder    =   19
      Left            =   455
      Top             =   185
      Width           =   69
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Caption         =   "Done"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   22
   End
   Begin PushButton btn_search
      Index           =   -2147483648
      ControlOrder    =   20
      Left            =   484
      Top             =   35
      Width           =   69
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Caption         =   "Search"
      Default         =   "False"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   23
   End
   Begin StaticText nte_quick_example
      Index           =   -2147483648
      ControlOrder    =   21
      Left            =   175
      Top             =   60
      Width           =   210
      Height          =   12
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Text            =   "Ex: ""2Pet 1:1-2"" or ""2Pet 1:1-2 (KJV)"""
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
      InitialParent   =   "grp_quick_lookup"
      TabPanelIndex   =   0
      BehaviorIndex   =   4
   End
   Begin StaticText txt_verse_dash
      Index           =   -2147483648
      ControlOrder    =   22
      Left            =   342
      Top             =   260
      Width           =   10
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Text            =   "-"
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
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   24
   End
   Begin StaticText txt_verse_colon
      Index           =   -2147483648
      ControlOrder    =   23
      Left            =   277
      Top             =   260
      Width           =   10
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Text            =   ":"
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
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   25
   End
   Begin ListBox lst_scr_ot
      Index           =   -2147483648
      ControlOrder    =   24
      Left            =   10
      Top             =   100
      Width           =   100
      Height          =   360
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "True"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      ColumnCount     =   1
      ColumnWidths    =   ""
      HasHeading      =   "False"
      UseFocusRing    =   "True"
      InitialValue    =   "Genesis\r\nExodus\r\nLeviticus\r\nNumbers\r\nDeuteronomy\r\nJoshua\r\nJudges\r\nRuth\r\n1 Samuel\r\n2 Samuel\r\n1 Kings\r\n2 Kings\r\n1 Chronicles\r\n2 Chronicles\r\nEzra\r\nNehemiah\r\nEsther\r\nJob\r\nPsalms\r\nProverbs\r\nEcclesiastes\r\nSong of Solomon\r\nIsaiah\r\nJeremiah\r\nLamentations\r\nEzekiel\r\nDaniel\r\nHosea\r\nJoel\r\nAmos\r\nObadiah\r\nJonah\r\nMicah\r\nNahum\r\nHabakkuk\r\nZephaniah\r\nHaggai\r\nZechariah\r\nMalachi"
      HeadingIndex    =   -1
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      DefaultRowHeight=   -1
      _ScrollWidth    =   -1
      _ScrollOffset   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Hierarchical    =   "False"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      RequiresSelection=   ""
      SelectionType   =   0
      ColumnsResizable=   "False"
      AutoHideScrollbars=   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "grp_Books"
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin ListBox lst_scr_nt
      Index           =   -2147483648
      ControlOrder    =   25
      Left            =   115
      Top             =   100
      Width           =   100
      Height          =   360
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      ColumnCount     =   1
      ColumnWidths    =   ""
      HasHeading      =   "False"
      UseFocusRing    =   "True"
      InitialValue    =   "Matthew\r\nMark\r\nLuke\r\nJohn\r\nActs\r\nRomans\r\n1 Corinthians\r\n2 Corinthians\r\nGalatians\r\nEphesians\r\nPhilippians\r\nColossians\r\n1 Thessalonians\r\n2 Thessalonians\r\n1 Timothy\r\n2 Timothy\r\nTitus\r\nPhilemon\r\nHebrews\r\nJames\r\n1 Peter\r\n2 Peter\r\n1 John\r\n2 John\r\n3 John\r\nJude\r\nRevelation"
      HeadingIndex    =   -1
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      DefaultRowHeight=   -1
      _ScrollWidth    =   -1
      _ScrollOffset   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Hierarchical    =   "False"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      RequiresSelection=   ""
      SelectionType   =   0
      ColumnsResizable=   "False"
      AutoHideScrollbars=   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "grp_Books"
      TabPanelIndex   =   0
      BehaviorIndex   =   7
   End
   Begin EditField edt_preview
      Index           =   -2147483648
      ControlOrder    =   26
      Left            =   20
      Top             =   472
      Width           =   530
      Height          =   90
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
      Border          =   "True"
      Multiline       =   "True"
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
      TextFont        =   "System"
      TextSize        =   12
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Text            =   ""
      Mask            =   ""
      ReadOnly        =   "True"
      LimitText       =   0
      AcceptTabs      =   "False"
      Alignment       =   0
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   26
   End
End
#tag EndWindow

#tag WindowCode
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
		  
		  If Insert And (lst_scr_to_verse.listindex - lst_scr_from_verse.listindex + 1 > cntVerses) Then
		    passage = ActiveBookName + " " + Str(lst_scr_chapter.ListIndex+1) + ":" + Str(lst_scr_from_verse.ListIndex+1) + "-" + Str(lst_scr_from_verse.ListIndex+cntVerses)
		    verses = App.MyBible.GetPassage(ActiveBookName, Str(lst_scr_chapter.ListIndex + 1), Str(lst_scr_from_verse.ListIndex+1), Str(lst_scr_from_verse.ListIndex+cntVerses))
		  ElseIf lst_scr_to_verse.ListIndex > lst_scr_from_verse.ListIndex Then
		    passage = ActiveBookName + " " + Str(lst_scr_chapter.ListIndex+1) + ":" + Str(lst_scr_from_verse.ListIndex+1) + "-" + Str(lst_scr_to_verse.ListIndex+1)
		    verses = App.MyBible.GetPassage(ActiveBookName, Str(lst_scr_chapter.ListIndex + 1), Str(lst_scr_from_verse.ListIndex+1), Str(lst_scr_to_verse.ListIndex + 1))
		  Else
		    passage = ActiveBookName + " " + Str(lst_scr_chapter.ListIndex+1) + ":" + Str(lst_scr_from_verse.ListIndex+1)
		    verses = App.MyBible.GetPassage(ActiveBookName, Str(lst_scr_chapter.ListIndex + 1), Str(lst_scr_from_verse.ListIndex+1), Str(lst_scr_from_verse.ListIndex+1))
		  End If
		  '*******************************
		  'If lst_scr_to_verse.ListIndex > lst_scr_from_verse.ListIndex Then
		  'passage = ActiveBookName + " " + Str(lst_scr_chapter.ListIndex+1) + ":" + Str(lst_scr_from_verse.ListIndex+1) + "-" + Str(lst_scr_to_verse.ListIndex+1)
		  'Else
		  'passage = ActiveBookName + " " + Str(lst_scr_chapter.ListIndex+1) + ":" + Str(lst_scr_from_verse.ListIndex+1)
		  'End If
		  'verses = App.MyBible.GetPassage(passage)
		  'verses = App.MyBible.GetPassage(ActiveBookName, Str(lst_scr_chapter.ListIndex + 1), Str(lst_scr_from_verse.ListIndex+1), Str(lst_scr_to_verse.ListIndex + 1))
		  
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
		  
		  f = App.AppFolder.Child("OpenSong Scripture")
		  cnt = f.Count
		  
		  default = SmartML.GetValue(App.MyMainSettings.DocumentElement, "last_scripture/@version")
		  ' MG: In order to properly increment the list and set the listindex I had to add this
		  i = 0
		  '******************************
		  For x = 1 to cnt
		    If f.Item(x).Directory=false Then 'bhenny- don't display directories in list
		      pop_scr_version.AddRow f.Item(x).Name
		      If f.Item(x).Name = default Then pop_scr_version.ListIndex = i ' MG: sets the list index correctly in case there are subfolders
		      i = i + 1
		    End if
		  Next x
		  
		  If f.Count > 0 And pop_scr_version.ListIndex < 0 Then pop_scr_version.ListIndex = 0
		  
		  
		End Sub
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
		  
		  If Len(lookup) = 0 Then
		    InputBox.Message App.T.Translate("scripture_lookup/bad_reference/empty")
		    Return
		  End If
		  
		  ' Look for version
		  open_paren_loc = InStr(lookup, "(")
		  close_paren_loc = InStr(lookup, ")")
		  If open_paren_loc > 0 And close_paren_loc > 0 Then
		    temp = Mid(lookup, open_paren_loc + 1, close_paren_loc - open_paren_loc - 1)
		    i = 0
		    While i < pop_scr_version.ListCount
		      If InStr(Lowercase(pop_scr_version.List(i)), Lowercase(temp)) > 0 Then
		        pop_scr_version.ListIndex = i
		        i = pop_scr_version.ListCount
		      End If
		      i = i + 1
		    Wend
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
		    If i <= 0 Then
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/chapter", "")
		      Return
		    ElseIf i > lst_scr_chapter.ListCount Then
		      InputBox.Message App.T.Translate("scripture_lookup/bad_reference/chapter", Lowercase(temp))
		      Return
		    End If
		    lst_scr_chapter.ListIndex = i - 1
		    lst_scr_to_verse.ListIndex = lst_scr_to_verse.ListCount - 1
		    BuildScripture
		    Close
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
		  i = Val(temp)
		  If i <= 0 Then
		    InputBox.Message App.T.Translate("scripture_lookup/bad_reference/verse", "")
		    Return
		  ElseIf i > lst_scr_from_verse.ListCount Then
		    InputBox.Message App.T.Translate("scripture_lookup/bad_reference/verse", Lowercase(temp))
		    Return
		  End If
		  lst_scr_from_verse.ListIndex = i - 1
		  
		  ' Look for to verse
		  second_space_loc = InStr(dash_loc + 1, lookup, " ")
		  If second_space_loc = 0 Then
		    second_space_loc = Len(lookup) + 1
		  End If
		  temp = Mid(lookup, dash_loc + 1, second_space_loc - dash_loc)
		  i = Val(temp)
		  If i = 0 Then
		    ' There was probably no verse specified
		  ElseIf i < lst_scr_from_verse.ListIndex+1 Then
		    InputBox.Message App.T.Translate("scripture_lookup/bad_reference/verse_range")
		    Return
		  Else
		    If i > lst_scr_to_verse.ListCount Then i = lst_scr_to_verse.ListCount
		    lst_scr_to_verse.ListIndex = i - 1
		  End If
		  
		  BuildScripture
		  If Not Live Then Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Popup(node As XmlNode, live As Boolean = False) As Boolean
		  Me.Node = node
		  Me.Live = live
		  edt_quick_lookup.Text = ""
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
		  End If
		  
		  If book > 0 Then
		    lst_scr_chapter.ListIndex = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@chapter") - 1
		    lst_scr_from_verse.ListIndex = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@verse") - 1
		    lst_scr_to_verse.ListIndex = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@thru") - 1
		  End If
		  
		  If Live Then
		    ' MG: The Insert button will add slies on the fly directly to the presentation
		    btn_Insert.Visible = True
		    btn_Insert.Caption = App.T.Translate("shared/insert/@caption")
		    PresentMode = PresentWindow.Mode
		    '**************************
		    btn_add.Caption = App.T.Translate("shared/add/@caption")
		    btn_done.Caption = App.T.Translate("shared/close/@caption") 'MG: Close just makes more sense to me here
		  End If
		  btn_search.Caption = App.T.Translate("shared/search/@caption") ' MG: Without this the Search button was blank!
		  ShowModalWithin MainWindow
		  
		  If ReturnValue And book >= 0 Then
		    SmartML.SetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@book", book)
		    SmartML.SetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@chapter", chapter)
		    SmartML.SetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@verse", verse)
		    SmartML.SetValueN(App.MyMainSettings.DocumentElement, "last_scripture/@thru", thru)
		  End If
		  
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
		  
		  Dim verses(0), toVerse As String
		  Dim x As Integer
		  
		  'clear box
		  edt_preview.text=""
		  
		  'get verses
		  If lst_scr_to_verse.ListIndex > lst_scr_from_verse.ListIndex Then
		    toVerse= Str(lst_scr_to_verse.ListIndex+1)
		  Else
		    toVerse= Str(lst_scr_from_verse.ListIndex+1)
		  End If
		  
		  verses = App.MyBible.GetPassage(ActiveBookName, Str(lst_scr_chapter.ListIndex+1), Str(lst_scr_from_verse.ListIndex+1), toVerse)
		  
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
		#tag Note
			This holds the full name of the currently selected book to make it easier
			than having to chase the ListIndex of both lst_scr_nt & lst_scr_nt
		#tag EndNote
		Protected CurrentBook As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected chapter As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Live As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Node As XmlNode
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
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  If Asc(Key) = 13 Or Asc(Key) = 10 Then
		    Lookup edt_quick_lookup.Text
		    Return True
		  End If
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    if c.TextAvailable then
		      edt_quick_lookup.Text  = c.Text
		    end if
		  end if
		  
		  c.close
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btn_quick_lookup
	#tag Event
		Sub Action()
		  Lookup edt_quick_lookup.Text
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
		    
		    VerseList = App.MyBible.GetVerseNumbers(CurrentBook,  Val(Me.Text))
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
		    
		    For x = lst_scr_from_verse.ListCount - 1 DownTo 0
		      lst_scr_from_verse.RemoveRow x
		      lst_scr_to_verse.RemoveRow x
		    Next
		    
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
		  'If Me.ListIndex > lst_scr_to_verse.ListIndex Then lst_scr_to_verse.ListIndex = Me.ListIndex
		  lst_scr_to_verse.ListIndex = Me.ListIndex
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
		  Dim i As Integer
		  dim ot as integer
		  dim nt as integer
		  Dim x as Integer
		  Dim BookNames(0), oldBible As String
		  Dim OldCursor As MouseCursor
		  
		  if me.ListIndex=-1 then 'bhenny- it was throwing an exception when ListIndex was -1
		    return
		  end if
		  
		  OldCursor = App.MouseCursor
		  App.MouseCursor = System.Cursors.Wait
		  
		  oldBible= App.MyBible.GetBibleFilename
		  If App.MyBible.GetBibleFileName <> Me.List(Me.ListIndex) Then
		    If Not App.MyBible.LoadBible(App.AppFolder.Child("OpenSong Scripture").Child(Me.List(Me.ListIndex))) Then
		      InputBox.Message Str(App.MyBible.ErrorCode) + ": " + App.MyBible.ErrorString
		      App.MouseCursor = OldCursor
		      
		      'bhenny- if there is an error load the old bible
		      for x=0 to Me.ListCount-1
		        if Me.List(0)=oldBible then
		          Me.ListIndex=x
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
		    ot = App.MyBible.GetOTCount
		    nt = App.MyBible.GetNTCount
		    try
		      If ot < lst_scr_ot.ListCount Then
		        For x = lst_scr_ot.ListCount - 1 DownTo ot
		          lst_scr_ot.RemoveRow x
		        Next x
		      ElseIf ot > lst_scr_ot.ListCount Then
		        For x = lst_scr_ot.ListCount To ot - 1
		          lst_scr_ot.AddRow Str(x+1)
		        Next x
		      End If
		      
		      BookNames = App.MyBible.GetOTBooks
		      
		      For i = 1 to ot
		        lst_scr_ot.List(i - 1) = BookNames(i)
		      Next
		      lst_scr_ot.ListIndex = 0
		      'For i = 1 To ot
		      'lst_scr_ot.List(i-1) = App.MyBible.GetBookName(i)
		      'Next i
		      ''if lst_scr_ot.Listindex > ot - 1 then
		      'lst_scr_ot.ListIndex = 0
		      ''end if
		      ''ScrollOT
		      '
		    catch err
		      if err isa OutOfBoundsException then
		        msgbox "Loading OT List: "+str(i)+ " is out of bounds"
		      end if
		    end try
		    
		    try
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
		      ScrollNT
		      
		      Redim BookNames(0) ' Clear out the Old Testament names
		      BookNames = App.MyBible.GetNTBooks
		      
		      For i = 1 to nt
		        lst_scr_nt.List(i - 1) = BookNames(i)
		      Next
		      'For i = ot + 1 To ot + nt
		      'lst_scr_nt.List(i-ot-1) = App.MyBible.GetBookName(i)
		      'Next i
		    catch err2
		      if err2 isa OutOfBoundsException then
		        msgbox "Loading NT List: "+str(i)+ " is out of bounds"
		      end if
		    end try
		    if lst_scr_ot.ListCount>0 then 'bhenny- have it select Matthew if bible is just nt
		      lst_scr_nt.ListIndex = -1
		      lst_scr_ot.Listindex = 0
		    else
		      lst_scr_nt.ListIndex = 0
		      lst_scr_ot.Listindex = -1
		    end if
		    ScrollOT
		    App.MouseCursor = OldCursor
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_Insert
	#tag Event
		Sub Action()
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
		  ScrollOT
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_nt
	#tag Event
		Sub Change()
		  ScrollNT
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
