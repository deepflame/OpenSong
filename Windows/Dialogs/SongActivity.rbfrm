#tag Window
Begin Window SongActivity
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   0
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   300
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
   Visible         =   "True"
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
      Enabled         =   True
      EnableDrag      =   "False"
      EnableDragReorder=   ""
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   "True"
      HeadingIndex    =   -1
      Height          =   183
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      RequiresSelection=   ""
      ScrollbarHorizontal=   ""
      ScrollBarVertical=   "True"
      SelectionType   =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   59
      Underline       =   ""
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   535
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      BehaviorIndex   =   0
   End
   Begin PushButton btn_act_done
      AutoDeactivate  =   "True"
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Done"
      ControlOrder    =   1
      Default         =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   464
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   256
      Underline       =   ""
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   1
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
      Left            =   280
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   256
      Underline       =   ""
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   2
   End
   Begin PushButton btn_act_find
      AutoDeactivate  =   "True"
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Find"
      ControlOrder    =   3
      Default         =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   500
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   28
      Underline       =   ""
      Visible         =   True
      Width           =   49
      BehaviorIndex   =   3
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
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   354
      LimitText       =   0
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
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
      Top             =   28
      Underline       =   ""
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   143
      BehaviorIndex   =   4
   End
   Begin StaticText lbl_show
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   5
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      TabPanelIndex   =   0
      Text            =   "Show:"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   256
      Underline       =   ""
      Visible         =   True
      Width           =   45
      BehaviorIndex   =   5
   End
   Begin PopupMenu pop_show
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   6
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   ""
      Left            =   60
      ListIndex       =   0
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   256
      Underline       =   ""
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   6
   End
   Begin StaticText lbl_date_range
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   7
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      TabPanelIndex   =   0
      Text            =   "Date Range (MM/DD/YYYY):"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   28
      Underline       =   ""
      Visible         =   True
      Width           =   137
      BehaviorIndex   =   7
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
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   162
      LimitText       =   0
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
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
      Top             =   28
      Underline       =   ""
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   65
      BehaviorIndex   =   8
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
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   249
      LimitText       =   0
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
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
      Top             =   28
      Underline       =   ""
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   65
      BehaviorIndex   =   9
   End
   Begin StaticText StaticText1
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   10
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   228
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      TabPanelIndex   =   0
      Text            =   "To"
      TextAlign       =   1
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   29
      Underline       =   ""
      Visible         =   True
      Width           =   20
      BehaviorIndex   =   10
   End
   Begin PushButton PushButton1
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
      Left            =   372
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   256
      Underline       =   ""
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   11
   End
   Begin PushButton btn_clear_log
      AutoDeactivate  =   "True"
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Clear Log"
      ControlOrder    =   12
      Default         =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   195
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   256
      Underline       =   ""
      Visible         =   True
      Width           =   71
      BehaviorIndex   =   12
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim d As New Date
		  
		  'App.T.TranslateWindow Me, "import_from_ccli", App.TranslationFonts
		  App.CenterInControlScreen Me
		  
		  Initializing = True
		  edt_from.Text = "1/1/" + Str(d.Year) 'Default to January 1st of the current year
		  edt_to.Text = Str(d.Month) + "/" + Str(d.Day) + "/" + Str(d.Year) 'Default to current date
		  
		  pop_show.AddRow "All"
		  pop_show.AddRow "Created"
		  pop_show.AddRow "Deleted"
		  pop_show.AddRow "Modified"
		  pop_show.AddRow "Moved"
		  pop_show.AddRow "Presented"
		  pop_show.AddRow "Printed"
		  pop_show.AddRow "Renamed"
		  Initializing = False
		  
		  OldIndex = -1
		  pop_show.ListIndex = 0
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub GetFromDate()
		  Dim Month As Integer
		  Dim Day As Integer
		  Dim Year As Integer
		  
		  '(MM/DD/YYYY)
		  Month = Val(Left(edt_from.Text, 2))
		  Day = Val(Mid(edt_from.Text, 3, 2))
		  Year = Val(Right(edt_from.Text, 4))
		  
		  If Month <> 0 And Day <> 0 And Year <> 0 Then
		    'Sanity checks
		    If Month > 12 Then Return
		    If Day > 31 Then Return
		    
		    FromDate = New Date
		    FromDate.Month = Month
		    FromDate.Day = Day
		    FromDate.Year = Year
		    If NOT Initializing Then RefreshList
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetToDate()
		  Dim Month As Integer
		  Dim Day As Integer
		  Dim Year As Integer
		  
		  '(MM/DD/YYYY)
		  Month = Val(Left(edt_to.Text, 2))
		  Day = Val(Mid(edt_to.Text, 3, 2))
		  Year = Val(Right(edt_to.Text, 4))
		  
		  If Month <> 0 And Day <> 0 And Year <> 0 Then
		    'Sanity checks
		    If Month > 12 Then Return
		    If Day > 31 Then Return
		    
		    ToDate = New Date
		    ToDate.Month = Month
		    ToDate.Day = Day
		    ToDate.Year = Year
		    If NOT Initializing Then RefreshList
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshList()
		  Dim i As Integer
		  Dim j As Integer
		  Dim Log() As LogEntry
		  
		  If FromDate = Nil Or ToDate = Nil Then
		    Return
		  End If
		  
		  lst_act_songs.DeleteAllRows
		  
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
		          
		          Select Case pop_show.ListIndex
		          Case 1 'Created
		            If NOT Log(j).Created Then
		              Log.Remove(j)
		              Continue
		            End If
		          Case 2 'Deleted
		            If NOT Log(j).Deleted Then
		              Log.Remove(j)
		              Continue
		            End If
		          Case 3 'Modified
		            If NOT Log(j).Modified Then
		              Log.Remove(j)
		              Continue
		            End If
		          Case 4 'Moved
		            If NOT Log(j).Moved Then
		              Log.Remove(j)
		              Continue
		            End If
		          Case 5 'Presented
		            If NOT Log(j).Presented Then
		              Log.Remove(j)
		              Continue
		            End If
		          Case 6 'Printed
		            If NOT Log(j).Printed Then
		              Log.Remove(j)
		              Continue
		            End If
		          Case 7 'Renamed
		            If NOT Log(j).Renamed Then
		              Log.Remove(j)
		              Continue
		            End If
		            
		          Else 'All
		            
		          End Select
		          
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
		  // Do this alphabetically to make it easier for the programmer :-)
		  If Log.Created Then 'Created
		    lst_act_songs.Cell(lst_act_songs.LastIndex, 2) = "Song Created"
		  ElseIf Log.Deleted Then 'Deleted
		    lst_act_songs.Cell(lst_act_songs.LastIndex, 2) = "Song Deleted"
		  ElseIf Log.Modified Then 'Modified
		    lst_act_songs.Cell(lst_act_songs.LastIndex, 2) = "Song Modified"
		  ElseIf Log.Moved Then 'Moved
		    lst_act_songs.Cell(lst_act_songs.LastIndex, 2) = "Song Moved"
		  ElseIf Log.Presented Then 'Presented
		    lst_act_songs.Cell(lst_act_songs.LastIndex, 2) = "Song Presented"
		  ElseIf Log.Printed Then 'Printed
		    lst_act_songs.Cell(lst_act_songs.LastIndex, 2) = "Song Printed"
		  ElseIf Log.Renamed Then 'Renamed
		    lst_act_songs.Cell(lst_act_songs.LastIndex, 2) = "Song Renamed"
		  Else
		    
		  End If
		  
		  'Title
		  lst_act_songs.Cell(lst_act_songs.LastIndex, 3) = Log.Title
		  'Author
		  lst_act_songs.Cell(lst_act_songs.LastIndex, 4) = Log.Author
		  'CCLI Song #
		  lst_act_songs.Cell(lst_act_songs.LastIndex, 5) = Log.CCLISongNumber
		  'Chords
		  If Log.HasChords Then
		    lst_act_songs.Cell(lst_act_songs.LastIndex, 6) = "Yes"
		  Else
		    lst_act_songs.Cell(lst_act_songs.LastIndex, 6) = "No"
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

#tag Events lst_act_songs
	#tag Event
		Sub Open()
		  
		  Me.Heading(0) = "Date"
		  Me.Heading(1) = "Time"
		  Me.Heading(2) = "Description"
		  Me.Heading(3) = "Title"
		  Me.Heading(4) = "Author"
		  Me.Heading(5) = "CCLI #"
		  Me.Heading(6) = "Has Chords"
		  
		End Sub
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
		  If Asc(Key) = 13 Or Asc(Key) = 10 Then
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
#tag EndEvents
#tag Events edt_to
	#tag Event
		Sub TextChange()
		  GetToDate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_clear_log
	#tag Event
		Sub Action()
		  If NOT InputBox.Ask("This will erase all the log entries. Are you sure?") Then Return
		  
		  If NOT Globals.SongActivityLog.ClearLog Then
		    'TODO
		    Return
		  End If
		  
		  lst_act_songs.DeleteAllRows
		  
		End Sub
	#tag EndEvent
#tag EndEvents
