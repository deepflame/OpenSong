#tag Window
Begin Window CCLIWindow
   BackColor       =   16777215
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   366
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Import From CCLI"
   Visible         =   True
   Width           =   550
   Begin Canvas can_ccli
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      BehaviorIndex   =   0
      ControlOrder    =   0
      Enabled         =   True
      EraseBackground =   True
      Height          =   51
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Left            =   5
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   5
      UseFocusRing    =   True
      Visible         =   True
      Width           =   151
      BehaviorIndex   =   0
   End
   Begin StaticText lbl_ccli_user_id
      AutoDeactivate  =   True
      BehaviorIndex   =   1
      Bold            =   False
      ControlOrder    =   1
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   260
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "CCLI User ID:"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   7
      Underline       =   False
      Visible         =   True
      Width           =   130
      BehaviorIndex   =   1
   End
   Begin SEditField edt_ccli_user_id
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      BehaviorIndex   =   2
      Bold            =   False
      Border          =   True
      ControlOrder    =   2
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   395
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   False
      Password        =   False
      ReadOnly        =   False
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   5
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   150
      BehaviorIndex   =   2
   End
   Begin StaticText lbl_ccli_password
      AutoDeactivate  =   True
      BehaviorIndex   =   3
      Bold            =   False
      ControlOrder    =   3
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   260
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "CCLI Password:"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   32
      Underline       =   False
      Visible         =   True
      Width           =   130
      BehaviorIndex   =   3
   End
   Begin SEditField edt_ccli_password
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      BehaviorIndex   =   4
      Bold            =   False
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
      Italic          =   False
      Left            =   395
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   False
      Password        =   True
      ReadOnly        =   False
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   30
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   150
      BehaviorIndex   =   4
   End
   Begin StaticText lbl_search_for
      AutoDeactivate  =   True
      BehaviorIndex   =   5
      Bold            =   False
      ControlOrder    =   5
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   5
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Search for:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   76
      Underline       =   False
      Visible         =   True
      Width           =   65
      BehaviorIndex   =   5
   End
   Begin SEditField edt_search
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      BehaviorIndex   =   6
      Bold            =   False
      Border          =   True
      ControlOrder    =   6
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   70
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Mask            =   ""
      Multiline       =   False
      Password        =   False
      ReadOnly        =   False
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   75
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   150
      BehaviorIndex   =   6
   End
   Begin StaticText txt_search_by
      AutoDeactivate  =   True
      BehaviorIndex   =   7
      Bold            =   False
      ControlOrder    =   7
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   222
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "by"
      TextAlign       =   1
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   75
      Underline       =   False
      Visible         =   True
      Width           =   25
      BehaviorIndex   =   7
   End
   Begin PopupMenu pop_by
      AutoDeactivate  =   True
      BehaviorIndex   =   8
      Bold            =   False
      ControlOrder    =   8
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   250
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   75
      Underline       =   False
      Visible         =   True
      Width           =   100
      BehaviorIndex   =   8
   End
   Begin StaticText txt_search_filter
      AutoDeactivate  =   True
      BehaviorIndex   =   9
      Bold            =   False
      ControlOrder    =   9
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   350
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "filter"
      TextAlign       =   1
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   76
      Underline       =   False
      Visible         =   True
      Width           =   35
      BehaviorIndex   =   9
   End
   Begin PopupMenu pop_filter
      AutoDeactivate  =   True
      BehaviorIndex   =   10
      Bold            =   False
      ControlOrder    =   10
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   385
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   75
      Underline       =   False
      Visible         =   True
      Width           =   100
      BehaviorIndex   =   10
   End
   Begin PushButton btn_song_find
      AutoDeactivate  =   True
      BehaviorIndex   =   11
      Bold            =   False
      Cancel          =   False
      Caption         =   "Find"
      ControlOrder    =   11
      Default         =   True
      Enabled         =   False
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   490
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   75
      Underline       =   False
      Visible         =   True
      Width           =   55
      BehaviorIndex   =   11
   End
   Begin ListBox lst_found_songs
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      BehaviorIndex   =   12
      Bold            =   False
      ColumnCount     =   10
      ColumnsResizable=   True
      ColumnWidths    =   "*, *, *, 5*, 5*, 3*, 3*, 3*, 2*, 3*"
      ControlOrder    =   12
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
      Height          =   205
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   5
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   ""
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   105
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   540
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      BehaviorIndex   =   12
   End
   Begin PushButton btn_page_previous_page
      AutoDeactivate  =   True
      BehaviorIndex   =   13
      Bold            =   False
      Cancel          =   False
      Caption         =   "< Previous Page"
      ControlOrder    =   13
      Default         =   False
      Enabled         =   False
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   5
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   324
      Underline       =   False
      Visible         =   True
      Width           =   110
      BehaviorIndex   =   13
   End
   Begin PushButton btn_page_next_page
      AutoDeactivate  =   True
      BehaviorIndex   =   14
      Bold            =   False
      Cancel          =   False
      Caption         =   "Next Page >"
      ControlOrder    =   14
      Default         =   False
      Enabled         =   False
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   245
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   324
      Underline       =   False
      Visible         =   True
      Width           =   110
      BehaviorIndex   =   14
   End
   Begin StaticText txt_prefix_page
      AutoDeactivate  =   True
      BehaviorIndex   =   15
      Bold            =   False
      ControlOrder    =   15
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   105
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Page"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   325
      Underline       =   False
      Visible         =   True
      Width           =   50
      BehaviorIndex   =   15
   End
   Begin PopupMenu pop_current_page
      AutoDeactivate  =   True
      BehaviorIndex   =   16
      Bold            =   False
      ControlOrder    =   16
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   160
      ListIndex       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   324
      Underline       =   False
      Visible         =   True
      Width           =   50
      BehaviorIndex   =   16
   End
   Begin StaticText txt_number_of_pages
      AutoDeactivate  =   True
      BehaviorIndex   =   17
      Bold            =   False
      ControlOrder    =   17
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   213
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "of 0"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   325
      Underline       =   False
      Visible         =   True
      Width           =   30
      BehaviorIndex   =   17
   End
   Begin PushButton btn_song_import
      AutoDeactivate  =   True
      BehaviorIndex   =   18
      Bold            =   False
      Cancel          =   False
      Caption         =   "Import"
      ControlOrder    =   18
      Default         =   False
      Enabled         =   False
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   380
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   324
      Underline       =   False
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   18
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   True
      BehaviorIndex   =   19
      Bold            =   False
      Cancel          =   True
      Caption         =   "Cancel"
      ControlOrder    =   19
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   467
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   324
      Underline       =   False
      Visible         =   True
      Width           =   80
      BehaviorIndex   =   19
   End
   Begin Separator sep_1
      AutoDeactivate  =   True
      BehaviorIndex   =   20
      ControlOrder    =   20
      Enabled         =   True
      Height          =   4
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Left            =   5
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   60
      Visible         =   True
      Width           =   540
      BehaviorIndex   =   20
   End
   Begin PopupMenu pop_by_values
      AutoDeactivate  =   True
      BehaviorIndex   =   21
      Bold            =   False
      ControlOrder    =   21
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      InitialValue    =   "Title\r\nTitleOnly\r\nLyrics\r\nAuthor\r\nCatalog\r\nTheme\r\nCCLI Number"
      Italic          =   False
      Left            =   250
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      Top             =   36
      Underline       =   False
      Visible         =   False
      Width           =   10
      BehaviorIndex   =   21
   End
   Begin PopupMenu pop_filter_values
      AutoDeactivate  =   True
      BehaviorIndex   =   22
      Bold            =   False
      ControlOrder    =   22
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      InitialValue    =   "\r\nLeadSheets\r\nsamples"
      Italic          =   False
      Left            =   270
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      Top             =   36
      Underline       =   False
      Visible         =   False
      Width           =   10
      BehaviorIndex   =   22
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  pop_by.ListIndex = 0
		  pop_filter.ListIndex = 0
		  
		  App.T.TranslateWindow Me, "import_from_ccli", App.TranslationFonts
		  App.CenterInControlScreen Me
		  
		  edt_ccli_user_id.Text = SmartML.GetValue(App.MyMainSettings.DocumentElement, "ccli/@id", True)
		  edt_ccli_password.Text= SmartML.GetValue(App.MyMainSettings.DocumentElement, "ccli/@password", True)
		  
		  pop_by.AddRow App.T.Translate("import_from_ccli/by/title_and_aka/@caption")
		  pop_by.AddRow App.T.Translate("import_from_ccli/by/title/@caption")
		  pop_by.AddRow App.T.Translate("import_from_ccli/by/lyrics/@caption")
		  pop_by.AddRow App.T.Translate("import_from_ccli/by/author/@caption")
		  pop_by.AddRow App.T.Translate("import_from_ccli/by/catalog/@caption")
		  pop_by.AddRow App.T.Translate("import_from_ccli/by/theme/@caption")
		  pop_by.AddRow App.T.Translate("import_from_ccli/by/ccli/@caption")
		  pop_by.ListIndex = 0
		  pop_filter.AddRow App.T.Translate("import_from_ccli/filter/all/@caption")
		  pop_filter.AddRow App.T.Translate("import_from_ccli/filter/lead_sheets/@caption")
		  pop_filter.AddRow App.T.Translate("import_from_ccli/filter/sound_samples/@caption")
		  pop_filter.ListIndex = 0
		  
		  txt_number_of_pages.Caption = Replace(txt_number_of_pages.Caption, "%1", "0")
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub Find()
		  Dim temp, page As String
		  Dim x As Integer
		  
		  Dim socket As HTTPSocket
		  socket = GetCCLISocket
		  
		  Dim form As New Dictionary
		  form.value("searchConsole") = "basic"
		  form.value("resetPage") = "no"
		  form.value("author_first_name") = ""
		  form.value("author_last_name") = ""
		  form.value("searchby") = ""
		  form.value("catalog_id") = ""
		  form.value("search_method") = "phrase"
		  form.value("search_words") = CurrentString
		  form.value("search_type") = CurrentBy
		  form.value("ShowOnly") = CurrentFilter
		  form.value("SSLSResultspage") = Str(CurrentPage)
		  form.value("display_options") = "Author,Catalog,AKA,FirstLine,Key,CCLINumber"
		  socket.SetFormData form
		  
		  page = socket.Post("http://www.ccli.com/CCLI_Services/SongSelect/SearchResults.cfm", 20)
		  If Len(page) <= 0 Then
		    InputBox.Message App.T.Translate("import_from_ccli/errors/no_data")
		    App.MouseCursor = Nil
		    Return
		  End If
		  
		  page = FixHTML(page)
		  
		  'Dim ou As TextOutputStream
		  'Dim fo As FolderItem
		  'fo = App.AppFolder.Child("temp.xml")
		  'ou = fo.CreateTextFile
		  'ou.Write page
		  'ou.Close
		  
		  ' Store it into XML
		  Dim xdoc As New XmlDocument
		  Try
		    xdoc.LoadXml page
		  Catch e As XMLException
		    InputBox.Message App.T.Translate("import_from_ccli/errors/bad_html") + EndOfLine + App.FriendlyXMLException(e)
		    App.MouseCursor = Nil
		    Return
		  End Try
		  
		  ' Clean everything up
		  lst_found_songs.DeleteAllRows
		  pop_current_page.DeleteAllRows
		  btn_page_next_page.Enabled = False
		  btn_page_previous_page.Enabled = False
		  btn_song_import.Enabled = False
		  
		  SmartML.SetValue(App.MyMainSettings.DocumentElement, "ccli/@id", edt_ccli_user_id.Text)
		  SmartML.SetValue(App.MyMainSettings.DocumentElement, "ccli/@password", edt_ccli_password.Text)
		  
		  ' FInd the table; it is the one with 10 columns
		  Dim list As XmlNodeList
		  Dim node As XmlNode
		  
		  list = xdoc.Xql("//table/tr/td")
		  For x = 0 To list.Length - 1
		    node = list.Item(x)
		    If node.Parent.ChildCount = 10 Then
		      node = node.Parent.Parent ' table
		      Exit
		    End if
		    Node = Nil
		  Next x
		  
		  If Node = Nil Then
		    InputBox.Message App.T.Translate("import_from_ccli/errors/no_results")
		    App.MouseCursor = Nil
		    Return
		  End If
		  
		  ' Count results
		  Dim count As Integer
		  count = node.ChildCount - 4
		  For x = 1 To count
		    temp = node.Child(x).Child(0).ToString
		    If InStr(temp, "<img") > 0 Then
		      lst_found_songs.AddRow "X"
		    Else
		      lst_found_songs.AddRow " "
		    End If
		    
		    temp = node.Child(x).Child(1).ToString
		    If InStr(temp, "<img") > 0 Then
		      lst_found_songs.Cell(x-1, 1) = "X"
		    Else
		      lst_found_songs.Cell(x-1, 1) = " "
		    End If
		    
		    temp = node.Child(x).Child(2).ToString
		    If InStr(temp, "<img") > 0 Then
		      lst_found_songs.Cell(x-1, 2) = "X"
		    Else
		      lst_found_songs.Cell(x-1, 2) = " "
		    End If
		    
		    lst_found_songs.Cell(x-1, 3) = StripTags(node.Child(x).Child(3).ToString, "<", ">", False)
		    lst_found_songs.Cell(x-1, 4) = StripTags(node.Child(x).Child(4).ToString, "<", ">", False)
		    lst_found_songs.Cell(x-1, 5) = StripTags(node.Child(x).Child(5).ToString, "<", ">", False)
		    lst_found_songs.Cell(x-1, 6) = StripTags(node.Child(x).Child(6).ToString, "<", ">", False)
		    lst_found_songs.Cell(x-1, 7) = StripTags(node.Child(x).Child(7).ToString, "<", ">", False)
		    lst_found_songs.Cell(x-1, 8) = StripTags(node.Child(x).Child(8).ToString, "<", ">", False)
		    lst_found_songs.Cell(x-1, 9) = StripTags(node.Child(x).Child(9).ToString, "<", ">", False)
		  Next x
		  
		  PageCount = CurrentPage
		  While InStr(page, "SSLSResults_nav(" + Str(PageCount+1) + ")") > 0
		    PageCount = PageCount + 1
		  Wend
		  
		  For x = 1 To PageCount
		    pop_current_page.AddRow Str(x)
		  Next x
		  pop_current_page.ListIndex = CurrentPage - 1
		  
		  txt_number_of_pages.Caption = App.T.Translate("import_from_ccli/of_pages/@caption", Str(PageCount))
		  
		  If PageCount > CurrentPage Then btn_page_next_page.Enabled = True
		  If CurrentPage > 1 Then btn_page_previous_page.Enabled = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FixHTML(html As String) As String
		  Dim i, j As Integer
		  Dim re As RegEx
		  Dim rematch As RegExMatch
		  Dim savedhtml As String
		  //++
		  // Make certain that there is no additional material outside the html
		  // this will cause the conversion to an XML document to fail since
		  // the XML parser will see multiple document elements
		  // Ed Palmer, August 2006
		  //--
		  Try
		    re = New RegEx
		    re.SearchPattern = "\<html.*\/html>"
		    re.Options.Greedy = True
		    re.Options.CaseSensitive = False
		    re.Options.TreatTargetAsOneLine = True
		    re.Options.DotMatchAll = True
		    rematch = re.Search(html)
		    savedhtml = html
		    If rematch <> Nil Then
		      html = rematch.SubExpressionString(0)
		    End If
		  Catch reex
		    html = savedhtml
		  End Try
		  
		  html = ReplaceAll(html, "nowrap", " nowrap=""true""")
		  html = ReplaceAll(html, "checked ", "checked=""true"" ")
		  html = ReplaceAll(html, "checked>", "checked=""true"">")
		  html = ReplaceAll(html, "&nbsp;", " ")
		  html = ReplaceAll(html, "& ", "and ")
		  ' CCLI chronically places multiple valigns; we don't need them.
		  html = ReplaceAll(html, "valign=""""", "")
		  html = ReplaceAll(html, "valign=""middle""", "")
		  
		  ' Fix common non-closed img tag
		  i = InStr(i, html, "<img")
		  While i > 0
		    j = InStr(i, html, ">")
		    If Mid(html, j-1, 1) <> "/" Then html = Left(html, j-1) + "/" + Mid(html, j)
		    i = InStr(j, html, "<img")
		  Wend
		  
		  ' Fix common non-closed link tag
		  i = InStr(i, html, "<link")
		  While i > 0
		    j = InStr(i, html, ">")
		    If Mid(html, j-1, 1) <> "/" Then html = Left(html, j-1) + "/" + Mid(html, j)
		    i = InStr(j, html, "<link")
		  Wend
		  
		  ' Fix common non-closed link tag
		  i = InStr(i, html, "<br")
		  While i > 0
		    j = InStr(i, html, ">")
		    If Mid(html, j-1, 1) <> "/" Then html = Left(html, j-1) + "/" + Mid(html, j)
		    i = InStr(j, html, "<br")
		  Wend
		  
		  ' Fix common non-closed link tag
		  i = InStr(i, html, "<input")
		  While i > 0
		    j = InStr(i, html, ">")
		    If Mid(html, j-1, 1) <> "/" Then html = Left(html, j-1) + "/" + Mid(html, j)
		    i = InStr(j, html, "<input")
		  Wend
		  
		  Return html
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetCCLISocket() As HTTPSocket
		  Dim socket As New HTTPSocket
		  Dim page As String
		  Dim headers As InternetHeaders
		  Dim x As Integer
		  Dim requestHeader, temp As String
		  
		  socket.httpProxyAddress = SmartML.GetValue(App.MyMainSettings.DocumentElement, "proxy")
		  socket.httpProxyPort = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "proxy/@port")
		  
		  Dim form as New Dictionary
		  form.value("formAction") = "login"
		  form.value("javascript") = "yes"
		  form.value("LoginID") = edt_ccli_user_id.Text
		  form.value("password") = edt_ccli_password.Text
		  socket.SetFormData form
		  
		  App.MouseCursor = System.Cursors.Wait
		  
		  headers = socket.GetHeaders("http://www.ccli.com/ccli_services/accounts/login.cfm", 20)
		  If headers = Nil Or headers.Count <= 0 Then
		    InputBox.Message App.T.Translate("import_from_ccli/errors/no_headers")
		    App.MouseCursor = Nil
		    Return Nil
		  Else
		    For x = 0 To headers.Count - 1
		      If headers.Name(x) = "Set-Cookie" Then
		        temp = headers.Value(x)
		        temp = Left(temp, InStr(temp, ";"))
		        requestHeader = requestHeader + temp
		      End If
		    Next x
		  End If
		  
		  socket.SetRequestHeader "Cookie", requestHeader
		  page = socket.Post("http://www.ccli.com/ccli_services/accounts/login.cfm", 20)
		  If Len(page) <= 0 Then
		    InputBox.Message App.T.Translate("import_from_ccli/errors/no_connect")
		    App.MouseCursor = Nil
		    Return Nil
		  End If
		  
		  App.MouseCursor = Nil
		  
		  Return socket
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function StripTags(text As String, pre As String, post As String, inTag As Boolean = False) As String
		  Dim s, i, j As Integer
		  Dim out As String
		  Dim c As String
		  
		  i = InStr(text, pre)
		  j = InStr(text, post)
		  
		  While i > 0 Or j > 0
		    If i > 0 And i < j Then
		      text = Left(text, i-1) + StripTags(Mid(text, i+Len(pre)), pre, post, True)
		    ElseIf inTag Then
		      Return Mid(text, j+Len(post))
		    Else
		      Return text
		    End If
		    i = InStr(text, pre)
		    j = InStr(text, post)
		  Wend
		  
		  Return text
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected CurrentBy As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentFilter As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentPage As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentString As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected PageCount As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events can_ccli
	#tag Event
		Sub Paint(g As Graphics)
		  g.DrawPicture ccli, 0, 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_ccli_user_id
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_ccli_user_id.Text  = c.Text
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events edt_ccli_password
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_ccli_password.Text  = c.Text
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events edt_search
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_search.Text  = c.Text
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Len(Me.Text) > 0 Then
		    btn_song_find.Enabled = True
		  Else
		    btn_song_find.Enabled = False
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_find
	#tag Event
		Sub Action()
		  CurrentPage = 1
		  CurrentString = edt_search.Text
		  CurrentBy = pop_by_values.List(pop_by.ListIndex)
		  CurrentFilter = pop_filter_values.List(pop_filter.ListIndex)
		  Find
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_found_songs
	#tag Event
		Sub Change()
		  If Me.ListIndex >= 0 Then btn_song_import.Enabled = True
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.Heading(0) = App.T.Translate("import_from_ccli/headings/lyrics/@caption")
		  Me.Heading(1) = App.T.Translate("import_from_ccli/headings/sound_clip/@caption")
		  Me.Heading(2) = App.T.Translate("import_from_ccli/headings/lead_sheet/@caption")
		  Me.Heading(3) = App.T.Translate("import_from_ccli/headings/title/@caption")
		  Me.Heading(4) = App.T.Translate("import_from_ccli/headings/author/@caption")
		  Me.Heading(5) = App.T.Translate("import_from_ccli/headings/catalog/@caption")
		  Me.Heading(6) = App.T.Translate("import_from_ccli/headings/aka/@caption")
		  Me.Heading(7) = App.T.Translate("import_from_ccli/headings/key_line/@caption")
		  Me.Heading(8) = App.T.Translate("import_from_ccli/headings/key/@caption")
		  Me.Heading(9) = App.T.Translate("import_from_ccli/headings/ccli/@caption")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_page_previous_page
	#tag Event
		Sub Action()
		  CurrentPage = CurrentPage - 1
		  Find
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_page_next_page
	#tag Event
		Sub Action()
		  CurrentPage = CurrentPage + 1
		  Find
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_current_page
	#tag Event
		Sub Change()
		  CurrentPage = Me.ListIndex + 1
		  Find
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_import
	#tag Event
		Sub Action()
		  Dim ccli As String
		  Dim f As FolderItem
		  Dim socket As HTTPSocket
		  
		  ccli = lst_found_songs.Cell(lst_found_songs.ListIndex, 9)
		  socket = GetCCLISocket
		  
		  App.MouseCursor = System.Cursors.Wait
		  
		  Dim page As String
		  page = socket.Get("http://www.ccli.com/CCLI_Services/SongSelect/dsp_SongDetail.cfm?song_id=" + ccli, 20)
		  
		  If Len(page) <= 0 Then
		    InputBox.Message App.T.Translate("import_from_ccli/errors/no_connect")
		    App.MouseCursor = Nil
		    Return
		  End If
		  
		  page = "<html>" + FixHTML(page) + "</html>"
		  page = ReplaceAll(page, "&", "and")
		  page = ReplaceAll(page, "</tr>" + Chr(13) + Chr(10) + Chr(9) + Chr(9) + "</form>" + Chr(13) + Chr(10) + Chr(9) + Chr(9) + "<tr>", "</td></tr></form><tr>")
		  
		  ' Write it to disk
		  'Dim o As TextOutputStream
		  'f = App.AppFolder.Child("temp.xml")
		  'o = f.CreateTextFile
		  'o.Write page
		  'o.Close
		  'App.MouseCursor = Nil
		  'socket.Close
		  
		  ' Store it into XML
		  Dim xdoc As New XmlDocument
		  Try
		    xdoc.LoadXml page
		  Catch e As XMLException
		    App.MouseCursor = Nil
		    InputBox.Message App.T.Translate("import_from_ccli/errors/bad_html") + EndOfLine + App.FriendlyXMLException(e)
		    Return
		  End Try
		  
		  ' Create the song
		  Dim song As New XmlDocument
		  Dim xnode As XmlNode
		  Dim temp, temp2, temp3 As String
		  xnode = song.AppendChild(song.CreateElement("song"))
		  
		  Dim list, list2 As XmlNodeList
		  Dim node As XmlNode
		  Dim x, y As Integer
		  
		  list = xdoc.Xql("//table/tr/td")
		  For x = 0 To list.Length - 1
		    node = list.Item(x)
		    If node.FirstChild <> Nil And node.FirstChild.Name = "H1" Then ' title
		      SmartML.SetValue xnode, "title", Trim(node.FirstChild.FirstChild.Value)
		    ElseIf node.FirstChild <> Nil And node.GetAttribute("class") = "Header" And InStr(node.FirstChild.Value, "Author") > 0 Then ' authors
		      node = node.NextSibling.FirstChild
		      temp2 = ""
		      While node <> Nil
		        If node.Name = "A" Then
		          temp2 = temp2 + node.FirstChild.Value + ", "
		        End If
		        node = node.NextSibling
		      Wend
		      SmartML.SetValue xnode, "author", Left(temp2, Len(temp2)-2)
		    ElseIf node.FirstChild <> Nil And node.GetAttribute("class") = "Header" And InStr(node.FirstChild.Value, "Theme(s)") > 0 Then ' themes
		      node = node.NextSibling.FirstChild
		      temp2 = ""
		      While node <> Nil
		        If node.Name <> "br" Then
		          temp2 = temp2 + Trim(node.Value) + "; "
		        End If
		        node = node.NextSibling
		      Wend
		      SmartML.SetValue xnode, "theme", temp2
		    ElseIf node.FirstChild <> Nil And node.GetAttribute("class") = "Header" And InStr(node.FirstChild.Value, "Also Known As") > 0 Then ' AKAs
		      node = node.NextSibling.FirstChild
		      temp2 = ""
		      While node <> Nil
		        If node.Name <> "br" Then
		          temp2 = temp2 + Trim(node.Value) + "; "
		        End If
		        node = node.NextSibling
		      Wend
		      SmartML.SetValue xnode, "aka", temp2
		    ElseIf node.FirstChild <> Nil And node.GetAttribute("class") = "Header" And InStr(node.FirstChild.Value, "Copyright") > 0 Then ' copyright
		      SmartML.SetValue xnode, "copyright", Trim(StripTags(node.NextSibling.FirstChild.Value, "(", ")", False))
		    ElseIf node.FirstChild <> Nil And node.GetAttribute("class") = "Header" And InStr(node.FirstChild.Value, "Key Line") > 0 Then ' Key Line
		      SmartML.SetValue xnode, "key_line", Trim(node.NextSibling.FirstChild.Value)
		    ElseIf node.FirstChild <> Nil And node.GetAttribute("class") = "Header" And InStr(node.FirstChild.Value, "Key") > 0 Then ' key
		      SmartML.SetValue xnode, "key", Trim(node.NextSibling.FirstChild.Value)
		    ElseIf node.FirstChild <> Nil And node.GetAttribute("class") = "Header" And InStr(node.FirstChild.Value, "Song Number") > 0 Then ' CCLI (double-check)
		      SmartML.SetValue xnode, "ccli", Trim(node.NextSibling.FirstChild.Value)
		    ElseIf node.GetAttribute("class") = "LryicBox" Then ' lyrics (the Lryic typo is from CCLI)
		      node = node.FirstChild.FirstChild ' skip last LyricContent span
		      temp2 = ""
		      y = 0 ' y will track number of lines in current slide
		      While node <> Nil
		        If node.GetAttribute("class") = "LyricHeader" Then
		          ' Check the next node (and the one after) quickly to see if there is a description of this section, such as (BRIDGE) if this is a misc.
		          If node.NextSibling <> Nil And node.NextSibling.FirstChild <> Nil And Left(node.NextSibling.FirstChild.Value, 1) = "(" Then
		            node = node.NextSibling ' skip ahead
		            temp3 = Trim(node.FirstChild.Value)
		          ElseIf node.NextSibling.NextSibling <> Nil And node.NextSibling.NextSibling.FirstChild <> Nil And Left(node.NextSibling.NextSibling.FirstChild.Value, 1) = "(" Then
		            node = node.NextSibling.NextSibling ' skip ahead
		            temp3 = Trim(node.FirstChild.Value)
		          Else
		            temp3 = Trim(node.FirstChild.Value)
		          End If
		          temp3 = ReplaceAll(temp3, "(", "")
		          temp3 = ReplaceAll(temp3, ")", "")
		          temp3 = ReplaceAll(temp3, " ", "")
		          temp3 = ReplaceAll(temp3, "Pre-chorus", "P")
		          temp3 = ReplaceAll(temp3, "Chorus", "C")
		          temp3 = ReplaceAll(temp3, "Verse", "V")
		          temp3 = ReplaceAll(temp3, "Bridge", "B")
		          temp3 = ReplaceAll(temp3, "Ending", "T")
		          temp3 = ReplaceAll(temp3, "Tag", "T")
		          temp3 = ReplaceAll(temp3, "C1", "C")
		          temp2 = temp2 + Chr(10) + "[" + temp3 + "]" + Chr(10)
		          y = 0
		        ElseIf node.GetAttribute("class") = "LyricWords" Then
		          y = y + 1
		          If y = 4 Then
		            temp2 = temp2 + " " + Trim(node.FirstChild.Value) + "||" + Chr(10)
		            y = 0
		          Else
		            temp2 = temp2 + " " + Trim(node.FirstChild.Value) + Chr(10)
		          End If
		        End If
		        node = node.NextSibling
		      Wend
		      SmartML.SetValue xnode, "lyrics", Trim(temp2)
		    End if
		  Next x
		  
		  temp = SmartML.GetValue(xnode, "title", False)
		  temp = FileUtils.MakeSafeFileName(temp)
		  
		  If Len(temp) < 1 Then
		    App.MouseCursor = Nil
		    InputBox.Message App.T.Translate("import_from_ccli/errors/bad_html")
		    Return
		  End If
		  
		  f = MainWindow.Songs.AddFile(MainWindow.pop_songs_song_folders.Text + "/" + temp)
		  
		  If f <> Nil And f.Exists Then
		    InputBox.Message App.T.Translate("folderdb_errors/error[@code=3]", f.AbsolutePath) ' file already exists
		    App.MouseCursor = Nil
		    Return
		  End If
		  
		  If Not SmartML.XDocToFile(song, f) Then
		    App.MouseCursor = Nil
		    SmartML.DisplayError
		    Return
		  End If
		  
		  x = 0
		  While x < MainWindow.lst_songs_songs.ListCount And StringUtils.StrCompT(temp, MainWindow.lst_songs_songs.List(x)) = ">"
		    x = x + 1
		  Wend
		  MainWindow.lst_songs_songs.InsertRow x, temp
		  MainWindow.lst_songs_songs.ListIndex = x
		  MainWindow.LoadSongFields 'f
		  MainWindow.Status_SongOpen = True
		  MainWindow.Status_SongChanged = False
		  MainWindow.UpdateMenuItems
		  
		  App.MouseCursor = Nil
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_cancel
	#tag Event
		Sub Action()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
