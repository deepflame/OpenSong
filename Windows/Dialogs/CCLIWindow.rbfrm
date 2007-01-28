#tag Window
Begin Window CCLIWindow
   Placement       =   0
   Width           =   550
   Height          =   366
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   1
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Import From CCLI"
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
   Begin Canvas can_ccli
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   5
      Top             =   5
      Width           =   151
      Height          =   51
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   0
   End
   Begin StaticText lbl_ccli_user_id
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   260
      Top             =   7
      Width           =   130
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Text            =   "CCLI User ID:"
      TextAlign       =   2
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   1
   End
   Begin StaticText lbl_ccli_password
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   260
      Top             =   32
      Width           =   130
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Text            =   "CCLI Password:"
      TextAlign       =   2
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   2
   End
   Begin StaticText lbl_search_for
      Index           =   -2147483648
      ControlOrder    =   3
      Left            =   5
      Top             =   76
      Width           =   65
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "Search for:"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   3
   End
   Begin EditField edt_search
      Index           =   -2147483648
      ControlOrder    =   4
      Left            =   70
      Top             =   75
      Width           =   150
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Border          =   "True"
      Multiline       =   "False"
      ScrollbarHorizontal=   "False"
      ScrollbarVertical=   "True"
      Styled          =   "False"
      Password        =   "False"
      UseFocusRing    =   "True"
      TextColor       =   0
      BackColor       =   16777215
      Enabled         =   True
      Format          =   ""
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Text            =   ""
      Mask            =   ""
      ReadOnly        =   "False"
      LimitText       =   0
      AcceptTabs      =   "False"
      Alignment       =   0
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   4
   End
   Begin StaticText txt_search_by
      Index           =   -2147483648
      ControlOrder    =   5
      Left            =   222
      Top             =   75
      Width           =   25
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "by"
      TextAlign       =   1
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin PopupMenu pop_by
      Index           =   -2147483648
      ControlOrder    =   6
      Left            =   250
      Top             =   75
      Width           =   100
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Enabled         =   True
      InitialValue    =   ""
      ListIndex       =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin StaticText txt_search_filter
      Index           =   -2147483648
      ControlOrder    =   7
      Left            =   350
      Top             =   76
      Width           =   35
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Text            =   "filter"
      TextAlign       =   1
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   7
   End
   Begin PopupMenu pop_filter
      Index           =   -2147483648
      ControlOrder    =   8
      Left            =   385
      Top             =   75
      Width           =   100
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Enabled         =   True
      InitialValue    =   ""
      ListIndex       =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   8
   End
   Begin PushButton btn_song_find
      Index           =   -2147483648
      ControlOrder    =   9
      Left            =   490
      Top             =   75
      Width           =   55
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Find"
      Default         =   "True"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   9
   End
   Begin ListBox lst_found_songs
      Index           =   -2147483648
      ControlOrder    =   10
      Left            =   5
      Top             =   105
      Width           =   540
      Height          =   205
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      ColumnCount     =   10
      ColumnWidths    =   "*, *, *, 5*, 5*, 3*, 3*, 3*, 2*, 3*"
      HasHeading      =   "True"
      UseFocusRing    =   "True"
      InitialValue    =   ""
      HeadingIndex    =   -1
      ScrollbarHorizontal=   "True"
      ScrollBarVertical=   "True"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      DefaultRowHeight=   -1
      _ScrollWidth    =   -1
      _ScrollOffset   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Hierarchical    =   "False"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      RequiresSelection=   ""
      SelectionType   =   0
      ColumnsResizable=   "True"
      AutoHideScrollbars=   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   10
   End
   Begin PushButton btn_page_previous_page
      Index           =   -2147483648
      ControlOrder    =   11
      Left            =   5
      Top             =   324
      Width           =   110
      Height          =   22
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "True"
      Caption         =   "< Previous Page"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   11
   End
   Begin PushButton btn_page_next_page
      Index           =   -2147483648
      ControlOrder    =   12
      Left            =   245
      Top             =   324
      Width           =   110
      Height          =   22
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "True"
      Caption         =   "Next Page >"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   12
   End
   Begin StaticText txt_number_of_pages
      Index           =   -2147483648
      ControlOrder    =   13
      Left            =   213
      Top             =   325
      Width           =   30
      Height          =   20
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "True"
      Text            =   "of 0"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   13
   End
   Begin PushButton btn_song_import
      Index           =   -2147483648
      ControlOrder    =   14
      Left            =   380
      Top             =   324
      Width           =   80
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
      Caption         =   "Import"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   14
   End
   Begin PushButton btn_cancel
      Index           =   -2147483648
      ControlOrder    =   15
      Left            =   467
      Top             =   324
      Width           =   80
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
      Caption         =   "Cancel"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   15
   End
   Begin Separator sep_1
      Index           =   -2147483648
      ControlOrder    =   16
      Left            =   5
      Top             =   60
      Width           =   540
      Height          =   4
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "False"
      InitialParent   =   ""
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   16
   End
   Begin EditField edt_ccli_user_id
      Index           =   -2147483648
      ControlOrder    =   17
      Left            =   395
      Top             =   5
      Width           =   150
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Border          =   "True"
      Multiline       =   "False"
      ScrollbarHorizontal=   "False"
      ScrollbarVertical=   "True"
      Styled          =   "False"
      Password        =   "False"
      UseFocusRing    =   "True"
      TextColor       =   0
      BackColor       =   16777215
      Enabled         =   True
      Format          =   ""
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   12
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Text            =   ""
      Mask            =   ""
      ReadOnly        =   "False"
      LimitText       =   0
      AcceptTabs      =   "False"
      Alignment       =   0
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   17
   End
   Begin EditField edt_ccli_password
      Index           =   -2147483648
      ControlOrder    =   18
      Left            =   395
      Top             =   30
      Width           =   150
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Border          =   "True"
      Multiline       =   "False"
      ScrollbarHorizontal=   "False"
      ScrollbarVertical=   "True"
      Styled          =   "False"
      Password        =   "True"
      UseFocusRing    =   "True"
      TextColor       =   0
      BackColor       =   16777215
      Enabled         =   True
      Format          =   ""
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   12
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Text            =   ""
      Mask            =   ""
      ReadOnly        =   "False"
      LimitText       =   0
      AcceptTabs      =   "False"
      Alignment       =   0
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   18
   End
   Begin PopupMenu pop_current_page
      Index           =   -2147483648
      ControlOrder    =   19
      Left            =   160
      Top             =   324
      Width           =   50
      Height          =   20
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "True"
      Enabled         =   True
      InitialValue    =   ""
      ListIndex       =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   19
   End
   Begin StaticText txt_prefix_page
      Index           =   -2147483648
      ControlOrder    =   20
      Left            =   105
      Top             =   325
      Width           =   50
      Height          =   20
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "True"
      Text            =   "Page"
      TextAlign       =   2
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   20
   End
   Begin PopupMenu pop_by_values
      Index           =   -2147483648
      ControlOrder    =   21
      Left            =   250
      Top             =   36
      Width           =   10
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Enabled         =   True
      InitialValue    =   "Title\r\nTitleOnly\r\nLyrics\r\nAuthor\r\nCatalog\r\nTheme\r\nCCLI Number"
      ListIndex       =   0
      Visible         =   "False"
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
      TabPanelIndex   =   0
      BehaviorIndex   =   21
   End
   Begin PopupMenu pop_filter_values
      Index           =   -2147483648
      ControlOrder    =   22
      Left            =   270
      Top             =   36
      Width           =   10
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Enabled         =   True
      InitialValue    =   "\r\nLeadSheets\r\nsamples"
      ListIndex       =   0
      Visible         =   "False"
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
      TabPanelIndex   =   0
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
#tag Events pop_current_page
	#tag Event
		Sub Change()
		  CurrentPage = Me.ListIndex + 1
		  Find
		End Sub
	#tag EndEvent
#tag EndEvents
