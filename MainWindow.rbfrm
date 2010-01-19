#tag Window
Begin Window MainWindow Implements ScriptureReceiver
   BackColor       =   4210752
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   564
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   -1144876511
   MenuBarVisible  =   True
   MinHeight       =   450
   MinimizeButton  =   True
   MinWidth        =   750
   Placement       =   2
   Resizeable      =   True
   Title           =   "OpenSong"
   Visible         =   False
   Width           =   750
   Begin ContextualMenu mnu_clipboard
      Enabled         =   True
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   759
      LockedInPosition=   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   26
      UseMacCMM       =   ""
      Visible         =   True
      Width           =   32
   End
   Begin SButton btn_mode_songs_mode
      AcceptFocus     =   True
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasFocus        =   0
      Height          =   28
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      LabelAlign      =   1
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      StickyBevel     =   True
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   3
      UseFocusRing    =   True
      Visible         =   True
      Width           =   200
   End
   Begin SButton btn_mode_sets_mode
      AcceptFocus     =   True
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasFocus        =   0
      Height          =   28
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      LabelAlign      =   1
      Left            =   215
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      StickyBevel     =   True
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   3
      UseFocusRing    =   True
      Visible         =   True
      Width           =   200
   End
   Begin StaticText txt_context_help
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   420
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   4
      Underline       =   False
      Visible         =   True
      Width           =   320
   End
   Begin PagePanel pge_controls
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   529
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   1
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelCount      =   2
      Panels          =   ""
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   35
      Value           =   0
      Visible         =   True
      Width           =   250
      Begin Canvas can_controls_songs_mode
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   520
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pge_controls"
         Left            =   5
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   40
         UseFocusRing    =   True
         Visible         =   True
         Width           =   240
         Begin PopupMenu pop_songs_song_folders
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            InitialValue    =   ""
            Italic          =   False
            Left            =   10
            ListIndex       =   -1
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   11
            TextUnit        =   0
            Top             =   299
            Underline       =   False
            Visible         =   True
            Width           =   190
         End
         Begin GroupBox grp_songs_selected_song
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Selected Song"
            Enabled         =   True
            Height          =   249
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Italic          =   False
            Left            =   130
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   11
            TextUnit        =   0
            Top             =   40
            Underline       =   False
            Visible         =   True
            Width           =   110
            Begin SButton btn_song_revert
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               LabelAlign      =   0
               Left            =   141
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   0
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   85
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_song_present
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               LabelAlign      =   0
               Left            =   141
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   1
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   135
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_song_save
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               LabelAlign      =   0
               Left            =   141
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   2
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   60
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_song_print
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               LabelAlign      =   0
               Left            =   141
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   3
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   110
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_song_rename
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               LabelAlign      =   0
               Left            =   141
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   4
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   185
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_song_export
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               LabelAlign      =   0
               Left            =   141
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   5
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   160
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_song_copy
               AcceptFocus     =   ""
               AcceptTabs      =   ""
               AutoDeactivate  =   True
               Backdrop        =   ""
               DoubleBuffer    =   False
               Enabled         =   True
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               Left            =   141
               LockBottom      =   ""
               LockedInPosition=   False
               LockLeft        =   ""
               LockRight       =   ""
               LockTop         =   ""
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   6
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   235
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_song_move
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               LabelAlign      =   0
               Left            =   141
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   7
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   210
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_song_delete
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               LabelAlign      =   0
               Left            =   141
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   8
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   260
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
         End
         Begin GroupBox grp_songs_all_songs
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "All Songs"
            Enabled         =   True
            Height          =   100
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Italic          =   False
            Left            =   10
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   11
            TextUnit        =   0
            Top             =   40
            Underline       =   False
            Visible         =   True
            Width           =   110
            Begin SButton btn_songs_print
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   True
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_all_songs"
               LabelAlign      =   0
               Left            =   21
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   0
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   61
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_songs_export
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   True
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_all_songs"
               LabelAlign      =   0
               Left            =   21
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   1
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   86
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_songs_find
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   True
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_all_songs"
               LabelAlign      =   0
               Left            =   21
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   2
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   111
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
         End
         Begin GroupBox grp_songs_new_song
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "New Song"
            Enabled         =   True
            Height          =   75
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Italic          =   False
            Left            =   10
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   11
            TextUnit        =   0
            Top             =   145
            Underline       =   False
            Visible         =   True
            Width           =   110
            Begin SButton btn_song_create
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   True
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_new_song"
               LabelAlign      =   0
               Left            =   21
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   0
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   166
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_song_import
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   True
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_new_song"
               LabelAlign      =   0
               Left            =   21
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   1
               TabPanelIndex   =   1
               TabStop         =   True
               Top             =   191
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
         End
         Begin StaticText lbl_songs_song_folders
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Italic          =   False
            Left            =   10
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Folders:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   284
            Underline       =   False
            Visible         =   True
            Width           =   119
         End
         Begin StaticText lbl_songs_songs
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Italic          =   False
            Left            =   10
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Songs:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   11
            TextUnit        =   0
            Top             =   324
            Underline       =   False
            Visible         =   True
            Width           =   230
         End
         Begin SButton btn_songs_song_folders_add
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   False
            EraseBackground =   True
            HasFocus        =   0
            Height          =   18
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            LabelAlign      =   0
            Left            =   203
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            StickyBevel     =   0
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   301
            UseFocusRing    =   True
            Visible         =   True
            Width           =   18
         End
         Begin StaticText lbl_songs_curr_folder
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Italic          =   False
            Left            =   10
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Containing Folder:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   509
            Underline       =   False
            Visible         =   True
            Width           =   230
         End
         Begin SButton btn_songs_song_folders_delete
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   False
            EraseBackground =   True
            HasFocus        =   0
            Height          =   18
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            LabelAlign      =   0
            Left            =   222
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            StickyBevel     =   0
            TabIndex        =   8
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   301
            UseFocusRing    =   True
            Visible         =   True
            Width           =   18
         End
         Begin Listbox lst_songs_songs
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   1
            ColumnsResizable=   False
            ColumnWidths    =   ""
            DataField       =   ""
            DataSource      =   ""
            DefaultRowHeight=   -1
            Enabled         =   True
            EnableDrag      =   False
            EnableDragReorder=   False
            GridLinesHorizontal=   0
            GridLinesVertical=   0
            HasHeading      =   False
            HeadingIndex    =   -1
            Height          =   166
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            InitialValue    =   ""
            Italic          =   False
            Left            =   10
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            RequiresSelection=   ""
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollBarVertical=   True
            SelectionType   =   0
            TabIndex        =   9
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   11
            TextUnit        =   0
            Top             =   343
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   230
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin SEditField edt_songs_curr_folder
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Italic          =   False
            Left            =   10
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   True
            ReadOnly        =   True
            Scope           =   0
            ScrollbarHorizontal=   ""
            ScrollbarVertical=   True
            Styled          =   True
            TabIndex        =   10
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   528
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   227
         End
      End
      Begin Canvas can_controls_sets_mode
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   519
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pge_controls"
         Left            =   5
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Top             =   40
         UseFocusRing    =   True
         Visible         =   True
         Width           =   240
         Begin GroupBox grp_sets_sets
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Sets"
            Enabled         =   True
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_sets_mode"
            Italic          =   False
            Left            =   10
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   11
            TextUnit        =   0
            Top             =   40
            Underline       =   False
            Visible         =   True
            Width           =   230
            Begin PopupMenu pop_sets_sets
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_sets_sets"
               InitialValue    =   ""
               Italic          =   False
               Left            =   21
               ListIndex       =   0
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   0
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "Arial"
               TextSize        =   10
               TextUnit        =   0
               Top             =   58
               Underline       =   False
               Visible         =   True
               Width           =   185
            End
            Begin SButton btn_sets_add
               AcceptFocus     =   False
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_sets_sets"
               LabelAlign      =   0
               Left            =   210
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   1
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   59
               UseFocusRing    =   True
               Visible         =   True
               Width           =   20
            End
         End
         Begin GroupBox grp_set_current_item
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Current Item"
            Enabled         =   True
            Height          =   196
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_sets_mode"
            Italic          =   False
            Left            =   127
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   11
            TextUnit        =   0
            Top             =   217
            Underline       =   False
            Visible         =   True
            Width           =   110
            Begin SButton btn_set_remove
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_item"
               LabelAlign      =   0
               Left            =   138
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   0
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   307
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_set_move_down
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_item"
               LabelAlign      =   0
               Left            =   138
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   1
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   282
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_set_copy
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_item"
               LabelAlign      =   0
               Left            =   138
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   2
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   332
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_set_move_up
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_item"
               LabelAlign      =   0
               Left            =   138
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   3
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   257
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_set_paste
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_item"
               LabelAlign      =   0
               Left            =   138
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   4
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   357
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_set_store
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_item"
               LabelAlign      =   0
               Left            =   138
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   5
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   382
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_set_presentitem
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_item"
               LabelAlign      =   0
               Left            =   138
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   6
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   232
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
         End
         Begin GroupBox grp_set_current_set
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Current Set"
            Enabled         =   True
            Height          =   122
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_sets_mode"
            Italic          =   False
            Left            =   10
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   11
            TextUnit        =   0
            Top             =   92
            Underline       =   False
            Visible         =   True
            Width           =   230
            Begin SButton btn_set_delete
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_set"
               LabelAlign      =   0
               Left            =   21
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   0
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   160
               UseFocusRing    =   True
               Visible         =   True
               Width           =   92
            End
            Begin SButton btn_set_present
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_set"
               LabelAlign      =   0
               Left            =   138
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   1
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   110
               UseFocusRing    =   True
               Visible         =   True
               Width           =   92
            End
            Begin SButton btn_set_rename
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_set"
               LabelAlign      =   0
               Left            =   21
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   2
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   135
               UseFocusRing    =   True
               Visible         =   True
               Width           =   92
            End
            Begin SButton btn_set_print_songs
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_set"
               LabelAlign      =   0
               Left            =   138
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   3
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   135
               UseFocusRing    =   True
               Visible         =   True
               Width           =   92
            End
            Begin SButton btn_set_print_order
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_set"
               LabelAlign      =   0
               Left            =   138
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   4
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   160
               UseFocusRing    =   True
               Visible         =   True
               Width           =   92
            End
            Begin SButton btn_set_save
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_set"
               LabelAlign      =   0
               Left            =   21
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   5
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   110
               UseFocusRing    =   True
               Visible         =   True
               Width           =   92
            End
            Begin SButton btn_set_saveas
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   True
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_set"
               LabelAlign      =   0
               Left            =   21
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   6
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   185
               UseFocusRing    =   True
               Visible         =   True
               Width           =   92
            End
            Begin SButton btn_set_export
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_set"
               Left            =   138
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   7
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   185
               UseFocusRing    =   True
               Visible         =   True
               Width           =   92
            End
         End
         Begin StaticText lbl_set_items
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_sets_mode"
            Italic          =   False
            Left            =   11
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Items In Set:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   405
            Underline       =   False
            Visible         =   True
            Width           =   115
         End
         Begin GroupBox grp_set_new_item
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "New Item"
            Enabled         =   True
            Height          =   151
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_sets_mode"
            Italic          =   False
            Left            =   10
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   11
            TextUnit        =   0
            Top             =   217
            Underline       =   False
            Visible         =   True
            Width           =   110
            Begin SButton btn_set_add_scripture
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_new_item"
               LabelAlign      =   0
               Left            =   21
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   0
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   262
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_set_add_slides
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_new_item"
               LabelAlign      =   0
               Left            =   21
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   1
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   287
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_set_add_style
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_new_item"
               LabelAlign      =   0
               Left            =   21
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   2
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   312
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_set_add_song
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_new_item"
               LabelAlign      =   0
               Left            =   21
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   3
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   236
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
            Begin SButton btn_set_add_image
               AcceptFocus     =   True
               AcceptTabs      =   False
               AutoDeactivate  =   True
               Backdrop        =   0
               DoubleBuffer    =   False
               Enabled         =   False
               EraseBackground =   True
               HasFocus        =   0
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_new_item"
               LabelAlign      =   0
               Left            =   21
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               StickyBevel     =   0
               TabIndex        =   4
               TabPanelIndex   =   2
               TabStop         =   True
               Top             =   337
               UseFocusRing    =   True
               Visible         =   True
               Width           =   87
            End
         End
         Begin Listbox lst_set_items
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   1
            ColumnsResizable=   False
            ColumnWidths    =   ""
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
            Height          =   125
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "can_controls_sets_mode"
            InitialValue    =   ""
            Italic          =   False
            Left            =   10
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            RequiresSelection=   ""
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollBarVertical=   True
            SelectionType   =   0
            TabIndex        =   5
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   11
            TextUnit        =   0
            Top             =   425
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   230
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
      End
   End
   Begin PagePanel pge_contents
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   529
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   255
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   5
      Panels          =   ""
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   34
      Value           =   0
      Visible         =   True
      Width           =   495
      Begin Canvas cnv_editor_style_change
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   519
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pge_contents"
         Left            =   260
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         Top             =   40
         UseFocusRing    =   True
         Visible         =   True
         Width           =   485
         Begin StaticText hdr_style_header
            AutoDeactivate  =   True
            Bold            =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "cnv_editor_style_change"
            Italic          =   False
            Left            =   270
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            Text            =   "Style Change"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   22
            TextUnit        =   0
            Top             =   50
            Underline       =   False
            Visible         =   True
            Width           =   460
         End
         Begin RadioButton rad_style_change
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Change Style to the Following:"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "cnv_editor_style_change"
            Italic          =   False
            Left            =   275
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   130
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   250
         End
         Begin RadioButton rad_style_revert
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Revert to Previous Style"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "cnv_editor_style_change"
            Italic          =   False
            Left            =   275
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   4
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   105
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   250
         End
         Begin SStyleCanvas can_style_style
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   240
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "cnv_editor_style_change"
            Left            =   340
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            SongStyle       =   True
            TabIndex        =   3
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   184
            UseFocusRing    =   True
            Visible         =   True
            Width           =   320
         End
      End
      Begin Canvas can_editor_advanced_song_editor
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   521
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pge_contents"
         Left            =   260
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Top             =   40
         UseFocusRing    =   True
         Visible         =   True
         Width           =   485
         Begin StaticText lbl_song_aka
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   600
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "AKA:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   231
            Underline       =   False
            Visible         =   True
            Width           =   130
         End
         Begin StaticText lbl_song_themes
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   270
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Themes:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   91
            Underline       =   False
            Visible         =   True
            Width           =   175
         End
         Begin StaticText lbl_song_capo
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   460
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Capo:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   126
            Underline       =   False
            Visible         =   True
            Width           =   125
         End
         Begin StaticText lbl_song_key_line
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   460
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Key Line:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   266
            Underline       =   False
            Visible         =   True
            Width           =   270
         End
         Begin Listbox lst_song_themes
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   False
            Border          =   True
            ColumnCount     =   1
            ColumnsResizable=   False
            ColumnWidths    =   ""
            DataField       =   ""
            DataSource      =   ""
            DefaultRowHeight=   -1
            Enabled         =   True
            EnableDrag      =   False
            EnableDragReorder=   False
            GridLinesHorizontal=   0
            GridLinesVertical=   0
            HasHeading      =   False
            HeadingIndex    =   -1
            Height          =   421
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            InitialValue    =   ""
            Italic          =   False
            Left            =   270
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   True
            RequiresSelection=   ""
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollBarVertical=   True
            SelectionType   =   0
            TabIndex        =   4
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   105
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   175
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin SButton btn_song_show_general_editor_2
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            HasFocus        =   0
            Height          =   26
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            LabelAlign      =   1
            Left            =   475
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            StickyBevel     =   True
            TabIndex        =   5
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   51
            UseFocusRing    =   True
            Visible         =   True
            Width           =   125
         End
         Begin StaticText lbl_song_key
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   460
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Key:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   161
            Underline       =   False
            Visible         =   True
            Width           =   125
         End
         Begin StaticText lbl_song_time_sig
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   460
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Time Signature:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   196
            Underline       =   False
            Visible         =   True
            Width           =   125
         End
         Begin PopupMenu pop_song_time_sig
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
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
            TabIndex        =   8
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   211
            Underline       =   False
            Visible         =   True
            Width           =   125
         End
         Begin StaticText lbl_song_user2
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   460
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   9
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "User Defined 2:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   360
            Underline       =   False
            Visible         =   True
            Width           =   270
         End
         Begin StaticText lbl_song_tempo
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   460
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   10
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Tempo:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   231
            Underline       =   False
            Visible         =   True
            Width           =   125
         End
         Begin StaticText lbl_song_user3
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   460
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   11
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "User Defined 3:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   405
            Underline       =   False
            Visible         =   True
            Width           =   270
         End
         Begin CheckBox chk_song_style
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Override Style"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   False
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   628
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   12
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   185
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   102
         End
         Begin CheckBox chk_song_capo_print
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Print"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   525
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   13
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   140
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
         Begin SButton btn_song_show_advanced_editor_2
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   False
            EraseBackground =   True
            HasFocus        =   0
            Height          =   26
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            LabelAlign      =   1
            Left            =   605
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            StickyBevel     =   True
            TabIndex        =   14
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   51
            UseFocusRing    =   True
            Visible         =   True
            Width           =   125
         End
         Begin PopupMenu pop_song_tempo
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
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
            TabIndex        =   15
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   245
            Underline       =   False
            Visible         =   True
            Width           =   125
         End
         Begin SStyleCanvas can_song_style
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   77
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Left            =   628
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            SongStyle       =   True
            TabIndex        =   16
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   105
            UseFocusRing    =   True
            Visible         =   True
            Width           =   102
         End
         Begin SEditField edt_song_key
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   460
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   17
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   175
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   125
         End
         Begin SEditField edt_song_aka
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   600
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   18
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   245
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   130
         End
         Begin PopupMenu pop_song_capo
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            InitialValue    =   "0\r1\r2\r3\r4\r5\r6"
            Italic          =   False
            Left            =   460
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   19
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   140
            Underline       =   False
            Visible         =   True
            Width           =   55
         End
         Begin SEditField edt_song_key_line
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   460
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   20
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   280
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   270
         End
         Begin StaticText lbl_song_user1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   460
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   21
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "User Defined 1:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   312
            Underline       =   False
            Visible         =   True
            Width           =   270
         End
         Begin StaticText hdr_song_header_2
            AutoDeactivate  =   True
            Bold            =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   270
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   22
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Song Editor"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   22
            TextUnit        =   0
            Top             =   50
            Underline       =   False
            Visible         =   True
            Width           =   200
         End
         Begin SEditField edt_song_user1
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   30
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   460
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Multiline       =   True
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   23
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   326
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   270
         End
         Begin SEditField edt_song_user2
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   30
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   460
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Multiline       =   True
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   24
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   374
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   270
         End
         Begin SEditField edt_song_user3
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   30
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   False
            Left            =   460
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Multiline       =   True
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   25
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   419
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   270
         End
      End
      Begin Canvas can_editor_general_song_editor
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   520
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pge_contents"
         Left            =   260
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   40
         UseFocusRing    =   True
         Visible         =   True
         Width           =   485
         Begin StaticText hdr_song_header
            AutoDeactivate  =   True
            Bold            =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   270
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Song Editor"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   22
            TextUnit        =   0
            Top             =   50
            Underline       =   False
            Visible         =   True
            Width           =   200
         End
         Begin StaticText lbl_song_ccli
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   505
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "CCLI #:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   126
            Underline       =   False
            Visible         =   True
            Width           =   105
         End
         Begin StaticText lbl_song_copyright
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   505
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Copyright:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   91
            Underline       =   False
            Visible         =   True
            Width           =   225
         End
         Begin StaticText lbl_song_author
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   270
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Author:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   126
            Underline       =   False
            Visible         =   True
            Width           =   220
         End
         Begin StaticText lbl_song_presentation
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   625
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Presentation:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   126
            Underline       =   False
            Visible         =   True
            Width           =   105
         End
         Begin StaticText lbl_song_lyrics
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   270
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Chord/Lyrics:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   161
            Underline       =   False
            Visible         =   True
            Width           =   350
         End
         Begin StaticText lbl_song_hymn_number
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   13
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   625
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Hymn #:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   175
            Underline       =   False
            Visible         =   True
            Width           =   105
         End
         Begin StaticText lbl_song_insert
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Insert:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   215
            Underline       =   False
            Visible         =   True
            Width           =   120
         End
         Begin StaticText lbl_song_title
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   270
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Title:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   91
            Underline       =   False
            Visible         =   True
            Width           =   220
         End
         Begin GroupBox grp_song_transpose
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Transpose"
            Enabled         =   True
            Height          =   100
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   622
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            TabIndex        =   9
            TabPanelIndex   =   1
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   11
            TextUnit        =   0
            Top             =   390
            Underline       =   False
            Visible         =   True
            Width           =   100
            Begin PopupMenu pop_song_accidentals
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_song_transpose"
               InitialValue    =   ""
               Italic          =   False
               Left            =   632
               ListIndex       =   0
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   False
               Scope           =   0
               TabIndex        =   0
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "Arial"
               TextSize        =   10
               TextUnit        =   0
               Top             =   456
               Underline       =   False
               Visible         =   True
               Width           =   80
            End
            Begin StaticText lbl_song_using
               AutoDeactivate  =   True
               Bold            =   ""
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_song_transpose"
               Italic          =   ""
               Left            =   634
               LockBottom      =   ""
               LockedInPosition=   False
               LockLeft        =   ""
               LockRight       =   ""
               LockTop         =   ""
               Multiline       =   ""
               Scope           =   0
               TabIndex        =   1
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   "Using:"
               TextAlign       =   0
               TextColor       =   &h000000
               TextFont        =   "Arial"
               TextSize        =   10
               TextUnit        =   0
               Top             =   435
               Underline       =   ""
               Visible         =   True
               Width           =   86
            End
            Begin PopupMenu pop_song_transpose
               AutoDeactivate  =   True
               Bold            =   ""
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_song_transpose"
               InitialValue    =   "-6\r\n-5\r\n-4\r\n-3\r\n-2\r\n-1\r\n0\r\n+1\r\n+2\r\n+3\r\n+4\r\n+5\r\n+6\r\n"
               Italic          =   ""
               Left            =   632
               ListIndex       =   6
               LockBottom      =   ""
               LockedInPosition=   False
               LockLeft        =   ""
               LockRight       =   True
               LockTop         =   ""
               Scope           =   0
               TabIndex        =   2
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "Arial"
               TextSize        =   10
               TextUnit        =   0
               Top             =   412
               Underline       =   ""
               Visible         =   True
               Width           =   80
            End
         End
         Begin SEditField edt_song_author
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   270
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   10
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   140
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   220
         End
         Begin SEditField edf_song_lyrics
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   374
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   270
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Multiline       =   True
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   ""
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   11
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Courier New"
            TextSize        =   11
            TextUnit        =   0
            Top             =   175
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   340
         End
         Begin SEditField edt_song_hymn_number
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   19
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   625
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   12
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "System"
            TextSize        =   12
            TextUnit        =   0
            Top             =   190
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   105
         End
         Begin SButton btn_song_ins_section
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            HasFocus        =   0
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            LabelAlign      =   0
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            StickyBevel     =   0
            TabIndex        =   13
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   231
            UseFocusRing    =   True
            Visible         =   True
            Width           =   115
         End
         Begin SButton btn_song_ins_lyrics
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            HasFocus        =   0
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            LabelAlign      =   0
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            StickyBevel     =   0
            TabIndex        =   14
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   256
            UseFocusRing    =   True
            Visible         =   True
            Width           =   115
         End
         Begin SButton btn_song_ins_multi_verse
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            HasFocus        =   0
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            LabelAlign      =   0
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            StickyBevel     =   0
            TabIndex        =   15
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   281
            UseFocusRing    =   True
            Visible         =   True
            Width           =   115
         End
         Begin SButton btn_song_ins_comment
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            HasFocus        =   0
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            LabelAlign      =   0
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            StickyBevel     =   0
            TabIndex        =   16
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   306
            UseFocusRing    =   True
            Visible         =   True
            Width           =   115
         End
         Begin SButton btn_song_ins_column
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            HasFocus        =   0
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            LabelAlign      =   0
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            StickyBevel     =   0
            TabIndex        =   17
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   331
            UseFocusRing    =   True
            Visible         =   True
            Width           =   115
         End
         Begin SButton btn_song_ins_page
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            HasFocus        =   0
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            LabelAlign      =   0
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            StickyBevel     =   0
            TabIndex        =   18
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   356
            UseFocusRing    =   True
            Visible         =   True
            Width           =   115
         End
         Begin SButton btn_song_show_general_editor
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   False
            EraseBackground =   True
            HasFocus        =   0
            Height          =   26
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            LabelAlign      =   1
            Left            =   475
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            StickyBevel     =   True
            TabIndex        =   19
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   50
            UseFocusRing    =   True
            Visible         =   True
            Width           =   125
         End
         Begin SButton btn_song_show_advanced_editor
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            HasFocus        =   0
            Height          =   26
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            LabelAlign      =   1
            Left            =   605
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            StickyBevel     =   True
            TabIndex        =   20
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   50
            UseFocusRing    =   True
            Visible         =   True
            Width           =   125
         End
         Begin SEditField edt_song_ccli
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   505
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   21
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   140
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   105
         End
         Begin SEditField edt_song_presentation
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   625
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   True
            Mask            =   ">CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC"
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   22
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   140
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   105
         End
         Begin SEditField edt_song_copyright
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   505
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   23
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   105
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   225
         End
         Begin SEditField edt_song_title
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   False
            Left            =   270
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   24
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   105
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   220
         End
      End
      Begin Canvas can_editor_slide_editor
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   520
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pge_contents"
         Left            =   260
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         Top             =   40
         UseFocusRing    =   True
         Visible         =   True
         Width           =   485
         Begin StaticText lbl_slide_auto_advance
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Multiline       =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Auto-advance slide(s) every..."
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   240
            Underline       =   False
            Visible         =   True
            Width           =   130
         End
         Begin StaticText txt_slide_seconds
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   630
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Multiline       =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "seconds"
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   290
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin StaticText lbl_slide_insert
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Insert:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   140
            Underline       =   False
            Visible         =   True
            Width           =   115
         End
         Begin CheckBox chk_slide_print
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Print in Set List"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   628
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   3
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   215
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   110
         End
         Begin SEditField edt_slide_auto_advance
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   660
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Multiline       =   ""
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   ""
            ScrollbarVertical=   True
            Styled          =   ""
            TabIndex        =   4
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   270
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   40
         End
         Begin CheckBox chk_slide_loop
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Loop Slides"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   628
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   5
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   195
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   110
         End
         Begin CheckBox chk_slide_style
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Override Style"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   False
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   630
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   6
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   390
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
         Begin PopupMenu pop_slide_transition
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            InitialValue    =   ""
            Italic          =   ""
            Left            =   624
            ListIndex       =   0
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   True
            LockTop         =   ""
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   3
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   435
            Underline       =   ""
            Visible         =   True
            Width           =   110
         End
         Begin SEditField edt_slide_origorder
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   453
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   ""
            ReadOnly        =   True
            Scope           =   0
            ScrollbarHorizontal=   ""
            ScrollbarVertical=   True
            Styled          =   ""
            TabIndex        =   8
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   379
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin StaticText lbl_slide_folder
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   16
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   270
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   9
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "File Folder"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   401
            Underline       =   False
            Visible         =   True
            Width           =   170
         End
         Begin StaticText hdr_slide_header
            AutoDeactivate  =   True
            Bold            =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   270
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   10
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Custom Slide Editor"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   22
            TextUnit        =   0
            Top             =   50
            Underline       =   False
            Visible         =   True
            Width           =   460
         End
         Begin StaticText lbl_slide_presentation
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   16
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   271
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   11
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Custom Presentation Order:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   365
            Underline       =   False
            Visible         =   True
            Width           =   170
         End
         Begin StaticText lbl_slide_origorder
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   16
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   453
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   12
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Original Presentation Order:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   365
            Underline       =   False
            Visible         =   True
            Width           =   160
         End
         Begin SEditField edt_slide_order
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   270
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   "CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC"
            Multiline       =   ""
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   ""
            ScrollbarVertical=   True
            Styled          =   ""
            TabIndex        =   13
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   379
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   170
         End
         Begin StaticText lbl_slide_name
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   590
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   14
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Name:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   91
            Underline       =   False
            Visible         =   True
            Width           =   140
         End
         Begin StaticText lbl_slide_subtitle
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   430
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   15
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Subtitle:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   91
            Underline       =   False
            Visible         =   True
            Width           =   145
         End
         Begin StaticText lbl_slide_title
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   270
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   16
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Title:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   91
            Underline       =   False
            Visible         =   True
            Width           =   145
         End
         Begin StaticText lbl_slide_slides
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   270
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   17
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Slides:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   126
            Underline       =   False
            Visible         =   True
            Width           =   340
         End
         Begin StaticText lbl_slide_transition
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   16
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   ""
            Left            =   628
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   True
            LockTop         =   ""
            Multiline       =   ""
            Scope           =   0
            TabIndex        =   18
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Use Transition"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   420
            Underline       =   ""
            Visible         =   True
            Width           =   110
         End
         Begin StaticText lbl_slide_notes
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   270
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   19
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   "Notes:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   436
            Underline       =   False
            Visible         =   True
            Width           =   340
         End
         Begin SEditField edt_slide_subtitle
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   430
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   20
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   105
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   145
         End
         Begin SEditField edt_slide_title
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   270
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   21
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   105
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   145
         End
         Begin SEditField edt_slide_name
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   590
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   22
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   105
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   140
         End
         Begin SEditField edt_slide_slides
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   220
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   270
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Multiline       =   True
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   True
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   23
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   140
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   340
         End
         Begin SEditField edt_slide_folder
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   270
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            ReadOnly        =   True
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   24
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   416
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   170
         End
         Begin SButton btn_slide_ins_slide
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            HasFocus        =   0
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            LabelAlign      =   0
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            StickyBevel     =   0
            TabIndex        =   25
            TabPanelIndex   =   3
            TabStop         =   True
            Top             =   155
            UseFocusRing    =   True
            Visible         =   True
            Width           =   115
         End
         Begin SEditField edt_slide_notes
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   100
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   False
            Left            =   270
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Multiline       =   True
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   True
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   26
            TabPanelIndex   =   3
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   450
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   340
         End
         Begin SStyleCanvas can_slide_style
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   77
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Left            =   628
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            SongStyle       =   False
            TabIndex        =   27
            TabPanelIndex   =   3
            TabStop         =   True
            Top             =   310
            UseFocusRing    =   True
            Visible         =   True
            Width           =   102
         End
      End
      Begin Canvas can_editor_image_slide
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   520
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pge_contents"
         Left            =   260
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   5
         TabStop         =   True
         Top             =   40
         UseFocusRing    =   True
         Visible         =   True
         Width           =   485
         Begin StaticText txt_image_seconds
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   False
            Left            =   630
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Multiline       =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "seconds"
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   364
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin StaticText lbl_image_auto_advance
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   False
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Multiline       =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Auto-advance slide(s) every..."
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   314
            Underline       =   False
            Visible         =   True
            Width           =   130
         End
         Begin StaticText lbl_image_transition
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   16
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   ""
            Left            =   628
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   True
            LockTop         =   ""
            Multiline       =   ""
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Use Transition"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   494
            Underline       =   ""
            Visible         =   True
            Width           =   110
         End
         Begin CheckBox chk_image_style
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Override Style"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   False
            Left            =   630
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   3
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   464
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   100
         End
         Begin StaticText hdr_image_header
            AutoDeactivate  =   True
            Bold            =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   False
            Left            =   270
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Image Slide Editor"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   22
            TextUnit        =   0
            Top             =   50
            Underline       =   False
            Visible         =   True
            Width           =   460
         End
         Begin PopupMenu pop_image_transition
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            InitialValue    =   ""
            Italic          =   ""
            Left            =   624
            ListIndex       =   0
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   True
            LockTop         =   ""
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   509
            Underline       =   ""
            Visible         =   True
            Width           =   110
         End
         Begin StaticText lbl_image_name
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   False
            Left            =   590
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Name:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   91
            Underline       =   False
            Visible         =   True
            Width           =   140
         End
         Begin CheckBox chk_image_fit_to_screen
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Resize images to fit the screen"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   ""
            Left            =   270
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   ""
            Scope           =   0
            State           =   0
            TabIndex        =   7
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   365
            Underline       =   ""
            Value           =   False
            Visible         =   True
            Width           =   340
         End
         Begin CheckBox chk_image_fit_to_body
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Resize images to fit the body area"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   ""
            Left            =   270
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   ""
            Scope           =   0
            State           =   0
            TabIndex        =   8
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   385
            Underline       =   ""
            Value           =   False
            Visible         =   True
            Width           =   340
         End
         Begin CheckBox chk_image_store_as_link
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Do not store the image in the set, use link to the image"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   ""
            Left            =   270
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   ""
            Scope           =   0
            State           =   0
            TabIndex        =   9
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   425
            Underline       =   ""
            Value           =   False
            Visible         =   True
            Width           =   340
         End
         Begin CheckBox chk_image_keepaspect
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Keep aspect ratio when resizing images"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   ""
            Left            =   270
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   ""
            Scope           =   0
            State           =   0
            TabIndex        =   10
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   405
            Underline       =   ""
            Value           =   False
            Visible         =   True
            Width           =   340
         End
         Begin StaticText lbl_image_notes
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   False
            Left            =   270
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   11
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Notes:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   448
            Underline       =   False
            Visible         =   True
            Width           =   340
         End
         Begin StaticText lbl_image_title
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   False
            Left            =   270
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   12
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Title:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   91
            Underline       =   False
            Visible         =   True
            Width           =   145
         End
         Begin StaticText lbl_image_action
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   False
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Multiline       =   False
            Scope           =   0
            TabIndex        =   13
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Insert:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   146
            Underline       =   False
            Visible         =   True
            Width           =   115
         End
         Begin CheckBox chk_image_print
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Print in Set List"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   False
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   False
            Left            =   628
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   14
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   289
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   110
         End
         Begin CheckBox chk_image_loop
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Loop Slides"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   False
            Left            =   628
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            State           =   0
            TabIndex        =   15
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   269
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   110
         End
         Begin SEditField edt_image_auto_advance
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   False
            Left            =   660
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Multiline       =   ""
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   ""
            ScrollbarVertical=   True
            Styled          =   ""
            TabIndex        =   16
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   344
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   40
         End
         Begin StaticText lbl_image_subtitle
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   ""
            Left            =   430
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Multiline       =   ""
            Scope           =   0
            TabIndex        =   17
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Subtitle:"
            TextAlign       =   0
            TextColor       =   &h000000
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   91
            Underline       =   ""
            Visible         =   True
            Width           =   145
         End
         Begin StaticText lbl_image_images
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   ""
            Left            =   270
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Multiline       =   ""
            Scope           =   0
            TabIndex        =   18
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   "Images:"
            TextAlign       =   0
            TextColor       =   &h000000
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   142
            Underline       =   ""
            Visible         =   True
            Width           =   333
         End
         Begin CheckBox chk_image_descriptions
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Image description in subtitle"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   ""
            Left            =   430
            LockBottom      =   ""
            LockedInPosition=   False
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            State           =   0
            TabIndex        =   19
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   126
            Underline       =   ""
            Value           =   False
            Visible         =   True
            Width           =   180
         End
         Begin SEditField edt_image_title
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   False
            Left            =   270
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   20
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   105
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   145
         End
         Begin SStyleCanvas can_image_style
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   77
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Left            =   628
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            SongStyle       =   False
            TabIndex        =   21
            TabPanelIndex   =   5
            TabStop         =   True
            Top             =   384
            UseFocusRing    =   True
            Visible         =   True
            Width           =   102
         End
         Begin SEditField edt_image_subtitle
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   False
            Left            =   430
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   22
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   105
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   145
         End
         Begin SEditField edt_image_name
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   False
            Left            =   590
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Multiline       =   False
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   23
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   105
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   140
         End
         Begin ImageListBox lst_image_images
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   ""
            Border          =   True
            ColumnCount     =   2
            ColumnsResizable=   True
            ColumnWidths    =   "80,*"
            DataField       =   ""
            DataSource      =   ""
            DefaultRowHeight=   80
            Enabled         =   True
            EnableDrag      =   False
            EnableDragReorder=   True
            GridLinesHorizontal=   0
            GridLinesVertical=   0
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   200
            HelpTag         =   ""
            Hierarchical    =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            InitialValue    =   ""
            Italic          =   ""
            Left            =   270
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            RequiresSelection=   False
            Scope           =   0
            ScrollbarHorizontal=   ""
            ScrollBarVertical=   True
            SelectionType   =   1
            TabIndex        =   24
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   160
            Underline       =   ""
            UseFocusRing    =   True
            Visible         =   True
            Width           =   340
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin SEditField edt_image_notes
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            BackColor       =   16777215
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   88
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            Italic          =   False
            Left            =   270
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Multiline       =   True
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   True
            ScrollbarVertical=   True
            Styled          =   False
            TabIndex        =   25
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            TextUnit        =   0
            Top             =   462
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   340
         End
         Begin SButton btn_image_ins_image
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            HasFocus        =   0
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            LabelAlign      =   0
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            StickyBevel     =   0
            TabIndex        =   26
            TabPanelIndex   =   5
            TabStop         =   True
            Top             =   161
            UseFocusRing    =   True
            Visible         =   True
            Width           =   115
         End
         Begin SButton btn_image_del_image
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            HasFocus        =   0
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            LabelAlign      =   0
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            StickyBevel     =   0
            TabIndex        =   27
            TabPanelIndex   =   5
            TabStop         =   True
            Top             =   187
            UseFocusRing    =   True
            Visible         =   True
            Width           =   115
         End
         Begin SButton btn_image_move_down
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            HasFocus        =   0
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            LabelAlign      =   0
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            StickyBevel     =   0
            TabIndex        =   28
            TabPanelIndex   =   5
            TabStop         =   True
            Top             =   238
            UseFocusRing    =   True
            Visible         =   True
            Width           =   115
         End
         Begin SButton btn_image_move_up
            AcceptFocus     =   True
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            HasFocus        =   0
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_image_slide"
            LabelAlign      =   0
            Left            =   615
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            StickyBevel     =   0
            TabIndex        =   29
            TabPanelIndex   =   5
            TabStop         =   True
            Top             =   212
            UseFocusRing    =   True
            Visible         =   True
            Width           =   115
         End
      End
   End
   Begin Separator sep_vertical
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   506
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   249
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   35
      Visible         =   True
      Width           =   4
   End
   Begin Separator sep_horizontal
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   4
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   32
      Visible         =   True
      Width           =   750
   End
   Begin Timer tmr_lookup
      Enabled         =   True
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   759
      LockedInPosition=   False
      Mode            =   2
      Period          =   1500
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   -18
      Visible         =   True
      Width           =   32
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  '++JRC
		  App.DebugWriter.Write "Begin MainWindow.Activate:"
		  
		  If Globals.Status_Presentation Or Status_Presentation Then
		    #if Not TargetMacOS
		      App.MinimizeWindow(MainWindow)
		    #endif
		    
		    If PresentWindow.HelperActive Then
		      App.RestoreWindow(PresentHelperWindow)
		      App.SetForeground(PresentHelperWindow)
		    Else
		      App.RestoreWindow(PresentWindow)
		      App.SetForeground(PresentWindow)
		    End If
		  End If
		  '--
		  If App.SplashShowing Then Splash.Show
		  
		  App.DebugWriter.Write "End MainWindow.Activate:"
		End Sub
	#tag EndEvent

	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  Status_Closing = True
		  If Status_SongChanged Then
		    'Ask if user wants to save
		    If NOT ActionSongAskSave Then
		      Status_Closing = False
		      Return True 'User Canceled, Cancel the Close
		    End If
		  End if
		  
		  If Status_SetChanged Then
		    'Ask if user wants to save
		    If NOT ActionSetAskSave Then
		      Status_Closing = False
		      Return True 'User Canceled
		    End If
		  End If
		  
		  // Cancel the close if we're presenting.
		  If Status_Presentation Then Return True
		  
		  App.MouseCursor = System.Cursors.Wait
		  
		  SmartML.SetValue App.MyMainSettings.DocumentElement, "geometry/@y", CStr(Top)
		  SmartML.SetValue App.MyMainSettings.DocumentElement, "geometry/@x", CStr(Left)
		  SmartML.SetValue App.MyMainSettings.DocumentElement, "geometry/@width", CStr(Width)
		  SmartML.SetValue App.MyMainSettings.DocumentElement, "geometry/@height", CStr(Height)
		  SmartML.SetValue App.MyMainSettings.DocumentElement, "songfolder", Globals.CurrentSongFolder
		  
		  App.MouseCursor = Nil
		  Return False
		End Function
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  '++JRC
		  If Globals.SongActivityLog <> Nil Then
		    mnu_file_song_act.Enabled = true
		  Else
		    mnu_file_song_act.Enabled = false
		  End If
		  '--
		  If pge_controls.Value = 0 Then ' Songs tab
		    mnu_mode_songs.Checked = True
		    mnu_mode_sets.Checked = False
		    mnu_file_pagesetup.Enabled = True
		    
		    If Status_SongOpen Then
		      btn_song_print.Enabled = True
		      btn_song_present.Enabled = True And (Not Status_Presentation)
		      btn_song_export.Enabled = True
		      btn_song_rename.Enabled = True
		      btn_song_move.Enabled = True
		      '++JRC
		      btn_song_copy.Enabled = true
		      '--
		      btn_song_delete.Enabled = True
		      mnu_file_print.Enabled = True
		      mnu_file_single_screen.Enabled = True
		      mnu_file_dual_screen.Enabled = (ScreenCount > 1) 'EMP 12/05
		      #If TargetLinux
		        If (Screen(0).Width /2) > Screen(0).Height Then
		          mnu_file_dual_screen.Enabled = True
		        End If
		      #EndIf
		      mnu_file_preview_dual_screen.Enabled = True
		      
		      ' EDITOR FIELDS
		      
		      edf_song_lyrics.Enabled = True
		      pop_song_transpose.Enabled = True
		      pop_song_accidentals.Enabled = True
		      edt_song_title.Enabled = True
		      edt_song_author.Enabled = True
		      edt_song_copyright.Enabled = True
		      edt_song_presentation.Enabled = True And (Not Status_Presentation)
		      edt_song_ccli.Enabled = True
		      lst_song_themes.Enabled = True
		      pop_song_capo.Enabled = True
		      chk_song_capo_print.Enabled = True
		      pop_song_tempo.Enabled = True
		      pop_song_time_sig.Enabled = True
		      edt_song_key.Enabled = True
		      edt_song_aka.Enabled = True
		      edt_song_key_line.Enabled = True
		      edt_song_user1.Enabled = True
		      edt_song_user2.Enabled = True
		      edt_song_user3.Enabled = True
		      'Josh
		      edt_song_hymn_number.Enabled = True
		      
		      chk_song_style.Enabled = True
		      If chk_song_style.Value Then
		        If can_song_style.Enabled <> True Then
		          can_song_style.SetEnabled True
		        End If
		      Else
		        If can_song_style.Enabled <> False Then
		          can_song_style.SetEnabled False
		        End If
		      End If
		      
		      ' SHORTCUTS
		      
		      btn_song_ins_column.Enabled = True
		      btn_song_ins_page.Enabled = True
		      btn_song_ins_comment.Enabled = True
		      btn_song_ins_multi_verse.Enabled = True
		      btn_song_ins_section.Enabled = True
		      btn_song_ins_lyrics.Enabled = True
		      
		    Else
		      btn_song_print.Enabled = False
		      btn_song_present.Enabled = False
		      btn_song_export.Enabled = False
		      btn_song_rename.Enabled = False
		      btn_song_move.Enabled = False
		      '++JRC
		      btn_song_copy.Enabled = false
		      '--
		      btn_song_delete.Enabled = False
		      mnu_file_print.Enabled = False
		      mnu_file_single_screen.Enabled = False
		      mnu_file_dual_screen.Enabled = False
		      mnu_file_preview_dual_screen.Enabled = False
		      
		      ' EDITOR FIELDS
		      
		      edf_song_lyrics.Enabled = False
		      pop_song_transpose.Enabled = False
		      pop_song_accidentals.Enabled = False
		      edt_song_title.Enabled = False
		      edt_song_author.Enabled = False
		      edt_song_copyright.Enabled = False
		      edt_song_presentation.Enabled = False
		      edt_song_ccli.Enabled = False
		      lst_song_themes.Enabled = False
		      pop_song_capo.Enabled = False
		      chk_song_capo_print.Enabled = False
		      pop_song_tempo.Enabled = False
		      pop_song_time_sig.Enabled = False
		      edt_song_key.Enabled = False
		      edt_song_aka.Enabled = False
		      edt_song_key_line.Enabled = False
		      edt_song_user1.Enabled = False
		      edt_song_user2.Enabled = False
		      edt_song_user3.Enabled = False
		      
		      'Josh
		      edt_song_hymn_number.Enabled = False
		      
		      chk_song_style.Enabled = False
		      If can_song_style.Enabled <> False Then
		        can_song_style.SetEnabled False
		      End If
		      
		      edf_song_lyrics.Text = ""
		      edt_song_title.Text = ""
		      edt_song_author.Text = ""
		      edt_song_copyright.Text = ""
		      edt_song_presentation.Text = ""
		      edt_song_ccli.Text = ""
		      
		      'Josh
		      edt_song_hymn_number.Text = ""
		      
		      lst_song_themes.DeleteAllRows
		      pop_song_capo.DeleteAllRows
		      '++JRC Comatibilty with RB 2009
		      chk_song_capo_print.Value = False
		      pop_song_tempo.DeleteAllRows
		      pop_song_time_sig.DeleteAllRows
		      edt_song_key.Text = ""
		      edt_song_aka.Text = ""
		      edt_song_key_line.Text = ""
		      edt_song_user1.Text = ""
		      edt_song_user2.Text = ""
		      edt_song_user3.Text = ""
		      can_song_style.ClearStyleNode
		      
		      ' SHORTCUTS
		      
		      btn_song_ins_column.Enabled = False
		      btn_song_ins_page.Enabled = False
		      btn_song_ins_comment.Enabled = False
		      btn_song_ins_multi_verse.Enabled = False
		      btn_song_ins_section.Enabled = False
		      btn_song_ins_lyrics.Enabled = False
		      
		    End If
		    
		    If Status_SongChanged Then
		      btn_song_save.Enabled = True
		      btn_song_revert.Enabled = True
		      mnu_file_save.Enabled = True
		    Else
		      btn_song_save.Enabled = False
		      btn_song_revert.Enabled = False
		      mnu_file_save.Enabled = False
		    End If
		    
		    
		    
		  Else ' Sets tab
		    mnu_mode_songs.Checked = False
		    mnu_mode_sets.Checked = True
		    mnu_file_pagesetup.Enabled = True
		    If Status_SetOpen Then
		      btn_set_add_song.Enabled = True
		      btn_set_add_style.Enabled = True
		      btn_set_add_slides.Enabled = True
		      btn_set_add_scripture.Enabled = True
		      btn_set_add_image.Enabled = True
		      btn_set_present.Enabled = True And (Not Status_Presentation)
		      btn_set_print_songs.Enabled = True
		      btn_set_print_order.Enabled = True
		      btn_set_export.Enabled = True
		      btn_set_rename.Enabled = True
		      btn_set_delete.Enabled = True
		      btn_set_saveas.Enabled = True
		      mnu_file_print.Enabled = True
		      mnu_file_single_screen.Enabled = True
		      mnu_file_dual_screen.Enabled = (ScreenCount > 1) 'EMP 12/05
		      #If TargetLinux
		        If (Screen(0).Width /2) > Screen(0).Height Then
		          mnu_file_dual_screen.Enabled = True
		        End If
		      #endif
		      mnu_file_preview_dual_screen.Enabled = True
		    Else
		      btn_set_add_song.Enabled = False
		      btn_set_add_style.Enabled = False
		      btn_set_add_slides.Enabled = False
		      btn_set_add_scripture.Enabled = False
		      btn_set_add_image.Enabled = False
		      btn_set_present.Enabled = False
		      btn_set_print_songs.Enabled = False
		      btn_set_print_order.Enabled = False
		      btn_set_export.Enabled = False
		      btn_set_rename.Enabled = False
		      btn_set_delete.Enabled = False
		      btn_set_saveas.Enabled = False
		      mnu_file_print.Enabled = False
		      mnu_file_single_screen.Enabled = False
		      mnu_file_dual_screen.Enabled = False
		      mnu_file_preview_dual_screen.Enabled = False
		    End If
		    
		    If Status_InSetChanged Then Status_SetChanged = True
		    
		    If Status_SetChanged Then
		      btn_set_save.Enabled = True
		      mnu_file_save.Enabled = True
		    Else
		      btn_set_save.Enabled = False
		      mnu_file_save.Enabled = False
		    End If
		    
		    
		    
		    If Status_InSetOpen Then
		      ' Move Up
		      If lst_set_items.ListIndex > 0 Then
		        btn_set_move_up.Enabled = True
		      Else
		        btn_set_move_up.Enabled = False
		      End If
		      ' Move Down
		      If lst_set_items.ListIndex < lst_set_items.ListCount-1 Then
		        btn_set_move_down.Enabled = True
		      Else
		        btn_set_move_down.Enabled = False
		      End If
		      
		      '++JRC
		      'Present Item
		      Dim xgroup As XmlNode
		      Dim groupType As String
		      
		      'get currently selected set items' type
		      xgroup = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True).Child(CurrentInSetItem)
		      If xgroup <> Nil Then
		        groupType = SmartML.GetValue(xgroup, "@type", True)
		        If groupType <> "style" Then
		          btn_set_presentitem.Enabled = True
		        Else
		          btn_set_presentitem.Enabled = False
		        End If
		      Else
		        btn_set_presentitem.Enabled = False
		      End If
		      '--
		      
		      ' Remove/Delete
		      btn_set_remove.Enabled = True
		      ' Copy
		      btn_set_copy.Enabled = True
		      Dim c As New Clipboard
		      btn_set_paste.Enabled = (c.TextAvailable) and (Left(c.text,12) = "<slide_group")
		      c.close
		    Else
		      '++JRC
		      btn_set_presentitem.Enabled = False
		      
		      btn_set_move_up.Enabled = False
		      btn_set_move_down.Enabled = False
		      btn_set_remove.Enabled = False
		      btn_set_copy.Enabled = False
		      btn_set_paste.Enabled = False
		    End If
		    
		    
		    
		    If Status_InSetChanged Then
		      btn_set_store.Enabled = True
		      mnu_file_save.Enabled = True
		    Else
		      btn_set_store.Enabled = False
		    End If
		    
		    If Status_InSetEditable Then
		      'Custom/Scripture slide
		      edt_slide_name.Enabled = Not Status_InSetSongEdit
		      edt_slide_name.ReadOnly = Status_InSetSongEdit
		      edt_slide_title.Enabled = True
		      edt_slide_title.ReadOnly = Status_InSetSongEdit
		      edt_slide_subtitle.Enabled = not Status_InSetSongEdit
		      edt_slide_subtitle.ReadOnly = Status_InSetSongEdit
		      edt_slide_slides.Enabled = True
		      edt_slide_slides.ReadOnly = Status_InSetSongEdit
		      edt_slide_notes.Enabled = Not Status_InSetSongEdit
		      edt_slide_auto_advance.Enabled = Not Status_InSetSongEdit
		      edt_slide_order.Enabled = Status_InSetSongEdit
		      edt_slide_folder.Enabled = Status_InSetSongEdit
		      edt_slide_order.ReadOnly = False
		      edt_slide_origorder.Enabled = Status_InSetSongEdit
		      chk_slide_loop.Enabled = Not Status_InSetSongEdit
		      chk_slide_print.Enabled = Not Status_InSetSongEdit
		      pop_slide_transition.Enabled = True 'Not Status_InSetSongEdit
		      edt_song_hymn_number.Enabled = Not Status_InSetSongEdit
		      
		      ' SHORTCUT
		      
		      btn_slide_ins_slide.Enabled = Not Status_InSetSongEdit
		      
		      chk_slide_style.Enabled = True 'Not Status_InSetSongEdit
		      //--
		      If chk_slide_style.Value Then
		        If can_slide_style.Enabled <> True Then
		          can_slide_style.SetEnabled True
		        End If
		      Else
		        If can_slide_style.Enabled <> False Then
		          can_slide_style.SetEnabled False
		        End If
		      End If
		      
		      ' Style
		      rad_style_change.Enabled = True
		      rad_style_revert.Enabled = True
		      If rad_style_change.Value = True Then
		        can_style_style.SetEnabled True
		      Else
		        can_style_style.SetEnabled False
		      End If
		      
		      'Image slide
		      edt_image_name.Enabled = True
		      edt_image_title.Enabled = True
		      edt_image_subtitle.Enabled = True
		      chk_image_descriptions.Enabled = True
		      lst_image_images.Enabled = True
		      chk_image_fit_to_screen.Enabled = True
		      chk_image_fit_to_body.Enabled = True
		      chk_image_keepaspect.Enabled = chk_image_fit_to_body.Value Or chk_image_fit_to_screen.Value
		      chk_image_store_as_link.Enabled = True
		      edt_image_notes.Enabled = True
		      btn_image_ins_image.Enabled = True
		      btn_image_del_image.Enabled = True
		      btn_image_move_up.Enabled = True
		      btn_image_move_down.Enabled = True
		      edt_image_auto_advance.Enabled = True
		      chk_image_loop.Enabled = True
		      chk_image_print.Enabled = True
		      pop_image_transition.Enabled = True
		      
		      chk_image_style.Enabled = True
		      If chk_image_style.Value Then
		        If can_image_style.Enabled <> True Then
		          can_image_style.SetEnabled True
		        End If
		      Else
		        If can_image_style.Enabled <> False Then
		          can_image_style.SetEnabled False
		        End If
		      End If
		    Else
		      
		      edt_slide_name.Enabled = False
		      edt_slide_name.ReadOnly = False
		      edt_slide_title.Enabled = False
		      edt_slide_title.ReadOnly = False
		      edt_slide_subtitle.Enabled = False
		      edt_slide_subtitle.ReadOnly = False
		      edt_slide_slides.Enabled = False
		      edt_slide_slides.ReadOnly = False
		      edt_slide_notes.Enabled = False
		      edt_slide_notes.ReadOnly = False
		      edt_slide_order.enabled = False
		      edt_slide_origorder.Enabled = False
		      edt_slide_order.ReadOnly = False
		      edt_slide_folder.Enabled = False
		      edt_slide_auto_advance.Enabled = False
		      edt_slide_auto_advance.ReadOnly = False
		      chk_slide_loop.Enabled = False
		      chk_slide_print.Enabled = False
		      pop_slide_transition.Enabled = False
		      edt_slide_name.Text = ""
		      edt_slide_slides.Text = ""
		      edt_slide_title.Text = ""
		      edt_slide_subtitle.Text = ""
		      edt_slide_notes.Text = ""
		      edt_slide_auto_advance.Text = ""
		      edt_slide_order.Text = ""
		      edt_slide_origorder.Text = ""
		      edt_slide_folder.Text = ""
		      chk_slide_loop.Value = False
		      chk_slide_print.Value = True
		      pop_slide_transition.ListIndex = 0
		      
		      'JRC: Fixed, now editbox doesn't lose value when
		      'changing between song mode and set mode
		      'edt_song_hymn_number.Enabled = False
		      'edt_song_hymn_number.Text = ""
		      '--
		      
		      ' SHORTCUTS
		      btn_slide_ins_slide.Enabled = False
		      
		      chk_slide_style.Enabled = False
		      can_slide_style.ClearStyleNode
		      can_slide_style.SetEnabled False
		      
		      ' Style
		      rad_style_change.Enabled = False
		      rad_style_revert.Enabled = False
		      can_style_style.SetEnabled False
		      
		      'Image slide
		      edt_image_name.Enabled = False
		      edt_image_title.Enabled = False
		      edt_image_subtitle.Enabled = False
		      chk_image_descriptions.Enabled = False
		      lst_image_images.Enabled = False
		      chk_image_fit_to_screen.Enabled = False
		      chk_image_fit_to_body.Enabled = False
		      chk_image_keepaspect.Enabled = False
		      chk_image_store_as_link.Enabled = False
		      edt_image_notes.Enabled = False
		      btn_image_ins_image.Enabled = False
		      btn_image_del_image.Enabled = False
		      btn_image_move_up.Enabled = False
		      btn_image_move_down.Enabled = False
		      edt_image_auto_advance.Enabled = False
		      chk_image_loop.Enabled = False
		      chk_image_print.Enabled = False
		      pop_image_transition.Enabled = False
		      pop_image_transition.ListIndex = 0
		      
		      chk_image_style.Enabled = False
		      can_image_style.ClearStyleNode
		      can_image_style.SetEnabled False
		      
		    End If
		    
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Dim i As Integer
		  
		  dim Mode as Integer
		  
		  If Globals.Status_Presentation Then
		    App.DebugWriter.Write "MainWindow.KeyDown: Got a '" + Key + "' in Presentation Mode"
		    PresentWindow.SetFocus
		    Return False
		  End If
		  
		  if asc(key) = 204 Then 'F5
		    mode = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "presentation_mode/@code")
		    if Status_SongOpen Then
		      'Ask if user wants to save
		      If NOT ActionSongAskSave Then Return True 'User Canceled
		      
		      ActionSongPresent mode
		    elseif Status_SetOpen then
		      'Ask if user wants to save
		      If NOT ActionSetAskSave Then Return True  'User Canceled
		      
		      ActionSetPresent mode
		    end if
		  end if
		  
		  If Keyboard.AsyncKeyDown(&h60) Then ' F5
		    'If ScreenCount > 1 Then
		    'i = 3
		    'Else
		    'i = 1
		    'End If
		    'If pageMain.Value = 0 Then
		    'If Status_SongOpen Then ActionSongPresent i
		    'Else
		    'If Status_SetOpen Then ActionSetPresent i
		    'End If
		    'Return True
		  ElseIf Keyboard.AsyncKeyDown(&h7a) Then ' F1
		    'HelpWindow.ShowModalWithin Self
		    'Return True
		  ElseIf Keyboard.AsyncKeyDown(&h75) Then ' DELETE
		    If pge_controls.Value = 0 Then
		      If Status_SongOpen Then ActionSongRemove
		    Else
		      If Status_SetOpen And Status_InSetOpen Then ActionInSetRemove True
		    End If
		    'ElseIf Keyboard.AsyncKeyDown(&h78) Then ' F2
		    'SetMode 0
		    'ElseIf Keyboard.AsyncKeyDown(&h63) Then ' F3
		    'SetMode 1
		  End If
		  
		End Function
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  'If IsContextualClick Then
		  'If PPT <> Nil Then PPT.SlideShowWindows.Item(1).View.Exit_
		  'Else
		  'If PPT <> Nil Then PPT.SlideShowWindows.Item(1).View.GotoSlide 6
		  'End If
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  'Try
		  'PPT = New PowerPointApplication
		  'PPT.Visible = 1
		  'PPT.Presentations.Open "C:\Documents and Settings\slickfold\My Documents\Youth Group\10Commandments_forkids.ppt", True, True, True
		  'PPT.ActivePresentation.SlideShowSettings.Run
		  'Catch e as RuntimeException
		  'MsgBox e.Message
		  'PPT = Nil
		  'End Try
		  
		  Profiler.BeginProfilerEntry "MainWindow::Open"
		  App.DebugWriter.Write "MainWindow.Open: Enter"
		  Dim output As TextOutputStream
		  Dim MainFolder As FolderItem
		  Dim s As String
		  Dim StartMode As Integer
		  Dim i As Integer
		  Dim bibleFiles() As String
		  Dim f As FolderItem
		  
		  '++JRC
		  Globals.OldFolderSel = -1
		  CurrentSetIndex = -1
		  '--
		  
		  Splash.SetStatus App.T.Translate("load_data/bible") + "..."
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "last_scripture/@version")
		  'If Len(s) > 0 And App.AppFolder.Child("OpenSong Scripture").Child(s).Exists Then
		  'If App.MyBible.LoadBible(App.AppFolder.Child("OpenSong Scripture").Child(s)) Then
		  App.MyBible = BibleFactory.GetBible(s)
		  If App.MyBible <> Nil Then
		    App.DebugWriter.Write "MainWindow.Open: Successfully loaded saved Bible translation " + s
		  Else
		    App.DebugWriter.Write "MainWindow.Open: Unable to load saved Bible translation " + s + ", App.MyBible = Nil"
		    
		    //++
		    // N.B. InputBox.Pick assumes a 1-based array, so Redim (0) to put an unused empty string in
		    // element 0.  Otherwise, the first valid file isn't shown.
		    //--
		    Splash.Hide
		    Redim bibleFiles(-1)
		    bibleFiles = BibleFactory.BibleList
		    bibleFiles.Insert 0, ""
		    s = InputBox.Pick(App.T.Translate("scripture_lookup/select_file/@caption"), bibleFiles)
		    App.MyBible = BibleFactory.GetBible(s)
		    If App.MyBible <> Nil Then
		      SmartML.SetValue(App.MyMainSettings.DocumentElement, "last_scripture/@version", s)
		      App.DebugWriter.Write "MainWindow.Open: Successfully opened newly selected Bible " + s
		    Else
		      App.DebugWriter.Write "MainWindow.Open: Unable to load newly selected Bible " + s + ", App.MyBible = Nil"
		      App.DebugWriter.Write Chr(9) + App.MyBible.ErrorString
		      App.MyBible = Nil
		    End If
		    Splash.Show
		  End If
		  
		  Splash.SetStatus App.T.Translate("load_data/songs_cache") + "..."
		  If App.MainPreferences.GetValueB(Prefs.kUseOldFolderDB) Then
		    Songs = New FolderDBOld(App.DocsFolder.Child("Songs"))
		  Else
		    Songs = New FolderDB(App.DocsFolder.Child("Songs"))
		  End If
		  Songs.SetBuiltinFilters "( " + App.T.Translate("songs_mode/song_folders/filter_all/@caption") + " )", _
		  "( " + App.T.Translate("/songs_mode/song_folders/filter_main/@caption") + " )"
		  
		  Splash.SetStatus App.T.Translate("load_data/folders") + "..."
		  If UBound(Songs.GetFolders(pop_songs_song_folders)) = 0 Then
		  End If
		  
		  Splash.SetStatus App.T.Translate("load_data/songs") + "..."
		  Globals.CurrentSongFolder = SmartML.GetValue(App.MyMainSettings.DocumentElement, "songfolder")
		  If Globals.CurrentSongFolder = "" Then
		    pop_songs_song_folders.ListIndex = 0
		  Else
		    For i = 0 To pop_songs_song_folders.ListCount - 1
		      If Globals.CurrentSongFolder = pop_songs_song_folders.List(i) Then
		        pop_songs_song_folders.ListIndex = i
		        Exit
		      End If
		    Next
		    // Catch the odd case where the directories have changed between runs
		    // (or the language selection affected the (Main) and (All) texts)
		    If pop_songs_song_folders.Text <> Globals.CurrentSongFolder Then
		      pop_songs_song_folders.ListIndex = 0
		      Globals.CurrentSongFolder = pop_songs_song_folders.Text
		    End If
		  End If
		  
		  pop_slide_transition.DeleteAllRows
		  pop_image_transition.DeleteAllRows
		  For i = 1 To UBound(App.TransitionList)
		    pop_slide_transition.AddRow App.TransitionList(i)
		    pop_image_transition.AddRow App.TransitionList(i)
		  Next i
		  
		  
		  Status_ProgramInitialized = False 'The status window will come up otherwise...see LoadSets
		  LoadSets App.DocsFolder.Child("Sets")
		  SongChangesMade = False
		  'Moved the SetMode call down below the initialization of LastSetPane -- if default mode is sets,
		  ' then the initial window came up VERY wrong...  'EMP 1/8/05
		  'SetMode 0
		  
		  Dim controlScreen As Integer
		  controlScreen = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control") - 1
		  If controlScreen < 0 Or controlScreen + 1 > ScreenCount Then controlScreen = 0
		  
		  LastSongPane = 0
		  LastSetPane = 2
		  
		  StartMode = Val(SmartML.GetValue(App.MyMainSettings.DocumentElement,"startmode/@sets")) 'EMP
		  SetMode StartMode
		  
		  Find = New FindClass
		  
		  HSizer = New HalfSizer(Me)
		  
		  HSizer.AddWidth lbl_song_title
		  HSizer.AddWidth edt_song_title
		  HSizer.AddWidth lbl_song_author
		  HSizer.AddWidth edt_song_author
		  HSizer.AddLeftWidth lbl_song_copyright
		  HSizer.AddLeftWidth edt_song_copyright
		  HSizer.AddLeft lbl_song_ccli
		  HSizer.AddLeft edt_song_ccli
		  'Josh
		  HSizer.AddLeftWidth lbl_song_hymn_number , 1, 0'.8, .25
		  HSizer.AddLeftWidth edt_song_hymn_number, 1, 0' .8, .25
		  
		  HSizer.AddLeftWidth lbl_song_presentation
		  HSizer.AddLeftWidth edt_song_presentation
		  
		  HSizer.AddLeftTopWidthHeight can_song_style, .6, 0, .4, .4
		  HSizer.AddLeftTop chk_song_style, .6, .4
		  
		  HSizer.AddTop lbl_song_capo, .4
		  HSizer.AddTop pop_song_capo, .4
		  HSizer.AddTop chk_song_capo_print, .4
		  HSizer.AddTop lbl_song_time_sig, .4
		  HSizer.AddTop pop_song_time_sig, .4
		  HSizer.AddTop lbl_song_tempo, .4
		  HSizer.AddTop pop_song_tempo, .4
		  HSizer.AddTop lbl_song_key, .4
		  HSizer.AddTop edt_song_key, .4
		  HSizer.AddTop lbl_song_aka, .4
		  HSizer.AddTop edt_song_aka, .4
		  HSizer.AddTop lbl_song_key_line, .4
		  HSizer.AddTop edt_song_key_line, .4
		  HSizer.AddTopHeight lbl_song_user1, .4, 0
		  HSizer.AddTopHeight edt_song_user1, .4, .2
		  HSizer.AddTopHeight lbl_song_user2, .6, 0
		  HSizer.AddTopHeight edt_song_user2, .6, .2
		  HSizer.AddTopHeight lbl_song_user3, .8, 0
		  HSizer.AddTopHeight edt_song_user3, .8, .2
		  
		  HSizer.AddLeftWidth lbl_slide_title, 0, .4
		  HSizer.AddLeftWidth edt_slide_title, 0, .4
		  HSizer.AddLeftWidth lbl_slide_subtitle, .4, .3
		  HSizer.AddLeftWidth edt_slide_subtitle, .4, .3
		  HSizer.AddLeftWidth lbl_slide_name, .7, .3
		  HSizer.AddLeftWidth edt_slide_name, .7, .3
		  
		  HSizer.AddLeftWidth lbl_image_title, 0, .4
		  HSizer.AddLeftWidth edt_image_title, 0, .4
		  HSizer.AddLeftWidth lbl_image_subtitle, .4, .3
		  HSizer.AddLeftWidth edt_image_subtitle, .4, .3
		  HSizer.AddLeftWidth chk_image_descriptions, .4, .3
		  HSizer.AddLeftWidth lbl_image_name, .7, .3
		  HSizer.AddLeftWidth edt_image_name, .7, .3
		  
		  '++JRC Fixed I also moved the control down a little
		  HSizer.AddLeftTop can_style_style, .5, 0
		  '--JRC
		  
		  TranslateMe
		  
		  App.MaximizeInControlScreen Me
		  
		  Profiler.EndProfilerEntry
		  Splash.SetStatus App.T.Translate("welcome")
		  Splash.SlowClose
		  Me.Visible = True
		  Select Case StartMode
		  Case 0 // Songs
		    lst_songs_songs.SetFocus
		  Case 1 // Sets
		    pop_sets_sets.SetFocus
		  End Select
		  App.DebugWriter.Write "MainWindow.Open: Exit"
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics)
		  ' left side
		  g.ForeColor = DarkBevelColor
		  g.FillOval 3, 9, 2, 2
		  g.FillOval 3, 14, 2, 2
		  g.FillOval 3, 19, 2, 2
		  g.ForeColor = LightBevelColor
		  g.FillOval 4, 10, 2, 2
		  g.FillOval 4, 15, 2, 2
		  g.FillOval 4, 20, 2, 2
		  
		  ' right side
		  g.ForeColor = DarkBevelColor
		  g.FillOval g.Width-6, 9, 2, 2
		  g.FillOval g.Width-6, 14, 2, 2
		  g.FillOval g.Width-6, 19, 2, 2
		  g.ForeColor = LightBevelColor
		  g.FillOval g.Width-5, 10, 2, 2
		  g.FillOval g.Width-5, 15, 2, 2
		  g.FillOval g.Width-5, 20, 2, 2
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  If HSizer <> Nil Then HSizer.Resize
		  Refresh True' False
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  'Dim NewLeft As Integer
		  If HSizer <> Nil Then HSizer.Resize
		  'NewLeft = edt_song_ccli.Left + edt_song_ccli.Width + 15
		  'edt_song_presentation.Left = NewLeft
		  'lbl_song_presentation.Left = NewLeft
		  'edt_song_presentation.Width = edt_song_copyright.Width - _
		  '(NewLeft - edt_song_copyright.Left)
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function mnu_edit_find() As Boolean Handles mnu_edit_find.Action
			Find
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_edit_find_next() As Boolean Handles mnu_edit_find_next.Action
			FindNext
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_file_dual_screen() As Boolean Handles mnu_file_dual_screen.Action
			#If TargetLinux
			If (Screen(0).Width /2) > Screen(0).Height Then
			If pge_controls.Value = 0 Then
			ActionSongPresent PresentWindow.MODE_LINUX_DUAL_SCREEN
			Else
			ActionSetPresent PresentWindow.MODE_LINUX_DUAL_SCREEN
			End If
			End If
			#endif
			
			If ScreenCount = 1 Then
			InputBox.Message App.T.Translate("errors/no_multi_screen")
			Return True
			End If
			
			If pge_controls.Value = 0 Then
			ActionSongPresent PresentWindow.MODE_DUAL_SCREEN
			Else
			ActionSetPresent PresentWindow.MODE_DUAL_SCREEN
			End If
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_file_new() As Boolean Handles mnu_file_new.Action
			If pge_controls.Value = 0 Then
			ActionSongNew
			Else
			ActionSetNew
			End If
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_file_pagesetup() As Boolean Handles mnu_file_pagesetup.Action
			//++
			// Handler for Print Setup
			//
			// Get page data from either
			//     (a) Margins defined in PrintSettingsWindow
			//     (b) Previously store PrinterSetup object
			//
			// Ed Palmer, 01/06
			//
			Dim ps As PrinterSetup
			
			ps = App.GetPrinterSetup(True, Self)
			'Dim SetupString As String
			'
			'// Is there a valid PrinterSetup in the App?
			'
			'If App.PrinterSettings = Nil Then
			'
			'App.PrinterSettings = New PrinterSetup
			'
			'// Check for an existing setup string first
			'
			'SetupString = DecodeBase64(SmartML.GetValue(App.MyPrintSettings.DocumentElement, "printersetup", False))
			'If SetupString <> "" Then
			'// Build the PrinterSetup object
			'App.PrinterSettings.SetupString = SetupString
			'Else
			'// Default it to max resolution
			'App.PrinterSettings.MaxHorizontalResolution = -1
			'App.PrinterSettings.MaxVerticalResolution = -1
			'End If
			'
			'End If
			'// Present the setup dialog
			'
			'If App.PrinterSettings.PageSetupDialog Then
			'SmartML.SetValue(App.MyPrintSettings.DocumentElement, "printersetup", EncodeBase64(App.PrinterSettings.SetupString))
			'End If
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_file_preview_dual_screen() As Boolean Handles mnu_file_preview_dual_screen.Action
			If pge_controls.Value = 0 Then
			ActionSongPresent PresentWindow.MODE_PREVIEW
			Else
			ActionSetPresent PresentWindow.MODE_PREVIEW
			End If
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_file_print() As Boolean Handles mnu_file_print.Action
			If pge_controls.Value = 0 Then
			ActionSongPrint
			Else
			ActionSetPrintList
			End If
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_file_print_alphabetical_toc() As Boolean Handles mnu_file_print_alphabetical_toc.Action
			//
			// Worked over to reflect report object model introduced in V1.0Beta2
			//
			// Ed Palmer, February 2006
			//
			Dim i As Integer
			Dim AlphaTOC As New AlphaTOCReport
			
			App.DebugWriter.Write "MainWindow.mnu_file_print_alphabetical_toc.Action: Enter"
			
			If lst_songs_songs.ListCount = 0 Then
			InputBox.Message App.T.Translate("errors/no_songs")
			Return False
			End If
			
			//++
			// Feature request 1528693: require confirmation
			//--
			If Not InputBox.AskYN(App.T.Translate("questions/long_operation/@caption")) Then Return False
			
			If Not AlphaTOC.Setup Then Return False
			
			For i = 0 To lst_songs_songs.ListCount - 1
			AlphaTOC.AddItem lst_songs_songs.List(i)
			Next i
			
			If Not AlphaTOC.Prepare Then
			InputBox.Message App.T.Translate("errors/internal") + EndOfLine +_
			"MainWindow, Print Alphabetical TOC, Prepare failed"
			App.DebugWriter.Write "MainWindow.mnu_file_print_alphabetical_toc.Action: " +_
			"AlphaTOCReport.PrepareReport returned False", 1
			Return True
			End If
			
			If Not AlphaTOC.Generate Then
			InputBox.Message App.T.Translate("errors/internal") + EndOfLine +_
			"MainWindow, Print Alphabetical TOC, Generate failed"
			App.DebugWriter.Write "MainWindow.mnu_file_print_alphabetical_toc.Action: " +_
			"AlphaTOCReport.Generate returned False", 1
			Return True
			End If
			
			PrintWindow.SetReport AlphaTOC
			PrintWindow.Left = Self.Left + 20
			PrintWindow.Top = Self.Top + 20
			PrintWindow.Width = Self.Width - 40
			PrintWindow.Height = Self.Height - 40
			PrintWindow.ShowModalWithin Self
			App.DebugWriter.Write "MainWindow.mnu_file_print_alphabetical_toc.Action: Exit"
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_file_print_categorical_toc() As Boolean Handles mnu_file_print_categorical_toc.Action
			//
			// Worked over to reflect report object model introduced in V1.0Beta2
			//
			// Ed Palmer, February 2006
			//
			Dim i As Integer
			Dim CatTOC As New CategoryTOCReport
			
			App.DebugWriter.Write "MainWindow.mnu_file_print_categorical_toc.Action: Enter"
			
			If lst_songs_songs.ListCount = 0 Then
			InputBox.Message App.T.Translate("errors/no_songs")
			Return False
			End If
			
			//++
			// Feature request 1528693: require confirmation
			//--
			If Not InputBox.AskYN(App.T.Translate("questions/long_operation/@caption")) Then Return False
			
			If Not CatTOC.Setup Then Return False
			
			For i = 0 To lst_songs_songs.ListCount - 1
			CatTOC.AddSong lst_songs_songs.List(i)
			Next i
			
			If Not CatTOC.Prepare Then
			InputBox.Message App.T.Translate("errors/internal") + EndOfLine +_
			"MainWindow, Print Categorical TOC, Prepare failed"
			App.DebugWriter.Write "MainWindow.mnu_file_print_categorical_toc.Action: " +_
			"CategoryTOCReport.Prepare returned False", 1
			Return True
			End If
			
			If Not CatTOC.Generate Then
			InputBox.Message App.T.Translate("errors/internal") + EndOfLine +_
			"MainWindow, Print Categorical TOC, Generate failed"
			App.DebugWriter.Write "MainWindow.mnu_file_print_categorical_toc.Action: " +_
			"CategoryTOCReport.Generate returned False", 1
			Return True
			End If
			
			PrintWindow.SetReport CatTOC
			PrintWindow.Left = Self.Left + 20
			PrintWindow.Top = Self.Top + 20
			PrintWindow.Width = Self.Width - 40
			PrintWindow.Height = Self.Height - 40
			PrintWindow.ShowModalWithin Self
			App.DebugWriter.Write "MainWindow.mnu_file_print_categorical_toc.Action: Exit"
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_file_save() As Boolean Handles mnu_file_save.Action
			If pge_controls.Value = 0 Then
			If Status_SongChanged Then ActionSongSave
			Else
			If Status_SetChanged Then ActionSetSave
			End If
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_file_scripture() As Boolean Handles mnu_file_scripture.Action
			ActionSetAddScripture
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_file_single_screen() As Boolean Handles mnu_file_single_screen.Action
			If pge_controls.Value = 0 Then
			ActionSongPresent PresentWindow.MODE_SINGLE_SCREEN
			Else
			ActionSetPresent PresentWindow.MODE_SINGLE_SCREEN
			End If
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_file_song_act() As Boolean Handles mnu_file_song_act.Action
			saWin = New SongActivity
			saWin.ActLog = Globals.SongActivityLog
			saWin.FromFile = false
			saWin.RefreshList
			saWin.btn_act_merge.Enabled = false
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_help_about() As Boolean Handles mnu_help_about.Action
			AboutWindow.ShowModalWithin Self
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_help_help_topics() As Boolean Handles mnu_help_help_topics.Action
			HelpWindow.ShowModalWithin Self
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_help_translating() As Boolean Handles mnu_help_translating.Action
			InputBox.Message App.T.Translate("about/translating")
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_help_user_manual() As Boolean Handles mnu_help_user_manual.Action
			ShowURL "http://www.opensong.org/d/manual"
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_mode_sets() As Boolean Handles mnu_mode_sets.Action
			SetMode 1
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_mode_songs() As Boolean Handles mnu_mode_songs.Action
			SetMode 0
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_settings_general() As Boolean Handles mnu_settings_general.Action
			MainSettingsWindow.ShowModalWithin MainWindow
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_settings_install_module() As Boolean Handles mnu_settings_install_module.Action
			
			Dim file As FolderItem
			Dim XMM As New FileType
			
			Dim newBible As Bible
			
			'++JRC Fixed GetOpenFolderItem was not being called correctly
			XMM.Name = App.T.Translate("module/file_type")
			XMM.Extensions = "xmm"
			XMM.MacType = "XMM"
			
			file = GetOpenFolderItem(XMM)
			
			If file = Nil Then Return False
			
			Dim toChild As String
			
			Dim xfile As XmlDocument
			App.MouseCursor = System.Cursors.Wait
			xfile = SmartML.XDocFromFile(file)
			App.MouseCursor = Nil
			If xfile = Nil Then
			InputBox.Message App.T.Translate("module/read_error")
			Return False
			End If
			
			If xfile.DocumentElement.Name = "bible" Then
			toChild = "OpenSong Scripture"
			ElseIf xfile.DocumentElement.Name = "language" Then
			toChild = "OpenSong Languages"
			Else
			InputBox.Message App.T.Translate("module/format_error")
			Return False
			End If
			
			file.MoveFileTo App.AppFolder.Child(toChild)
			If file.LastErrorCode <> 0 Then
			InputBox.Message App.T.Translate("module/move_error", App.AppFolder.Child(toChild).AbsolutePath) + " (" + Str(file.LastErrorCode) + ")"
			Return False
			End If
			file = App.AppFolder.Child(toChild).Child(file.Name)
			If file = Nil Then
			InputBox.Message App.T.Translate("module/move_error", App.AppFolder.Child(toChild).AbsolutePath) + " (0)"
			Return False
			End If
			
			If InStr(file.Name, ".") > 0 Then file.Name = Left(file.Name, StringUtils.InStrReverse(file.Name, ".") - 1)
			If file.LastErrorCode <> 0 Then
			InputBox.Message App.T.Translate("module/rename_error", App.AppFolder.Child(toChild).AbsolutePath)
			Return False
			End If
			
			//++
			// If a Bible, offer to generate the index now.
			//--
			If xfile.DocumentElement.Name = "bible" Then
			If InputBox.AskYN(App.T.Translate("module/generate_index")) Then
			newBible = New Bible
			App.MouseCursor = System.Cursors.Wait
			If Not newBible.LoadBible(file) Then
			App.MouseCursor = Nil
			InputBox.Message(App.T.Translate("module/generate_error", file.AbsolutePath))
			Return True
			End If
			End If
			End If
			App.MouseCursor = Nil
			InputBox.Message App.T.Translate("module/success")
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_settings_presentation() As Boolean Handles mnu_settings_presentation.Action
			PresentSettingsWindow.ShowModalWithin MainWindow
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_settings_print() As Boolean Handles mnu_settings_print.Action
			PrintSettingsWindow.ShowModalWithin MainWindow
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_settings_refresh_sets() As Boolean Handles mnu_settings_refresh_sets.Action
			If Not ActionSetAskSave Then Return True
			
			LoadSets App.DocsFolder.Child("Sets")
			
			lst_set_items.DeleteAllRows
			pop_sets_sets.ListIndex = 0
			EnableMenuItems
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnu_settings_refresh_songs() As Boolean Handles mnu_settings_refresh_songs.Action
			'Ask if user wants to save
			If NOT ActionSongAskSave Then Return True 'User Canceled
			
			App.MouseCursor = System.Cursors.Wait
			Status_SongOpen = False
			Status_SongChanged = False
			Globals.OldFolderSel = -1 // If this isn't invalidated, the list box doesn't get rebuilt unless we are on a child folder
			If Not Songs.RefreshCache Then
			InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", App.DocsFolder.Child("Songs").AbsolutePath)
			End If
			If UBound(Songs.GetFolders(pop_songs_song_folders)) = 0 Then
			End If
			pop_songs_song_folders.ListIndex = 0
			EnableMenuItems
			App.MouseCursor = Nil
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h1
		Protected Function ActionInSetAskSave() As Boolean
		  //
		  // Check to see if the current set has been changed
		  // if so, give the user a chance to save it before continuing
		  // with an action that will throw away the changes
		  //
		  // JRC 1/27/2007
		  'Changed to return whether the user canceled or not
		  ' EMP 12/06: Move guts of doing the message dialog to a utility method
		  ' so it can be reused by sets mode and other areas.
		  ' EMP 18 Sep 2007: Make certain the InSetItem is valid
		  '     because this may have been triggered by lst_set_items.DeleteAllItems
		  
		  If Status_InSetChanged And (CurrentInSetItem < lst_set_items.ListCount) Then
		    '++JRC
		    Select Case SaveDialog( App.T.Translate("questions/save/@caption", lst_set_items.Cell(CurrentInSetItem, 0)))
		    Case 1
		      'User pressed Yes, so save
		      ActionInSetSave
		    Case 0
		      //++EMP:
		      // Don't reset the modified flag, otherwise the user could select not to save,
		      // change his mind, and then have no way to save changes (Save doesn't enable
		      // unless the SongChanged flag is True).  Set Status_MadUser = True
		      //
		    Case -1
		      'user pressed Cancel, go back
		      Return False
		    End Select
		    '--
		  End If
		  
		  'Return True, meaning user wants to continue with/without saving
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionInSetCopy()
		  '++gerritp
		  Dim xgroups, oldGroup, newGroup As XmlNode
		  'Ask if user wants to save
		  If NOT ActionInSetAskSave Then Return 'User Canceled
		  
		  xgroups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  oldGroup = xgroups.Child(lst_set_items.ListIndex)
		  
		  'newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListIndex + 1)
		  'lst_set_items.InsertRow lst_set_items.ListIndex + 1, lst_set_items.List(lst_set_items.ListIndex)
		  
		  'SmartML.CloneChildren oldGroup, newGroup
		  'SmartML.CloneAttributes oldGroup, newGroup
		  
		  'Status_SetChanged = True
		  'lst_set_items.ListIndex = lst_set_items.ListIndex + 1
		  
		  Dim c As New Clipboard
		  
		  c.SetText oldGroup.ToString
		  c.close
		  '--
		  '++JRC Refresh
		  EnableMenuItems
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionInSetPaste()
		  '++gerritp
		  Dim xgroups, oldGroup, newGroup As XmlNode
		  dim xml as XmlDocument
		  'Ask if user wants to save
		  If NOT ActionInSetAskSave Then Return 'User Canceled
		  
		  Dim c As New Clipboard
		  if not(c.TextAvailable) then return
		  if Left(c.text,12) <> "<slide_group" then return
		  xml = SmartML.XDocFromString(c.text)
		  c.close
		  xgroups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  oldGroup = xml.FirstChild
		  
		  newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListIndex + 1)
		  
		  '++JRC Show slidetype on pasted set item
		  Dim SlideType As String
		  slideType = App.T.Translate("sets_mode/items/" + SmartML.GetValue(oldgroup , "@type", True) + "/@caption")
		  If slideType = "" Then // unknown slide type
		    App.DebugWriter.Write "MainWindow.pop_sets_sets.Change: Unknown slide type '" + SmartML.GetValue(oldgroup , "@type", True) + "/@caption" + "'", 1
		    slideType = "*ERROR*"
		  End If
		  lst_set_items.InsertRow lst_set_items.ListIndex + 1, SmartML.GetValue(oldgroup , "@name", True) + " " + slideType
		  
		  
		  
		  SmartML.CloneChildren oldGroup, newGroup
		  SmartML.CloneAttributes oldGroup, newGroup
		  
		  Status_SetChanged = True
		  
		  lst_set_items.ListIndex = lst_set_items.ListIndex + 1
		  '--
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionInSetRemove(autoDetectDeleteTarget As Boolean)
		  Dim xslides As XmlNodeList
		  Dim slide_groups As XmlNode
		  Dim listindex As Integer
		  
		  'gp if in a lst_images only delete the selected picture, not the whole slide.
		  If autoDetectDeleteTarget = True And pge_contents.value = 4 And lst_image_images.HasFocus() Then
		    If lst_image_images.ListIndex > -1 Then
		      lst_image_images.RemoveRow( lst_image_images.ListIndex )
		      Status_InSetChanged = True
		    end if
		  else
		    listindex = lst_set_items.ListIndex
		    If listindex > -1 Then
		      slide_groups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		      slide_groups.RemoveChild slide_groups.Child(listindex)
		      '++JRC Prevent OutofBounds Exception
		      Status_InSetChanged = False
		      '--
		      '++JRC Fix issue where Currently selected  Set Item was not updating after removing an item from set list
		      CurrentInSetItem = -2
		      '--
		      lst_set_items.RemoveRow listindex
		      If listindex < lst_set_items.ListCount Then
		        lst_set_items.ListIndex = listindex
		      ElseIf listindex = lst_set_items.ListCount Then
		        lst_set_items.ListIndex = listindex - 1
		      End If
		      
		      Status_SetChanged = True
		    End If
		  end if
		  
		  EnableMenuItems
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionInSetSave()
		  Dim i, j As Integer
		  Dim line, str As String
		  Dim xgroup, xslides, xslide As XmlNode
		  Dim bodies() As String
		  Dim img As StyleImage
		  
		  If Not Status_InSetChanged then return
		  
		  xgroup = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True).Child(CurrentInSetItem)
		  
		  Select Case SmartML.GetValue(xgroup, "@type")
		    
		  Case "song"
		    SmartML.SetValue xgroup, "@presentation", edt_slide_order.Text
		    SmartML.SetValueN xgroup, "@transition", pop_slide_transition.ListIndex
		    
		  Case "image"
		    SmartML.SetValue xgroup, "@name", edt_image_name.Text
		    SmartML.SetValue xgroup, "title", edt_image_title.Text
		    SmartML.SetValue xgroup, "subtitle", edt_image_subtitle.Text
		    SmartML.SetValueB xgroup, "@descriptions_in_subtitle", chk_image_descriptions.Value
		    SmartML.SetValue xgroup, "notes", edt_image_notes.Text
		    SmartML.SetValueN xgroup, "@seconds", Val(edt_image_auto_advance.Text)
		    SmartML.SetValueB xgroup, "@loop", chk_image_loop.Value
		    SmartML.SetValueB xgroup, "@print", chk_image_print.Value
		    SmartML.SetValueN xgroup, "@transition", pop_image_transition.ListIndex
		    
		    If chk_image_fit_to_screen.Value Then
		      SmartML.SetValue xgroup, "@resize", "screen"
		    ElseIf chk_image_fit_to_body.Value Then
		      SmartML.SetValue xgroup, "@resize", "body"
		    Else
		      SmartML.SetValue xgroup, "@resize", ""
		    End If
		    SmartML.SetValueB xgroup, "@keep_aspect", chk_image_keepaspect.Value
		    SmartML.SetValueB xgroup, "@link", chk_image_store_as_link.Value
		    
		    ' Delete the old slides
		    xslides = SmartML.GetNode(xgroup, "slides", False)
		    If xslides <> Nil Then xgroup.RemoveChild xslides
		    
		    ' Create the new slides
		    xslides = xgroup.AppendChild(CurrentSet.CreateElement("slides"))
		    str = edt_slide_slides.Text
		    For i = 0 To lst_image_images.ListCount()-1
		      xslide = xslides.AppendChild(CurrentSet.CreateElement("slide"))
		      img = lst_image_images.GetImage( i )
		      If chk_image_store_as_link.Value And img.GetImageFilename()<>"" Then
		        
		        If img.GetImageFilename().StartsWith(App.DocsFolder.Child("Backgrounds").AbsolutePath) And App.ExcludeBackgroundsImages() Then
		          SmartML.SetValue xslide, "filename", img.GetImageFilename().Mid(App.DocsFolder.Child("Backgrounds").AbsolutePath().Len()+1)
		        Else
		          SmartML.SetValue xslide, "filename", img.GetImageFilename()
		        End If
		      Else
		        SmartML.SetValue xslide, "image", img.GetImageAsString
		      End If
		      SmartML.SetValue xslide, "description", lst_image_images.Cell( i, 1 )
		    Next i
		    
		    can_image_style.PreviewSlide = SmartML.GetNode(xgroup, "slides/slide")
		    lst_set_items.List(CurrentInSetItem) = edt_image_name.Text + " " + App.T.Translate("sets_mode/items/" + SmartML.GetValue(xgroup, "@type") + "/@caption")
		  Case "style"
		    
		  Case Else
		    str = LTrim(edt_slide_slides.Text.FormatUnixEndOfLine)
		    bodies = OpenSongUtils.SplitRE(str, "^---$")
		    ' Set the title and sub-title
		    SmartML.SetValue xgroup, "@name", edt_slide_name.Text
		    SmartML.SetValue xgroup, "title", edt_slide_title.Text
		    SmartML.SetValue xgroup, "subtitle", edt_slide_subtitle.Text
		    SmartML.SetValue xgroup, "notes", edt_slide_notes.Text
		    SmartML.SetValueN xgroup, "@seconds", Val(edt_slide_auto_advance.Text)
		    SmartML.SetValueB xgroup, "@loop", chk_slide_loop.Value
		    SmartML.SetValueB xgroup, "@print", chk_slide_print.Value
		    SmartML.SetValueN xgroup, "@transition", pop_slide_transition.ListIndex
		    
		    ' Delete the old slides
		    xslides = SmartML.GetNode(xgroup, "slides", False)
		    If xslides <> Nil Then xgroup.RemoveChild xslides
		    
		    ' Create the new slides
		    xslides = xgroup.AppendChild(CurrentSet.CreateElement("slides"))
		    str = edt_slide_slides.Text
		    For i = 0 To UBound(bodies)
		      xslide = xslides.AppendChild(CurrentSet.CreateElement("slide"))
		      SmartML.SetValue xslide, "body", Trim(bodies(i))
		    Next i
		    
		    lst_set_items.List(CurrentInSetItem) = edt_slide_name.Text + " (" + SmartML.GetValue(xgroup, "@type", True) + ")"
		  End Select
		  Status_InSetChanged = False
		  EnableMenuItems
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSetAddScripture()
		  Dim w As ScripturePickerWindow
		  
		  Dim c As ScripturePickerController
		  
		  If Not ActionInSetAskSave Then Return
		  
		  c = New ScripturePickerController
		  c.registerScriptureReceiver Self
		  
		  'Only enable 'Add' button if in Sets mode AND a set is currently open
		  If Status_CurrentMode = 1 And Status_SetOpen Then
		    w = New ScripturePickerWindow(c, True)
		  Else
		    w = New ScripturePickerWindow(c, False)
		  End If
		  
		  w.ShowModal
		  c.unregisterScriptureReceiver Self
		  w = Nil
		  c = Nil
		  
		  If Status_SetOpen Then lst_set_items.SetFocus
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ActionSetAskSave() As Boolean
		  //
		  // Check to see if the current set has been changed
		  // if so, give the user a chance to save it before continuing
		  // with an action that will throw away the changes
		  //
		  // JRC 1/27/2007
		  'Changed to return whether the user canceled or not
		  ' EMP 12/06: Move guts of doing the message dialog to a utility method
		  ' so it can be reused by sets mode and other areas.
		  
		  If Status_SetChanged then
		    '++JRC
		    Select Case SaveDialog(App.T.Translate("questions/set_changed/@caption"))
		    Case 1
		      'User pressed Yes, so save
		      ActionInSetSave
		      ActionSetSave
		    Case 0
		      '++JRC Check if the App is Closing, if it is we don't need to reload
		      If Status_Closing Then Return True 'Continue closing
		      
		      If SmartML.GetValueB(App.MyMainSettings.DocumentElement, "set_revert_on_dont_save", False, True) Then
		        //++
		        // Revert the entire set to the last saved version
		        //--
		        CurrentSet = Nil
		        CurrentSet = New XmlDocument
		        CurrentSet.AppendChild CurrentSet.ImportNode(TempSet.DocumentElement, True)
		        Status_SetChanged = False
		        Status_InSetChanged = False
		        lst_set_items.ListIndex = lst_set_items.ListIndex // Reload the active item
		      End If
		    Case -1
		      'user pressed Cancel, go back
		      Return False
		    End Select
		    '--
		  End If
		  
		  'Return True, meaning user wants to continue with/without saving
		  Return True
		  
		  'Old Function
		  'Dim Msg as MessageDialog
		  
		  'if Status_SetChanged then
		  'msg = new MessageDialog
		  'msg.Message = App.T.Translate("questions/save/@caption", CurrentSetName)
		  'msg.Title = App.T.Translate("sets_mode/current_set/save/@caption")
		  'msg.Icon = 3'question
		  'msg.ActionButton.Caption = App.T.Translate("shared/yes/@caption")
		  'msg.CancelButton.Caption = App.T.Translate("shared/no/@caption")
		  'Msg.CancelButton.Visible = true
		  'if msg.ShowModal = msg.ActionButton then
		  'ActionInSetSave
		  'ActionSetSave
		  'end if
		  'end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSetExport()
		  // 1.2: Add code to put the songs in a folder name Songs, and set goes into Sets
		  //TODO:
		  // Break the copying out in to another function that takes the base folder, array of folderitems and target folder as parameters for use in the import
		  // Instead of using folderDelimiter use the parent fodler method to find the target directories that need to be built.
		  
		  'Ask if user wants to save
		  If NOT ActionSetAskSave Then Return 'User Canceled
		  
		  //Getting the targetFolderPath from user
		  dim targetFolderPath as String
		  dim targetFolder, targetFile As FolderItem
		  Dim setFolder, songFolder As FolderItem
		  Dim dlg As New SelectFolderDialog
		  
		  targetFolder = App.MainPreferences.GetValueFI(Prefs.kSetsLastExportFolder)
		  While Not (targetFolder Is Nil)
		    dlg.InitialDirectory = targetFolder
		    If targetFolder.Exists Then Exit
		    targetFolder = targetFolder.Parent
		  Wend
		  
		  '++JRC Translate dialog
		  dlg.ActionButtonCaption = App.T.Translate("shared/ok/@caption")
		  dlg.CancelButtonCaption = App.T.Translate("shared/cancel/@caption")
		  dlg.PromptText = App.T.Translate("shared/export_to/@caption")
		  dlg.Title = App.T.Translate("shared/browse_for/@caption")
		  '--
		  If targetFolder Is Nil Then dlg.InitialDirectory = App.AppDocumentsFolder
		  targetFolder = dlg.ShowModal
		  If targetFolder = Nil Then Return// User cancelled
		  
		  App.MainPreferences.SetValueFI(Prefs.kSetsLastExportFolder, targetFolder)
		  
		  targetFolderPath = targetFolder.AbsolutePath
		  
		  if not targetFolder.Exists then
		    return
		  end if
		  
		  songFolder = targetFolder.Child("Songs")
		  setFolder = targetFolder.Child("Sets")
		  
		  If Not songFolder.Exists Then
		    If Not FileUtils.CreateFolder(songFolder) Then
		      InputBox.Message songFolder.AbsolutePath + ": " + EndOfLine + FileUtils.LastError
		      Return
		    End If
		  End If
		  
		  If Not setFolder.Exists Then
		    If Not FileUtils.CreateFolder(setFolder) Then
		      InputBox.Message setFolder.AbsolutePath + ": " + EndOfLine + FileUtils.LastError
		      Return
		    End If
		  End If
		  
		  //Start of the calculation and copying bit
		  App.MouseCursor = System.Cursors.Wait
		  Dim f, songFile, setFile As FolderItem
		  Dim SongPath As String
		  Dim AbsFiles(0) As FolderItem
		  Dim RelFiles(0) As String
		  Dim i As Integer
		  
		  // Get path for current set
		  // Should be setFile = CurrentSet.GetFolderItem
		  dim att as XMLattribute
		  try
		    att = CurrentSet.documentElement.GetAttributeNode("name")
		  catch err as XMLexception
		    i = msgbox(err.Message, 48, "ActionSetExport Could not find set name")
		    return
		  end try
		  if att = Nil then
		    CurrentSet.documentElement.SetAttribute("name",CurrentSetName)
		  end if
		  
		  setFile = App.DocsFolder.Child("Sets").Child(CurrentSetName)
		  AbsFiles.append(setFile)
		  
		  //Append the FolderItem used in each SlideGroup to AbsFiles
		  //Should be a call to CurrentSet.GetChildFolderItems
		  Dim setDoc As New XmlDocument
		  Dim slide_group, slide_groups, temp As XmlNode
		  
		  setDoc.AppendChild setDoc.ImportNode(CurrentSet.DocumentElement, True)
		  
		  slide_groups = SmartML.GetNode(setDoc.DocumentElement, "slide_groups", True)
		  slide_group = slide_groups.FirstChild
		  While slide_group <> Nil
		    songFile = Nil
		    // get paths for the individual slide groups
		    //Should be a call to SlideGroup.GetChildFolderItems
		    If SmartML.GetValue(slide_group, "@type", True) = "song" Then
		      SongPath = SmartML.GetValue(slide_group, "@path", False)
		      If SongPath <> "" Then
		        SongPath = SongPath + SmartML.GetValue(slide_group, "@name")
		      Else
		        SongPath = SmartML.GetValue(slide_group, "@name")
		      End If
		      f = Songs.GetFile(SongPath)
		      If f = Nil Then
		        InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", SmartML.GetValue(slide_group, "@name", True))
		      Else
		        RelFiles.Append(SongPath)
		        AbsFiles.append(f)
		      End If
		    End If
		    slide_group  = slide_group.NextSibling
		  Wend
		  
		  //TODO: get any other set wide files
		  
		  //Copy the files to the target
		  If UBound(AbsFiles) <= 0 Then Return // Nothing to do
		  dim fileCount As Integer
		  fileCount = UBound(RelFiles)
		  
		  dim relativePath, targetPath, currentPath as String
		  dim sourcePathPartCount, j As Integer
		  dim currentFolderItem As FolderItem
		  dim sourcePathParts() As String
		  dim folderDelimiter As String
		  
		  folderDelimiter = FileUtils.AbsolutePathSeparator()
		  For i = 1 To fileCount
		    //Split the path up and create each folder if needed
		    targetPath = RelFiles(i)
		    sourcePathParts = Split(RelFiles(i), "/")
		    sourcePathPartCount = UBound(sourcePathParts) - 1
		    currentFolderItem = songFolder
		    For j = 0 To sourcePathPartCount
		      If Not currentFolderItem.Child(sourcePathParts(j)).Exists Then
		        If Not FileUtils.CreateFolder(currentFolderItem.Child(sourcePathParts(j))) Then
		          InputBox.Message FileUtils.LastError
		          Return
		        End If
		      End If
		      currentFolderItem = currentFolderItem.Child(sourcePathParts(j))
		    Next
		    targetFile = FileUtils.RelativePathToFolderItem(songFolder, targetPath)
		    
		    //Create or delete the actual file.
		    currentFolderItem = Songs.GetFile(RelFiles(i))
		    if not IsNull(targetFile) then
		      App.DebugWriter.Write("targetFile At " + targetFile.AbsolutePath, 1)
		      If Not FileUtils.CopyFile(currentFolderItem, targetFile, FileUtils.kOverwriteNewer) Then
		        InputBox.Message FileUtils.LastError
		      End If
		      targetFile.ModificationDate = currentFolderItem.ModificationDate
		      targetFile.CreationDate = currentFolderItem.CreationDate
		    End If
		  Next
		  
		  //Add the default styles to the copied set
		  Dim copyset As XmlDocument
		  Dim xgroups, newGroup, xnode As XmlNode
		  copyset = SmartML.XDocFromFile(AbsFiles(1))
		  xgroups = SmartML.GetNode(copyset.DocumentElement, "slide_groups", True)
		  
		  //Insert the default style yeah i know this should be a method but it seems like a lot of effort.
		  newGroup = SmartML.InsertChild(xgroups, "slide_group", 0)
		  xnode = SmartML.GetNode(newGroup, "style", True)
		  SongML.CloneStyle SmartML.GetNode(App.MyPresentSettings.DocumentElement, "default_style"), xnode
		  SmartML.SetValue newGroup, "@type", "style"
		  SmartML.SetValue newGroup, "@action", "new"
		  SmartML.SetValue newGroup, "@name", App.T.Translate("sets_mode/items/defaultstyle")
		  
		  If Not SmartML.XDocToFile(copyset, setFolder.Child(absfiles(1).Name)) Then
		    App.MouseCursor = Nil
		    SmartML.DisplayError
		    Return
		  End If
		  
		  App.MouseCursor = nil
		  InputBox.Message(App.T.Translate("sets_mode/messages/export_complete", absfiles(1).Name, _
		  targetFolder.FormatFolderName(50)))
		  return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSetNew()
		  Dim t as String
		  Dim out As TextOutputStream
		  Dim f as FolderItem
		  Dim i As Integer
		  
		  'Ask if user wants to save
		  If NOT ActionSetAskSave Then Return 'User Canceled
		  
		  t = InputBox.Input(App.T.Translate("questions/new_name/@caption"), "")
		  If Len(t) > 0 Then
		    If Not FileUtils.IsSafeFileName(t) Then
		      InputBox.Message App.T.Translate("errors/bad_file_name", t)
		      Return
		    End If
		    
		    f = App.DocsFolder.Child("Sets").Child(t)
		    If f.Exists Then
		      InputBox.Message App.T.Translate("errors/already_exists", f.AbsolutePath)
		      Return
		    End If
		    
		    CurrentSet = New XmlDocument
		    CurrentSet.AppendChild CurrentSet.CreateElement("set")
		    
		    CurrentSet.DocumentElement.SetAttribute("name",t)
		    '++JRC Save backup copy
		    TempSet = New XmlDocument
		    TempSet.AppendChild TempSet.ImportNode(CurrentSet.DocumentElement, True)
		    '--
		    CurrentSetName = t
		    
		    If Not SmartML.XDocToFile(CurrentSet, f) Then
		      SmartML.DisplayError
		      Return
		    End If
		    
		    i = 0
		    While i < pop_sets_sets.ListCount And StringUtils.CompareHymnBookOrder(t, pop_sets_sets.List(i)) = 1
		      i = i + 1
		    Wend
		    
		    pop_sets_sets.InsertRow i, t
		    
		    Status_SetOpen = True
		    Status_SetChanged = False
		    Status_InSetOpen = False
		    Status_InSetChanged = False
		    
		    pop_sets_sets.ListIndex = i
		    
		    EnableMenuItems
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSetPresent(mode As Integer, ItemNumber As Integer = 0)
		  Dim i As Integer
		  Dim lastType As String
		  'this is our working copy of the set's XML Doc
		  'not to be confused with any of our other copies
		  'hope the user has losts of RAM eh!
		  Dim setDoc As New XmlDocument
		  Dim slide_groups As XmlNode
		  
		  'Ask if user wants to save
		  If NOT ActionSetAskSave Then Return 'User Canceled
		  
		  setDoc.AppendChild setDoc.ImportNode(CurrentSet.DocumentElement, True)
		  
		  '++JRC Added option to prompt before adding presented songs to the activity log
		  Dim Import As Boolean
		  Import = True
		  
		  'Don't log in preview mode
		  If mode <> PresentWindow.MODE_PREVIEW And App.MainPreferences.GetValueB(App.kActivityLog, True) And Globals.SongActivityLog <> Nil  Then
		    If App.MainPreferences.GetValueB(App.kPromptBeforePresenting, True) Then
		      Import = InputBox.AskYN(App.T.Translate("questions/activity_log/@caption"))
		    End If
		  Else
		    Import =  false
		  End If
		  
		  Globals.AddToLog = Import
		  
		  App.MouseCursor = System.Cursors.Wait
		  
		  ImportSongs setDoc, Import
		  '--
		  
		  If SetML.GetSlide(setDoc, 1) = Nil Then
		    InputBox.Message App.T.Translate("sets_mode/current_set/present/no_slides")
		    Return
		  End If
		  
		  Status_Presentation = True
		  Globals.Status_Presentation = True
		  'Self.Hide
		  
		  'App.MinimizeWindow(Self)
		  PresentWindow.Present setDoc, Mode, ItemNumber
		  
		  '++JRC reset cursor
		  App.MouseCursor = Nil
		  'Me.MouseCursor = Nil
		  '--
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSetPrint()
		  Dim i As Integer
		  Dim foundSong As Boolean = False
		  Dim rpt As LeadSheetReport
		  Dim song As FolderItem
		  Dim xgroup As XmlNode
		  'working copy
		  Dim setDoc As New XmlDocument
		  
		  App.DebugWriter.Write "MainWindow.ActionSetPrint: Enter"
		  
		  'Ask if user wants to save
		  If NOT ActionSetAskSave Then Return 'User Canceled
		  
		  App.MouseCursor = System.Cursors.Wait
		  
		  rpt = New LeadSheetReport
		  If Not rpt.Setup Then
		    '++JRC Reset Mouse Cursor
		    App.MouseCursor = Nil
		    Return // User cancelled
		  End If
		  '--
		  'use our working copy
		  setDoc.AppendChild setDoc.ImportNode(CurrentSet.DocumentElement, True)
		  xgroup = SmartML.GetNode(setDoc.DocumentElement, "slide_groups", True).FirstChild
		  While xgroup <> Nil
		    If SmartML.GetValue(xgroup, "@type") = "song" Then
		      song = Songs.GetFile(SmartML.GetValue(xgroup, "@path") + SmartML.GetValue(xgroup, "@name"))
		      If song <> Nil And song.Exists Then
		        If Not foundSong Then
		          foundSong = True
		        End If
		        rpt.AddSong SmartML.GetValue(xgroup, "@path") + SmartML.GetValue(xgroup, "@name")
		      Else
		        App.MouseCursor = Nil
		        PrintWindow.Hide
		        InputBox.Message App.T.Translate("folderdb_errors/error[@code=8]", SmartML.GetValue(xgroup, "@name"))
		        App.MouseCursor = System.Cursors.Wait
		      End If
		    End If
		    xgroup = xgroup.NextSibling
		  Wend
		  App.MouseCursor = Nil
		  
		  If Not foundSong Then
		    InputBox.Message App.T.Translate("sets_mode/current_set/print_songs/no_songs")
		    Return
		  End If
		  
		  If rpt.Generate Then
		    PrintWindow.SetReport(rpt)
		    PrintWindow.Top = Self.Top + 40
		    PrintWindow.Height = Self.Height - 80
		    PrintWindow.Left = Self.Left + 40
		    PrintWindow.Width = Self.Width - 80
		    PrintWindow.ShowModalWithin Self
		    App.DebugWriter.Write "MainWindow.ActionSongPrint: Return from PrintWindow"
		  End If
		  rpt = Nil
		  App.DebugWriter.Write "MainWindow.ActionSetPrint: Exit"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSetPrintList()
		  //
		  // The 0.9.9 version of this routine has migrated to SetListReport.AddSet
		  //
		  // Print a set list of the current set
		  //
		  // Ed Palmer, February 2006
		  //
		  Dim status As Boolean
		  Dim MySetListReport As SetListReport
		  'working copy
		  Dim setDoc As New XmlDocument
		  
		  App.DebugWriter.Write "MainWindow.ActionSetPrintList: Enter"
		  
		  'if action affects the entire set, ask the user if he/she wants to save the entire set
		  '
		  'ActionInSetAskSave
		  'Ask if user wants to save
		  If NOT ActionSetAskSave Then Return 'User Canceled
		  
		  MySetListReport = New SetListReport
		  If MySetListReport = Nil Then
		    InputBox.Message App.T.Translate("errors/internal") + _
		    EndOfLine + "MainWindow.ActionSetPrintList: New SetListReport returned Nil"
		    App.DebugWriter.Write "MainWindow.ActionSetPrintList: Exit: New SetListReport returned Nil", 1
		    Return
		  End If
		  
		  status = MySetListReport.Setup
		  If Not status Then
		    InputBox.Message App.T.Translate("errors/internal") + _
		    EndOfLine + "MainWindow.ActionSetPrintList: SetListReport.Setup failed"
		    App.DebugWriter.Write "MainWindow.ActionSetPrintList: Exit: SetListReport.Setup failed", 1
		    Return
		  End If
		  
		  'use working copy
		  setDoc.AppendChild setDoc.ImportNode(CurrentSet.DocumentElement, True)
		  status = MySetListReport.AddSet(CurrentSetName, setDoc)
		  If Not status Then
		    InputBox.Message App.T.Translate("errors/internal") + _
		    EndOfLine + "MainWindow.ActionSetPrintList: SetListReport.AddSet failed"
		    App.DebugWriter.Write "MainWindow.ActionSetPrintList: Exit: SetListReport.AddSet failed", 1
		    Return
		  End If
		  
		  status = MySetListReport.Generate
		  If Not status Then
		    InputBox.Message App.T.Translate("errors/internal") + _
		    EndOfLine + "MainWindow.ActionSetPrintList: SetListReport.Generate failed"
		    App.DebugWriter.Write "MainWindow.ActionSetPrintList: Exit: SetListReport.Generate failed", 1
		    Return
		  End If
		  
		  PrintWindow.SetReport(MySetListReport)
		  PrintWindow.Top = Self.Top + 40
		  PrintWindow.Height = Self.Height - 80
		  PrintWindow.Left = Self.Left + 40
		  PrintWindow.Width = Self.Width - 80
		  PrintWindow.ShowModalWithin Self
		  App.DebugWriter.Write "MainWindow.ActionSetPrintList: Return from PrintWindow"
		  
		  MySetListReport = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSetSave()
		  Dim f, song As FolderItem
		  Dim output As TextOutputStream
		  Dim i As Integer
		  Dim xSlide As XmlNode
		  
		  If Not Status_SetChanged Then Return
		  If Status_InSetChanged Then ActionInSetSave
		  
		  App.MouseCursor = System.Cursors.Wait
		  
		  dim att as XMLattribute
		  try
		    att = CurrentSet.documentElement.GetAttributeNode("name")
		  catch err as XMLexception
		    i = msgbox(err.Message, 48, "ActionSetSave")
		    return
		  end try
		  if att = Nil then
		    CurrentSet.documentElement.SetAttribute("name",CurrentSetName)
		  end if
		  
		  f = App.DocsFolder.Child("Sets").Child(CurrentSetName)
		  If Not SmartML.XDocToFile(CurrentSet, f) Then
		    App.MouseCursor = Nil
		    SmartML.DisplayError
		    Return
		  End If
		  Status_InSetChanged = False
		  Status_SetChanged = False
		  '++JRC Temporary hack for bug #2308669
		  'The name change is saved correctly, but for some reason
		  'SmartML.GetValue refuses to return to the proper information
		  'so for now well just reload the set, not very elegant but it works
		  CurrentSet = SmartML.XDocFromFile(f)
		  
		  //++
		  // This becomes the new base for a revert.  Update TempSet to reflect this.
		  //--
		  TempSet = Nil
		  TempSet = New XmlDocument
		  TempSet.AppendChild TempSet.ImportNode(CurrentSet.DocumentElement, True)
		  EnableMenuItems
		  
		  If can_slide_style.Enabled Then
		    xSlide = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups").Child(lst_set_items.ListIndex)
		    If xSlide <> Nil Then xSlide = SmartML.GetNode(xSlide, "slides/slide")
		    If xSlide = Nil Then
		      can_slide_style.ClearPreviewSlide
		    Else
		      can_slide_style.PreviewSlide = xSlide
		    End If
		  End If
		  
		  App.MouseCursor = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ActionSongAskSave() As Boolean
		  //
		  // Check to see if the current song has been changed
		  // if so, give the user a chance to save it before continuing
		  // with an action that will throw away the changes
		  //
		  // EMP 10/09/2004
		  // Complete rewrite JC 12/06
		  'Changed to return whether the user canceled or not
		  ' EMP 12/06: Move guts of doing the message dialog to a utility method
		  ' so it can be reused by sets mode and other areas.
		  
		  if CurrentSong <> Nil And Status_SongChanged = True And Globals.OldSongFileName <> "" Then
		    '++JRC
		    Select Case SaveDialog(App.T.Translate("questions/song_changed/@caption"))
		    Case 1
		      'User pressed Yes, so save
		      ActionSongSave false, true
		    Case 0
		      'Don't save. Two options: if App.MyMainSettings option song_revert_on_dont_save is True (default),
		      'then revert to the last saved version.
		      'If False, just update the in-memory song from the form.
		      
		      '++JRC Check if the App is Closing, if it is we don't need to reload
		      If Status_Closing Then Return True 'Continue closing
		      
		      If SmartML.GetValueB(App.MyMainSettings.DocumentElement, "song_revert_on_dont_save", True, True) Then
		        ActionSongRevert False
		      Else
		        StoreSongFields
		      End If
		      
		    Case -1
		      'user pressed Cancel, go back
		      Return False
		    End Select
		    '--
		  End if
		  'Return True, meaning user wants to continue with/without saving
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongCopy()
		  Dim f As FolderItem
		  Dim folder, folders(0) As String
		  Dim oldfolder As String
		  Dim listindex As Integer
		  Dim status As Boolean
		  
		  'Ask if user wants to save
		  If NOT ActionSongAskSave Then Return 'User Canceled
		  
		  listindex = lst_songs_songs.ListIndex
		  oldfolder = lst_songs_songs.CellTag(listindex, 0)
		  folders = Songs.GetFolders
		  folders.Remove 1 ' drop the ( All )
		  folder = InputBox.Pick(App.T.Translate("songs_mode/selected_song/copy/where/@caption", lst_songs_songs.Text), folders, "( " + App.T.Translate("songs_mode/song_folders/filter_main/@caption") + " )")
		  
		  If folder.Len = 0 Then Return
		  If folder + "/" = oldfolder Then Return
		  
		  App.MouseCursor = System.Cursors.Wait // Wait...
		  status = Songs.CopyFile(oldfolder + lst_songs_songs.Text, folder)
		  App.MouseCursor = Nil // Don't wait...
		  
		  If Not status Then
		    InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_songs_songs.Text, folder)
		  Else
		    'If pop_songs_song_folders.Text <> "( " + App.T.Translate("songs_mode/song_folders/filter_all/@caption") + " )" Then
		    'lst_songs_songs.RemoveRow lst_songs_songs.ListIndex
		    // Open the song at the same index if possible
		    'If listindex < lst_songs_songs.ListCount Then
		    'lst_songs_songs.ListIndex = listindex
		    'Else
		    'Status_SongOpen = False
		    'Status_SongChanged = False
		    'End If
		    'Else  // Fix the folder info on this file
		    'lst_songs_songs.CellTag(listindex, 0) = folder + "/"
		    'lst_songs_songs.ListIndex = listindex // Force a reopen...this will fix all the status items and fields
		    'End If
		    'EnableMenuItems
		    
		    '++JRC Log song copy
		    If App.MainPreferences.GetValueB(App.kActivityLog, True) And Globals.SongActivityLog <> Nil Then
		      Dim Log As New LogEntry(Globals.SongActivityLog)
		      Dim d As New Date
		      
		      Log.Title = edt_song_title.Text
		      Log.Author = edt_song_author.Text
		      Log.CCLISongNumber = edt_song_ccli.Text
		      Log.OldSongFileName =  oldfolder + lst_songs_songs.Text 'Should we use AbsolutePath?
		      Log.SongFileName =  lst_songs_songs.CellTag(lst_songs_songs.ListIndex, 0) + lst_songs_songs.Text 'Should we use AbsolutePath?
		      Log.DateAndTime = d
		      Log.HasChords = Log.CheckLyricsForChords(edf_song_lyrics.Text)
		      Log.Copied = True
		      
		      If NOT Log.AddLogEntry Then
		        InputBox.Message App.T.Translate("errors/adding_entry") '++JRC Translated
		      Else
		        Log.UpdateNumEntries(Globals.SongActivityLog)
		      End If
		    End If
		    '--
		    
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongMove()
		  Dim f As FolderItem
		  Dim folder, folders(0) As String
		  Dim oldfolder As String
		  Dim listindex As Integer
		  Dim status As Boolean
		  
		  'Ask if user wants to save
		  If NOT ActionSongAskSave Then Return 'User Canceled
		  
		  listindex = lst_songs_songs.ListIndex
		  oldfolder = lst_songs_songs.CellTag(listindex, 0)
		  folders = Songs.GetFolders
		  folders.Remove 1 ' drop the ( All )
		  folder = InputBox.Pick(App.T.Translate("songs_mode/selected_song/move/where/@caption", lst_songs_songs.Text), folders, "( " + App.T.Translate("songs_mode/song_folders/filter_main/@caption") + " )")
		  
		  If folder.Len = 0 Then Return
		  If folder + "/" = oldfolder Then Return
		  
		  App.MouseCursor = System.Cursors.Wait // Wait...
		  status = Songs.MoveFile(oldfolder + lst_songs_songs.Text, folder)
		  App.MouseCursor = Nil // Don't wait...
		  
		  If Not status Then
		    InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_songs_songs.Text, folder)
		  Else
		    If pop_songs_song_folders.Text <> "( " + App.T.Translate("songs_mode/song_folders/filter_all/@caption") + " )" Then
		      lst_songs_songs.RemoveRow lst_songs_songs.ListIndex
		      // Open the song at the same index if possible
		      If listindex < lst_songs_songs.ListCount Then
		        lst_songs_songs.ListIndex = listindex
		      Else
		        Status_SongOpen = False
		        Status_SongChanged = False
		      End If
		    Else  // Fix the folder info on this file
		      lst_songs_songs.CellTag(listindex, 0) = folder + "/"
		      lst_songs_songs.ListIndex = listindex // Force a reopen...this will fix all the status items and fields
		    End If
		    EnableMenuItems
		    
		    '++JRC Log song move
		    If App.MainPreferences.GetValueB(App.kActivityLog, True) And Globals.SongActivityLog <> Nil Then
		      Dim Log As New LogEntry(Globals.SongActivityLog)
		      Dim d As New Date
		      
		      Log.Title = edt_song_title.Text
		      Log.Author = edt_song_author.Text
		      Log.CCLISongNumber = edt_song_ccli.Text
		      Log.OldSongFileName =  oldfolder + lst_songs_songs.Text 'Should we use AbsolutePath?
		      Log.SongFileName =  lst_songs_songs.CellTag(lst_songs_songs.ListIndex, 0) + lst_songs_songs.Text 'Should we use AbsolutePath?
		      Log.DateAndTime = d
		      Log.HasChords = Log.CheckLyricsForChords(edf_song_lyrics.Text)
		      Log.Moved = True
		      
		      If NOT Log.AddLogEntry Then
		        InputBox.Message App.T.Translate("errors/adding_entry") '++JRC Translated
		      Else
		        Log.UpdateNumEntries(Globals.SongActivityLog)
		      End If
		    End If
		    '--
		    
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongNew()
		  Dim t as String
		  Dim f as FolderItem
		  Dim i As Integer
		  dim j As Integer
		  dim Loc As Integer 'location of file in list
		  Dim xnode As XmlNode
		  dim s(0) As string
		  
		  'Ask if user wants to save
		  If NOT ActionSongAskSave Then Return 'User Canceled
		  
		  t = InputBox.Input(App.T.Translate("questions/new_name/@caption"), "")
		  If Len(t) > 0 Then
		    If Not FileUtils.IsSafeFileName(t) Then
		      InputBox.Message App.T.Translate("errors/bad_file_name", t)
		      Return
		    End If
		    
		    If pop_songs_song_folders.ListIndex > 1 Then
		      f = Songs.AddFile(pop_songs_song_folders.Text + "/" + t)
		    Else
		      f = Songs.AddFile(t)
		    End If
		    
		    If f = Nil Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", t)
		      Return
		    End If
		    
		    CurrentSong = New XmlDocument
		    xnode = CurrentSong.AppendChild(CurrentSong.CreateElement("song"))
		    SmartML.SetValue xnode, "title", t
		    
		    If Not SmartML.XDocToFile(CurrentSong, f) Then
		      SmartML.DisplayError
		      Return
		    End If
		    
		    '++JRC Log song creation
		    If App.MainPreferences.GetValueB(App.kActivityLog, True) And Globals.SongActivityLog <> Nil Then
		      Dim Log As New LogEntry(Globals.SongActivityLog)
		      Dim d As New Date
		      
		      Log.Title = t
		      Log.Author = ""
		      Log.CCLISongNumber = ""
		      Log.SongFileName =  pop_songs_song_folders.Text + "/" + t 'Should we use AbsolutePath?
		      Log.DateAndTime = d
		      Log.HasChords = False 'Probably not ;)
		      Log.Created = True
		      
		      If NOT Log.AddLogEntry Then
		        InputBox.Message App.T.Translate("errors/adding_entry") '++JRC Translated
		      Else
		        Log.UpdateNumEntries(Globals.SongActivityLog)
		      End If
		    End If
		    '--
		    
		    i = 0
		    // Look for the place to insert the new song
		    While i < lst_songs_songs.ListCount And CompareHymnBookOrder(Lowercase(t), Lowercase(lst_songs_songs.List(i))) = 1
		      i = i + 1
		    Wend
		    lst_songs_songs.InsertRow i, t
		    Loc = lst_songs_songs.LastIndex
		    lst_songs_songs.CellTag(Loc, 0) = pop_songs_song_folders.Text + "/"
		    Globals.OldSongFileName = ""
		    Status_SongOpen = False //Hold off on unnecessary refreshes
		    LoadSongFields 'f
		    Status_SongOpen = True
		    Status_SongChanged = False
		    lst_songs_songs.ListIndex = Loc
		    lst_songs_songs.selected(Loc) = True
		    Globals.OldSongFileName = GetSongFolderPath(pop_songs_song_folders.Text) + "/" + t
		    Globals.OldSongSel = Loc
		  End If
		  UpdateMenuItems
		  If pge_contents.Value = 0 Then //General panel, go to author field
		    edt_song_author.SetFocus
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongPresent(mode As Integer)
		  
		  'Ask if user wants to save
		  If NOT ActionSongAskSave Then Return 'User Canceled, Don't Present
		  
		  Dim setDoc As XmlDocument
		  Dim song As XmlNode
		  Dim StyleNode As XmlNode
		  
		  App.MouseCursor = System.Cursors.Wait
		  setDoc = New XmlDocument
		  song = setDoc.AppendChild(setDoc.CreateElement("set"))
		  song = song.AppendChild(setDoc.CreateElement("slide_groups"))
		  song = song.AppendChild(setDoc.CreateElement("TEMP"))
		  song = SmartML.ReplaceWithImportNode(song, CurrentSong.DocumentElement)
		  StyleNode = SmartML.GetNode(song, "style")
		  //++
		  // If this looks weird, it's because I don't want to go chase down the other
		  // places ToSetML is called and fix the style nodes that get passed in to start
		  // at //style instead of the node above...Ed 19 Dec 2006
		  //--
		  If StyleNode <> Nil Then StyleNode = StyleNode.Parent
		  SongML.ToSetML song, StyleNode
		  
		  '++JRC Assign an index for this set item
		  SmartML.SetValueN(song, "@ItemNumber", 1)
		  
		  App.MouseCursor = Nil
		  
		  Status_Presentation = True
		  
		  Globals.Status_Presentation = True
		  
		  '++JRC Log song presentation
		  Dim Answer As Boolean
		  
		  'Don't log in preview mode
		  If App.MainPreferences.GetValueB(App.kActivityLog, True) And Globals.SongActivityLog <> Nil And Mode <> PresentWindow.MODE_PREVIEW Then
		    '++JRC Added option to prompt before adding presented songs to the activity log
		    
		    Answer = True
		    If App.MainPreferences.GetValueB(App.kPromptBeforePresenting, True) Then
		      Answer = InputBox.AskYN(App.T.Translate("questions/activity_log/@caption"))
		    End If
		    
		    if Answer Then
		      Dim d As New Date
		      
		      ActLog.Append(New LogEntry(Globals.SongActivityLog))
		      ActLog(1).Title = edt_song_title.Text
		      ActLog(1).Author = edt_song_author.Text
		      ActLog(1).CCLISongNumber = edt_song_ccli.Text
		      ActLog(1).SongFileName =  lst_songs_songs.CellTag(lst_songs_songs.ListIndex, 0)  + lst_songs_songs.Text
		      ActLog(1).DateAndTime = d
		      ActLog(1).HasChords = ActLog(1).CheckLyricsForChords(edf_song_lyrics.Text)
		      ActLog(1).Presented = True
		      ActLog(1).SetItemNumber = 1 'Assign an  index to this song
		      ActLog(1).Displayed = false 'Set this to true if user displays this song
		      
		      'If NOT Log.AddLogEntry Then
		      'InputBox.Message App.T.Translate("errors/adding_entry") '++JRC Translated
		      'Else
		      'Log.UpdateNumEntries(Globals.SongActivityLog)
		      'End If
		    End If
		  End If
		  '--
		  Globals.AddToLog = Answer
		  
		  '++JRC Fix issue were PresentWindow wasn't getting focus
		  MainWindow.SetFocus
		  
		  PresentWindow.Present setDoc, Mode
		  
		  'Self.Hide
		  
		  App.MouseCursor = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongPrint()
		  Dim rpt As LeadSheetReport
		  
		  'Ask if user wants to save
		  If NOT ActionSongAskSave Then Return 'User Canceled
		  
		  rpt = New LeadSheetReport
		  If Not rpt.Setup Then
		    '++JRC Reset Mouse Cursor
		    App.MouseCursor = Nil
		    Return // User cancelled
		  End If
		  '--
		  
		  rpt.AddSong lst_songs_songs.CellTag(lst_songs_songs.ListIndex, 0)  + lst_songs_songs.Text //FolderDB path
		  If rpt.Generate Then
		    PrintWindow.SetReport(rpt)
		    PrintWindow.Top = Self.Top + 40
		    PrintWindow.Height = Self.Height - 80
		    PrintWindow.Left = Self.Left + 40
		    PrintWindow.Width = Self.Width - 80
		    PrintWindow.ShowModalWithin Self
		    App.DebugWriter.Write "MainWindow.ActionSongPrint: Return from PrintWindow"
		  End If
		  rpt = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongPrintAll()
		  //
		  // Print all songs in the current list.
		  //
		  Dim rpt As LeadSheetReport
		  Dim i As Integer
		  //++
		  // Feature request 1528693: require confirmation
		  //--
		  If Not InputBox.AskYN(App.T.Translate("questions/long_operation/@caption")) Then Return
		  
		  'Ask if user wants to save
		  If NOT ActionSongAskSave Then Return 'User Canceled
		  
		  If Status_SongChanged Then Return 'Don't print if user cancelled the save
		  
		  App.MouseCursor = System.Cursors.Wait
		  rpt = New LeadSheetReport
		  If Not rpt.Setup Then'++JRC Reset Mouse Cursor
		    App.MouseCursor = Nil
		    Return // User cancelled
		  End If
		  '--
		  
		  For i = 0 To lst_songs_songs.ListCount - 1
		    rpt.AddSong lst_songs_songs.CellTag(i, 0) + lst_songs_songs.list(i)
		  Next i
		  If rpt.Generate Then
		    PrintWindow.SetReport(rpt)
		    PrintWindow.Top = Self.Top + 40
		    PrintWindow.Height = Self.Height - 80
		    PrintWindow.Left = Self.Left + 40
		    PrintWindow.Width = Self.Width - 80
		    App.MouseCursor = Nil
		    PrintWindow.ShowModalWithin Self
		    App.DebugWriter.Write "MainWindow.ActionSongPrintAll: Return from PrintWindow"
		  End If
		  App.MouseCursor = Nil
		Catch ex
		  App.DebugWriter.Write "MainWindow.ActionSongPrintAll: Caught exception"
		  App.MouseCursor = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongRemove()
		  DIm listindex As Integer
		  listindex = lst_songs_songs.ListIndex
		  
		  If InputBox.Ask(App.T.Translate("questions/delete/@caption", lst_songs_songs.Text)) Then
		    If Not Songs.DeleteFile(lst_songs_songs.CellTag(ListIndex, 0) + lst_songs_songs.Text) Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_songs_songs.Text)
		    Else
		      '++JRC Log song delete
		      If App.MainPreferences.GetValueB(App.kActivityLog, True) And Globals.SongActivityLog <> Nil Then
		        Dim Log As New LogEntry(Globals.SongActivityLog)
		        Dim d As New Date
		        
		        Log.Title = edt_song_title.Text
		        Log.Author = edt_song_author.Text
		        Log.CCLISongNumber = edt_song_ccli.Text
		        Log.SongFileName =  lst_songs_songs.CellTag(lst_songs_songs.ListIndex, 0) + lst_songs_songs.Text 'Should we use AbsolutePath?
		        Log.DateAndTime = d
		        Log.HasChords = Log.CheckLyricsForChords(edf_song_lyrics.Text)
		        Log.Deleted = True
		        
		        If NOT Log.AddLogEntry Then
		          InputBox.Message App.T.Translate("errors/adding_entry") '++JRC Translated
		        Else
		          Log.UpdateNumEntries(Globals.SongActivityLog)
		        End If
		      End If
		      '--
		      
		      lst_songs_songs.RemoveRow listindex
		      If listindex < lst_songs_songs.listcount Then
		        lst_songs_songs.ListIndex = listindex ' Open the next song in the list
		      ElseIf listindex = lst_songs_songs.ListCount Then
		        lst_songs_songs.ListIndex = listindex - 1 'Deleted the bottom of the list, stay there
		      End If
		      EnableMenuItems
		    End If
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongRename()
		  Dim t as String
		  Dim old as String
		  Dim f as FolderItem
		  Dim xdoc As XmlDocument
		  Dim i As Integer
		  
		  'Ask if user wants to save
		  If NOT ActionSongAskSave Then Return 'User Canceled
		  
		  old = lst_songs_songs.Text
		  
		  t = InputBox.Input(App.T.Translate("questions/rename/@caption", old), old)
		  If Len(t) > 0 Then
		    //++
		    // Check for path characters
		    //--
		    If Instr(t, "/") > 0 Or Instr(t, ":") > 0 Or Instr(t, "\") > 0 Then
		      InputBox.Message(App.T.Translate("errors/no_path_allowed"))
		      Return
		    End If
		    
		    'If Songs.RenameFile(pop_songs_song_folders.Text + "/" + old, t) Then
		    If Songs.RenameFile(edt_songs_curr_folder.Text + "/" + old, t) Then
		      lst_songs_songs.List(lst_songs_songs.ListIndex) = t
		      lst_songs_songs.SortedColumn = 0
		      lst_songs_songs.Sort
		      
		      '++JRC Log song rename
		      If App.MainPreferences.GetValueB(App.kActivityLog, True) And Globals.SongActivityLog <> Nil Then
		        Dim Log As New LogEntry(Globals.SongActivityLog)
		        Dim d As New Date
		        
		        Log.Title = edt_song_title.Text
		        Log.Author = edt_song_author.Text
		        Log.CCLISongNumber = edt_song_ccli.Text
		        Log.OldSongFileName =  edt_songs_curr_folder.Text + "/" + old 'Should we use AbsolutePath?
		        Log.SongFileName =  lst_songs_songs.CellTag(lst_songs_songs.ListIndex, 0) + lst_songs_songs.Text 'Should we use AbsolutePath?
		        Log.DateAndTime = d
		        Log.HasChords = Log.CheckLyricsForChords(edf_song_lyrics.Text)
		        Log.Renamed = True
		        
		        If NOT Log.AddLogEntry Then
		          InputBox.Message App.T.Translate("errors/adding_entry") '++JRC Translated
		        Else
		          Log.UpdateNumEntries(Globals.SongActivityLog)
		        End If
		      End If
		      '--
		      
		    Else
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", t, old)
		    End If
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongRevert(Ask As Boolean)
		  'Dim f As FolderItem
		  Dim listindex As Integer
		  //++
		  // Feature request 1528693: require confirmation
		  //--
		  If Ask Then
		    If Not InputBox.AskYN(App.T.Translate("questions/revert/@caption")) Then Return
		  End If
		  //++
		  // EMP, September 2006
		  // Found easier way to do this that won't require as much maintenance.
		  // Left old code as comments in case there's an unexpected side effect.
		  //--
		  listindex = lst_songs_songs.ListIndex
		  lst_songs_songs.ListIndex = -1
		  lst_songs_songs.ListIndex = ListIndex
		  'f = Songs.GetFile(lst_songs_songs.CellTag(lst_songs_songs.ListIndex, 0) + lst_songs_songs.Text)
		  '
		  'If f <> Nil And f.Exists Then
		  'App.MouseCursor = System.Cursors.Wait
		  'CurrentSong = SmartML.XDocFromFile(f)
		  'App.MouseCursor = Nil
		  'Status_SongOpen = False ' suppress updates
		  'LoadSongFields
		  'Status_SongOpen = True
		  'Status_SongChanged = False
		  'EnableMenuItems
		  'Else
		  'InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_songs_songs.Text)
		  'End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongSave(noWrite As Boolean = False, SaveOldSong As Boolean = False)
		  'Changed function now has two parameters
		  '
		  'noWrite = True is the equivalent of just calling StoreSongFields
		  'Calling parameters not changed to avoid introducing unwanted side effects
		  'prior to release of V1.0 (EMP, February 2007)
		  
		  Dim f As FolderItem
		  Dim theme As String
		  Dim i As Integer
		  Dim FullName As String
		  
		  If Not noWrite Then
		    'Changed
		    if SaveOldSong = true then
		      f = Songs.GetFile(Globals.OldSongFileName)
		      If f = Nil Then
		        InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", Globals.OldSongFileName)
		      End If
		    Else
		      FullName = lst_songs_songs.CellTag(Globals.OldSongSel, 0).StringValue + lst_songs_songs.Text
		      f = Songs.GetFile(FullName)
		      If f = Nil Then
		        InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", FullName)
		      End If
		    End if
		  End If
		  
		  StoreSongFields
		  
		  If Not noWrite Then
		    If Not SmartML.XDocToFile(CurrentSong, f) Then
		      SmartML.DisplayError
		      Return
		    End If
		    '++JRC Log song modification
		    If App.MainPreferences.GetValueB(App.kActivityLog, True) And Globals.SongActivityLog <> Nil Then
		      Dim Log As New LogEntry(Globals.SongActivityLog)
		      'Can we enable the song object yet?
		      'CurrentSongObj.SongInfoToLogEntry
		      Log.Title = edt_song_title.Text
		      Log.Author = edt_song_author.Text
		      Log.CCLISongNumber = edt_song_ccli.Text
		      Log.SongFileName = lst_songs_songs.CellTag(Globals.OldSongSel, 0) + lst_songs_songs.Text 'Should we use AbsolutePath?
		      Log.DateAndTime = f.ModificationDate
		      Log.HasChords = Log.CheckLyricsForChords(edf_song_lyrics.Text)
		      Log.Modified = True
		      
		      If NOT Log.AddLogEntry Then
		        InputBox.Message App.T.Translate("errors/adding_entry") '++JRC Translated
		      Else
		        Log.UpdateNumEntries(Globals.SongActivityLog)
		      End If
		    End If
		    '--
		    Status_SongChanged = False
		    EnableMenuItems
		    
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddPresentedSongsToLog()
		  '++JRC This function as the name implies checks which songs were presented
		  'and adds them to the activity log, then clears Globals.ActLog
		  Dim i As Integer
		  
		  For  i = 1  To  UBound(ActLog)
		    If ActLog(i) <> Nil Then
		      If ActLog(i).Displayed Then
		        'bit of a hack really, when AddLogEntry is called NumEntries  in the rest of the log entries
		        'in the array become invalid. their's probably a more elegant way of fixing this
		        'but this should do for now
		        ActLog(i).SyncNumEntries(Globals.SongActivityLog)
		        
		        If NOT ActLog(i).AddLogEntry Then
		          InputBox.Message App.T.Translate("errors/adding_entry") '++JRC Translated
		        Else
		          ActLog(i).UpdateNumEntries(Globals.SongActivityLog)
		        End If
		      End If
		    End If
		  Next i
		  
		  For i  = UBound(ActLog)  DownTo 1
		    If ActLog(i) <> Nil Then
		      ActLog.Remove(i)
		    End If
		  Next i
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CheckLyricLines(source As String) As String
		  //++
		  // Do a basic check on the lyrics lines
		  // If the first character on the line isn't a code of some sort,
		  // assume it's a lyric line and adjust the line to include
		  // the space at the start of the line.
		  //--
		  Dim lines() As String
		  Dim codes As String
		  
		  codes = " [-0123456789.!;"
		  source = ReplaceLineEndings(source, EndOfLine.Unix)
		  lines = Split(source, EndOfLine.Unix)
		  
		  For i As Integer = 0 To lines.UBound
		    If InStr(codes, Left(lines(i).ConvertEncoding(Encodings.UTF8), 1)) = 0 Then
		      lines(i) = " " + lines(i)
		    End If
		  Next
		  
		  Return Join(lines, EndOfLine.Unix)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Find()
		  App.DebugWriter.Write "MainWindow.Find: Enter"
		  If FindWindow.Popup(Find) Then
		    FindStartSong = lst_songs_songs.ListIndex
		    App.DebugWriter.Write "MainWindow.Find: FindStartSong = " + Str(lst_songs_songs.ListIndex)
		    FindNext
		  End If
		  App.DebugWriter.Write "MainWindow.Find: Exit"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub FindNext()
		  App.DebugWriter.Write "MainWindow.FindNext: Enter"
		  If Find.FindString.Len = 0 Then
		    Find
		    Return
		  End If
		  
		  Dim t as String
		  Dim s As XmlDocument
		  Dim st, i, j As Integer
		  Dim f As FolderItem
		  
		  Dim found As RectControl
		  Dim edtFound As EditField
		  
		  App.MouseCursor = System.Cursors.Wait
		  
		  If Status_SongChanged Then ActionSongSave True ' updates CurrentSong but doesn't write it to file
		  If pge_controls.Value <> 0 Then SetMode 0
		  
		  t = Lowercase(find.FindString)
		  If Len(t) = 0 Then Return
		  
		  i = lst_songs_songs.ListIndex
		  If i < 0 Then
		    i = 0 ' if there is no song selected, select the first
		    If FindStartSong < 0 Then FindStartSong = 0 //By implication, if i<0, this is too
		    App.DebugWriter.Write("MainWindow.FindNext: Open " + str(i) + " " +  lst_songs_songs.CellTag(i, 0).StringValue + lst_songs_songs.List(i))
		    f = Songs.GetFile(lst_songs_songs.CellTag(i, 0).StringValue + lst_songs_songs.List(i))
		    If f = Nil Or Not f.Exists Then
		      App.MouseCursor = Nil
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_songs_songs.List(i))
		      Return
		    End If
		    s = SmartML.XDocFromFile(f)
		  Else
		    s = CurrentSong
		  End If
		  
		  //++
		  // Bug 1089442: Catch s = Nil.  Unlikely to happen, but possible if i < 0 and the first document isn't valid
		  //
		  // For the moment, just error and return.  Could be avoided by splitting out the code that opens the song
		  // files and determines when done (i.e., XmlDocument = GetNextSong( ByRef i, FindStartSong ))
		  //--
		  If s = Nil Then
		    App.MouseCursor = Nil
		    InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_songs_songs.List(i))
		    Return
		  End If
		  
		  While found = Nil And i < lst_songs_songs.ListCount
		    
		    If find.FindTitle And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "title")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 1 Or (FindFocus = 1 And (edt_song_title.SelStart+edt_song_title.SelLength = 0 Or InStr(edt_song_title.SelStart+edt_song_title.SelLength+1, Lowercase(edt_song_title.Text), t) > 0))) Then
		      found = edt_song_title
		    ElseIf find.FindAuthor And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "author")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 2 Or (FindFocus = 2 And (edt_song_author.SelStart+edt_song_author.SelLength = 0 Or InStr(edt_song_author.SelStart+edt_song_author.SelLength+1, Lowercase(edt_song_author.Text), t) > 0))) Then
		      found = edt_song_author
		    ElseIf find.FindCopyright And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "copyright")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 3 Or (FindFocus = 3 And (edt_song_copyright.SelStart+edt_song_copyright.SelLength = 0 Or InStr(edt_song_copyright.SelStart+edt_song_copyright.SelLength+1, Lowercase(edt_song_copyright.Text), t) > 0))) Then
		      found = edt_song_copyright
		    ElseIf find.FindCCLI And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "ccli")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 4 Or (FindFocus = 4 And (edt_song_ccli.SelStart+edt_song_ccli.SelLength = 0 Or InStr(edt_song_ccli.SelStart+edt_song_ccli.SelLength+1, Lowercase(edt_song_ccli.Text), t) > 0))) Then
		      found = edt_song_ccli
		    ElseIf find.FindPresentation And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "presentation")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 5 Or (FindFocus = 5 And (edt_song_presentation.SelStart+edt_song_presentation.SelLength = 0 Or InStr(edt_song_presentation.SelStart+edt_song_presentation.SelLength+1, Lowercase(edt_song_presentation.Text), t) > 0))) Then
		      found = edt_song_presentation
		    ElseIf find.FindLyrics And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "lyrics")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 6 Or (FindFocus = 6 And (edf_song_lyrics.SelStart+edf_song_lyrics.SelLength = 0 Or InStr(edf_song_lyrics.SelStart+edf_song_lyrics.SelLength+1, Lowercase(edf_song_lyrics.Text), t) > 0))) Then
		      found = edf_song_lyrics
		    ElseIf find.FindThemes And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "theme")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 7) Then
		      found = lst_song_themes
		    ElseIf find.FindCapo And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "capo")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 8) Then
		      found = pop_song_capo
		    ElseIf find.FindTimeSig And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "time_sig")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 9) Then
		      found = pop_song_time_sig
		    ElseIf find.FindTempo And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "tempo")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 10) Then
		      found = pop_song_tempo
		    ElseIf find.FindKey And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "key")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 11 Or (FindFocus = 11 And (edt_song_key.SelStart+edt_song_key.SelLength = 0 Or InStr(edt_song_key.SelStart+edt_song_key.SelLength+1, Lowercase(edt_song_key.Text), t) > 0))) Then
		      found = edt_song_key
		    ElseIf find.FindAKA And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "aka")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 12 Or (FindFocus = 12 And (edt_song_aka.SelStart+edt_song_aka.SelLength = 0 Or InStr(edt_song_aka.SelStart+edt_song_aka.SelLength+1, Lowercase(edt_song_aka.Text), t) > 0))) Then
		      found = edt_song_aka
		    ElseIf find.FindKeyLine And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "key_line")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 13 Or (FindFocus = 13 And (edt_song_key_line.SelStart+edt_song_key_line.SelLength = 0 Or InStr(edt_song_key_line.SelStart+edt_song_key_line.SelLength+1, Lowercase(edt_song_key_line.Text), t) > 0))) Then
		      found = edt_song_key_line
		    ElseIf find.FindUser1 And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "user1")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 14 Or (FindFocus = 14 And (edt_song_user1.SelStart+edt_song_user1.SelLength = 0 Or InStr(edt_song_user1.SelStart+edt_song_user1.SelLength+1, Lowercase(edt_song_user1.Text), t) > 0))) Then
		      found = edt_song_user1
		    ElseIf find.FindUser2 And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "user2")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 15 Or (FindFocus = 15 And (edt_song_user2.SelStart+edt_song_user2.SelLength = 0 Or InStr(edt_song_user2.SelStart+edt_song_user2.SelLength+1, Lowercase(edt_song_user2.Text), t) > 0))) Then
		      found = edt_song_user2
		    ElseIf find.FindUser3 And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "user3")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 16 Or (FindFocus = 16 And (edt_song_user3.SelStart+edt_song_user3.SelLength = 0 Or InStr(edt_song_user3.SelStart+edt_song_user3.SelLength+1, Lowercase(edt_song_user3.Text), t) > 0))) Then
		      found = edt_song_user3
		      '++JRC
		    ElseIf find.FindHymnNumber And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "hymn_number")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 17 Or (FindFocus = 17 And (edt_song_hymn_number.SelStart+edt_song_hymn_number.SelLength = 0 Or InStr(edt_song_hymn_number.SelStart+edt_song_hymn_number.SelLength+1, Lowercase(edt_song_hymn_number.Text), t) > 0))) Then
		      found = edt_song_hymn_number
		      '--
		    End If
		    
		    If found <> Nil Then
		      If lst_songs_songs.ListIndex <> i Then lst_songs_songs.ListIndex = i
		      found.SetFocus
		      If found IsA EditField Then
		        edtFound = EditField(found)
		        If edtFound.SelStart+edtFound.SelLength = 0 Then
		          edtFound.SelStart = InStr(Lowercase(edtFound.Text), t) - 1
		        Else
		          edtFound.SelStart = InStr(edtFound.SelStart+edtFound.SelLength+1, Lowercase(edtFound.Text), t) - 1
		        End If
		        edtFound.SelLength = find.FindString.Len
		      End If
		      
		      //++
		      // 3 December 2006, EMP
		      // Change logic that verifies the control is visible to a more generic form
		      // that doesn't rely on knowledge of the panel layout
		      // (Note: the change from TabPanelIndex to PanelIndex may actually be with RB2005,
		      // but I had no way to verify this.  Hopefully no one will be using the RB2005 compiler.)
		      //
		      #if RBVersion < 2006
		        If pge_contents.Value <> Control(found).TabPanelIndex - 1 And Control(found).TabPanelIndex > 0 Then
		          pge_contents.Value = Control(found).TabPanelIndex - 1
		        End If
		      #else
		        If pge_contents.Value <> Control(found).PanelIndex And Control(found).PanelIndex > -1 Then
		          pge_contents.Value = Control(found).PanelIndex
		        End If
		      #endif
		      //--
		    Else
		      Do
		        i = i + 1
		        If i >= lst_songs_songs.ListCount Then
		          i = 0 // Circle around to the beginning
		        End If
		        //
		        //++ Check for finished
		        //
		        If i = FindStartSong Then Exit
		        //--
		        If i < lst_songs_songs.ListCount Then
		          f = Songs.GetFile(lst_songs_songs.CellTag(i, 0).StringValue + lst_songs_songs.List(i))
		          If f = Nil Or Not f.Exists Then
		            App.MouseCursor = Nil
		            InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_songs_songs.List(i))
		            Return
		          End If
		          s = SmartML.XDocFromFile(f)
		          If s = Nil Then
		            App.DebugWriter.Write("MainWindow.FindNext: Error converting file to XML String: " + lst_songs_songs.CellTag(i, 0).StringValue + lst_songs_songs.list(i), 1)
		            App.MouseCursor = Nil
		            InputBox.Message App.T.Translate("errors/bad_format", lst_songs_songs.List(i))
		            App.MouseCursor = System.Cursors.Wait
		          End If
		        End If
		      Loop Until s <> Nil
		    End If
		    //++
		    // See if we left the loop because we are at the end.  If so, leave the While loop
		    //--
		    If i = FindStartSong Then
		      Exit
		    End If
		  Wend
		  
		  If found = Nil Then
		    App.MouseCursor = Nil
		    InputBox.Message App.T.Translate("errors/end_of_songs")
		  End If
		  
		  App.MouseCursor = Nil
		  App.DebugWriter.Write("MainWindow.FindNext: Exit")
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetSongFolderPath(FolderName As String) As String
		  //++EMP 18 Feb 2006
		  // This was added to clear up a problem in lst_songs_songs where
		  // the current folder (i.e., what's shown at the bottom of the screen)
		  // must be passed to a Songs FolderDB to return a FolderItem pointing
		  // to it.  This blows up if the folder being used is the main folder.
		  //--
		  Dim PseudoFolder As String
		  Dim RealPath As String = ""
		  PseudoFolder = App.T.Translate("songs_mode/song_folders/filter_all/@caption")
		  If FolderName <> "( " + PseudoFolder + " )" Then
		    PseudoFolder = App.T.Translate("songs_mode/song_folders/filter_main/@caption")
		    If FolderName <> "( " + PseudoFolder + " )" Then
		      RealPath = FolderName
		    End If
		  End If
		  Return RealPath
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ImportSongs(setDoc As XmlDocument, AddToLog As Boolean)
		  Dim slide_group, slide_groups, temp As XmlNode
		  Dim songDoc As XmlDocument
		  Dim Presentation As String
		  '++JRC
		  Dim ActiveCustomStyle As XmlNode = Nil
		  Dim ItemNumber As Integer
		  Dim i As Integer
		  '--
		  Dim Transition As Integer
		  Dim SongStyle, SlideSongStyle As XmlNode
		  Dim SongPath As String
		  
		  App.MouseCursor = System.Cursors.Wait
		  slide_groups = SmartML.GetNode(setDoc.DocumentElement, "slide_groups", True)
		  slide_group = slide_groups.FirstChild
		  
		  ItemNumber = 1
		  i = 1
		  While slide_group <> Nil
		    If SmartML.GetValue(slide_group, "@type", True) = "song" Then
		      Presentation = SmartML.GetValue(slide_group, "@presentation", False)
		      Transition = SmartML.GetValueN(slide_group, "@transition", False)
		      
		      songDoc = SetML.GetSong( slide_group, Songs, songPath )
		      If songDoc <> Nil Then
		        '++JRC get song info for logging
		        If AddToLog Then
		          Dim d As New Date
		          
		          ActLog.Append(New LogEntry(Globals.SongActivityLog))
		          
		          ActLog(i).Title = SmartML.GetValue(SongDoc.DocumentElement, "title", True)
		          ActLog(i).Author = SmartML.GetValue(SongDoc.DocumentElement, "author", True)
		          ActLog(i).CCLISongNumber = SmartML.GetValue(SongDoc.DocumentElement, "ccli_number", True)  //The song's CCLI number
		          ActLog(i).SongFileName = songPath + SmartML.GetValue(slide_group, "@name", False)
		          ActLog(i).DateAndTime = d
		          ActLog(i).HasChords = ActLog(i).CheckLyricsForChords(edf_song_lyrics.Text)
		          ActLog(i).Presented = True
		          ActLog(i).SetItemNumber = ItemNumber 'Assign an index to this song
		          ActLog(i).Displayed = false 'Set this to true if user displays this song
		          
		          i = i + 1
		        End If
		        '--
		        
		        SlideSongStyle = SmartML.GetNode(slide_group, "style")
		        slide_group = SmartML.ReplaceWithImportNode(slide_group, songDoc.DocumentElement)
		        '++JRC Assign an index for this set item
		        SmartML.SetValueN(slide_group, "@ItemNumber", ItemNumber)
		        'ItemNumber = ItemNumber + 1
		        
		        If Presentation <> "" Then 'Override the song's default presentation
		          SmartML.SetValue(slide_group, "presentation", presentation)
		        End If
		        If Transition <> 0 Then 'Override the song's transition
		          SmartML.SetValueN(slide_group, "@transition", Transition)
		        End If
		        
		        SongStyle = SmartML.GetNode(slide_group, "style", False)
		        'Check if there is an overide for the song style in this slide
		        If SlideSongStyle <> Nil Then
		          If SongStyle <> Nil Then
		            SmartML.RemoveChild(slide_group, SongStyle)
		          End If
		          Call SmartML.InsertChildNode(slide_group, SlideSongStyle, slide_group.ChildCount())
		          SongML.ToSetML slide_group, SlideSongStyle
		        Else
		          '++JRC: Pass ActiveCustomStyle
		          ' But check for an override first!
		          '++Vwout: The better place to do this is SetML
		          If ActiveCustomStyle <> Nil Then
		            If SongStyle <> Nil Then
		              SmartML.RemoveChild(slide_group, SongStyle)
		            End If
		            Call SmartML.InsertChildNode(slide_group, ActiveCustomStyle, slide_group.ChildCount())
		            SongStyle = ActiveCustomStyle
		          End If
		          SongML.ToSetML slide_group, SongStyle
		        End If
		        
		        slide_group  = slide_group.NextSibling
		      Else
		        InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", SmartML.GetValue(slide_group, "@name", True))
		        
		        If slide_group.NextSibling <> Nil Then
		          slide_group = slide_group.NextSibling
		          slide_group.Parent.RemoveChild slide_group.PreviousSibling
		        Else
		          slide_group.Parent.RemoveChild slide_group
		          slide_group = slide_group.NextSibling
		        End If
		      End If
		      
		      ItemNumber = ItemNumber + 1
		      
		      '++JRC: Save Current Style
		    Elseif SmartML.GetValue(slide_group, "@type", True) = "style"  Then
		      if SmartML.GetValue(slide_group, "@action", True) = "new" then
		        ActiveCustomStyle = SmartML.GetNode(slide_group, "style", False)
		      else
		        'reverting to previous style
		        ActiveCustomStyle = Nil
		      end if
		      slide_group  = slide_group.NextSibling
		    Else
		      '++JRC Assign an index for this set item
		      SmartML.SetValueN(slide_group, "@ItemNumber", ItemNumber + 1)
		      
		      slide_group  = slide_group.NextSibling
		      
		      ItemNumber = ItemNumber + 1
		    End If
		    
		  Wend
		  '++JRC
		  setDoc.DocumentElement.SetAttribute("NumberOfItems",Str(ItemNumber))
		  
		  App.MouseCursor = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LiveDisplay(slide As XmlNode)
		  //++
		  // This is part of ScriptureReceiver and used for
		  // presenting a verse slide without adding it to
		  // the active set.
		  // It shouldn't ever get called when Scripture Picker is run
		  // from MainWindow.
		  //--
		  
		  System.DebugLog "MainWindow.LiveDisplay should never be called, but here we are..."
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadSets(folder As FolderItem)
		  Dim x As Integer
		  Dim s(0) As String
		  Dim SetDB As FolderDB
		  App.MouseCursor = System.Cursors.Wait
		  pop_sets_sets.DeleteAllRows
		  If App.SplashShowing Then Splash.SetStatus App.T.Translate("load_data/sets") + "..."
		  If App.MainPreferences.GetValueB(Prefs.kUseOldFolderDB) Then
		    For x = 1 to folder.count
		      If (folder.item(x).Directory = False) _
		        And folder.item(x).IsFileVisible Then
		        s.Append folder.Item(x).Name
		      End If
		    Next x
		    heapsort s
		    
		    For x = 1 To UBound(s) 'DownTo 1
		      pop_sets_sets.AddRow s(x)
		    Next x
		  Else
		    Redim s(-1)
		    SetDB = New FolderDB(folder)
		    s = SetDB.GetFiles(".") // Current folder only
		    For x = 0 to UBound(s)
		      pop_sets_sets.AddRow s(x)
		    Next
		  End If
		  lst_set_items.DeleteAllRows
		  App.MouseCursor = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadSongFields()
		  
		  btn_song_move.SetEnabled True
		  btn_song_delete.SetEnabled True
		  btn_song_rename.SetEnabled True
		  btn_song_export.SetEnabled True
		  btn_song_print.SetEnabled True
		  btn_song_present.SetEnabled True
		  
		  // Load from the object
		  
		  'edt_song_title.Text = CurrentSongObj.Title
		  'edt_song_author.Text = CurrentSongObj.Author
		  'edt_song_copyright.Text = CurrentSongObj.Copyright
		  'edt_song_hymn_number.Text = CurrentSongObj.HymnNumber
		  'edt_song_presentation.Text = CurrentSongObj.Presentation
		  'edt_song_ccli.Text = CurrentSongObj.CCLISongNumber
		  'chk_song_capo_print.Value = CurrentSongObj.PrintCapoChords
		  'edt_song_key.Text = CurrentSongObj.Key
		  'edt_song_aka.Text = CurrentSongObj.AKA
		  'edt_song_key_line.Text = CurrentSongObj.KeyLine
		  'edt_song_user1.Text = CurrentSongObj.User1
		  'edt_song_user2.Text = CurrentSongObj.User2
		  'edt_song_user3.Text = CurrentSongObj.User3
		  
		  edt_song_title.Text = SmartML.GetValue(CurrentSong.DocumentElement, "title", True)
		  edt_song_author.Text = SmartML.GetValue(CurrentSong.DocumentElement, "author", True)
		  edt_song_copyright.Text = SmartML.GetValue(CurrentSong.DocumentElement, "copyright", True)
		  edt_song_hymn_number.Text = SmartML.GetValue(CurrentSong.DocumentElement, "hymn_number", True)
		  ' Josh
		  edt_song_presentation.Text = SmartML.GetValue(CurrentSong.DocumentElement, "presentation", True)
		  edt_song_ccli.Text = SmartML.GetValue(CurrentSong.DocumentElement, "ccli", True)
		  chk_song_capo_print.Value = SmartML.GetValueB(CurrentSong.DocumentElement, "capo/@print", True)
		  edt_song_key.Text = SmartML.GetValue(CurrentSong.DocumentElement, "key", True)
		  edt_song_aka.Text = SmartML.GetValue(CurrentSong.DocumentElement, "aka", True)
		  edt_song_key_line.Text = SmartML.GetValue(CurrentSong.DocumentElement, "key_line", True)
		  edt_song_user1.Text = SmartML.GetValue(CurrentSong.DocumentElement, "user1", True)
		  edt_song_user2.Text = SmartML.GetValue(CurrentSong.DocumentElement, "user2", True)
		  edt_song_user3.Text = SmartML.GetValue(CurrentSong.DocumentElement, "user3", True)
		  
		  Dim found, foundAlt, i As Integer
		  found = 0
		  
		  Dim theme, alttheme As String
		  theme = SmartML.GetValue(CurrentSong.DocumentElement, "theme", True)
		  alttheme = SmartML.GetValue(CurrentSong.DocumentElement, "alttheme", False)
		  If Len(alttheme) > 0 Then theme = theme + "; "+ alttheme
		  'theme = ";" + CurrentSongObj.ThemeList + ";"
		  ' Build the dictionary
		  Dim themeDict As new Dictionary
		  For i = 1 To CountFields(theme, ";")
		    alttheme = Trim(NthField(theme, ";", i))
		    If Len(alttheme) > 0 Then themeDict.Value(alttheme) = False
		  Next i
		  ' Build the list, checking the dictionary
		  lst_song_themes.DeleteAllRows
		  For i = 1 To UBound(App.ThemeList)
		    lst_song_themes.AddRow App.ThemeList(i)
		    lst_song_themes.CellType(lst_song_themes.ListCount-1, 0) = lst_song_themes.TypeCheckbox
		    If themeDict.hasKey(App.ThemeList(i)) Then
		      lst_song_themes.CellCheck(lst_song_themes.ListCount-1, 0) = True
		      themeDict.Value(App.ThemeList(i)) = True
		    End If
		  Next i
		  ' Prepend to the list anything not in the theme list
		  For i = 0 To themeDict.Count - 1
		    If themeDict.Value(themeDict.Key(i)).BooleanValue = False Then
		      lst_song_themes.InsertRow 0, themeDict.Key(i)
		      lst_song_themes.CellType(0, 0) = lst_song_themes.TypeCheckbox
		      lst_song_themes.CellCheck(0, 0) = True
		    End if
		  Next i
		  
		  Dim capo As Integer
		  capo = SmartML.GetValueN(CurrentSong.DocumentElement, "capo", True)
		  'capo = CurrentSongObj.Capo
		  found = 0
		  pop_song_capo.DeleteAllRows
		  pop_song_capo.AddRow ""
		  For i = 1 To UBound(App.CapoList)
		    If App.CapoList(i) = Str(capo) Then found = i
		    pop_song_capo.AddRow App.CapoList(i)
		  Next i
		  If found = 0 And capo > 0 Then pop_song_capo.InsertRow 0, Str(capo)
		  pop_song_capo.ListIndex = found
		  
		  Dim tempo As String
		  tempo = SmartML.GetValue(CurrentSong.DocumentElement, "tempo", True)
		  'tempo = CurrentSongObj.Tempo
		  found = 0
		  pop_song_tempo.DeleteAllRows
		  pop_song_tempo.AddRow ""
		  For i = 1 To UBound(App.TempoList)
		    If App.TempoList(i) = tempo Then found = i
		    pop_song_tempo.AddRow App.TempoList(i)
		  Next i
		  If found = 0 And Len(tempo) > 0 Then pop_song_tempo.InsertRow 0, tempo
		  pop_song_tempo.ListIndex = found
		  
		  Dim timesig As String
		  timesig = SmartML.GetValue(CurrentSong.DocumentElement, "time_sig", True)
		  'timesig = CurrentSongObj.TimeSignature
		  found = 0
		  pop_song_time_sig.DeleteAllRows
		  pop_song_time_sig.AddRow ""
		  For i = 1 To UBound(App.TimeSigList)
		    If App.TimeSigList(i) = timesig Then found = i
		    pop_song_time_sig.AddRow App.TimeSigList(i)
		  Next i
		  If found = 0 And Len(timesig) > 0 Then pop_song_time_sig.InsertRow 0, timesig
		  pop_song_time_sig.ListIndex = found
		  
		  edf_song_lyrics.Text = ""
		  'edf_song_lyrics..ScrollBarVertical = False
		  edf_song_lyrics.Text = SmartML.GetValue(CurrentSong.DocumentElement, "lyrics", True).FormatLocalEndOfLine
		  'edf_song_lyrics.ScrollBarVertical = True
		  
		  If SmartML.GetNode(CurrentSong.DocumentElement, "style", False) = Nil Then
		    'If CurrentSongObj.SongStyle = Nil Then
		    chk_song_style.Value = False
		    can_song_style.SetEnabled False
		  Else
		    chk_song_style.Value = True
		    can_song_style.Enabled = True
		    can_song_style.SetStyleNode SmartML.GetNode(CurrentSong.DocumentElement, "style")
		    'can_song_style.SetStyleNode CurrentSongObj.SongStyle.ToXML.DocumentElement
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReorderSetItemList(CurrentPosition As Integer, newPosition As Integer)
		  '++JRC Handle Set Item list reordering
		  If  newPosition = CurrentPosition Then
		    return
		  End If
		  
		  Dim xgroups As XmlNode
		  
		  'Ask if user wants to save
		  If NOT ActionInSetAskSave Then
		    Return 'User Canceled, cancel the reorder
		  End If
		  
		  If Status_InSetChanged Then 'User chose not to save, set DontUpdateSetItem flag
		    DontUpdateSetItem = True 'reorder the list without changing any edit fields
		  End If
		  
		  'Update set XML with the new order
		  xgroups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  Status_SetChanged = True
		  If newPosition > CurrentPosition Then
		    If newPosition = lst_set_items.ListCount - 1 Then
		      xgroups.AppendChild xgroups.Child(CurrentPosition)
		    Else
		      xgroups.Insert xgroups.Child(CurrentPosition), xgroups.Child(newPosition+1)
		    End If
		    'reorder the list
		    lst_set_items.InsertRow newPosition+1, lst_set_items.List(CurrentPosition)
		    lst_set_items.RemoveRow(CurrentPosition)
		    CurrentInSetItem = newPosition
		    
		  ElseIf newPosition < CurrentPosition Then
		    xgroups.Insert xgroups.Child(CurrentPosition), xgroups.Child(newPosition)
		    'reorder the list
		    lst_set_items.InsertRow newPosition, lst_set_items.List(CurrentPosition)
		    lst_set_items.RemoveRow(CurrentPosition+1)
		    CurrentInSetItem = newPosition
		  End If
		  
		  lst_set_items.ListIndex = CurrentInSetItem
		  If NOT Status_InSetChanged Then
		    CurrentInSetItem = -1
		  End If
		  DontUpdateSetItem = false
		  'EnableMenuItems
		  '--
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScriptureSelected(scripture As XmlNode)
		  // Part of the ScriptureReceiver interface.
		  // New scripture has been selected in the ScripturePicker.
		  // Add to the set at the current position
		  //
		  
		  If CurrentSet Is Nil Then Return
		  
		  Dim newGroup, newSetItem As XmlNode
		  Dim xGroups As XmlNode
		  
		  xGroups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  
		  If lst_set_items.ListIndex >= 0 Then
		    newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListIndex + 1)
		  Else
		    newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListCount)
		  End If
		  
		  newSetItem = SmartML.ReplaceWithImportNode(newGroup, scripture)
		  
		  ' No need to EnableMenuItems, since the following selection change will call it
		  
		  If lst_set_items.ListIndex >= 0 Then
		    lst_set_items.InsertRow lst_set_items.ListIndex + 1, SmartML.GetValue(newSetItem, "@name", True) + " " + App.T.Translate("sets_mode/items/scripture/@caption")
		  Else
		    lst_set_items.AddRow SmartML.GetValue(newSetItem, "@name", True) + " " + App.T.Translate("sets_mode/items/scripture/@caption")
		  End If
		  
		  lst_set_items.ListIndex = lst_set_items.LastIndex
		  
		  
		  Status_SetChanged = True
		  Status_InSetChanged = False
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetHelp(str As String)
		  If str = "" Then
		    txt_context_help.Text = ""
		  Else
		    txt_context_help.Text = App.T.Translate(str)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SetLoadSet(f As FolderItem) As Boolean
		  
		  Dim song As FolderItem
		  Dim input As TextInputStream
		  Dim line As String
		  Dim xnode As XmlNode
		  Dim slideType As String
		  
		  // Simple sanity checks
		  If f = Nil Then Return False
		  If Not f.Exists Then Return False
		  
		  CurrentSet = SmartML.XDocFromFile(f)
		  Status_InSetChanged = False
		  Status_SetChanged = False
		  Status_InSetOpen = False
		  lst_set_items.DeleteAllRows
		  If CurrentSet = Nil Then
		    Status_SetOpen = False
		    CurrentSet = New XmlDocument
		    xnode = CurrentSet.AppendChild(CurrentSet.CreateElement("set"))
		    SmartML.DisplayError
		    Return False
		  End If
		  Status_SetOpen = True
		  // This section gets the /set/@name value from the current document
		  // Since this is a non-existent attribute in the 0.9.9 version, add it if
		  // it's not already there.
		  //EMP 10/9/04
		  dim nameAtt as xmlattribute
		  
		  dim strName as String
		  
		  nameAtt = CurrentSet.DocumentElement.GetAttributeNode("name")
		  
		  if nameatt = Nil then
		    CurrentSet.DocumentElement.SetAttribute("name", pop_sets_sets.text)
		  end if
		  
		  CurrentSetName = pop_sets_sets.text
		  //--
		  Dim slide_groups, xchild As XmlNode
		  Dim i As Integer
		  
		  slide_groups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  If slide_groups = Nil Then Return True
		  
		  xchild = slide_groups.FirstChild
		  While xchild <> Nil
		    '++JRC Fix broken set item type displaying in set list
		    slideType = App.T.Translate("sets_mode/items/" + xchild.GetAttribute("type") + "/@caption")
		    If slideType = "" Then // unknown slide type
		      App.DebugWriter.Write "MainWindow.pop_sets_sets.Change: Unknown slide type '" + xchild.GetAttribute("type") + "/@caption" + "'", 1
		      slideType = "*ERROR*"
		    End If
		    lst_set_items.AddRow xchild.GetAttribute("name") + " " + slideType
		    xchild = xchild.NextSibling
		  Wend
		  
		  EnableMenuItems
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMode(i As Integer)
		  Dim idx As Integer
		  If i = 0 Then
		    ' Change to Song mode
		    
		    'Ask if user wants to save
		    If NOT ActionSetAskSave Then Return 'User Canceled
		    
		    If Status_SetChanged Then //User cancelled from AskSave, revert the set since we are changing modes
		      Status_InSetChanged = False // These two lines keep pop_sets_sets.Change calls to ActionSetAskSave from firing
		      Status_SetChanged = False
		      idx = pop_sets_sets.ListIndex //cheats, forces a change event that will reload the set
		      pop_sets_sets.ListIndex = -1
		      pop_sets_sets.ListIndex = idx
		    End If
		    btn_mode_songs_mode.SetStuck True
		    btn_mode_sets_mode.SetStuck False
		    pge_controls.Value = 0
		    pge_contents.Value = LastSongPane
		    mnu_mode_songs.Checked = True
		    mnu_mode_sets.Checked = False
		  Else
		    ' Change to Set mode
		    
		    'Ask if user wants to save
		    If NOT ActionSongAskSave Then
		      Return 'User Canceled
		    End If
		    
		    '++JRC Reload Set when switching back to Set Mode, fixes bug #1851991
		    idx = pop_sets_sets.ListIndex //cheats, forces a change event that will reload the set
		    pop_sets_sets.ListIndex = -1
		    pop_sets_sets.ListIndex = idx
		    '--
		    
		    'If Status_SongChanged Then
		    ActionSongRevert false //Easier to do here; we've already got a method defined
		    btn_mode_songs_mode.SetStuck False
		    btn_mode_sets_mode.SetStuck True
		    pge_controls.Value = 1
		    pge_contents.Value = LastSetPane
		    mnu_mode_songs.Checked = False
		    mnu_mode_sets.Checked = True
		  End If
		  '++JRC
		  Status_CurrentMode = i
		  '--
		  EnableMenuItems
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetSongEditorPath(newPath As String)
		  //++
		  // June 2007, EMP
		  // Change the current folder for the song editor
		  //--
		  Dim i As Integer
		  
		  If pop_songs_song_folders.ListCount = 0 Then Return //Protect against empty list
		  //++
		  // Special case: If new path is an empty string, then set to Main, always the second element
		  //--
		  If newPath = "" Then
		    pop_songs_song_folders.ListIndex = 1
		    Return
		  End If
		  
		  For i = 0 To pop_songs_song_folders.ListCount - 1
		    If newPath = pop_songs_song_folders.List(i) Then
		      pop_songs_song_folders.ListIndex = i
		      Return
		    End If
		  Next
		  
		  // Not found. Take advantage of the fact that ( All ) is always the first element.
		  
		  pop_songs_song_folders.ListIndex = 0
		  
		Catch ex
		  If ex IsA OutOfBoundsException Then
		    If pop_songs_song_folders.ListCount > 0 Then
		      pop_songs_song_folders.ListIndex = 0
		    End If
		  Else
		    Raise ex
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SplitToArray(str As String, ByRef arr() As String, char As String)
		  Dim st, x As Integer
		  Dim c As String
		  ReDim arr(0)
		  
		  str = str + char
		  
		  st = 1
		  x = InStr(st, str, char)
		  While x >= st
		    arr.Append RTrim(Mid(str, st, x-st))
		    st = x + Len(char)
		    x = InStr(st, str, char)
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub StoreSongFields()
		  'Changed function now has two parameters
		  
		  Dim f As FolderItem
		  Dim theme As String
		  Dim i As Integer
		  Dim FullName As String
		  
		  If CurrentSong = Nil Then Return
		  
		  SmartML.SetValue CurrentSong.DocumentElement, "title", edt_song_title.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "author", edt_song_author.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "copyright", edt_song_copyright.Text
		  'Josh
		  SmartML.SetValue CurrentSong.DocumentElement, "hymn_number", edt_song_hymn_number.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "presentation", edt_song_presentation.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "ccli", edt_song_ccli.Text
		  
		  For i = 0 To lst_song_themes.ListCount - 1
		    If lst_song_themes.CellCheck(i, 0) Then theme = theme + lst_song_themes.Cell(i, 0) + "; "
		  Next i
		  SmartML.SetValue CurrentSong.DocumentElement, "theme", theme
		  SmartML.RemoveSelf SmartML.GetNode(CurrentSong.DocumentElement, "alttheme")
		  
		  SmartML.SetValue CurrentSong.DocumentElement, "capo", pop_song_capo.List(pop_song_capo.ListIndex)
		  '++JRC Comatibilty with RB 2009
		  SmartML.SetValueB CurrentSong.DocumentElement, "capo/@print", chk_song_capo_print.Value
		  
		  If pop_song_tempo.ListIndex >= 0 Then _
		  SmartML.SetValue CurrentSong.DocumentElement, "tempo", pop_song_tempo.Text
		  If pop_song_time_sig.ListIndex >= 0 Then _
		  SmartML.SetValue CurrentSong.DocumentElement, "time_sig", pop_song_time_sig.Text
		  SmartML.RemoveSelf SmartML.GetNode(CurrentSong.DocumentElement, "timesig")
		  
		  SmartML.SetValue CurrentSong.DocumentElement, "key", edt_song_key.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "aka", edt_song_aka.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "key_line", edt_song_key_line.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "user1", edt_song_user1.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "user2", edt_song_user2.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "user3", edt_song_user3.Text
		  
		  edf_song_lyrics.Text = CheckLyricLines(edf_song_lyrics.Text)
		  SmartML.SetValue CurrentSong.DocumentElement, "lyrics", edf_song_lyrics.Text.FormatUnixEndOfLine
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TranslateMe()
		  App.T.TranslateWindow Me, "", App.TranslationFonts
		  txt_context_help.Caption = ""
		  
		  Dim s As String
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "user_defined/@user1")
		  If s.Len > 0 Then
		    lbl_song_user1.Caption = s + ":"
		  End If
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "user_defined/@user2")
		  If s.Len > 0 Then lbl_song_user2.Caption = s + ":"
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "user_defined/@user3")
		  If s.Len > 0 Then lbl_song_user3.Caption = s + ":"
		  
		  Title = "OpenSong " + App.SmartVersion
		  
		  btn_song_present.DeletePopup
		  btn_song_present.AddPopupRow App.T.Translate("songs_mode/selected_song/present/single_screen/@caption")
		  '++JRC Don't need two Present Dual-Screen items ;)
		  'if ScreenCount > 1 Then
		  'btn_song_present.AddPopupRow App.T.Translate("songs_mode/selected_song/present/dual_screen/@caption")
		  'End If
		  
		  #If TargetLinux
		    If ((Screen(0).Width /2) > Screen(0).Height) And (ScreenCount = 1) Then
		      btn_song_present.AddPopupRow App.T.Translate("songs_mode/selected_song/present/dual_screen/@caption")
		    End If
		  #EndIf
		  
		  if ScreenCount > 1 Then
		    btn_song_present.AddPopupRow App.T.Translate("songs_mode/selected_song/present/dual_screen/@caption")
		  End If
		  
		  btn_song_present.AddPopupSeparator
		  btn_song_present.AddPopupRow App.T.Translate("songs_mode/selected_song/present/preview_dual_screen/@caption")
		  
		  btn_set_present.DeletePopup
		  btn_set_present.AddPopupRow App.T.Translate("sets_mode/current_set/present/single_screen/@caption")
		  
		  #If TargetLinux
		    If ((Screen(0).Width /2) > Screen(0).Height) And (ScreenCount = 1) Then
		      btn_set_present.AddPopupRow App.T.Translate("sets_mode/current_set/present/dual_screen/@caption")
		    End If
		  #EndIF
		  
		  If ScreenCount > 1 Then
		    btn_set_present.AddPopupRow App.T.Translate("sets_mode/current_set/present/dual_screen/@caption")
		  End If
		  
		  btn_set_present.AddPopupSeparator
		  btn_set_present.AddPopupRow App.T.Translate("sets_mode/current_set/present/preview_dual_screen/@caption")
		  
		  '++JRC
		  btn_set_presentitem.DeletePopup
		  btn_set_presentitem.AddPopupRow App.T.Translate("sets_mode/current_item/presentitem/single_screen/@caption")
		  #If TargetLinux
		    If ((Screen(0).Width /2) > Screen(0).Height) And (ScreenCount = 1) Then
		      btn_set_presentitem.AddPopupRow App.T.Translate("sets_mode/current_item/presentitem/dual_screen/@caption")
		    End If
		  #EndIF
		  
		  If ScreenCount > 1 Then
		    btn_set_presentitem.AddPopupRow App.T.Translate("sets_mode/current_item/presentitem/dual_screen/@caption")
		  End If
		  
		  btn_set_presentitem.AddPopupSeparator
		  btn_set_presentitem.AddPopupRow App.T.Translate("sets_mode/current_item/presentitem/preview_dual_screen/@caption")
		  
		  '--
		  
		  pop_song_accidentals.DeleteAllRows
		  pop_song_accidentals.AddRow App.T.Translate("general_song_editor/transpose/using/sharps/@caption")
		  pop_song_accidentals.AddRow App.T.Translate("general_song_editor/transpose/using/flats/@caption")
		  pop_song_accidentals.ListIndex = 0
		  
		  '++JRC: Fixed now translates (All) and (Main) folder items
		  Dim OldIndex As Integer = pop_songs_song_folders.ListIndex
		  
		  Songs.SetBuiltinFilters "( " + App.T.Translate("songs_mode/song_folders/filter_all/@caption") + " )", _
		  "( " + App.T.Translate("songs_mode/song_folders/filter_main/@caption") + " )"
		  
		  If UBound(Songs.GetFolders(pop_songs_song_folders)) = 0 Then
		  End If
		  
		  pop_songs_song_folders.ListIndex = OldIndex
		  'Rebuild old File Name
		  if Globals.OldSongFileName <> "" then
		    Globals.OldSongFileName = pop_songs_song_folders.Text + "/" + lst_songs_songs.Text
		  end if
		  '--
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateMenuItems()
		  EnableMenuItems
		End Sub
	#tag EndMethod


	#tag Note, Name = Status Hierarchy
		SetOpen
		+ SetChanged
		+ InSetOpen
		   + InSetChanged
	#tag EndNote


	#tag Property, Flags = &h1
		Protected ActiveEditField As SEditField
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentInSetItem As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentSet As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentSetIndex As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentSetName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentSong As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentSongName As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentSongObj As Song
	#tag EndProperty

	#tag Property, Flags = &h0
		DontUpdateSetItem As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Find As FindClass
	#tag EndProperty

	#tag Property, Flags = &h0
		FindFocus As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			This holds the pointer to the first song (usually the current song) involved in the active search.
			Allows wrapping search support.
		#tag EndNote
		Protected FindStartSong As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected HSizer As HalfSizer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected InSetNameCache As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected KeyedSearch As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LastSearch As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LastSetPane As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LastSongPane As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected PopupClicked As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			PowerPointApplication
		#tag EndNote
		PPT As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		saWin As SongActivity
	#tag EndProperty

	#tag Property, Flags = &h0
		SongCache(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SongChangesMade As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Songs As FolderDB
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_Closing As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_CurrentMode As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_InSetChanged As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_InSetEditable As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_InSetOpen As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_InSetSongEdit As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Status_Presentation As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_ProgramInitialized As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_SetChanged As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_SetOpen As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Status_SongChanged As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Status_SongOpen As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected TempSet As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Untitled As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events mnu_clipboard
	#tag Event
		Sub Action(item As String)
		  If ActiveEditField = Nil Then Return
		  //++ EMP, 17 Feb 2006
		  // Changed Joshua's Win32 approach to one using
		  // RB's built-in character encoding support
		  //--
		  ''++JRC
		  'dim m As MemoryBlock
		  'Declare Sub ClipboardUNICODEtoTXT lib "utility.dll" (Handle as integer, Buffer as Ptr)
		  ''--
		  
		  Dim c As New Clipboard
		  
		  If item = App.T.Translate("shared/cut/@caption") Then
		    c.SetText  ActiveEditField.SelText
		    ActiveEditField.SelText = ""
		  ElseIf item = App.T.Translate("shared/copy/@caption") Then
		    c.SetText ActiveEditField.SelText
		  ElseIf item = App.T.Translate("shared/paste/@caption") Then
		    ''++JRC
		    'm = NewMemoryBlock(50000)
		    'ClipboardUNICODEtoTXT(MainWindow.Handle, m)
		    ''edf_song_lyrics.Text = m.CString(0)
		    'ActiveEditField.SelText = m.CString(0)
		    '
		    ''--
		    if c.TextAvailable then
		      Try
		        c.Text = ConvertEncoding(c.Text, encodings.UTF8)
		      Catch ex
		        App.DebugWriter.Write("Can't convert string to paste, string is '" + c.text + "'", 1)
		      End Try
		    End If
		    ActiveEditField.SelText = c.text
		  End If
		  
		  PopupClicked = True
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.AddRow App.T.Translate("shared/cut/@caption")
		  Me.AddRow App.T.Translate("shared/copy/@caption")
		  Me.AddRow App.T.Translate("shared/paste/@caption")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_mode_songs_mode
	#tag Event
		Sub Action()
		  SetMode 0
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon midipic, midimask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_mode_sets_mode
	#tag Event
		Sub Action()
		  SetMode 1
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon backgroundpic, backgroundmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_songs_song_folders
	#tag Event
		Sub Change()
		  '++JRC
		  if Globals.OldFolderSel = Me.ListIndex then
		    return
		  end if
		  
		  Globals.OldFolderSel = Me.ListIndex
		  '--
		  'Ask if user wants to save
		  If NOT ActionSongAskSave Then Return 'User Canceled
		  
		  App.MouseCursor = System.Cursors.Wait
		  Call Songs.GetFiles(Me.Text, lst_songs_songs)
		  'If UBound(Songs.GetFiles(Me.Text, lst_songs_songs)) > 0 Then
		  'lst_songs_songs.SortedColumn = 0
		  'lst_songs_songs.Sort
		  'End If
		  edt_songs_curr_folder.Text = ""
		  Globals.CurrentSongFolder = Me.Text
		  App.MouseCursor = Nil
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/song_folders"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_revert
	#tag Event
		Sub Action()
		  ActionSongRevert True
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/revert"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon undopic, undomask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_present
	#tag Event
		Sub Action()
		  If Me.MenuItem = App.T.Translate("songs_mode/selected_song/present/single_screen/@caption") Then
		    ActionSongPresent PresentWindow.MODE_SINGLE_SCREEN
		  ElseIf Me.MenuItem = App.T.Translate("songs_mode/selected_song/present/preview_dual_screen/@caption") Then
		    ActionSongPresent PresentWindow.MODE_PREVIEW
		  ElseIf Me.MenuItem = App.T.Translate("songs_mode/selected_song/present/dual_screen/@caption") Then
		    #If TargetLinux
		      If (Screen(0).Width /2) > Screen(0).Height Then
		        ActionSongPresent PresentWindow.MODE_LINUX_DUAL_SCREEN
		      Else
		        InputBox.Message App.T.Translate("errors/no_multi_screen")
		      End If
		    #Else
		      If ScreenCount > 1 Then
		        ActionSongPresent PresentWindow.MODE_DUAL_SCREEN
		      Else
		        InputBox.Message App.T.Translate("errors/no_multi_screen")
		      End If
		    #EndIF
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/present"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon backgroundpic, backgroundmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_save
	#tag Event
		Sub Action()
		  ActionSongSave
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/save"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon filesavepic, filesavemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_print
	#tag Event
		Sub Action()
		  ActionSongPrint
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/print"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon fileprintpic, fileprintmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_rename
	#tag Event
		Sub Action()
		  '++JRC Moved to Method
		  ActionSongRename
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/rename"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon redopic, redomask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_export
	#tag Event
		Sub Action()
		  Dim i As Integer
		  Dim dlg as New SelectFolderDialog
		  Dim f, g as FolderItem
		  Dim output, goutput As TextOutputStream
		  Dim song As XmlDocument
		  
		  'Ask if user wants to save
		  If NOT ActionSongAskSave Then Return 'User Canceled
		  
		  'build dialog
		  dlg.ActionButtonCaption = App.T.Translate("shared/ok/@caption")
		  dlg.CancelButtonCaption = App.T.Translate("shared/cancel/@caption")
		  dlg.InitialDirectory = App.AppDocumentsFolder
		  dlg.PromptText = App.T.Translate("shared/export_to/@caption")
		  dlg.Title = App.T.Translate("shared/browse_for/@caption")
		  
		  f = dlg.ShowModal() 'show dialog
		  If f <> Nil Then
		    App.MouseCursor = System.Cursors.Wait
		    output = f.Child(MakeSafeURLName(lst_songs_songs.Text, False) + ".html").CreateTextFile
		    song = SmartML.XDocFromFile(Songs.GetFile(lst_songs_songs.CellTag(lst_songs_songs.ListIndex ,0) + lst_songs_songs.List(lst_songs_songs.ListIndex)))
		    If output <> Nil And song <> Nil Then
		      output.Write SongML.ToHTML(song.DocumentElement)
		      If goutput <> Nil Then goutput.WriteLine "<li><a href=""" + MakeSafeURLName(lst_songs_songs.List(i), True) + ".html"">" + lst_songs_songs.List(i) + "</a></li>"
		      output.Close
		    End If
		    App.MouseCursor = Nil
		    g = App.AppFolder.Child("OpenSong Settings").Child("style.css")
		    If g <> Nil Then g.CopyFileTo f
		    
		    InputBox.Message App.T.Translate("shared/done/@caption")
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/export"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon filesaveaspic, filesaveasmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_copy
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/copy"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon editcopypic, editcopymask
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  ActionSongCopy
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_move
	#tag Event
		Sub Action()
		  '++JRC Removed the second prompt
		  ActionSongMove
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/move"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon fileopenpic, fileopenmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_delete
	#tag Event
		Sub Action()
		  ActionSongRemove
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/delete"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon editdeletepic, editdeletemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_songs_print
	#tag Event
		Sub Action()
		  ActionSongPrintAll
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/all_songs/print"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon fileprintpic, fileprintmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_songs_export
	#tag Event
		Sub Action()
		  //++
		  // 3 December 2006, EMP
		  // Change HTML file encoding to UTF-8 [Bug 1477964]
		  Dim i As Integer
		  Dim dlg as New SelectFolderDialog
		  Dim f, g as FolderItem
		  Dim output, goutput As TextOutputStream
		  Dim song As XmlDocument
		  
		  'First get confirmation
		  //++
		  // Feature request 1528693: require confirmation
		  //--
		  If Not InputBox.AskYN(App.T.Translate("questions/long_operation/@caption")) Then Return
		  
		  'Ask if user wants to save
		  If NOT ActionSongAskSave Then Return 'User Canceled
		  
		  'build dialog
		  dlg.ActionButtonCaption = App.T.Translate("shared/ok/@caption")
		  dlg.CancelButtonCaption = App.T.Translate("shared/cancel/@caption")
		  dlg.InitialDirectory = App.AppDocumentsFolder
		  dlg.PromptText = App.T.Translate("songs_mode/selected_song/export/to/@caption")
		  dlg.Title = App.T.Translate("shared/browse_for/@caption")
		  
		  f = dlg.ShowModal() 'show dialog
		  If f <> Nil Then
		    App.DoEvents
		    g = f.Child("index.html")
		    goutput = g.CreateTextFile
		    If goutput <> Nil Then
		      goutput.WriteLine "<html><head>"
		      goutput.WriteLine "<meta http-equiv=""Content-type"" content=""text/html;charset=UTF-8"" />"
		      goutput.WriteLine "<title>" + App.T.Translate("songs_mode/songs/@caption") + "</title><link rel=""stylesheet"" href=""style.css"" type=""text/css""/></head><body>"
		      goutput.WriteLine "<div id=""title"">" + App.T.Translate("songs_mode/songs/@caption") + "</div><ul id=""song_list"">"
		    End If
		    App.MouseCursor = System.Cursors.Wait
		    ProgressWindow.Show
		    For i = 0 To lst_songs_songs.ListCount - 1
		      output = f.Child(MakeSafeURLName(lst_songs_songs.List(i), False) + ".html").CreateTextFile
		      song = SmartML.XDocFromFile(Songs.GetFile(lst_songs_songs.CellTag(i,0) + lst_songs_songs.List(i)))
		      If output <> Nil And song <> Nil Then
		        output.Write SongML.ToHTML(song.DocumentElement)
		        If goutput <> Nil Then goutput.WriteLine "<li><a href=""" + MakeSafeURLName(lst_songs_songs.List(i), True) + ".html"">" + lst_songs_songs.List(i) + "</a></li>"
		        output.Close
		      End If
		      ProgressWindow.SetProgress (i+1) / lst_songs_songs.ListCount * 100
		      '++JRC
		      ProgressWindow.lbl_status.Text =  App.T.Translate("progress_status/export") + "..."
		      '--
		      ProgressWindow.SetStatus lst_songs_songs.List(i)
		    Next i
		    If goutput <> Nil Then
		      goutput.WriteLine "</ul><p><a class=""opensong"" href=""http://www.opensong.org/"">" + App.T.Translate("about/created_with_opensong") + "</a></p>"
		      goutput.Write "</body></html>"
		    End If
		    goutput.Close
		    App.MouseCursor = Nil
		    g = App.AppFolder.Child("OpenSong Settings").Child("style.css")
		    If g <> Nil Then g.CopyFileTo f
		    
		  End If
		  ProgressWindow.Close
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/all_songs/export"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon filesaveaspic, filesaveasmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_songs_find
	#tag Event
		Sub Action()
		  Find
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/all_songs/find"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon findpic, findmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_create
	#tag Event
		Sub Action()
		  ActionSongNew
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/new_song/create"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon filenewpic, filenewmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_import
	#tag Event
		Sub Action()
		  //++
		  // Function temporarily unavailable
		  //--
		  Dim mb As New MessageDialog
		  mb.ActionButton.Caption = App.T.Translate("shared/cancel/@caption")
		  mb.ActionButton.Visible = True
		  mb.ActionButton.Default = True
		  mb.AlternateActionButton.Visible = False
		  mb.CancelButton.Visible = False
		  mb.Message = App.T.Translate("errors/cclinotavailable")
		  Dim button As MessageDialogButton
		  
		  button = mb.ShowModalWithin(Self)
		  Return
		  
		  //++
		  // Original Function Here
		  //--
		  
		  'Ask if user wants to save
		  If NOT ActionSongAskSave Then Return 'User Canceled
		  
		  CCLIWindow.ShowModalWithin MainWindow
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/new_song/import"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon fileopenpic, fileopenmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_songs_song_folders_add
	#tag Event
		Sub Action()
		  Dim f As FolderItem
		  Dim t As String
		  Dim i As Integer
		  
		  t = InputBox.Input(App.T.Translate("questions/new_name/@caption"), "")
		  If Len(t) > 0 Then
		    If Not FileUtils.IsSafeFileName(t) Then
		      InputBox.Message App.T.Translate("errors/bad_file_name", t)
		      Return
		    End If
		    
		    If pop_songs_song_folders.ListIndex >= 2 Then t = pop_songs_song_folders.Text + "/" + t
		    f = Songs.AddFolder(t)
		    
		    If f = Nil Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", t)
		      Return
		    End If
		    
		    If UBound(Songs.GetFolders(pop_songs_song_folders)) = 0 Then
		    End If
		    
		    For i = 0 To pop_songs_song_folders.ListCount - 1
		      If StrComp(pop_songs_song_folders.List(i), t, 1) = 0 Then pop_songs_song_folders.ListIndex = i
		    Next i
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/song_folders/new"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon addpic, addmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_songs_song_folders_delete
	#tag Event
		Sub Action()
		  If pop_songs_song_folders.ListIndex <= 1 Then Return
		  
		  If InputBox.Ask(App.T.Translate("questions/delete/@caption", pop_songs_song_folders.Text)) Then
		    If Not Songs.DeleteFolder(pop_songs_song_folders.Text) Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", pop_songs_song_folders.Text)
		    Else
		      pop_songs_song_folders.RemoveRow pop_songs_song_folders.ListIndex
		      pop_songs_song_folders.ListIndex = 0
		    End If
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/song_folders/delete"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon removepic, removemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_songs_songs
	#tag Event
		Sub Change()
		  Dim f As FolderItem
		  Dim xnode As XmlNode
		  Dim temp As String
		  Dim path_to_songs As String
		  Dim path_to_song As String
		  Dim fullpath As String
		  
		  //++EMP 18 Feb 2006
		  // If Globals.OldSongSel < 0, then immediately return.
		  // This is a flag that some manipulation of items is going on
		  // (See ActionSongNew, for example)
		  If Globals.OldSongSel < 0 Then Return
		  
		  If lst_songs_songs.ListIndex >= -1 Then '++JRC Fix corner case where user would click in an empty row of the list
		    'and has unsaved changes,those changes would be lost
		    if lst_songs_songs.ListIndex <> Globals.OldSongSel Or lst_songs_songs.CellTag(Me.ListIndex, 0) + lst_songs_songs.Text <> Globals.OldSongFileName then
		      if CurrentSong <> Nil And Status_SongChanged = True And Globals.OldSongFileName <> "" Then
		        '++JRC
		        'Ask if user wants to save
		        If NOT ActionSongAskSave Then
		          'user canceled, go back to old selection
		          'this works except the FocusRing doesn't change back
		          'along with the selection box grrr
		          lst_songs_songs.ListIndex = Globals.OldSongSel
		          return
		        End if
		        '--
		      End if
		    Else
		      if CurrentSong <> Nil And Status_SongChanged = True And Globals.OldSongFileName <> "" Then
		        return
		      End if
		    End if
		    
		    If lst_songs_songs.ListIndex >= 0 Then
		      Globals.OldSongSel = lst_songs_songs.ListIndex
		    End If
		    '--
		  End if
		  
		  If lst_songs_songs.ListIndex >= 0 Then
		    'f = Songs.GetFile(pop_songs_song_folders.Text + "/" + lst_songs_songs.Text)
		    fullpath = lst_songs_songs.CellTag(Me.ListIndex, 0).StringValue + lst_songs_songs.Text
		    f = Songs.GetFile(fullpath)
		    
		    If f <> Nil And f.Exists Then
		      App.MouseCursor = System.Cursors.Wait
		      CurrentSong = SmartML.XDocFromFile(f)
		      
		      // Open as Object...
		      'CurrentSongObj = New Song
		      'Call CurrentSongObj.Load(f) // We'll ignore error handling for the moment.  Not a good thing.
		      
		      'Changed save current song filename
		      Globals.OldSongFileName = fullpath
		      //++EMP 8/9/05 -- Show which folder this song is found in
		      edt_songs_curr_folder.Text = lst_songs_songs.CellTag(Me.ListIndex, 0).StringValue
		      If right(edt_songs_curr_folder.Text, 1) = "/" Then edt_songs_curr_folder.Text = Left(edt_songs_curr_folder.Text, Len(edt_songs_curr_folder.Text) - 1)
		      //--
		      App.MouseCursor = Nil
		      If CurrentSong <> Nil  Then
		        Status_SongOpen = False ' Just to keep the field changes from calling EnableMenuItems
		        LoadSongFields
		        Status_SongOpen = True
		        Status_SongChanged = False
		        EnableMenuItems
		      Else
		        // Dummy up a doc to avoid a Nil object
		        CurrentSong = New XmlDocument
		        xnode = CurrentSong.AppendChild(CurrentSong.CreateElement("song"))
		        SmartML.SetValue xnode, "title", f.Name
		        LoadSongFields
		        Status_SongOpen = True
		        Status_SongChanged = False
		        EnableMenuItems
		        SmartML.DisplayError
		      End If
		    Else
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_songs_songs.Text)
		      Status_SongOpen = False
		      Status_SongChanged = False
		      EnableMenuItems
		    End If
		  Else
		    Status_SongOpen = False
		    Status_SongChanged = False
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function CompareRows(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  
		  If column <> 0 Then Return False // Protection for the future: don't use this except for the song name column
		  
		  result = CompareHymnBookOrder(Me.Cell(row1, column), Me.Cell(row2, column))
		  
		  If result = 0 Then //Names are equal, sort by folder
		    result = Compare(Me.CellTag(row1, column).StringValue, Me.CellTag(row2, column).StringValue)
		  End If
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  tmr_lookup.Enabled = True
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Dim i, l As Integer
		  Dim temp As TextEncoding
		  Dim NewKey As String
		  Dim SearchedEntry As String
		  //++
		  // Check for a modifier key being pressed...don't do anything if Control or Alt or Command is pressed
		  //--
		  App.DebugWriter.Write "MainWindow.lst_songs_songs.KeyDown: Enter"
		  If Keyboard.CommandKey Or Keyboard.ControlKey Or Keyboard.OptionKey Then Return False
		  
		  App.DebugWriter.Write "MainWindow.lst_songs_songs.KeyDown: key = '" + key + "'"
		  Key = ConvertEncoding(key, Encodings.UTF8)
		  NewKey = ConvertEncoding(KeyedSearch + key, Encodings.UTF8)
		  App.DebugWriter.Write "MainWindow.lst_songs_songs.KeyDown: NewKey = " + NewKey
		  l = Len(NewKey)
		  
		  tmr_lookup.Reset
		  For i = 0 To Me.ListCount - 1
		    SearchedEntry = ConvertEncoding(Left(Me.List(i), l), Encodings.UTF8)
		    If SearchedEntry = NewKey Then
		      Me.ListIndex = i
		      App.DebugWriter.Write "MainWindow.lst_songs_songs.KeyDown: Found match index, value: " + str(i) + " " + Me.List(i)
		      KeyedSearch = NewKey
		      Return True
		    End If
		  Next i
		  Return False
		End Function
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  tmr_lookup.Enabled = False
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/songs"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_songs_curr_folder
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/curr_folder"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_sets_sets
	#tag Event
		Sub Change()
		  'Ask if user wants to save
		  If NOT ActionSetAskSave Then
		    If CurrentSetIndex >= 0 Then
		      pop_sets_sets.ListIndex = CurrentSetIndex
		    End If
		    Return 'User Canceled
		  End If
		  
		  CurrentSetIndex = pop_sets_sets.ListIndex
		  
		  //
		  App.MouseCursor = System.Cursors.Wait
		  lst_set_items.DeleteAllRows
		  If pop_sets_sets.ListIndex < 0 Or Len(pop_sets_sets.Text) <= 0 Then
		    App.MouseCursor = Nil
		    Return
		  End If
		  
		  Dim f, song As FolderItem
		  'Dim input As TextInputStream
		  Dim line As String
		  Dim xnode As XmlNode
		  Dim slideType As String
		  
		  lst_set_items.DeleteAllRows
		  
		  f = App.DocsFolder.Child("Sets").Child(pop_sets_sets.Text)
		  CurrentSet = SmartML.XDocFromFile(f)
		  If CurrentSet = Nil Then
		    App.MouseCursor = Nil
		    CurrentSet = New XmlDocument
		    xnode = CurrentSet.AppendChild(CurrentSet.CreateElement("set"))
		    SmartML.DisplayError
		  End If
		  // This section gets the /set/@name value from the current document
		  // Since this is a non-existent attribute in the released version, add it if
		  // it's not already there.
		  //EMP 10/9/04
		  dim nameAtt as xmlattribute
		  
		  dim strName as String
		  
		  nameAtt = CurrentSet.DocumentElement.GetAttributeNode("name")
		  
		  if nameatt = Nil then
		    CurrentSet.DocumentElement.SetAttribute("name", me.text)
		  end if
		  
		  CurrentSetName = me.text
		  //--
		  Dim slide_groups, xchild As XmlNode
		  Dim i As Integer
		  
		  slide_groups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  If slide_groups = Nil Then Return
		  
		  xchild = slide_groups.FirstChild
		  While xchild <> Nil
		    '++JRC Fix broken set item type displaying in set list
		    slideType = App.T.Translate("sets_mode/items/" + xchild.GetAttribute("type") + "/@caption")
		    If slideType = "" Then // unknown slide type
		      App.DebugWriter.Write "MainWindow.pop_sets_sets.Change: Unknown slide type '" + xchild.GetAttribute("type") + "/@caption" + "'", 1
		      slideType = "*ERROR*"
		    End If
		    lst_set_items.AddRow xchild.GetAttribute("name") + " " + slideType
		    xchild = xchild.NextSibling
		  Wend
		  
		  '++JRC Save backup copy
		  TempSet = New XmlDocument
		  TempSet.AppendChild TempSet.ImportNode(CurrentSet.DocumentElement, True)
		  '--
		  
		  Status_SetOpen = True
		  Status_SetChanged = False
		  Status_InSetOpen = False
		  Status_InSetChanged = False
		  '++JRC Correct issue where the first and last item in a set weren't accessable
		  CurrentInSetItem = -1
		  '--
		  EnableMenuItems
		  
		  App.MouseCursor = Nil
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/sets"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_sets_add
	#tag Event
		Sub Action()
		  ActionSetNew
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/sets/add"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon addpic, addmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_remove
	#tag Event
		Sub Action()
		  ActionInSetRemove False
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_item/remove"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon editdeletepic, editdeletemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_move_down
	#tag Event
		Sub Action()
		  Dim index As Integer
		  index = lst_set_items.ListIndex
		  
		  Dim slide_groups As XmlNode
		  slide_groups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  SmartML.SwapChildren slide_groups, index+1, index
		  
		  Dim temp As String
		  temp = lst_set_items.List(lst_set_items.ListIndex)
		  
		  lst_set_items.List(lst_set_items.ListIndex) = lst_set_items.List(lst_set_items.ListIndex+1)
		  lst_set_items.List(lst_set_items.ListIndex+1) = temp
		  lst_set_items.ListIndex = lst_set_items.ListIndex + 1
		  
		  Status_SetChanged = True
		  EnableMenuItems
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_item/move_down"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon downpic, downmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_copy
	#tag Event
		Sub Action()
		  ActionInSetCopy
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_item/copy"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon editcopypic, editcopymask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_move_up
	#tag Event
		Sub Action()
		  Dim index As Integer
		  index = lst_set_items.ListIndex
		  
		  Dim slide_groups As XmlNode
		  slide_groups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  SmartML.SwapChildren slide_groups, index, index-1
		  
		  Dim temp As String
		  
		  temp = lst_set_items.List(index-1)
		  lst_set_items.List(index-1) = lst_set_items.List(index)
		  lst_set_items.List(index) = temp
		  
		  lst_set_items.ListIndex = lst_set_items.ListIndex - 1
		  
		  Status_SetChanged = True
		  EnableMenuItems
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_item/move_up"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon uppic, upmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_paste
	#tag Event
		Sub Action()
		  ActionInSetPaste
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_item/paste"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon editcopypic, editcopymask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_store
	#tag Event
		Sub Action()
		  ActionInSetSave
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_item/store"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon filesavepic, filesavemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_presentitem
	#tag Event
		Sub Action()
		  Dim Item As Integer
		  
		  Item = lst_set_items.ListIndex '+ 1
		  
		  If Me.MenuItem = App.T.Translate("sets_mode/current_item/presentitem/single_screen/@caption") Then
		    ActionSetPresent PresentWindow.MODE_SINGLE_SCREEN, Item
		  ElseIf Me.MenuItem = App.T.Translate("sets_mode/current_item/presentitem/preview_dual_screen/@caption") Then
		    ActionSetPresent PresentWindow.MODE_PREVIEW, Item
		  ElseIf Me.MenuItem = App.T.Translate("sets_mode/current_item/presentitem/dual_screen/@caption") Then
		    #If TargetLinux
		      If (Screen(0).Width /2) > Screen(0).Height Then
		        ActionSetPresent PresentWindow.MODE_LINUX_DUAL_SCREEN, Item
		      Else
		        InputBox.Message App.T.Translate("errors/no_multi_screen")
		      End If
		    #Else
		      If ScreenCount > 1 Then
		        ActionSetPresent PresentWindow.MODE_DUAL_SCREEN, Item
		      Else
		        InputBox.Message App.T.Translate("errors/no_multi_screen")
		      End If
		    #EndIF
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_item/presentitem"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon backgroundpic, backgroundmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_delete
	#tag Event
		Sub Action()
		  If Not ActionSetAskSave Then Return
		  If InputBox.Ask(App.T.Translate("questions/delete/@caption", pop_sets_sets.Text)) Then
		    App.DocsFolder.Child("Sets").Child(pop_sets_sets.Text).Delete
		    
		    pop_sets_sets.RemoveRow pop_sets_sets.ListIndex
		    pop_sets_sets.ListIndex = -1
		    
		    Status_SetOpen = False
		    Status_SetChanged = False
		    Status_InSetOpen = False
		    Status_InSetChanged = False
		    Status_InSetEditable = False
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_set/delete"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon editdeletepic, editdeletemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_present
	#tag Event
		Sub Action()
		  If Me.MenuItem = App.T.Translate("sets_mode/current_set/present/single_screen/@caption") Then
		    ActionSetPresent PresentWindow.MODE_SINGLE_SCREEN
		  ElseIf Me.MenuItem = App.T.Translate("sets_mode/current_set/present/preview_dual_screen/@caption") Then
		    ActionSetPresent PresentWindow.MODE_PREVIEW
		  ElseIf Me.MenuItem = App.T.Translate("sets_mode/current_set/present/dual_screen/@caption") Then
		    #If TargetLinux
		      If (Screen(0).Width /2) > Screen(0).Height Then
		        ActionSetPresent PresentWindow.MODE_LINUX_DUAL_SCREEN
		      Else
		        InputBox.Message App.T.Translate("errors/no_multi_screen")
		      End If
		    #Else
		      If ScreenCount > 1 Then
		        ActionSetPresent PresentWindow.MODE_DUAL_SCREEN
		      Else
		        InputBox.Message App.T.Translate("errors/no_multi_screen")
		      End If
		    #EndIF
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_set/present"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon backgroundpic, backgroundmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_rename
	#tag Event
		Sub Action()
		  Dim t as String
		  Dim old as String
		  Dim f as FolderItem
		  Dim i As Integer
		  
		  'Ask if user wants to save
		  If NOT ActionSetAskSave Then Return 'User Canceled
		  
		  old = pop_sets_sets.Text
		  
		  t = InputBox.Input(App.T.Translate("questions/rename/@caption", old), old)
		  If Len(t) > 0 Then
		    If Not FileUtils.IsSafeFileName(t) Then
		      InputBox.Message App.T.Translate("errors/bad_file_name", t)
		      Return
		    End If
		    
		    f = App.DocsFolder.Child("Sets").Child(t)
		    If f.Exists Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code=3]", f.AbsolutePath) ' already exists
		      Exit
		    End If
		    
		    f = App.DocsFolder.Child("Sets").Child(old)
		    If Not f.Exists Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code=8]", f.AbsolutePath) ' could not find file
		      Exit
		    End If
		    f.Name = t
		    i = pop_sets_sets.ListIndex
		    pop_sets_sets.RemoveRow i
		    pop_sets_sets.InsertRow i, t
		    '++JRC Prevent Second save prompt
		    If Status_SetChanged Then
		      Status_SetChanged = false
		      pop_sets_sets.ListIndex = i
		      Status_SetChanged = true
		      EnableMenuItems
		    else
		      pop_sets_sets.ListIndex = i
		    End If
		    '--
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_set/rename"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon redopic, redomask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_print_songs
	#tag Event
		Sub Action()
		  ActionSetPrint
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_set/print_songs"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon fileprintpic, fileprintmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_print_order
	#tag Event
		Sub Action()
		  ActionSetPrintList
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_set/print_order"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon fileprintpic, fileprintmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_save
	#tag Event
		Sub Action()
		  ActionSetSave
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_set/save"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon filesavepic, filesavemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_saveas
	#tag Event
		Sub Action()
		  Dim t as String
		  Dim old as String
		  Dim f, oldf as FolderItem
		  Dim i As Integer
		  old = pop_sets_sets.Text
		  
		  t = InputBox.Input(App.T.Translate("questions/rename/@caption", old), old)
		  If Len(t) > 0 Then
		    If Not FileUtils.IsSafeFileName(t) Then
		      InputBox.Message App.T.Translate("errors/bad_file_name", t)
		      Return
		    End If
		    
		    f = App.DocsFolder.Child("Sets").Child(t)
		    If f.Exists Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code=3]", f.AbsolutePath) ' already exists
		      Exit
		    End If
		    
		    oldf = App.DocsFolder.Child("Sets").Child(old)
		    If Not oldf.Exists Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code=8]", oldf.AbsolutePath) ' could not find file
		      Exit
		    End If
		    MainWindow.MouseCursor = System.Cursors.Wait
		    
		    CurrentSet.DocumentElement.SetAttribute("name", t)
		    
		    CurrentSetName = t
		    
		    f.Name = t
		    
		    Status_SetChanged = True
		    ActionSetSave 'save under the new name
		    
		    'i = pop_sets_sets.ListIndex
		    'pop_sets_sets.InsertRow i, t
		    'pop_sets_sets.Sort
		    'pop_sets_sets.ListIndex = i
		    
		    pop_sets_sets.DeleteAllRows
		    
		    LoadSets app.DocsFolder.Child("Sets")
		    
		    for i = 0 to pop_sets_sets.ListCount - 1
		      if pop_sets_sets.list(i) = t then
		        pop_sets_sets.ListIndex = i
		        Exit
		      End If
		    Next i
		    MainWindow.MouseCursor = Nil
		    
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_set/saveas"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon filesavepic, filesavemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_export
	#tag Event
		Sub Action()
		  ActionSetExport
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_set/export"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon filesaveaspic, filesaveasmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_add_scripture
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/new_item/add_scripture"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon emptypic, emptymask
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  App.DebugWriter.Write "MainWindow.btn_set_add_scripture.Action: Enter", 4
		  
		  ActionSetAddScripture
		  
		  App.DebugWriter.Write "MainWindow.btn_set_add_scripture.Action: Exit", 4
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_add_slides
	#tag Event
		Sub Action()
		  Dim xgroups, newGroup As XmlNode
		  
		  xgroups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  If lst_set_items.ListIndex >= 0 Then
		    newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListIndex + 1)
		  Else
		    newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListCount)
		  End If
		  
		  SmartML.SetValue newGroup, "@name", App.T.Translate("sets_mode/untitled/@caption")
		  SmartML.SetValue newGroup, "@type", "custom"
		  
		  Status_SetChanged = True
		  ' No need to EnableMenuItems, since the following selection change will call it
		  
		  If lst_set_items.ListIndex >= 0 Then
		    lst_set_items.InsertRow lst_set_items.ListIndex + 1, SmartML.GetValue(newGroup, "@name", True) + " " + App.T.Translate("sets_mode/items/custom/@caption")
		    lst_set_items.ListIndex = lst_set_items.ListIndex + 1
		  Else
		    lst_set_items.AddRow SmartML.GetValue(newGroup, "@name", True) + " " + App.T.Translate("sets_mode/items/custom/@caption")
		    lst_set_items.ListIndex = lst_set_items.ListCount - 1
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/new_item/add_slides"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon documentpic, documentmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_add_style
	#tag Event
		Sub Action()
		  Dim xgroups, newGroup As XmlNode
		  Dim Where As Integer
		  xgroups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  If lst_set_items.ListIndex >= 0 Then
		    Where = lst_set_items.ListIndex + 1
		  Else
		    Where = lst_set_items.ListCount
		  End If
		  
		  newGroup = SmartML.InsertChild(xgroups, "slide_group", Where)
		  SmartML.SetValue newGroup, "@name", App.T.Translate("sets_mode/items/revert")
		  SmartML.SetValue newGroup, "@type", "style"
		  SmartML.SetValue newGroup, "@action", "revert"
		  
		  Status_SetChanged = True
		  ' No need to EnableMenuItems, since the following selection change will call it
		  
		  If lst_set_items.ListIndex >= 0 Then
		    lst_set_items.InsertRow Where, SmartML.GetValue(newGroup, "@name", True) + " " + App.T.Translate("sets_mode/items/revert/@caption")
		  Else
		    lst_set_items.AddRow SmartML.GetValue(newGroup, "@name", True) + " " + App.T.Translate("sets_mode/items/revert/@caption")
		  End If
		  
		  lst_set_items.ListIndex = Where
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/new_item/add_style"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon colorizepic, colorizemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_add_song
	#tag Event
		Sub Action()
		  Dim f As FolderItem
		  Dim SongPath As String
		  Dim FolderPath As String
		  Dim Where As Integer
		  Dim presentation As String
		  
		  Dim xgroups, newGroup As XmlNode
		  xgroups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  
		  Where = lst_set_items.ListIndex
		  
		  f = SongPickerWindow.Popup(presentation)
		  If f <> Nil Then
		    Status_SetChanged = True
		    'Status_InSetChanged = False
		    ' No need to EnableMenuItems, since the following selection change will call it
		  End If
		  
		  While f <> Nil
		    If lst_set_items.ListIndex >= 0 Then
		      Where = lst_set_items.ListIndex + 1
		    Else
		      Where = lst_set_items.ListCount
		    End If
		    newGroup = SmartML.InsertChild(xgroups, "slide_group", Where)
		    SmartML.SetValue newGroup, "@name", f.Name
		    SmartML.SetValue newGroup, "@type", "song"
		    SmartML.SetValue newGroup, "@presentation", presentation
		    //++
		    // EMP, May 2006
		    //
		    // Add a path attribute relative to the base songs directory.  Otherwise, two instances
		    // of the same song name in a parent/child folder relationship will never find the song
		    // in the child folder.
		    //
		    SongPath = f.Parent.AbsolutePath
		    FolderPath = MainWindow.Songs.GetRootFolder.AbsolutePath
		    SongPath = Mid(SongPath, Len(FolderPath) + 1) //Take off the leading path separator
		    // Change path separator to forward slant "/" to match separator in FolderDB
		    // This is platform specific
		    #If TargetWin32
		      SongPath = ReplaceAll(SongPath, "\", "/")
		    #ElseIf TargetMacOS
		      SongPath = ReplaceAll(SongPath, ":", "/")
		    #EndIf
		    SmartML.SetValue newGroup, "@path", SongPath
		    //--
		    If lst_set_items.ListIndex >= 0 Then
		      lst_set_items.InsertRow Where, f.Name + " "  + App.T.Translate("sets_mode/items/song/@caption")
		    Else
		      lst_set_items.AddRow f.Name + " " + App.T.Translate("sets_mode/items/song/@caption")
		    End If
		    
		    lst_set_items.ListIndex = Where
		    f = SongPickerWindow.Popup(presentation)
		  Wend
		  lst_set_items.ListIndex = Where
		  lst_set_items.SetFocus
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/new_item/add_song"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon midipic, midimask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_add_image
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/new_item/add_image"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon backgroundpic, backgroundmask
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  Dim xgroups, newGroup As XmlNode
		  
		  xgroups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  If lst_set_items.ListIndex >= 0 Then
		    newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListIndex + 1)
		  Else
		    newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListCount)
		  End If
		  
		  SmartML.SetValue newGroup, "@name", App.T.Translate("sets_mode/untitled/@caption")
		  SmartML.SetValue newGroup, "@type", "image"
		  
		  Status_SetChanged = True
		  ' No need to EnableMenuItems, since the following selection change will call it
		  
		  If lst_set_items.ListIndex >= 0 Then
		    lst_set_items.InsertRow lst_set_items.ListIndex + 1, SmartML.GetValue(newGroup, "@name", True) + " " + App.T.Translate("sets_mode/items/image/@caption")
		    lst_set_items.ListIndex = lst_set_items.ListIndex + 1
		  Else
		    lst_set_items.AddRow SmartML.GetValue(newGroup, "@name", True) + " " + App.T.Translate("sets_mode/items/image/@caption")
		    lst_set_items.ListIndex = lst_set_items.ListCount - 1
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_set_items
	#tag Event
		Sub Change()
		  Dim songDoc As XmlDocument
		  Dim xnode as  XmlNode
		  Dim songTemp as String
		  Dim songResult As Integer
		  Dim sDoc As XmlDocument
		  Dim resize As String
		  Dim imageLink As Boolean
		  Dim image As StyleImage
		  Dim SlideSongStyle As XmlNode
		  Dim songPath As String
		  
		  Dim xgroup As XmlNode
		  Dim xslides As XmlNode
		  Dim s As String
		  Dim i, j As Integer
		  Dim groupType As String
		  
		  '++JRC Don't reload if same set item
		  If Me.ListIndex = CurrentInSetItem Then Return
		  
		  '++JRC
		  If DontUpdateSetItem Then
		    Return
		  End If
		  '--
		  
		  'Ask if user wants to save
		  If NOT ActionInSetAskSave Then
		    If CurrentInSetItem >= 0 Then
		      lst_set_items.ListIndex = CurrentInSetItem
		    End If
		    Return 'User Canceled
		  End If
		  
		  If Me.ListIndex < 0 Then
		    Status_InSetOpen = False
		    Status_InSetEditable = False
		    Status_InSetChanged = False
		    EnableMenuItems
		    Return
		  End If
		  
		  Status_InSetEditable = False
		  Status_InSetSongEdit = False
		  CurrentInSetItem = lst_set_items.ListIndex
		  xgroup = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True).Child(Me.ListIndex)
		  '++JRC Prevent Nil object exception
		  If xgroup = Nil Then
		    lst_set_items.ListIndex = -1
		    Return
		  End If
		  '--
		  InSetNameCache = SmartML.GetValue(xgroup, "@name")
		  groupType = SmartML.GetValue(xgroup, "@type", True)
		  Select Case groupType
		  Case "custom", "scripture"
		    If pge_contents.Value <> 2 Then
		      pge_contents.Value = 2
		      LastSetPane = 2
		    End If
		    Status_InSetEditable = False ' keeps the status from Refresh Falseing for every change
		    
		    edt_slide_name.Text = SmartML.GetValue(xgroup, "@name")
		    edt_slide_title.Text = SmartML.GetValue(xgroup, "title")
		    edt_slide_subtitle.Text = SmartML.GetValue(xgroup, "subtitle")
		    edt_slide_notes.Text = SmartML.GetValue(xgroup, "notes")
		    chk_slide_loop.Value = SmartML.GetValueB(xgroup, "@loop", False)
		    chk_slide_print.Value = SmartML.GetValueB(xgroup, "@print", True, True)
		    pop_slide_transition.ListIndex = SmartML.GetValueN(xgroup, "@transition", False)
		    edt_slide_auto_advance.Text = Str(SmartML.GetValueN(xgroup, "@seconds", False))
		    edt_slide_order.Text = ""
		    edt_slide_origorder.Text = ""
		    edt_slide_folder.Text = ""
		    
		    If SmartML.GetNode(xgroup, "style", False) = Nil Then
		      chk_slide_style.Value = False
		      can_slide_style.ClearStyleNode
		      can_slide_style.ClearPreviewSlide
		    Else
		      chk_slide_style.Value = True
		      can_slide_style.PreviewSlide = SmartML.GetNode(xgroup, "slides/slide")
		      can_slide_style.SetStyleNode SmartML.GetNode(xgroup, "style")
		    End If
		    can_slide_style.SongStyle = False
		    ' can_slide_custom_style.Refresh False
		    s = ""
		    xslides = SmartML.GetNode(xgroup, "slides", True)
		    For i = 0 To xslides.ChildCount - 1
		      If i < xslides.ChildCount - 1 Then
		        s = s + Trim(SmartML.GetValue(xslides.Child(i), "body", False)) + SmartML.Newline + "---" + SmartML.Newline
		      Else
		        s = s + Trim(SmartML.GetValue(xslides.Child(i), "body", False))
		      End If
		    Next i
		    edt_slide_slides.Text  = s
		    
		    Status_InSetOpen = True
		    Status_InSetEditable = True
		    Status_InSetChanged = False
		    EnableMenuItems
		  Case "song"
		    
		    ' New edits...load the text in the slide text box as readonly
		    ' Can update the order to create a custom order.
		    ' EMP 1/18/05
		    
		    If pge_contents.Value <> 2 Then pge_contents.Value = 2
		    
		    Status_InSetOpen = True
		    Status_InSetEditable = False
		    UpdateMenuItems ' Clear out previous values
		    
		    'Try to load the slide specific song style
		    SlideSongStyle = SmartML.GetNode(xgroup, "style", False)
		    '+Vwout: re-enable song style selection; allow an overide of the per-song style definition, keeping bug #1559301 in mind
		    If  SlideSongStyle = Nil Then
		      chk_slide_style.Value = False
		      can_slide_style.ClearStyleNode
		      can_slide_style.ClearPreviewSlide
		    Else
		      '++JRC Just disable Song Style seletion for v1.0
		      'This fixes bug #1559301
		      chk_slide_style.Value = True
		      can_slide_style.ClearPreviewSlide
		      can_slide_style.SetStyleNode SlideSongStyle
		    End If
		    can_slide_style.SongStyle = True
		    
		    sDoc = SetML.GetSong(xgroup, Songs, songPath)
		    If sDoc = Nil Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_set_items.text)
		    Else
		      edt_slide_slides.Text = SmartML.GetValue(sDoc.DocumentElement, "lyrics", True).FormatLocalEndOfLine
		      edt_slide_title.Text = SmartML.GetValue(sDoc.DocumentElement, "title", True)
		      edt_slide_order.Text = SmartML.GetValue(xgroup, "@presentation",False)
		      edt_slide_origorder.Text = SmartML.GetValue(sDoc.DocumentElement, "presentation", False)
		      edt_slide_folder.Text = songPath.Left(songPath.Len - 1)
		      pop_slide_transition.ListIndex = SmartML.GetValueN(xgroup, "@transition", False)
		      If  edt_slide_folder.Text.Len = 0 Then edt_slide_folder.Text = "( " + App.T.Translate("songs_mode/song_folders/filter_main/@caption") + " )"
		      Status_InSetEditable = True 'EMP, changed 1/18/2005 for custom order
		      Status_InSetChanged = False
		      Status_InSetSongEdit = True
		      EnableMenuItems
		    End If
		    
		  Case "style"
		    Status_InSetEditable = False ' keeps the status from Refresh Falseing for every change
		    
		    If SmartML.GetValue(xgroup, "@action") = "new" Then
		      rad_style_change.Value = True
		    Else
		      rad_style_revert.Value = True
		    End If
		    can_style_style.SetStyleNode SmartML.GetNode(xgroup, "style")
		    '++JRC Hack: Not really a SongStyle, but this will allow the use of Subtitle Options
		    can_style_style.SongStyle = True
		    '--
		    Status_InSetOpen = True
		    Status_InSetEditable = True
		    Status_InSetChanged = False
		    If pge_contents.Value <> 3 Then
		      LastSetPane = 3
		      pge_contents.Value = 3
		    End If
		    
		    EnableMenuItems
		    
		  Case "image"
		    If pge_contents.Value <> 4 Then
		      pge_contents.Value = 4
		      LastSetPane = 4
		    End If
		    Status_InSetEditable = False ' keeps the status from Refresh Falseing for every change
		    
		    imageLink = SmartML.GetValueB(xgroup, "@link", App.ExcludeBackgroundsImages())
		    
		    lst_image_images.DeleteAllRows
		    xslides = SmartML.GetNode(xgroup, "slides", True)
		    For i = 0 To xslides.ChildCount - 1
		      image = new StyleImage()
		      s = SmartML.GetValue(xslides.Child(i), "filename")
		      If imageLink And s<>"" Then
		        If s.StartsWith("/") or s.StartsWith("\\") or s.Mid(2, 1)=":" Then
		          Call image.SetImageFromFileName( s )
		        Else
		          Call image.SetImageFromFileName( App.DocsFolder.Child("Backgrounds").AbsolutePath + s )
		        End If
		        
		      Else
		        Call image.SetImageAsString( SmartML.GetValue(xslides.Child(i), "image") )
		      End If
		      lst_image_images.AddImage( image )
		      lst_image_images.Cell( lst_image_images.LastIndex(), 1 ) = SmartML.GetValue(xslides.Child(i), "description")
		    Next i
		    
		    edt_image_name.Text = SmartML.GetValue(xgroup, "@name")
		    edt_image_title.Text = SmartML.GetValue(xgroup, "title")
		    edt_image_subtitle.Text = SmartML.GetValue(xgroup, "subtitle")
		    chk_image_descriptions.Value = SmartML.GetValueB(xgroup, "@descriptions_in_subtitle", False)
		    edt_image_notes.Text = SmartML.GetValue(xgroup, "notes")
		    chk_image_loop.Value = SmartML.GetValueB(xgroup, "@loop", False)
		    chk_image_print.Value = SmartML.GetValueB(xgroup, "@print", True, True)
		    pop_image_transition.ListIndex = SmartML.GetValueN(xgroup, "@transition", False)
		    edt_image_auto_advance.Text = Str(SmartML.GetValueN(xgroup, "@seconds", False))
		    
		    If SmartML.GetNode(xgroup, "style", False) = Nil Then
		      chk_image_style.Value = False
		      can_image_style.ClearStyleNode
		      can_image_style.ClearPreviewSlide
		    Else
		      chk_image_style.Value = True
		      can_image_style.PreviewSlide = SmartML.GetNode(xgroup, "slides/slide")
		      can_image_style.SetStyleNode SmartML.GetNode(xgroup, "style")
		    End If
		    
		    resize = SmartML.GetValue(xgroup, "@resize", False)
		    chk_image_fit_to_screen.Value = (resize = "screen") Or (resize = "")
		    chk_image_fit_to_body.Value = (resize = "body")
		    chk_image_keepaspect.Value = SmartML.GetValueB(xgroup, "@keep_aspect", False, True)
		    chk_image_keepaspect.Enabled = chk_image_fit_to_screen.Value Or chk_image_fit_to_body.Value
		    chk_image_store_as_link.Value = imageLink
		    
		    Status_InSetOpen = True
		    Status_InSetEditable = True
		    Status_InSetChanged = False
		    EnableMenuItems
		  Case Else
		    Status_InSetOpen = True
		    Status_InSetEditable = False
		    Status_InSetChanged = False
		    EnableMenuItems
		  End Select
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Dim i As Integer
		  Dim path As String
		  Dim songModePath As String
		  Dim currentSetItem As XmlNode
		  //++
		  // June 2007, EMP
		  // Check that (a) item is a song, and (b) current song editor folder is same as or above
		  // the path to the song.
		  //--
		  currentSetItem = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups").Child(CurrentInSetItem)
		  If SmartML.GetValue(currentSetItem, "@type") <> "song" Then Return
		  path = SmartML.GetValue(currentSetItem, "@path")
		  path = Left(path, path.Len - 1) // Chop trailing /
		  songModePath = pop_songs_song_folders.Text
		  If songModePath = "( " + App.T.Translate("songs_mode/song_folders/filter_main/@caption") + " )" Then songModePath = ""
		  Select Case songModePath
		  Case "( " + App.T.Translate("songs_mode/song_folders/filter_all/@caption") + " )"
		    // Nothing to do, but it's a special case so it has to be detected
		  Case ""
		    If path <> "" Then SetSongEditorPath(path)
		  Case Else
		    If Instr(songModePath, path) <> 1 Then
		      SetSongEditorPath(path)
		    End If
		  End Select
		  
		  
		  If pop_sets_sets.ListIndex >= 0 Then
		    For i = 0 To lst_songs_songs.ListCount - 1
		      If lst_songs_songs.List(i) = InSetNameCache Then
		        lst_songs_songs.ListIndex = i
		        SetMode 0
		      End If
		    Next i
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function DragReorderRows(newPosition as Integer, parentRow as Integer) As Boolean
		  '++JRC
		  ReorderSetItemList(lst_set_items.ListIndex, newPosition)
		  return true 'We'll handle the reorder manually, workaround for bug #1827986
		  '--
		End Function
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Dim i, l As Integer
		  If Asc(Key) = 27 Then 'Escape
		    KeyedSearch = "" 'Reset search string
		    Return True
		  End If
		  
		  // If a modifier key is pressed, let RealBasic handle it so menus, etc. will work properly
		  If Keyboard.CommandKey Or Keyboard.ControlKey Or Keyboard.OptionKey Then Return False
		  
		  l = Len(KeyedSearch)
		  tmr_lookup.Reset
		  For i = 0 To Me.ListCount - 1
		    If Left(Me.List(i), l+1) = KeyedSearch + key Then
		      Me.ListIndex = i
		      KeyedSearch = KeyedSearch + key
		      Return True
		    End If
		  Next i
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  '++JRC
		  SetHelp "sets_mode/items"
		  '--
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_style_change
	#tag Event
		Sub Action()
		  Dim slide_group As XmlNode
		  
		  If Status_InSetEditable Then
		    slide_group = SetML.GetSetItem(CurrentSet, lst_set_items.ListIndex+1)
		    SmartML.SetValue slide_group, "@action", "new"
		    SmartML.SetValue slide_group, "@name", App.T.Translate("sets_mode/items/style")
		    lst_set_items.List(lst_set_items.ListIndex) = SmartML.GetValue(slide_group, "@name", True) + " " + App.T.Translate("sets_mode/items/style/@caption")
		    SmartML.SafeImport SmartML.GetNode(App.MyPresentSettings.DocumentElement, "default_style"), SmartML.GetNode(slide_group, "style", True)
		    can_style_style.SetStyleNode SmartML.GetNode(slide_group, "style")
		    Status_SetChanged = True
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "style_change/change"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_style_revert
	#tag Event
		Sub Action()
		  Dim slide_group As XmlNode
		  
		  If Status_InSetEditable Then
		    slide_group = SetML.GetSetItem(CurrentSet, lst_set_items.ListIndex+1)
		    SmartML.SetValue slide_group, "@action", "revert"
		    SmartML.SetValue slide_group, "@name", App.T.Translate("sets_mode/items/revert")
		    lst_set_items.List(lst_set_items.ListIndex) = SmartML.GetValue(slide_group, "@name", True) + " " + App.T.Translate("sets_mode/items/revert/@caption")
		    SmartML.RemoveChildren slide_group
		    
		    can_style_style.ClearStyleNode
		    Status_InSetChanged = True
		    Status_SetChanged = True
		    EnableMenuItems
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "style_change/revert"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_style_style
	#tag Event
		Sub Action()
		  Status_SetChanged = True
		  Status_InSetChanged = True
		  EnableMenuItems
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "style_change/style"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_song_themes
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  FindFocus = 7
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/themes"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_show_general_editor_2
	#tag Event
		Sub Action()
		  pge_contents.Value = 0
		  LastSongPane = 0
		  Me.Refresh True ' False
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewtext2pic, viewtext2mask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_song_time_sig
	#tag Event
		Sub Change()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  FindFocus = 9
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/time_sig"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_song_style
	#tag Event
		Sub Action()
		  Dim xnode As XmlNode
		  
		  If Status_SongOpen Then
		    If Me.Value Then
		      xnode = SmartML.GetNode(CurrentSong.DocumentElement, "style", True)
		      SongML.CloneStyle SmartML.GetNode(App.MyPresentSettings.DocumentElement, "default_style"), xnode
		      can_song_style.SetStyleNode xnode
		    Else
		      xnode = SmartML.GetNode(CurrentSong.DocumentElement, "style", False)
		      If xnode <> Nil Then SmartML.RemoveSelf xnode
		      can_song_style.ClearStyleNode
		    End If
		    
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/style"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_song_capo_print
	#tag Event
		Sub Action()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  '++JRC lol
		  SetHelp "advanced_song_editor/capo_print"
		  '--
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_show_advanced_editor_2
	#tag Event
		Sub Action()
		  pge_contents.Value = 1
		  LastSongPane = 1
		  Me.Refresh True ' False
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewdetailed2pic, viewdetailed2mask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_song_tempo
	#tag Event
		Sub Change()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  FindFocus = 10
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/tempo"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_song_style
	#tag Event
		Sub Action()
		  Status_SongChanged = True
		  EnableMenuItems
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/style"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_key
	#tag Event
		Sub GotFocus()
		  FindFocus = 11
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/key"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_aka
	#tag Event
		Sub GotFocus()
		  FindFocus = 12
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/aka"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_song_capo
	#tag Event
		Sub Change()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  FindFocus = 8
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/capo"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_key_line
	#tag Event
		Sub GotFocus()
		  FindFocus = 13
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/key_line"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_user1
	#tag Event
		Sub GotFocus()
		  FindFocus = 14
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/user1"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_user2
	#tag Event
		Sub GotFocus()
		  FindFocus = 15
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/user2"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_user3
	#tag Event
		Sub GotFocus()
		  FindFocus = 16
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/user3"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_song_accidentals
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/transpose/using"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_song_transpose
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/transpose"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  SmartML.SetValue CurrentSong.DocumentElement, "lyrics", edf_song_lyrics.Text.FormatUnixEndOfLine
		  
		  If MainWindow.pop_song_accidentals.ListIndex = 0 Then
		    SongML.Transpose CurrentSong, Val(Me.Text), True
		  Else
		    SongML.Transpose CurrentSong, Val(Me.Text), False
		  End If
		  edf_song_lyrics.Text = SmartML.GetValue(CurrentSong.DocumentElement, "lyrics").FormatLocalEndOfLine
		  Me.ListIndex = 6
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_author
	#tag Event
		Sub GotFocus()
		  FindFocus = 2
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/author"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edf_song_lyrics
	#tag Event
		Sub GotFocus()
		  FindFocus = 6
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/lyrics"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_hymn_number
	#tag Event
		Sub GotFocus()
		  'FindFocus = 3
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/hymn_number"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_ins_section
	#tag Event
		Sub Action()
		  Dim s As String
		  If edf_song_lyrics.Enabled Then
		    s = InputBox.Input(App.T.Translate("general_song_editor/ins_section/section_name/@caption") + ":", "V1")
		    If Len(s) > 0 Then
		      If edf_song_lyrics.SelStart > 0 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 10 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 13 Then edf_song_lyrics.SelText = SmartML.Newline
		      edf_song_lyrics.SelText = "[" + s + "]" + SmartML.Newline
		    End If
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/ins_section"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewdetailedpic, viewdetailedmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_ins_lyrics
	#tag Event
		Sub Action()
		  Dim s, t As String
		  Dim i As Integer
		  If edf_song_lyrics.Enabled Then
		    s = InputBox.Input(App.T.Translate("general_song_editor/ins_lyrics/number_of_lines/@caption") + ":", "1")
		    If Len(s) > 0 And Val(s) > 0 Then
		      If edf_song_lyrics.SelStart > 0 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 10 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 13 Then t = SmartML.Newline
		      For i = 1 To Val(s)
		        t = t + "." + SmartML.Newline + " " + SmartML.Newline
		      Next i
		      edf_song_lyrics.SelText = t
		    End If
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/ins_lyrics"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewtextpic, viewtextmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_ins_multi_verse
	#tag Event
		Sub Action()
		  Dim s, t, u As String
		  Dim i, j As Integer
		  If edf_song_lyrics.Enabled Then
		    s = InputBox.Input(App.T.Translate("general_song_editor/ins_multi_verse/number_of_verses/@caption") + ":", "4")
		    If Len(s) > 0 And Val(s) > 0 Then
		      t = InputBox.Input(App.T.Translate("general_song_editor/ins_multi_verse/number_of_lines/@caption") + ":", "4")
		      If Len(t) > 0 And Val(t) > 0 Then
		        If edf_song_lyrics.SelStart > 0 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 10 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 13 Then u = SmartML.Newline
		        u = u + "[V]" + SmartML.Newline
		        For j = 1 To Val(t)
		          u = u + "." + SmartML.Newline
		          For i = 1 To Val(s)
		            u = u + Str(i) + SmartML.Newline
		          Next i
		        Next j
		        edf_song_lyrics.SelText = u
		      End If
		    End If
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/ins_multi_verse"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewchoosepic, viewchoosemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_ins_comment
	#tag Event
		Sub Action()
		  Dim s, t As String
		  If edf_song_lyrics.Enabled Then
		    s = InputBox.Input(App.T.Translate("general_song_editor/ins_comment/@caption") + ":", "")
		    If Len(s) > 0 Then
		      If edf_song_lyrics.SelStart > 0 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 10 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 13 Then t = SmartML.Newline
		      t = t + ";" + s + SmartML.Newline
		      edf_song_lyrics.SelText = t
		    End If
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/ins_comment"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewbottompic, viewbottommask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_ins_column
	#tag Event
		Sub Action()
		  Dim s As String
		  If edf_song_lyrics.Enabled Then
		    If edf_song_lyrics.SelStart > 0 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 10 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 13 Then s = SmartML.Newline
		    s = s + "---" + SmartML.Newline
		    edf_song_lyrics.SelText = s
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/ins_column"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewleftrightpic, viewleftrightmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_ins_page
	#tag Event
		Sub Action()
		  Dim s As String
		  If edf_song_lyrics.Enabled Then
		    If edf_song_lyrics.SelStart > 0 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 10 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 13 Then s = SmartML.Newline
		    s = s + "-!!" + SmartML.Newline
		    edf_song_lyrics.SelText = s
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/ins_page"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewnewpagepic, viewnewpagemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_show_general_editor
	#tag Event
		Sub Action()
		  pge_contents.Value = 0
		  LastSongPane = 0
		  Me.Refresh True ' False
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewtext2pic, viewtext2mask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_show_advanced_editor
	#tag Event
		Sub Action()
		  pge_contents.Value = 1
		  LastSongPane = 1
		  Me.Refresh True ' False
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewdetailed2pic, viewdetailed2mask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_ccli
	#tag Event
		Sub GotFocus()
		  FindFocus = 4
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/ccli"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_presentation
	#tag Event
		Sub GotFocus()
		  FindFocus = 5
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/presentation"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_copyright
	#tag Event
		Sub GotFocus()
		  FindFocus = 3
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/copyright"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_title
	#tag Event
		Sub GotFocus()
		  FindFocus = 1
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/title"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_slide_print
	#tag Event
		Sub Action()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/print"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_auto_advance
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/auto_advance"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_slide_loop
	#tag Event
		Sub Action()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/loop"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_slide_style
	#tag Event
		Sub Action()
		  Dim xnode, xgroup, songStyle As XmlNode
		  Dim songDoc as XmlDocument
		  Dim dummy As String
		  
		  If Status_InSetEditable Then
		    xgroup = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True).Child(lst_set_items.ListIndex)
		    If Me.Value Then
		      can_slide_style.PreviewSlide = SmartML.GetNode(xgroup, "slides/slide")
		      
		      xnode = SmartML.GetNode(xgroup, "style", True)
		      If Lowercase(SmartML.GetValue(xgroup, "@type")) = "scripture" Then
		        SongML.CloneStyle SmartML.GetNode(App.MyPresentSettings.DocumentElement, "scripture_style"), xnode
		      ElseIf Lowercase(SmartML.GetValue(xgroup, "@type")) = "song" Then
		        songStyle = Nil
		        songDoc = SetML.GetSong(xgroup, Songs, dummy)
		        If songDoc <> Nil then
		          songStyle = SmartML.GetNode(songDoc.DocumentElement, "style", False)
		        End If
		        
		        If songStyle <> Nil Then
		          SongML.CloneStyle songStyle, xnode
		        Else
		          SongML.CloneStyle SmartML.GetNode(App.MyPresentSettings.DocumentElement, "default_style"), xnode
		        End If
		      Else
		        SongML.CloneStyle SmartML.GetNode(App.MyPresentSettings.DocumentElement, "default_style"), xnode
		      End If
		      
		      can_slide_style.SetStyleNode xnode
		      can_slide_style.ClearPreviewSlide
		    Else
		      xnode = SmartML.GetNode(xgroup, "style", False)
		      If xnode <> Nil Then SmartML.RemoveSelf xnode
		      can_slide_style.ClearStyleNode
		      can_slide_style.ClearPreviewSlide
		    End If
		    
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  '++JRC
		  SetHelp "slide_editor/style"
		  '--
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_slide_transition
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/transition"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_origorder
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  '++JRC
		  SetHelp "slide_editor/origorder"
		  '--
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_order
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  '++JRC
		  SetHelp "slide_editor/presentation"
		  '--
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_subtitle
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/subtitle"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_title
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/title"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_name
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/name"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_slides
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/slides"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_folder
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  '++JRC
		  SetHelp "slide_editor/folder"
		  '--
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_slide_ins_slide
	#tag Event
		Sub Action()
		  Dim s As String
		  If edt_slide_slides.Enabled Then
		    If edt_slide_slides.SelStart > 0 And Asc(Mid(edt_slide_slides.Text, edt_slide_slides.SelStart, 1)) <> 10 And Asc(Mid(edt_slide_slides.Text, edt_slide_slides.SelStart, 1)) <> 13 Then s = SmartML.Newline
		    s = s + "---" + SmartML.Newline
		    edt_slide_slides.SelText = s
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/ins_slide"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewbottompic, viewbottommask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_notes
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/notes"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_slide_style
	#tag Event
		Sub Action()
		  If Status_SetOpen Then Status_SetChanged = True
		  EnableMenuItems
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  '++JRC
		  SetHelp "slide_editor/style"
		  '--
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_image_style
	#tag Event
		Sub Action()
		  Dim xnode, xgroup As XmlNode
		  
		  If Status_InSetEditable Then
		    xgroup = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True).Child(lst_set_items.ListIndex)
		    If Me.Value Then
		      can_image_style.PreviewSlide = SmartML.GetNode(xgroup, "slides/slide")
		      
		      xnode = SmartML.GetNode(xgroup, "style", True)
		      If Lowercase(SmartML.GetValue(xgroup, "@type")) = "scripture" Then
		        SongML.CloneStyle SmartML.GetNode(App.MyPresentSettings.DocumentElement, "scripture_style"), xnode
		        can_image_style.SetStyleNode xnode
		      Else
		        SongML.CloneStyle SmartML.GetNode(App.MyPresentSettings.DocumentElement, "default_style"), xnode
		        can_image_style.SetStyleNode xnode
		      End If
		    Else
		      xnode = SmartML.GetNode(xgroup, "style", False)
		      If xnode <> Nil Then SmartML.RemoveSelf xnode
		      can_image_style.ClearStyleNode
		      can_image_style.ClearPreviewSlide
		    End If
		    
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  '++JRC
		  SetHelp "slide_editor/style"
		  '--
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_image_transition
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/transition"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_image_fit_to_screen
	#tag Event
		Sub MouseEnter()
		  SetHelp "image_slide/fit_to_screen"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If Status_InSetEditable Then
		    If Me.Value Then
		      chk_image_fit_to_body.Value = False
		    End If
		    If Not Me.Value And Not chk_image_fit_to_body.Value Then
		      chk_image_keepaspect.Enabled = False
		    Else
		      chk_image_keepaspect.Enabled = True
		    End If
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_image_fit_to_body
	#tag Event
		Sub MouseEnter()
		  SetHelp "image_slide/fit_to_body"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If Status_InSetEditable Then
		    If Me.Value Then
		      chk_image_fit_to_screen.Value = False
		    End If
		    If Not Me.Value And Not chk_image_fit_to_screen.Value Then
		      chk_image_keepaspect.Enabled = False
		    Else
		      chk_image_keepaspect.Enabled = True
		    End If
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_image_store_as_link
	#tag Event
		Sub MouseEnter()
		  SetHelp "image_slide/store_as_link"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_image_keepaspect
	#tag Event
		Sub MouseEnter()
		  SetHelp "image_slide/keepaspect"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_image_print
	#tag Event
		Sub Action()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/print"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_image_loop
	#tag Event
		Sub Action()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/loop"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_image_auto_advance
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/auto_advance"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_image_descriptions
	#tag Event
		Sub MouseEnter()
		  SetHelp "image_slide/descriptions"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_image_title
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/title"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_image_style
	#tag Event
		Sub Action()
		  If Status_SetOpen Then Status_InSetChanged = True
		  EnableMenuItems
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  '++JRC
		  SetHelp "slide_editor/style"
		  '--
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_image_subtitle
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/subtitle"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_image_name
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/name"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_image_images
	#tag Event
		Function DragEnter(obj As DragItem, action As Integer) As Boolean
		  Dim rejectdrop As Boolean
		  
		  rejectdrop = True
		  If Status_InSetEditable Then
		    If obj.PictureAvailable() Then
		      rejectdrop = False
		    ElseIf obj.FolderItemAvailable() Then
		      rejectdrop = ( obj.FolderItem().OpenAsPicture() = Nil )
		    ElseIf obj.PrivateRawData("StIm")<>"" Then
		      rejectdrop = False
		    End If
		  End If
		  
		  Return rejectdrop
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "image_slide/images"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropRowObject(obj As DragItem, action As Integer, row as Integer)
		  Dim image as StyleImage
		  Dim name As String
		  
		  If Status_InSetEditable Then
		    If obj.PictureAvailable() Then
		      image = new StyleImage()
		      image.SetImage( obj.Picture() )
		      If row = -1 Then
		        Me.AddImage( image )
		      Else
		        Me.InsertImage( row, image )
		      End If
		      
		      Status_InSetChanged = True
		    ElseIf obj.FolderItemAvailable() Then
		      Do
		        image = new StyleImage()
		        If image.SetImageFromFile( obj.FolderItem() ) Then
		          If row = -1 Then
		            Me.AddImage( image )
		          Else
		            Me.InsertImage( row, image )
		          End If
		          name = obj.FolderItem().Name
		          If( name.CountFields(".") > 0 ) Then
		            name = name.Left( name.Len() - name.NthField(".", name.CountFields(".")).Len() - 1 )
		          End If
		          Me.Cell( Me.LastIndex, 1 ) = name
		          
		          Status_InSetChanged = True
		        End If
		      Loop Until Not obj.NextItem()
		    End If
		    
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  Status_InSetChanged = True
		End Sub
	#tag EndEvent
	#tag Event
		Function CellKeyDown(row as Integer, column as Integer, key as String) As Boolean
		  Return Not Status_InSetEditable
		End Function
	#tag EndEvent
	#tag Event
		Function SortColumn(column As Integer) As Boolean
		  Me.ColumnSortDirection( column ) = ListBox.SortNone
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.EnableDragReorder=True
		  
		  Me.AcceptPictureDrop()
		  Me.AcceptFileDrop( ImageFileTypes.All() )
		  Me.AcceptFileDrop "all"
		  
		  Me.ColumnType(1) = ListBox.TypeEditable
		  Me.Heading(-1) = ""
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_image_notes
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsContextualClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/notes"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_image_ins_image
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon addpic, addmask
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "image_slide/ins_image"
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  Dim f As FolderItem
		  Dim img As StyleImage
		  
		  f = ImageChooserWindow.Lookup()
		  If f <> Nil Then
		    img = new StyleImage
		    If img.SetImageFromFile( f ) Then
		      lst_image_images.AddImage( img )
		      lst_image_images.Cell( lst_image_images.LastIndex(), 1 ) = img.GetImageFilename()
		      
		      Status_InSetChanged = True
		      EnableMenuItems
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_image_del_image
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon removepic, removemask
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "image_slide/remove_image"
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If lst_image_images.ListIndex > -1 Then
		    lst_image_images.RemoveRow( lst_image_images.ListIndex )
		    
		    Status_InSetChanged = True
		    EnableMenuItems
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_image_move_down
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "image_slide/move_down"
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon downpic, downmask
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If lst_image_images.ListIndex() < lst_image_images.ListCount()-1 Then
		    If lst_image_images.SwapRows( lst_image_images.ListIndex(), lst_image_images.ListIndex()+1 ) Then
		      lst_image_images.ListIndex() = lst_image_images.ListIndex() + 1
		      
		      Status_InSetChanged = True
		      EnableMenuItems
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_image_move_up
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon uppic, upmask
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "image_slide/move_up"
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If lst_image_images.ListIndex() > 0 Then
		    If lst_image_images.SwapRows( lst_image_images.ListIndex(), lst_image_images.ListIndex()-1 ) Then
		      lst_image_images.ListIndex = lst_image_images.ListIndex() - 1
		      
		      Status_InSetChanged = True
		      EnableMenuItems
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmr_lookup
	#tag Event
		Sub Action()
		  KeyedSearch = ""
		End Sub
	#tag EndEvent
#tag EndEvents
