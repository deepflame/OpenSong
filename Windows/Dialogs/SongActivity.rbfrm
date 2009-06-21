#tag Window
Begin Window SongActivity
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   11
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Song Activity Log"
   Visible         =   False
   Width           =   647
   Begin ListBox lst_act_songs
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      BehaviorIndex   =   0
      Bold            =   ""
      ColumnCount     =   7
      ColumnsResizable=   True
      ColumnWidths    =   "3*,3*,7*,5*,5*,3*,3*"
      ControlOrder    =   0
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   ""
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   234
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   ""
      ScrollbarHorizontal=   ""
      ScrollBarVertical=   True
      SelectionType   =   1
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   79
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   607
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      BehaviorIndex   =   0
   End
   Begin PushButton btn_act_done
      AutoDeactivate  =   True
      BehaviorIndex   =   1
      Bold            =   ""
      Cancel          =   True
      Caption         =   "Done"
      ControlOrder    =   1
      Default         =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   543
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   ""
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   358
      Underline       =   ""
      Visible         =   True
      Width           =   86
      BehaviorIndex   =   1
   End
   Begin PushButton btn_act_print
      AutoDeactivate  =   True
      BehaviorIndex   =   2
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Print"
      ControlOrder    =   2
      Default         =   ""
      Enabled         =   False
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   167
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   ""
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   357
      Underline       =   ""
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   2
   End
   Begin PushButton btn_act_find
      AutoDeactivate  =   True
      BehaviorIndex   =   3
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Find"
      ControlOrder    =   3
      Default         =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   550
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   True
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   37
      Underline       =   ""
      Visible         =   True
      Width           =   77
      BehaviorIndex   =   3
   End
   Begin EditField edt_search
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   &hFFFFFF
      BehaviorIndex   =   4
      Bold            =   ""
      Border          =   True
      ControlOrder    =   4
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   379
      LimitText       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   ""
      Password        =   ""
      ReadOnly        =   ""
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   37
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   159
      BehaviorIndex   =   4
   End
   Begin StaticText lbl_show
      AutoDeactivate  =   True
      BehaviorIndex   =   5
      Bold            =   ""
      ControlOrder    =   5
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   169
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Show:"
      TextAlign       =   2
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   326
      Underline       =   ""
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   5
   End
   Begin PopupMenu pop_show
      AutoDeactivate  =   True
      BehaviorIndex   =   6
      Bold            =   ""
      ControlOrder    =   6
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   ""
      Left            =   261
      ListIndex       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   ""
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   325
      Underline       =   ""
      Visible         =   True
      Width           =   202
      BehaviorIndex   =   6
   End
   Begin StaticText lbl_date_range
      AutoDeactivate  =   True
      BehaviorIndex   =   7
      Bold            =   ""
      ControlOrder    =   7
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Date Range (MM/DD/YYYY):"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   14
      Underline       =   ""
      Visible         =   True
      Width           =   262
      BehaviorIndex   =   7
   End
   Begin EditField edt_from
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   &hFFFFFF
      BehaviorIndex   =   8
      Bold            =   ""
      Border          =   True
      ControlOrder    =   8
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LimitText       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Mask            =   ""
      Multiline       =   ""
      Password        =   ""
      ReadOnly        =   ""
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   37
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   120
      BehaviorIndex   =   8
   End
   Begin EditField edt_to
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   &hFFFFFF
      BehaviorIndex   =   9
      Bold            =   ""
      Border          =   True
      ControlOrder    =   9
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   166
      LimitText       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Mask            =   ""
      Multiline       =   ""
      Password        =   ""
      ReadOnly        =   ""
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   37
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   120
      BehaviorIndex   =   9
   End
   Begin StaticText txt_act_to
      AutoDeactivate  =   True
      BehaviorIndex   =   10
      Bold            =   ""
      ControlOrder    =   10
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   143
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "To"
      TextAlign       =   1
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   37
      Underline       =   ""
      Visible         =   True
      Width           =   20
      BehaviorIndex   =   10
   End
   Begin PushButton btn_act_export
      AutoDeactivate  =   True
      BehaviorIndex   =   11
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Export"
      ControlOrder    =   11
      Default         =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   436
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   ""
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   358
      Underline       =   ""
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   11
   End
   Begin PushButton btn_act_clear_log
      AutoDeactivate  =   True
      BehaviorIndex   =   12
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Clear Log"
      ControlOrder    =   12
      Default         =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   ""
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   358
      Underline       =   ""
      Visible         =   True
      Width           =   90
      BehaviorIndex   =   12
   End
   Begin PushButton btn_act_view
      AutoDeactivate  =   True
      BehaviorIndex   =   13
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "View LogFile"
      ControlOrder    =   13
      Default         =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   257
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   358
      Underline       =   ""
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   13
   End
   Begin PushButton btn_act_merge
      AutoDeactivate  =   True
      BehaviorIndex   =   14
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Merge"
      ControlOrder    =   14
      Default         =   ""
      Enabled         =   False
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   346
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   358
      Underline       =   ""
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   14
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim d As New Date
		  
		  App.T.TranslateWindow Me, "song_activity", App.TranslationFonts
		  App.T.LoadPopup("song_activity/show", pop_show)
		  App.CenterInControlScreen Me
		  
		  Initializing = True
		  edt_to.Text = d.ShortDate 'Default to current date
		  d.SQLDate = Str(d.Year) + "-01-01"  'Default to January 1st of the current year
		  edt_from.Text = d.ShortDate
		  
		  Initializing = False
		  
		  OldIndex = -2
		  pop_show.ListIndex = 0
		  Self.Visible = True
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub GetFromDate()
		  'Dim Month As Integer
		  'Dim Day As Integer
		  'Dim Year As Integer
		  '
		  ''(MM/DD/YYYY)
		  'Month = Val(Left(edt_from.Text, 2))
		  'Day = Val(Mid(edt_from.Text, 3, 2))
		  'Year = Val(Right(edt_from.Text, 4))
		  '
		  'If Month <> 0 And Day <> 0 And Year <> 0 Then
		  ''Sanity checks
		  'If Month > 12 Then Return
		  'If Day > 31 Then Return
		  '
		  'FromDate = New Date
		  'FromDate.Month = Month
		  'FromDate.Day = Day
		  'FromDate.Year = Year
		  'If NOT Initializing Then RefreshList
		  'End If
		  
		  Dim d As New Date
		  
		  If ParseDate(edt_from.Text, d) Then
		    FromDate = d
		    If Not Initializing Then
		      RefreshList
		    End If
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetToDate()
		  'Dim Month As Integer
		  'Dim Day As Integer
		  'Dim Year As Integer
		  '
		  ''(MM/DD/YYYY)
		  'Month = Val(Left(edt_to.Text, 2))
		  'Day = Val(Mid(edt_to.Text, 3, 2))
		  'Year = Val(Right(edt_to.Text, 4))
		  '
		  'If Month <> 0 And Day <> 0 And Year <> 0 Then
		  ''Sanity checks
		  'If Month > 12 Then Return
		  'If Day > 31 Then Return
		  '
		  'ToDate = New Date
		  'ToDate.Month = Month
		  'ToDate.Day = Day
		  'ToDate.Year = Year
		  'If NOT Initializing Then RefreshList
		  'End If
		  Dim d As New Date
		  
		  If ParseDate(edt_to.Text, d) Then
		    ToDate = d
		    If Not Initializing Then
		      RefreshList
		    End If
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshList()
		  Dim i As Integer
		  Dim j As Integer
		  Dim Log() As LogEntry
		  Dim recordType As Integer
		  
		  If FromDate = Nil Or ToDate = Nil  Or ActLog = Nil Then
		    Return
		  End If
		  
		  lst_act_songs.DeleteAllRows
		  
		  recordType = pop_show.RowTag(pop_show.ListIndex).IntegerValue
		  
		  j = 0
		  For i = 1 To ActLog.NumEntries  'Globals.SongActivityLog.NumEntries
		    Log.Append(New LogEntry(ActLog))  'Globals.SongActivityLog))
		    If Log(j).GetLogEntry(i) Then
		      If Log(j).DateAndTime <> Nil Then
		        If CompareDates(Log(j).DateAndTime, FromDate) >= 0 And CompareDates(Log(j).DateAndTime, ToDate) <= 0 Then
		          If Search Then
		            'TODO Maybe description?
		            If Log(j).Title <> edt_search.Text And Log(j).Author <> edt_search.Text And Log(j).CCLISongNumber <> edt_search.Text Then
		              Log.Remove(j)
		              Continue
		            End If
		            Search = False
		          End If
		          
		          If (recordType > 0) And (Log(j).Description <> recordType) Then
		            Log.Remove(j)
		            Continue
		          End If
		          
		          AddEntryToList(Log(j))
		          j = j + 1
		          
		          'bless you RB team ;)
		          Continue
		        End If
		      End If
		    End If
		    
		    Log.Remove(j)
		  Next i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddEntryToList(Log As LogEntry)
		  'This is where we plug-in all the Log entry infos into the list
		  'TODO Translate
		  
		  'Date
		  lst_act_songs.AddRow Log.DateAndTime.ShortDate
		  'Time
		  lst_act_songs.Cell(lst_act_songs.LastIndex, 1) = Log.DateAndTime.ShortTime 'We could use LongTime for accuracy to the second (for our vulcan users :)
		  
		  'Description
		  lst_act_songs.Cell(lst_act_songs.LastIndex, 2) = NthField(App.T.Translate("song_activity/description"), "|", Log.Description)
		  
		  'Title
		  lst_act_songs.Cell(lst_act_songs.LastIndex, 3) = Log.Title
		  'Author
		  lst_act_songs.Cell(lst_act_songs.LastIndex, 4) = Log.Author
		  'CCLI Song #
		  lst_act_songs.Cell(lst_act_songs.LastIndex, 5) = Log.CCLISongNumber
		  'Chords
		  If Log.HasChords Then
		    lst_act_songs.Cell(lst_act_songs.LastIndex, 6) = App.T.Translate("shared/yes")
		  Else
		    lst_act_songs.Cell(lst_act_songs.LastIndex, 6) = App.T.Translate("shared/no")
		  End If
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		FromDate As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		ToDate As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		Initializing As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Search As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		OldIndex As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ActLog As ActivityLog
	#tag EndProperty

	#tag Property, Flags = &h0
		FromFile As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events lst_act_songs
	#tag Event
		Function CompareRows(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  If column > 2 Then Return False
		  
		  Dim d1, d2 As Date
		  
		  If column = 1 Then
		    If NOT ParseTime(Me.Cell(row1, column), d1) Then
		      Return False
		    End If
		    If NOT ParseTime(Me.Cell(row2, column), d2) Then
		      Return False
		    End If
		    
		    result = CompareTimes(d2, d1)
		    Return True
		  End If
		  
		  If NOT ParseDate(Me.Cell(row1, column), d1) Then
		    Return False
		  End If
		  If NOT ParseDate(Me.Cell(row2, column), d2) Then
		    Return False
		  End If
		  
		  result = CompareDates(d2, d1)
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btn_act_done
	#tag Event
		Sub Action()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_act_find
	#tag Event
		Sub Action()
		  If edt_search.Text = "" Then Return
		  Search = True
		  RefreshList
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_search
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If edt_search.Text = "" Then Return True
		  If Asc(Key) = 13 Or Asc(Key) = 10 Or Asc(Key) = 3 Then
		    Search = True
		    RefreshList
		  End If
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events pop_show
	#tag Event
		Sub Change()
		  If Initializing Then return
		  
		  If Me.ListIndex <> OldIndex Then RefreshList
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_from
	#tag Event
		Sub TextChange()
		  GetFromDate
		End Sub
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  //++
		  // When we come off this field, it should either have a valid date that was input or get
		  // set to the last valid date
		  //
		  
		  If Not ParseDate(Me.Text, FromDate) Then
		    Me.Text = FromDate.ShortDate
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_to
	#tag Event
		Sub TextChange()
		  GetToDate
		End Sub
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  //++
		  // When we come off this field, it should either have a valid date that was input or get
		  // set to the last valid date
		  //
		  
		  If Not ParseDate(Me.Text, ToDate) Then
		    Me.Text = ToDate.ShortDate
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_act_export
	#tag Event
		Sub Action()
		  Dim dlg as New SelectFolderDialog
		  Dim f, g as FolderItem
		  
		  'build dialog
		  dlg.ActionButtonCaption = App.T.Translate("shared/ok/@caption")
		  dlg.CancelButtonCaption = App.T.Translate("shared/cancel/@caption")
		  dlg.InitialDirectory = App.AppDocumentsFolder
		  dlg.PromptText = App.T.Translate("shared/export_to/@caption")
		  dlg.Title = App.T.Translate("shared/browse_for/@caption")
		  
		  f = dlg.ShowModal() 'show dialog
		  If f <> Nil Then
		    If Globals.SongActivityLog.LogFolderItem <> Nil Then
		      Globals.SongActivityLog.LogFolderItem.CopyFileTo(f.Child("ActivityLog.xml"))
		    Else
		      If App.DocsFolder.Child("Settings").Child("ActivityLog.xml").Exists Then
		        App.DocsFolder.Child("Settings").Child("ActivityLog.xml").CopyFileTo(f.Child("ActivityLog.xml"))
		      End If
		    End If
		    
		    InputBox.Message App.T.Translate("shared/done/@caption")
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_act_clear_log
	#tag Event
		Sub Action()
		  If NOT InputBox.Ask(App.T.Translate("song_activity/input_box/erase_all")) Then Return
		  
		  If NOT ActLog.ClearLog Then
		    'TODO
		    Return
		  End If
		  
		  If NOT FromFile Then
		    Globals.SongActivityLog = ActLog
		  End If
		  
		  lst_act_songs.DeleteAllRows
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_act_view
	#tag Event
		Sub Action()
		  Dim file As FolderItem
		  Dim Act as New FileType
		  
		  Act.Name = App.T.Translate("song_activity/file_type")
		  Act.Extensions = "xml"
		  Act.MacType = "XML"
		  
		  file = GetOpenFolderItem(Act)
		  
		  If file = Nil Then Return
		  
		  Dim Log As New ActivityLog
		  If NOT Log.Load(file) Then
		    'TODO
		    Return
		  End If
		  
		  Dim saWin As New SongActivity
		  saWin.ActLog = Log
		  saWin.FromFile = true
		  saWin.Title = App.T.Translate("song_activity/@title") + " (" +  Log.LogFolderItem.AbsolutePath + ")"
		  saWin.RefreshList
		  saWin.btn_act_merge.Enabled = true
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_act_merge
	#tag Event
		Sub Action()
		  If ActLog.NumEntries = 0 Then
		    Return
		  End If
		  
		  Dim i As Integer
		  Dim j As Integer
		  Dim dupes As Integer
		  Dim Entry1 As LogEntry
		  Dim Entry2 As LogEntry
		  Dim dup As Boolean
		  Dim msg As String
		  
		  For i = 1 To ActLog.NumEntries
		    
		    Entry1 = New LogEntry(ActLog)
		    If Entry1.GetLogEntry(i) Then
		      
		      For j = 1 To Globals.SongActivityLog.NumEntries
		        Entry2 = New LogEntry(Globals.SongActivityLog)
		        If Entry2.GetLogEntry(j) Then
		          If Entry1.CompareLogEntry(Entry2) Then
		            dup = true
		            dupes = dupes + 1
		            goto done
		          End If
		          
		        End If
		      Next j
		      
		      done:
		      
		      If NOT dup Then
		        'no duplicates found add entry
		        Entry2 = New LogEntry(Globals.SongActivityLog)
		        
		        If NOT Entry2.CreateLogEntry(Entry1) Then
		          'TODO
		        End If
		        
		        If NOT Entry2.AddLogEntry Then
		          InputBox.Message App.T.Translate("errors/adding_entry")
		        Else
		          Entry2.UpdateNumEntries(Globals.SongActivityLog)
		        End If
		        
		      End If
		      
		      dup = false
		    End If
		  Next i
		  
		  MainWindow.saWin.RefreshList
		  
		  Msg =  App.T.Translate("song_activity/merged", Str(ActLog.NumEntries  - dupes))
		  
		  If dupes > 0 Then
		    Msg = Msg + " "  + App.T.Translate("song_activity/merged_dupes", Str(dupes))
		  End If
		  
		  InputBox.Message Msg
		End Sub
	#tag EndEvent
#tag EndEvents
