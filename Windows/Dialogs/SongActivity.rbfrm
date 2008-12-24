#tag Window
Begin Window SongActivity
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   11
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   400
   ImplicitInstance=   "False"
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   "True"
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   "True"
   MinHeight       =   64
   MinimizeButton  =   "True"
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   "True"
   Title           =   "Song Activity Log"
   Visible         =   "False"
   Width           =   575
   Begin ListBox lst_act_songs
      AutoDeactivate  =   "True"
      AutoHideScrollbars=   "True"
      Bold            =   ""
      ColumnCount     =   7
      ColumnsResizable=   "True"
      ColumnWidths    =   "3*,3*,7*,5*,5*,3*,3*"
      ControlOrder    =   0
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   "True"
      EnableDrag      =   "False"
      EnableDragReorder=   ""
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   "True"
      HeadingIndex    =   -1
      Height          =   234
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      RequiresSelection=   ""
      ScrollbarHorizontal=   ""
      ScrollBarVertical=   "True"
      SelectionType   =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   79
      Underline       =   ""
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   535
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton btn_act_done
      AutoDeactivate  =   "True"
      Bold            =   ""
      Cancel          =   "True"
      Caption         =   "Done"
      ControlOrder    =   1
      Default         =   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   463
      LockBottom      =   "True"
      LockLeft        =   ""
      LockRight       =   "True"
      LockTop         =   ""
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   358
      Underline       =   ""
      Visible         =   "True"
      Width           =   86
   End
   Begin PushButton btn_act_print
      AutoDeactivate  =   "True"
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Print"
      ControlOrder    =   2
      Default         =   ""
      Enabled         =   "False"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   147
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   ""
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   358
      Underline       =   ""
      Visible         =   "True"
      Width           =   101
   End
   Begin PushButton btn_act_find
      AutoDeactivate  =   "True"
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Find"
      ControlOrder    =   3
      Default         =   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   478
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   37
      Underline       =   ""
      Visible         =   "True"
      Width           =   77
   End
   Begin EditField edt_search
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   &hFFFFFF
      Bold            =   ""
      Border          =   "True"
      ControlOrder    =   4
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   307
      LimitText       =   0
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   "True"
      LockTop         =   "True"
      Mask            =   ""
      Multiline       =   ""
      Password        =   ""
      ReadOnly        =   ""
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   "True"
      Styled          =   ""
      TabPanelIndex   =   0
      Text            =   ""
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   37
      Underline       =   ""
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   159
   End
   Begin StaticText lbl_show
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   5
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   76
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      TabPanelIndex   =   0
      Text            =   "Show:"
      TextAlign       =   2
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   326
      Underline       =   ""
      Visible         =   "True"
      Width           =   80
   End
   Begin PopupMenu pop_show
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   6
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   ""
      Left            =   168
      ListIndex       =   0
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   ""
      LockTop         =   ""
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   325
      Underline       =   ""
      Visible         =   "True"
      Width           =   202
   End
   Begin StaticText lbl_date_range
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   7
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockLeft        =   "True"
      LockRight       =   ""
      LockTop         =   "True"
      Multiline       =   ""
      TabPanelIndex   =   0
      Text            =   "Date Range (MM/DD/YYYY):"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   14
      Underline       =   ""
      Visible         =   "True"
      Width           =   262
   End
   Begin EditField edt_from
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   &hFFFFFF
      Bold            =   ""
      Border          =   "True"
      ControlOrder    =   8
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LimitText       =   0
      LockBottom      =   ""
      LockLeft        =   "True"
      LockRight       =   ""
      LockTop         =   "True"
      Mask            =   ""
      Multiline       =   ""
      Password        =   ""
      ReadOnly        =   ""
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   "True"
      Styled          =   ""
      TabPanelIndex   =   0
      Text            =   ""
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   37
      Underline       =   ""
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   120
   End
   Begin EditField edt_to
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   &hFFFFFF
      Bold            =   ""
      Border          =   "True"
      ControlOrder    =   9
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   166
      LimitText       =   0
      LockBottom      =   ""
      LockLeft        =   "True"
      LockRight       =   ""
      LockTop         =   "True"
      Mask            =   ""
      Multiline       =   ""
      Password        =   ""
      ReadOnly        =   ""
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   "True"
      Styled          =   ""
      TabPanelIndex   =   0
      Text            =   ""
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   37
      Underline       =   ""
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   120
   End
   Begin StaticText txt_act_to
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   10
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   143
      LockBottom      =   ""
      LockLeft        =   "True"
      LockRight       =   ""
      LockTop         =   "True"
      Multiline       =   ""
      TabPanelIndex   =   0
      Text            =   "To"
      TextAlign       =   1
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   37
      Underline       =   ""
      Visible         =   "True"
      Width           =   20
   End
   Begin PushButton btn_export
      AutoDeactivate  =   "True"
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Export"
      ControlOrder    =   11
      Default         =   ""
      Enabled         =   "False"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   260
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   ""
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   358
      Underline       =   ""
      Visible         =   "True"
      Width           =   110
   End
   Begin PushButton btn_act_clear_log
      AutoDeactivate  =   "True"
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Clear Log"
      ControlOrder    =   12
      Default         =   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   ""
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   358
      Underline       =   ""
      Visible         =   "True"
      Width           =   109
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
		  
		  OldIndex = -1
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
		  
		  If FromDate = Nil Or ToDate = Nil Then
		    Return
		  End If
		  
		  lst_act_songs.DeleteAllRows
		  
		  recordType = pop_show.RowTag(pop_show.ListIndex).IntegerValue
		  
		  j = 0
		  For i = 1 To Globals.SongActivityLog.NumEntries
		    Log.Append(New LogEntry(Globals.SongActivityLog))
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


#tag EndWindowCode

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
#tag Events btn_act_clear_log
	#tag Event
		Sub Action()
		  If NOT InputBox.Ask(App.T.Translate("song_activity/input_box/erase_all")) Then Return
		  
		  If NOT Globals.SongActivityLog.ClearLog Then
		    'TODO
		    Return
		  End If
		  
		  lst_act_songs.DeleteAllRows
		  
		End Sub
	#tag EndEvent
#tag EndEvents
