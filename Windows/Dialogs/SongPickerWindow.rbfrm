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
   Height          =   367
   LiveResize      =   "False"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   "True"
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   "True"
   MinHeight       =   64
   MinimizeButton  =   "True"
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   "True"
   Title           =   "Song Lookup"
   Visible         =   "True"
   Width           =   315
   Begin ListBox lst_all_songs
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ColumnCount     =   1
      ColumnsResizable=   "False"
      ColumnWidths    =   ""
      ControlOrder    =   0
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   "False"
      HeadingIndex    =   -1
      Height          =   202
      HelpTag         =   ""
      Hierarchical    =   "False"
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      ScrollBarHorizontal=   "False"
      ScrollBarVertical=   "True"
      ScrollPosition  =   0
      ScrollPositionX =   0
      SelectionType   =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   63
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   295
      BehaviorIndex   =   0
   End
   Begin PushButton btn_add
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Add"
      ControlOrder    =   1
      Default         =   "False"
      DisabledBalloonHelp=   ""
      Enabled         =   "False"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   155
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   333
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
      BehaviorIndex   =   1
   End
   Begin PushButton btn_done
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Done"
      ControlOrder    =   2
      Default         =   "False"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   236
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   332
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
      BehaviorIndex   =   2
   End
   Begin Timer timerLookup
      ControlOrder    =   3
      Index           =   -2147483648
      Left            =   228
      Mode            =   2
      Period          =   1500
      TabPanelIndex   =   0
      Top             =   23
      BehaviorIndex   =   3
   End
   Begin StaticText txt_explanation_header
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ControlOrder    =   4
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
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
      MultiLine       =   "True"
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
      BalloonHelp     =   ""
      Bold            =   "False"
      ControlOrder    =   5
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   10
      ListIndex       =   0
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   301
      Underline       =   "False"
      Visible         =   "True"
      Width           =   215
      BehaviorIndex   =   5
   End
   Begin StaticText lbl_select_folder
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ControlOrder    =   6
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   11
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "Select Folder:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   276
      Underline       =   "False"
      Visible         =   "True"
      Width           =   100
      BehaviorIndex   =   6
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  Globals.Status_SongPickerOpen = False
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim x As Integer
		  
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
		Protected f As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected KeyedSearch As String
	#tag EndProperty


#tag EndWindowCode

#tag Events lst_all_songs
	#tag Event
		Sub Change()
		  If Me.ListIndex >= 0 Then
		    App.DebugWriter.Write("SongPickerWindow.lst_all_songs.Change: New selection is '" +_
		    Me.CellTag(Me.ListIndex, 0).StringValue + Me.List(Me.ListIndex))
		    f = MainWindow.Songs.GetFile(Me.CellTag(Me.ListIndex, 0).StringValue + Me.List(Me.ListIndex))
		    btn_add.Enabled = True
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
