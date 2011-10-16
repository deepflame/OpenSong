#tag Window
Begin Window FindWindow
   BackColor       =   16777215
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   293
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
   Resizeable      =   False
   Title           =   "Song Search"
   Visible         =   True
   Width           =   300
   Begin Label txt_song_search
      AutoDeactivate  =   True
      Bold            =   False
      ControlOrder    =   0
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Enter search string:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   10
      Underline       =   False
      Visible         =   True
      Width           =   200
   End
   Begin SEditField edt_input
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   False
      Border          =   True
      ControlOrder    =   1
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
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
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   25
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   195
   End
   Begin SButton btn_ok
      AcceptFocus     =   True
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      ControlOrder    =   2
      Enabled         =   True
      EraseBackground =   True
      HasFocus        =   0
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      LabelAlign      =   0
      Left            =   210
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      StickyBevel     =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   25
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin SButton btn_cancel
      AcceptFocus     =   True
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      ControlOrder    =   3
      Enabled         =   True
      EraseBackground =   True
      HasFocus        =   0
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      LabelAlign      =   0
      Left            =   210
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      StickyBevel     =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   50
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin GroupBox grp_search_fields
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Search Fields"
      ControlOrder    =   4
      Enabled         =   True
      Height          =   205
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   80
      Underline       =   False
      Visible         =   True
      Width           =   280
      Begin CheckBox chk_search_title
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Title"
         ControlOrder    =   5
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         State           =   1
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   100
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chk_search_author
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Author"
         ControlOrder    =   6
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         State           =   1
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   120
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chk_search_copyright
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Copyright"
         ControlOrder    =   7
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   140
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chk_search_ccli
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "CCLI #"
         ControlOrder    =   8
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   160
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chk_search_presentation
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Presentation"
         ControlOrder    =   9
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   180
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chk_search_lyrics
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Chords/Lyrics"
         ControlOrder    =   10
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         State           =   1
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   200
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chk_search_hymn_number
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Hymn Number"
         ControlOrder    =   11
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   19
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   219
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   123
      End
      Begin CheckBox chk_search_themes
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Themes"
         ControlOrder    =   12
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         State           =   1
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   238
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chk_search_capo
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Capo"
         ControlOrder    =   13
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   20
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
         Top             =   258
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chk_search_time_sig
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Time Signature"
         ControlOrder    =   14
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   155
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   100
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chk_search_tempo
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Tempo"
         ControlOrder    =   15
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   155
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
         Top             =   120
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chk_search_key
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Key"
         ControlOrder    =   16
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   155
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
         Top             =   140
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chk_search_aka
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "AKA"
         ControlOrder    =   17
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   155
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   160
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chk_search_key_line
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Key Line"
         ControlOrder    =   18
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   155
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   180
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chk_search_user1
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "User Defined 1"
         ControlOrder    =   19
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   155
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   200
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chk_search_user2
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "User Defined 2"
         ControlOrder    =   20
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   155
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         TabIndex        =   15
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   220
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   125
      End
      Begin CheckBox chk_search_user3
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "User Defined 3"
         ControlOrder    =   21
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   False
         Left            =   155
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         TabIndex        =   16
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   240
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   125
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  App.T.TranslateWindow Me, "song_search", App.TranslationFonts
		  
		  Dim s As String
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "user_defined/@user1")
		  If s.Len = 0 Then s = App.T.Translate("advanced_editor/user1/@caption")
		  chk_search_user1.Caption = s
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "user_defined/@user2")
		  If s.Len = 0 Then s = App.T.Translate("advanced_editor/user2/@caption")
		  chk_search_user2.Caption = s
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "user_defined/@user3")
		  If s.Len = 0 Then s = App.T.Translate("advanced_editor/user3/@caption")
		  chk_search_user3.Caption = s
		  
		  App.CenterInControlScreen Me
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub Cancel()
		  Output = False
		  Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Okay()
		  Output = True
		  Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Popup(ByRef find As FindClass) As Boolean
		  Me.find = find
		  
		  edt_input.Text = find.FindString
		  chk_search_title.Value = find.FindTitle
		  chk_search_author.Value = find.FindAuthor
		  chk_search_copyright.Value = find.FindCopyright
		  chk_search_ccli.Value = find.FindCCLI
		  chk_search_presentation.Value = find.FindPresentation
		  chk_search_lyrics.Value = find.FindLyrics
		  '++JRC
		  chk_search_hymn_number.Value = find.FindHymnNumber
		  '--
		  chk_search_themes.Value = find.FindThemes
		  chk_search_capo.Value = find.FindCapo
		  chk_search_time_sig.Value = find.FindTimeSig
		  chk_search_tempo.Value = find.FindTempo
		  chk_search_key.Value = find.FindKey
		  chk_search_aka.Value = find.FindAKA
		  chk_search_key_line.Value = find.FindKeyLine
		  chk_search_user1.Value = find.FindUser1
		  chk_search_user2.Value = find.FindUser2
		  chk_search_user3.Value = find.FindUser3
		  
		  edt_input.SelStart = 0
		  edt_input.SelLength = edt_input.Text.Len
		  
		  ShowModal
		  Return Output
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		find As FindClass
	#tag EndProperty

	#tag Property, Flags = &h0
		Output As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events edt_input
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_input.Text  = c.Text
		      return true
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  find.FindString = Me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_ok
	#tag Event
		Sub Action()
		  Okay
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon buttonokpic, buttonokmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_cancel
	#tag Event
		Sub Action()
		  Cancel
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon buttoncancepic, buttoncancemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_title
	#tag Event
		Sub Action()
		  find.FindTitle = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_author
	#tag Event
		Sub Action()
		  find.FindAuthor = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_copyright
	#tag Event
		Sub Action()
		  find.FindCopyright = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_ccli
	#tag Event
		Sub Action()
		  find.FindCCLI = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_presentation
	#tag Event
		Sub Action()
		  find.FindPresentation = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_lyrics
	#tag Event
		Sub Action()
		  find.FindLyrics = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_hymn_number
	#tag Event
		Sub Action()
		  find.FindHymnNumber = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_themes
	#tag Event
		Sub Action()
		  find.FindThemes = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_capo
	#tag Event
		Sub Action()
		  find.FindCapo = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_time_sig
	#tag Event
		Sub Action()
		  find.FindTimeSig = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_tempo
	#tag Event
		Sub Action()
		  find.FindTempo = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_key
	#tag Event
		Sub Action()
		  find.FindKey = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_aka
	#tag Event
		Sub Action()
		  find.FindAKA = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_key_line
	#tag Event
		Sub Action()
		  find.FindKeyLine = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_user1
	#tag Event
		Sub Action()
		  find.FindUser1 = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_user2
	#tag Event
		Sub Action()
		  find.FindUser2 = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_user3
	#tag Event
		Sub Action()
		  find.FindUser3 = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
