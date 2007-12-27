#tag Window
Begin Window SongPickerWindow
   BackColor       =   16777215
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   1
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   520
   ImplicitInstance=   "True"
   LiveResize      =   "False"
   MacProcID       =   1046
   MaxHeight       =   32000
   MaximizeButton  =   "True"
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   "True"
   MinHeight       =   450
   MinimizeButton  =   "True"
   MinWidth        =   350
   Placement       =   0
   Resizeable      =   "True"
   Title           =   "Song Lookup"
   Visible         =   "True"
   Width           =   436
   Begin ListBox lst_all_songs
      AutoDeactivate  =   "True"
      AutoHideScrollbars=   "True"
      Bold            =   "False"
      ColumnCount     =   2
      ColumnsResizable=   "False"
      ColumnWidths    =   "66%,*"
      ControlOrder    =   0
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   "True"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   "True"
      HeadingIndex    =   -1
      Height          =   222
      HelpTag         =   ""
      Hierarchical    =   "False"
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Song	Path"
      Italic          =   "False"
      Left            =   12
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      SelectionType   =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   55
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   406
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      BehaviorIndex   =   0
   End
   Begin PushButton btn_add
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Add"
      ControlOrder    =   1
      Default         =   "False"
      Enabled         =   "False"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   249
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   486
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
      BehaviorIndex   =   1
   End
   Begin PushButton btn_done
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Done"
      ControlOrder    =   2
      Default         =   "False"
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   330
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   485
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
      BehaviorIndex   =   2
   End
   Begin StaticText lbl_select_folder
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   3
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   12
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "False"
      Multiline       =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      Text            =   "Select Folder:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   425
      Underline       =   "False"
      Visible         =   "True"
      Width           =   197
      BehaviorIndex   =   3
   End
   Begin PopupMenu pop_select_folder
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   4
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   12
      ListIndex       =   0
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   444
      Underline       =   "False"
      Visible         =   "True"
      Width           =   206
      BehaviorIndex   =   4
   End
   Begin StaticText lbl_quick_lookup
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   5
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   228
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "False"
      Multiline       =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      Text            =   "Quick Lookup:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   422
      Underline       =   "False"
      Visible         =   "True"
      Width           =   171
      BehaviorIndex   =   5
   End
   Begin SEditField edt_quick_lookup
      AcceptTabs      =   "False"
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   16777215
      Bold            =   "False"
      Border          =   "True"
      ControlOrder    =   6
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Format          =   ""
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   228
      LimitText       =   0
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "False"
      Mask            =   ""
      Multiline       =   "False"
      Password        =   "False"
      ReadOnly        =   "False"
      Scope           =   0
      ScrollbarHorizontal=   "False"
      ScrollbarVertical=   "True"
      Styled          =   "False"
      TabPanelIndex   =   0
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   444
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   179
      BehaviorIndex   =   6
   End
   Begin StaticText lbl_song_preview
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   7
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   12
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "True"
      Multiline       =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      Text            =   "Preview:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   289
      Underline       =   "False"
      Visible         =   "True"
      Width           =   204
      BehaviorIndex   =   7
   End
   Begin EditField edt_preview
      AcceptTabs      =   "False"
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   16777215
      Bold            =   "False"
      Border          =   "True"
      ControlOrder    =   8
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Format          =   ""
      Height          =   104
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   12
      LimitText       =   0
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      Mask            =   ""
      Multiline       =   "True"
      Password        =   "False"
      ReadOnly        =   "True"
      Scope           =   0
      ScrollbarHorizontal=   "True"
      ScrollbarVertical=   "True"
      Styled          =   "False"
      TabPanelIndex   =   0
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   309
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   408
      BehaviorIndex   =   8
   End
   Begin StaticText txt_explanation_header
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   9
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   45
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   20
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "True"
      Multiline       =   "True"
      Scope           =   0
      TabPanelIndex   =   0
      Text            =   "To add a song, click the song title below and click the ""Add"" button. If you know the name of the song you can type it into the Quick Lookup field, and click ""Add"" or press Enter. You can also double-click on the song name to add it."
      TextAlign       =   1
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   5
      Underline       =   "False"
      Visible         =   "True"
      Width           =   378
      BehaviorIndex   =   9
   End
   Begin Timer timerLookup
      ControlOrder    =   10
      Index           =   -2147483648
      Left            =   443
      Mode            =   2
      Period          =   1500
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   0
      BehaviorIndex   =   10
   End
   Begin SmartSplitter SmartSplitter1
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   "True"
      Backdrop        =   ""
      ControlOrder    =   11
      DisableLiveDrag =   0
      doNotAttachEmbeddedControls=   0
      Enabled         =   "True"
      EraseBackground =   "True"
      handleDimple    =   0
      handleLarge     =   0
      Height          =   9
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   12
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "False"
      MaxLimit        =   0
      MaxLimitOffset  =   0
      MinLimit        =   0
      MinLimitOffset  =   0
      Scope           =   0
      showWarningsDialogs=   0
      StayProportional=   0
      StopAtMaxOffset =   0
      StopAtMinOffset =   0
      TabPanelIndex   =   0
      Top             =   278
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   406
      BehaviorIndex   =   11
   End
   Begin CanvasSmartSplitterDebugger CanvasSmartSplitterDebugger1
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   "True"
      Backdrop        =   ""
      ControlOrder    =   12
      debug           =   0
      Enabled         =   "True"
      EraseBackground =   "True"
      Height          =   100
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   -71
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   -24
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   54
      BehaviorIndex   =   12
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  If NOT AddSong Then f = Nil
		  Globals.Status_SongPickerOpen = False
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim x As Integer
		  
		  '++JRC
		  CurrentSel = -1
		  '--
		  If UBound(MainWindow.Songs.GetFolders(pop_select_folder)) = 0 Then
		  End If
		  If Globals.CurrentSongPickerFolder = "" Then
		    pop_select_folder.ListIndex = 0
		  Else
		    For x = 0 to pop_select_folder.ListCount - 1
		      If Globals.CurrentSongPickerFolder = pop_select_folder.List(x) Then
		        pop_select_folder.ListIndex = x
		        Exit
		      End If
		    Next
		  End If
		  
		  App.T.TranslateWindow Me, "song_lookup", App.TranslationFonts
		  App.CenterInControlScreen Me
		  lst_all_songs.ListIndex = 0
		  lst_all_songs.SetFocus
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
		Function Popup() As FolderItem
		  '++JRC
		  Globals.Status_SongPickerOpen = True
		  '--
		  ShowModalWithin(MainWindow)
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
		Protected KeyedSearch As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected HSizer As HalfSizer
	#tag EndProperty


	#tag Constant, Name = kListColumnPath, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kListColumnSong, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant


#tag EndWindowCode

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
		    If App.MainPreferences.GetValueB(prefs.kSongsPreviewWithChords, True) Then
		      edt_preview.Text = SmartML.GetValue(CurrentSong.DocumentElement, "lyrics", True).FormatLocalEndOfLine
		    Else
		      edt_preview.Text = SongML.LyricText(CurrentSong.DocumentElement).FormatLocalEndOfLine
		    End If
		    edt_preview.ScrollPosition = 0
		    edt_preview.ScrollPositionX = 0
		    '--
		    btn_add.Enabled = True
		    btn_add.Default = True
		  Else
		    btn_add.Enabled = False
		    edt_preview.Text = ""
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
		  If UBound(MainWindow.Songs.GetFiles(Me.Text, lst_all_songs)) = 0 Then
		  End If
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
		  
		  Dim i As Integer
		  Dim SearchedEntry As String
		  
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
		    'TODO Handle the F1 - F12 Keys in RB 2007
		    '(in RB 5.5 they don't even trigger the KeyDown event)
		  Else
		    Me.SelText = "" + Key
		  End Select
		  
		  For i = 0 To lst_all_songs.ListCount - 1
		    SearchedEntry = ConvertEncoding(Left(lst_all_songs.List(i), Len(Me.Text)), Encodings.UTF8)
		    If SearchedEntry = Me.Text Then
		      lst_all_songs.ListIndex = i
		      Return True
		    End If
		  Next i
		  
		  lst_all_songs.ListIndex = -1
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events timerLookup
	#tag Event
		Sub Action()
		  KeyedSearch = ""
		End Sub
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
