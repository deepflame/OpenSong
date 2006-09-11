#tag Window
Begin Window FindWindow
   Placement       =   0
   Width           =   300
   Height          =   280
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   1
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Song Search"
   Visible         =   "True"
   FullScreen      =   "False"
   MenuBarVisible  =   "True"
   CloseButton     =   "True"
   Resizeable      =   "False"
   LiveResize      =   "False"
   MaximizeButton  =   "True"
   MinimizeButton  =   "True"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   0
   Begin StaticText txt_song_search
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   10
      Top             =   10
      Width           =   200
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Text            =   "Enter search string:"
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
      BehaviorIndex   =   0
   End
   Begin EditField edt_input
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   10
      Top             =   25
      Width           =   195
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
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
      BehaviorIndex   =   1
   End
   Begin SButton btn_ok
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   210
      Top             =   25
      Width           =   80
      Height          =   24
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "True"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      BehaviorIndex   =   2
   End
   Begin SButton btn_cancel
      Index           =   -2147483648
      ControlOrder    =   3
      Left            =   210
      Top             =   50
      Width           =   80
      Height          =   24
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "True"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      BehaviorIndex   =   3
   End
   Begin PushButton btnOK
      Index           =   -2147483648
      ControlOrder    =   4
      Left            =   320
      Top             =   14
      Width           =   22
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "OK"
      Default         =   "True"
      Cancel          =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   12
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   4
   End
   Begin PushButton btnCancel
      Index           =   -2147483648
      ControlOrder    =   5
      Left            =   320
      Top             =   48
      Width           =   22
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Cancel"
      Default         =   "False"
      Cancel          =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   12
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   5
   End
   Begin GroupBox grp_search_fields
      Index           =   -2147483648
      ControlOrder    =   6
      Left            =   10
      Top             =   80
      Width           =   280
      Height          =   190
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Search Fields"
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
      BehaviorIndex   =   6
      Begin CheckBox chk_search_title
         Index           =   -2147483648
         ControlOrder    =   7
         Left            =   20
         Top             =   100
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Title"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "True"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   7
      End
      Begin CheckBox chk_search_author
         Index           =   -2147483648
         ControlOrder    =   8
         Left            =   20
         Top             =   120
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Author"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "True"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   8
      End
      Begin CheckBox chk_search_copyright
         Index           =   -2147483648
         ControlOrder    =   9
         Left            =   20
         Top             =   140
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Copyright"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   9
      End
      Begin CheckBox chk_search_ccli
         Index           =   -2147483648
         ControlOrder    =   10
         Left            =   20
         Top             =   160
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "CCLI #"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   10
      End
      Begin CheckBox chk_search_presentation
         Index           =   -2147483648
         ControlOrder    =   11
         Left            =   20
         Top             =   180
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Presentation"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   11
      End
      Begin CheckBox chk_search_lyrics
         Index           =   -2147483648
         ControlOrder    =   12
         Left            =   20
         Top             =   200
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Chords/Lyrics"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "True"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   12
      End
      Begin CheckBox chk_search_themes
         Index           =   -2147483648
         ControlOrder    =   13
         Left            =   20
         Top             =   220
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Themes"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "True"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   13
      End
      Begin CheckBox chk_search_capo
         Index           =   -2147483648
         ControlOrder    =   14
         Left            =   20
         Top             =   240
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Capo"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   14
      End
      Begin CheckBox chk_search_time_sig
         Index           =   -2147483648
         ControlOrder    =   15
         Left            =   155
         Top             =   100
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Time Signature"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   15
      End
      Begin CheckBox chk_search_tempo
         Index           =   -2147483648
         ControlOrder    =   16
         Left            =   155
         Top             =   120
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Tempo"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   16
      End
      Begin CheckBox chk_search_key
         Index           =   -2147483648
         ControlOrder    =   17
         Left            =   155
         Top             =   140
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Key"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   17
      End
      Begin CheckBox chk_search_aka
         Index           =   -2147483648
         ControlOrder    =   18
         Left            =   155
         Top             =   160
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "AKA"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   18
      End
      Begin CheckBox chk_search_key_line
         Index           =   -2147483648
         ControlOrder    =   19
         Left            =   155
         Top             =   180
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Key Line"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   19
      End
      Begin CheckBox chk_search_user1
         Index           =   -2147483648
         ControlOrder    =   20
         Left            =   155
         Top             =   200
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "User Defined 1"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   20
      End
      Begin CheckBox chk_search_user2
         Index           =   -2147483648
         ControlOrder    =   21
         Left            =   155
         Top             =   220
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "User Defined 2"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   21
      End
      Begin CheckBox chk_search_user3
         Index           =   -2147483648
         ControlOrder    =   22
         Left            =   155
         Top             =   240
         Width           =   125
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "User Defined 3"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   10
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "grp_search_fields"
         BehaviorIndex   =   22
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
#tag Events btnOK
#tag Event
	Sub Action()
	  Okay
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btnCancel
#tag Event
	Sub Action()
	  Cancel
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
