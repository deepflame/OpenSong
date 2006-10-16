#tag Window
Begin Window SongPickerWindow
   Placement       =   0
   Width           =   315
   Height          =   367
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   1
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Song Lookup"
   Visible         =   "True"
   FullScreen      =   "False"
   MenuBarVisible  =   "True"
   CloseButton     =   "True"
   Resizeable      =   "True"
   LiveResize      =   "False"
   MaximizeButton  =   "True"
   MinimizeButton  =   "True"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   0
   Begin ListBox lst_all_songs
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   10
      Top             =   63
      Width           =   295
      Height          =   202
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
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
      TextSize        =   11
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
      BehaviorIndex   =   0
   End
   Begin PushButton btn_add
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   155
      Top             =   333
      Width           =   69
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Caption         =   "Add"
      Default         =   "False"
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
      BehaviorIndex   =   1
   End
   Begin PushButton btn_done
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   236
      Top             =   332
      Width           =   69
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
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
      BehaviorIndex   =   2
   End
   Begin Timer timerLookup
      Index           =   -2147483648
      ControlOrder    =   3
      Left            =   228
      Top             =   23
      Mode            =   2
      Period          =   1500
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   3
   End
   Begin StaticText txt_explanation_header
      Index           =   -2147483648
      ControlOrder    =   4
      Left            =   10
      Top             =   10
      Width           =   270
      Height          =   45
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Text            =   "To add a song, click the song title below and click the ""Add"" button or begin typing the song title and hit the enter key."
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
      BehaviorIndex   =   4
   End
   Begin PopupMenu pop_select_folder
      Index           =   -2147483648
      ControlOrder    =   5
      Left            =   10
      Top             =   301
      Width           =   215
      Height          =   20
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
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
      InitialParent   =   ""
      BehaviorIndex   =   5
   End
   Begin StaticText lbl_select_folder
      Index           =   -2147483648
      ControlOrder    =   6
      Left            =   11
      Top             =   276
      Width           =   100
      Height          =   14
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Text            =   "Select Folder:"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
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
      InitialParent   =   ""
      BehaviorIndex   =   6
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim x As Integer
		  
		  If UBound(MainWindow.Songs.GetFolders(pop_select_folder)) = 0 Then
		  End If
		  pop_select_folder.ListIndex = 0
		  
		  'If UBound(MainWindow.Songs.GetFiles("", lst_all_songs)) = 0 Then
		  'End If
		  
		  App.T.TranslateWindow Me, "song_lookup", App.TranslationFonts
		  App.CenterInControlScreen Me
		  lst_all_songs.ListIndex = 0
		  lst_all_songs.SetFocus
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Popup() As FolderItem
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
		Function KeyDown(key As String) As Boolean
		  If Asc(Key) = 13 Or Asc(Key) = 10 Then
		    Close
		    Return True
		  ElseIf Asc(Key) = 31 Then ' Down
		    KeyedSearch = ""
		    Return False
		  ElseIf Asc(Key) = 30 Then ' Up
		    KeyedSearch = ""
		    Return False
		  ElseIf Asc(Key) = 27 Then 'Escape
		    KeyedSearch = ""
		    Return True 'Keep dialog box from closing
		  End If
		  
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
		End Sub
	#tag EndEvent
#tag EndEvents
