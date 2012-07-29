#tag Window
Begin Window SongPickerWindow
   BackColor       =   16777215
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   533
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   1046
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   450
   MinimizeButton  =   True
   MinWidth        =   350
   Placement       =   0
   Resizeable      =   True
   Title           =   "Song Lookup"
   Visible         =   True
   Width           =   436
   Begin Label txt_explanation_header
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   45
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      Text            =   "To add a song, click the song title below and click the ""Add"" button. If you know the name of the song you can type it into the Quick Lookup field, and click ""Add"" or press Enter. You can also double-click on the song name to add it."
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   5
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   378
   End
   Begin Label lbl_select_folder
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   12
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      Text            =   "Select Folder:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   55
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   197
   End
   Begin PopupMenu pop_select_folder
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   12
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   69
      Underline       =   False
      Visible         =   True
      Width           =   206
   End
   Begin Label lbl_quick_lookup
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   228
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      Text            =   "Quick Lookup:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   171
   End
   Begin SEditField edt_quick_lookup
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   228
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
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   69
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   179
   End
   Begin ListBox lst_all_songs
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   2
      ColumnsResizable=   False
      ColumnWidths    =   "66%,*"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   171
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Song	Path"
      Italic          =   False
      Left            =   12
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   11
      TextUnit        =   0
      Top             =   106
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   406
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin SmartSplitter SmartSplitter1
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      DisableLiveDrag =   0
      doNotAttachEmbeddedControls=   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      handleDimple    =   0
      handleLarge     =   0
      Height          =   9
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   12
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MaxLimit        =   0
      MaxLimitOffset  =   0
      MinLimit        =   0
      MinLimitOffset  =   0
      Scope           =   0
      showWarningsDialogs=   0
      StayProportional=   0
      StopAtMaxOffset =   0
      StopAtMinOffset =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   278
      UseFocusRing    =   True
      Visible         =   True
      Width           =   406
   End
   Begin Label lbl_song_preview
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   12
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      Text            =   "Preview:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   289
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   204
   End
   Begin TextArea edt_preview
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
      Height          =   117
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   12
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   True
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   304
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   408
   End
   Begin Label lbl_presentation
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   13
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      Text            =   "Custom Presentation Order:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   433
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   170
   End
   Begin TextField edt_order
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   12
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Mask            =   "CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC"
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   447
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   197
   End
   Begin Label lbl_origorder
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   221
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      Text            =   "Original Presentation Order:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   433
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   160
   End
   Begin TextField edt_origorder
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   221
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Mask            =   ""
      Password        =   False
      ReadOnly        =   True
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   447
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   186
   End
   Begin PushButton btn_add
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Add"
      Default         =   False
      Enabled         =   False
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   248
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   491
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin PushButton btn_done
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   True
      Caption         =   "Done"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   329
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   490
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin Timer timerLookup
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   443
      LockedInPosition=   False
      Mode            =   2
      Period          =   1500
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   0
      Width           =   32
   End
   Begin CanvasSmartSplitterDebugger CanvasSmartSplitterDebugger1
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      debug           =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   100
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   -71
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   -24
      UseFocusRing    =   True
      Visible         =   True
      Width           =   54
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  If Not AddSong Then
		    f = Nil
		    PresentationOrder = ""
		  Else
		    PresentationOrder = Uppercase(Trim(edt_order.Text))
		  End If
		  
		  Globals.Status_SongPickerOpen = False
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  '++JRC
		  CurrentSel = -1
		  '--
		  Call MainWindow.Songs.GetFolders(pop_select_folder)
		  
		  If Globals.CurrentSongPickerFolder = "" Then
		    pop_select_folder.ListIndex = 0
		  Else
		    For x As Integer = 0 to pop_select_folder.ListCount - 1
		      If Globals.CurrentSongPickerFolder = pop_select_folder.List(x) Then
		        pop_select_folder.ListIndex = x
		        Exit
		      End If
		    Next
		  End If
		  
		  '++JRC
		  SongFolderSel = pop_select_folder.ListIndex
		  '--
		  App.T.TranslateWindow Me, "song_lookup", App.TranslationFonts
		  App.CenterInControlScreen Me
		  lst_all_songs.ListIndex = 0
		  edt_quick_lookup.SetFocus()
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  'HSizer.Resize
		  SmartSplitter1.behave
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  SmartSplitter1.behave
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor()
		  // Set this before calling the Window constructor
		  // because the Open event will fire then
		  If Globals.CurrentSongPickerFolder = "" Then
		    Globals.CurrentSongPickerFolder = Globals.CurrentSongFolder
		  End If
		  // Make sure for proper initialisation
		  SongFolderSel = -1
		  
		  // call the Window constructor, or Open events will not fire
		  Super.Window()
		  
		  HSizer = New HalfSizer(self)
		  
		  HSizer.AddHeight lst_all_songs, .5
		  HSizer.AddTop lbl_select_folder, .5
		  HSizer.AddTop lbl_song_preview, .5
		  HSizer.AddTop edt_quick_lookup, .5
		  HSizer.AddLeftWidth edt_quick_lookup, 0, 1.0
		  HSizer.AddLeftTop lbl_quick_lookup, 0, .5
		  HSizer.AddTop pop_select_folder, .5
		  HSizer.AddWidth pop_select_folder, 0
		  HSizer.AddTopHeight edt_preview, .5, .5
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Popup(ByRef presentation As String) As FolderItem
		  '++JRC
		  Globals.Status_SongPickerOpen = True
		  '--
		  PresentationOrder = ""
		  ShowModalWithin(MainWindow)
		  presentation = PresentationOrder
		  Return f
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected AddSong As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentSel As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentSong As XMLDocument
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected f As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected HSizer As HalfSizer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected KeyedSearch As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected PresentationOrder As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SongFolderSel As Integer = -1
	#tag EndProperty


	#tag Constant, Name = kListColumnPath, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kListColumnSong, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events pop_select_folder
	#tag Event
		Sub Change()
		  //++
		  // December 2007, EMP
		  //
		  // Updated to show a second column with the folder name
		  // Won't show if there is only one folder in the list
		  //--
		  Dim multipleFolders As Boolean = False
		  Dim lastFolder As String
		  '++JRC
		  Dim f As FolderItem
		  
		  If Me.ListIndex < 0 Then
		    SongFolderSel = -1
		    Return
		  End If
		  
		  f = FileUtils.RelativePathToFolderItem(App.DocsFolder.Child(App.STR_SONGS), Me.Text)
		  
		  If f = Nil Or NOT f.Exists Then
		    If Me.Text = "( " + App.T.Translate("songs_mode/song_folders/filter_all/@caption") + " )" Or Me.Text = "( " + App.T.Translate("songs_mode/song_folders/filter_main/@caption") + " )" Then
		      'Check if we have a songs folder if not offer to create one
		      If App.CheckDocumentFolders(App.SONGS_FOLDER) = App.NO_FOLDER Then
		        If InputBox.AskYN(App.T.Translate("questions/no_songs_folder/@caption")) Then
		          If Not FileUtils.CreateFolder(App.DocsFolder.Child(App.STR_SONGS)) Then
		            InputBox.Message App.T.Translate("errors/create_songs_folder", App.DocsFolder.Child(App.STR_SONGS).AbsolutePath)
		            Me.ListIndex = -1
		            SongFolderSel = -1
		          End If
		        Else
		          InputBox.Message App.T.Translate("errors/create_songs_folder", App.DocsFolder.Child(App.STR_SONGS).AbsolutePath)
		          Me.ListIndex = -1
		          SongFolderSel = -1
		        End If
		      End If
		      '--
		      
		    Else
		      If InputBox.AskYN(App.T.Translate("questions/no_folder/@caption", App.DocsFolder.Child(App.STR_SONGS).AbsolutePath + "\" + ReplaceAll(Me.Text, "/", "\"))) Then
		        If NOT FileUtils.CreateFolderTree(App.DocsFolder.Child(App.STR_SONGS), Me.Text) Then
		          Me.ListIndex = -1
		          SongFolderSel = -1
		        End If
		      Else
		        Me.ListIndex = -1
		        SongFolderSel = -1
		      End If
		    End If
		    
		  End If
		  
		  If SongFolderSel = Me.ListIndex Then
		    Return
		  end If
		  
		  
		  SongFolderSel = Me.ListIndex
		  
		  '--
		  App.MouseCursor = System.Cursors.Wait
		  Call MainWindow.Songs.GetFiles(Me.Text, lst_all_songs)
		  
		  For i As Integer = 0 To lst_all_songs.ListCount - 1
		    lst_all_songs.Cell(i, kListColumnPath) = _
		    StringUtils.Chop(lst_all_songs.CellTag(i, kListColumnSong).StringValue, "/")
		    If i <> 0 Then
		      If lst_all_songs.Cell(i, kListColumnPath) <> lastFolder Then
		        multipleFolders = True
		      End If
		    Else
		      lastFolder = lst_all_songs.Cell(i, kListColumnPath)
		    End If
		  Next
		  App.MouseCursor = Nil
		  
		  If multipleFolders Then
		    lst_all_songs.ColumnWidths = "66%,*"
		  Else
		    lst_all_songs.ColumnWidths = "100%,0"
		  End If
		  Globals.CurrentSongPickerFolder = Me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_quick_lookup
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Const ASC_KEY_PGDN=12
		  Const ASC_KEY_PGUP =11
		  Const ASC_KEY_HOME=1
		  Const ASC_KEY_END=4
		  Const ASC_KEY_DOWN = 31
		  Const ASC_KEY_UP = 30
		  Const ASC_KEY_ESCAPE = 27
		  Const ASC_KEY_BACKSPACE = 8
		  Const ASC_KEY_LEFT  = 28
		  Const ASC_KEY_RIGHT = 29
		  Const ASC_KEY_TAB = 9
		  Const ASC_KEY_INSERT = 5
		  Const ASC_KEY_DEL = 127
		  Const ASC_KEY_F1 = 200
		  Const ASC_KEY_F12 = 211
		  
		  Dim i As Integer
		  Dim SearchedEntry, SearchText As String
		  Dim found As Boolean
		  Dim reSearch As RegEx
		  Dim reoSearch As RegExOptions
		  
		  If Keyboard.CommandKey Or Keyboard.ControlKey Or Keyboard.OptionKey Then Return False
		  
		  Select Case Asc(key)
		  Case ASC_KEY_INSERT
		    Return True
		  Case ASC_KEY_BACKSPACE
		    If Me.SelLength = 0 And Me.SelStart = 0 Then
		      Return True
		    End If
		    
		    If Me.SelLength = 0 Then
		      Me.SelStart = Me.SelStart - 1
		      Me.SelLength = 1
		      Me.SelText = ""
		    Else
		      Me.SelText = ""
		    End If
		  Case ASC_KEY_TAB
		    Return False
		  Case 13, 10 'Enter, Return
		    AddSong = True
		    Close
		    Return True
		  Case ASC_KEY_ESCAPE 'Escape
		    Return False 'Close dialog, no search in progress
		  Case ASC_KEY_UP
		    Return False
		  Case ASC_KEY_DOWN
		    Return False
		  Case ASC_KEY_LEFT
		    Return False
		  Case ASC_KEY_RIGHT
		    Return False
		  Case ASC_KEY_HOME
		    Return False
		  Case ASC_KEY_END
		    Return False
		  Case ASC_KEY_DEL
		    If Me.SelLength = 0 Then
		      Me.SelLength = 1
		      Me.SelText = ""
		    Else
		      Me.SelText = ""
		    End If
		  Case ASC_KEY_F1 To ASC_KEY_F12
		    Return False
		  Else
		    Me.SelText = "" + Key
		    Me.SelStart = Me.SelStart+1
		  End Select
		  
		  Found = False
		  lst_all_songs.ListIndex = -1
		  
		  'Try to find the first song that starts with the search text
		  For i = 0 To lst_all_songs.ListCount - 1
		    SearchedEntry = ConvertEncoding(Left(lst_all_songs.List(i), Len(Me.Text)), Encodings.UTF8)
		    If SearchedEntry = Me.Text Then
		      lst_all_songs.ListIndex = i
		      found = True
		      Exit
		    End If
		  Next i
		  
		  'If no matches were found, try to find the first song that contains the search text
		  If Not found Then
		    For i = 0 To lst_all_songs.ListCount - 1
		      SearchedEntry = ConvertEncoding(lst_all_songs.List(i), Encodings.UTF8)
		      If SearchedEntry.Contains(Me.Text) Then
		        lst_all_songs.ListIndex = i
		        found = True
		        Exit
		      End If
		    Next i
		  End If
		  
		  'If no matches were found, try to find the first song that has a part that 'is like' the search text (skipping punctuation, spaces and others)
		  If Not found Then
		    //++
		    // Set up regular expression to delete all non-alphanumeric characters for 'is like' search
		    //--
		    reSearch = New RegEx
		    reoSearch = New RegExOptions
		    reoSearch.ReplaceAllMatches = True
		    reoSearch.CaseSensitive = False
		    reSearch.Options = reoSearch
		    reSearch.ReplacementPattern = ""
		    reSearch.SearchPattern = "[^[:alnum:]]"
		    SearchText = reSearch.Replace(Me.Text)
		    
		    For i = 0 To lst_all_songs.ListCount - 1
		      SearchedEntry = reSearch.Replace(ConvertEncoding(lst_all_songs.List(i),Encodings.UTF8))
		      If InStr(SearchedEntry, SearchText) > 0 Then
		        lst_all_songs.ListIndex = i
		        found = True
		        Exit
		      End If
		    Next i
		  End If
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lst_all_songs
	#tag Event
		Sub Change()
		  If Me.ListIndex >= 0 Then
		    '++JRC
		    If Me.ListIndex  = CurrentSel Then Return
		    '--
		    App.DebugWriter.Write("SongPickerWindow.lst_all_songs.Change: New selection is '" +_
		    Me.CellTag(Me.ListIndex, 0).StringValue + Me.List(Me.ListIndex), 4)
		    f = MainWindow.Songs.GetFile(Me.CellTag(Me.ListIndex, 0).StringValue + Me.List(Me.ListIndex))
		    '++JRC Add Song Preview text
		    CurrentSong = SmartML.XDocFromFile(f)
		    If Not (CurrentSong Is Nil) Then
		      If App.MainPreferences.GetValueB(prefs.kSongsPreviewWithChords, True) Then
		        edt_preview.Text = SmartML.GetValue(CurrentSong.DocumentElement, "lyrics", True).FormatLocalEndOfLine
		      Else
		        edt_preview.Text = SongML.LyricText(CurrentSong.DocumentElement).FormatLocalEndOfLine
		      End If
		      edt_order.Text = ""
		      edt_origorder.Text = SmartML.GetValue(CurrentSong.DocumentElement, "presentation", False)
		      '--
		      edt_order.Enabled = True
		      btn_add.Enabled = True
		      btn_add.Default = True
		    Else
		      edt_preview.Text = App.T.Translate("errors/bad_format", Me.CellTag(Me.ListIndex, 0).StringValue + Me.List(Me.ListIndex))
		      edt_order.Enabled = False
		      btn_add.Enabled = False
		    End If
		    edt_preview.ScrollPosition = 0
		    edt_preview.ScrollPositionX = 0
		    
		  Else
		    btn_add.Enabled = False
		    edt_preview.Text = ""
		    edt_order.Text = ""
		    edt_origorder.Text = ""
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  If lst_all_songs.ListIndex >= 0 Then
		    AddSong = True
		    Close
		  Else
		    InputBox.Message App.T.Translate("song_lookup/no_selection")
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Const ASC_KEY_PGDN=12
		  Const ASC_KEY_PGUP =11
		  Const ASC_KEY_HOME=1
		  Const ASC_KEY_END=4
		  Const ASC_KEY_DOWN = 31
		  Const ASC_KEY_UP = 30
		  Const ASC_KEY_ESCAPE = 27
		  Const ASC_KEY_BACKSPACE = 8
		  
		  Select Case Asc(key)
		    '++JRC Make Num-pad Enter work again (bug #1803093)
		  Case 3, 13, 10 'Enter, Return
		    AddSong = True
		    Close
		    Return True
		  Case ASC_KEY_DOWN ' Down
		    KeyedSearch = ""
		    edt_quick_lookup.Text = ""
		    Return False
		  Case ASC_KEY_UP ' Up
		    KeyedSearch = ""
		    edt_quick_lookup.Text = ""
		    Return False
		  Case ASC_KEY_ESCAPE 'Escape
		    If KeyedSearch = "" Then Return False 'Close dialog, no search in progress
		    KeyedSearch = ""
		    edt_quick_lookup.Text = ""
		    Return True 'Keep dialog box from closing
		  Case ASC_KEY_PGDN
		    Me.PageDown
		    edt_quick_lookup.Text = ""
		    Return True
		  Case ASC_KEY_PGUP
		    Me.PageUp
		    edt_quick_lookup.Text = ""
		    Return True
		  Case ASC_KEY_HOME
		    If Me.ListCount > 0 Then
		      Me.ScrollPosition = 0
		      Me.ListIndex = 0
		      edt_quick_lookup.Text = ""
		      Return True
		    Else
		      edt_quick_lookup.Text = ""
		      Return False
		    End If
		  Case ASC_KEY_END
		    If Me.ListCount > 0 Then
		      Me.ScrollPosition = Me.ListCount - 1
		      Me.ListIndex = Me.ListCount - 1
		      edt_quick_lookup.Text = ""
		      Return True
		    Else
		      edt_quick_lookup.Text = ""
		      Return False
		    End If
		  End Select
		  
		  Dim i, l As Integer
		  Dim NewKey As String
		  Dim SearchedEntry As String
		  
		  If Keyboard.CommandKey Or Keyboard.ControlKey Or Keyboard.OptionKey Then Return False
		  
		  App.DebugWriter.Write "SongPickerWindow.lst_all_songs.KeyDown: key = '" + key + "'", 5
		  If Asc(Key) = ASC_KEY_BACKSPACE Then
		    NewKey = StringUtils.Chop(KeyedSearch, 1)
		    If NewKey.Len = 0 Then // Do nothing if the string is now empty
		      KeyedSearch = ""
		      edt_quick_lookup.Text = ""
		      Return True
		    End If
		  Else
		    Key = ConvertEncoding(key, Encodings.UTF8)
		    NewKey = ConvertEncoding(KeyedSearch + key, Encodings.UTF8)
		    App.DebugWriter.Write "SongPickerWindow.lst_all_songs.KeyDown: NewKey = " + NewKey, 5
		  End If
		  l = Len(NewKey)
		  
		  timerLookup.Reset
		  For i = 0 To Me.ListCount - 1
		    SearchedEntry = ConvertEncoding(Left(Me.List(i), l), Encodings.UTF8)
		    If SearchedEntry = NewKey Then
		      Me.ListIndex = i
		      App.DebugWriter.Write "SongPickerWindow.lst_all_songs.KeyDown: Found match index, value: " + str(i) + " " + Me.List(i), 5
		      edt_quick_lookup.Text = NewKey
		      KeyedSearch = NewKey
		      Return True
		    End If
		  Next i
		  
		  Return False
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  'Me.SetFocus
		End Sub
	#tag EndEvent
	#tag Event
		Function CompareRows(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  '++JRC Fix issue where songs were not listed in numerical order
		  
		  If column <> 0 Then Return False // Protection for the future: don't use this except for the song name column
		  
		  result = CompareHymnBookOrder(Me.Cell(row1, column), Me.Cell(row2, column))
		  
		  If result = 0 Then //Names are equal, sort by folder
		    result = Compare(Me.CellTag(row1, column).StringValue, Me.CellTag(row2, column).StringValue)
		  End If
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events SmartSplitter1
	#tag Event
		Sub Open()
		  Me.attach(lst_all_songs)
		  Me.attach(lbl_song_preview)
		  Me.attach(edt_preview)
		  Me.setAttachedControlShouldMove(lbl_song_preview, True)
		  Me.setAttachedControlShouldResize(lbl_song_preview, False)
		  Me.setAttachedControlShouldResize(lst_all_songs, True)
		  Me.setAttachedControlShouldResize(edt_preview, True)
		  Me.MinLimitOffset = ((edt_preview.Top + edt_preview.Height) - lst_all_songs.Top) \ 5
		  Me.StopAtMinOffset = True
		  Me.StopAtMaxOffset = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_add
	#tag Event
		Sub Action()
		  'BuildScripture
		  
		  If lst_all_songs.ListIndex >= 0 Then
		    AddSong = True
		    Close
		  Else
		    InputBox.Message App.T.Translate("song_lookup/no_selection")
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_done
	#tag Event
		Sub Action()
		  f = Nil
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events timerLookup
	#tag Event
		Sub Action()
		  KeyedSearch = ""
		End Sub
	#tag EndEvent
#tag EndEvents
