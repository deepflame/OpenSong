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
   Height          =   486
   LiveResize      =   "False"
   MacProcID       =   1046
   MaxHeight       =   32000
   MaximizeButton  =   "True"
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   "True"
   MinHeight       =   480
   MinimizeButton  =   "True"
   MinWidth        =   300
   Placement       =   0
   Resizeable      =   "True"
   Title           =   "Song Lookup"
   Visible         =   "True"
   Width           =   350
   Begin ListBox lst_all_songs
      AutoDeactivate  =   "True"
      AutoHideScrollbars=   "True"
      Bold            =   "False"
      ColumnCount     =   1
      ColumnsResizable=   "False"
      ColumnWidths    =   ""
      ControlOrder    =   0
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
      Height          =   222
      HelpTag         =   ""
      Hierarchical    =   "False"
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      RequiresSelection=   ""
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
      Width           =   330
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
      Default         =   "True"
      Enabled         =   "False"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   187
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   451
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
      Left            =   267
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   451
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
      BehaviorIndex   =   2
   End
   Begin Timer timerLookup
      ControlOrder    =   3
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   228
      Mode            =   2
      Period          =   1500
      TabPanelIndex   =   0
      Top             =   23
      BehaviorIndex   =   3
   End
   Begin StaticText txt_explanation_header
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   4
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   45
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "True"
      Multiline       =   "True"
      TabPanelIndex   =   0
      Text            =   "To add a song, click the song title below and click the ""Add"" button or begin typing the song title and hit the enter key."
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   9
      Top             =   10
      Underline       =   "False"
      Visible         =   "True"
      Width           =   270
      BehaviorIndex   =   4
   End
   Begin PopupMenu pop_select_folder
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
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   10
      ListIndex       =   0
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   302
      Underline       =   "False"
      Visible         =   "True"
      Width           =   226
      BehaviorIndex   =   5
   End
   Begin StaticText lbl_select_folder
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   6
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "False"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "Select Folder:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   283
      Underline       =   "False"
      Visible         =   "True"
      Width           =   100
      BehaviorIndex   =   6
   End
   Begin EditField edt_preview
      AcceptTabs      =   "False"
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   16777215
      Bold            =   "False"
      Border          =   "True"
      ControlOrder    =   7
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Format          =   ""
      Height          =   90
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LimitText       =   0
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "False"
      Mask            =   ""
      Multiline       =   "True"
      Password        =   "False"
      ReadOnly        =   "True"
      ScrollbarHorizontal=   "True"
      ScrollbarVertical=   "True"
      Styled          =   "False"
      TabPanelIndex   =   0
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   350
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   330
      BehaviorIndex   =   7
   End
   Begin StaticText lbl_song_preview
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   8
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "False"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "Preview:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   329
      Underline       =   "False"
      Visible         =   "True"
      Width           =   100
      BehaviorIndex   =   8
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Resized()
		  HSizer.Resize
		End Sub
	#tag EndEvent

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
		  HSizer.AddTop pop_select_folder, .5
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


#tag EndWindowCode

#tag Bindings
	#tag BeginBinding
		SourceItem = 0
		DestinationItem = 1
		ItemType = enablingBinder
		ItemDescription = Enable btn_add when lst_all_songs has a selection
		SourceBindData = getSelectionProvider
	#tag EndBinding
#tag EndBindings
#tag Events lst_all_songs
	#tag Event
		Sub Change()
		  If Me.ListIndex >= 0 Then
		    '++JRC
		    If Me.ListIndex  = CurrentSel Then Return
		    '--
		    App.DebugWriter.Write("SongPickerWindow.lst_all_songs.Change: New selection is '" +_
		    Me.CellTag(Me.ListIndex, 0).StringValue + Me.List(Me.ListIndex))
		    f = MainWindow.Songs.GetFile(Me.CellTag(Me.ListIndex, 0).StringValue + Me.List(Me.ListIndex))
		    '++JRC Add Song Preview text
		    CurrentSong = SmartML.XDocFromFile(f)
		    edt_preview.Text = SmartML.GetValue(CurrentSong.DocumentElement, "lyrics", True).FormatLocalEndOfLine
		    edt_preview.ScrollPosition = 0
		    edt_preview.ScrollPositionX = 0
		    '--
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  If lst_all_songs.ListIndex >= 0 Then
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
		  
		  Select Case Asc(key)
		  Case 13, 10 'Enter, Return
		    Close
		    Return True
		  Case ASC_KEY_DOWN ' Down
		    KeyedSearch = ""
		    Return False
		  Case ASC_KEY_UP ' Up
		    KeyedSearch = ""
		    Return False
		  Case ASC_KEY_ESCAPE 'Escape
		    If KeyedSearch = "" Then Return False 'Close dialog, no search in progress
		    KeyedSearch = ""
		    Return True 'Keep dialog box from closing
		  Case ASC_KEY_PGDN
		    Me.PageDown
		    Return True
		  Case ASC_KEY_PGUP
		    Me.PageUp
		    Return True
		  Case ASC_KEY_HOME
		    If Me.ListCount > 0 Then
		      Me.ScrollPosition = 0
		      Me.ListIndex = 0
		      Return True
		    Else
		      Return False
		    End If
		  Case ASC_KEY_END
		    If Me.ListCount > 0 Then
		      Me.ScrollPosition = Me.ListCount - 1
		      Me.ListIndex = Me.ListCount - 1
		      Return True
		    Else
		      Return False
		    End If
		  End Select
		  
		  Dim i, l As Integer
		  Dim NewKey As String
		  Dim SearchedEntry As String
		  
		  If Keyboard.CommandKey Or Keyboard.ControlKey Or Keyboard.OptionKey Then Return False
		  
		  App.DebugWriter.Write "SongPickerWindow.lst_all_songs.KeyDown: key = '" + key + "'"
		  Key = ConvertEncoding(key, Encodings.UTF8)
		  NewKey = ConvertEncoding(KeyedSearch + key, Encodings.UTF8)
		  App.DebugWriter.Write "SongPickerWindow.lst_all_songs.KeyDown: NewKey = " + NewKey
		  l = Len(NewKey)
		  
		  timerLookup.Reset
		  For i = 0 To Me.ListCount - 1
		    SearchedEntry = ConvertEncoding(Left(Me.List(i), l), Encodings.UTF8)
		    If SearchedEntry = NewKey Then
		      Me.ListIndex = i
		      App.DebugWriter.Write "SongPickerWindow.lst_all_songs.KeyDown: Found match index, value: " + str(i) + " " + Me.List(i)
		      KeyedSearch = NewKey
		      Return True
		    End If
		  Next i
		  Return False
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.SetFocus
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
#tag Events pop_select_folder
	#tag Event
		Sub Change()
		  If UBound(MainWindow.Songs.GetFiles(Me.Text, lst_all_songs)) = 0 Then
		  End If
		  Globals.CurrentSongPickerFolder = Me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
