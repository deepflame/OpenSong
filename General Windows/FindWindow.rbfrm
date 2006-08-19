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
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "Enter search string:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   10
      Underline       =   "False"
      Visible         =   "True"
      Width           =   200
      ControlOrder    =   0
      BehaviorIndex   =   0
   End
   Begin EditField edt_input
      AcceptTabs      =   "False"
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   16777215
      BalloonHelp     =   ""
      Bold            =   "False"
      Border          =   "True"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LimitText       =   0
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Mask            =   ""
      MultiLine       =   "False"
      Password        =   "False"
      ReadOnly        =   "False"
      ScrollBar       =   "True"
      ScrollBarHorizontal=   "False"
      ScrollBarVertical=   "True"
      Styled          =   "False"
      TabPanelIndex   =   0
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   25
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   195
      ControlOrder    =   1
      BehaviorIndex   =   1
   End
   Begin SButton btn_ok
      AcceptFocus     =   "True"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "GroupBox4"
      IsStuck         =   "False"
      Label           =   "OK"
      LabelAlign      =   0
      Left            =   210
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      StickyBevel     =   "False"
      TabPanelIndex   =   0
      Top             =   25
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   2
      BehaviorIndex   =   2
   End
   Begin SButton btn_cancel
      AcceptFocus     =   "True"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "GroupBox4"
      IsStuck         =   "False"
      Label           =   "OK"
      LabelAlign      =   0
      Left            =   210
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      StickyBevel     =   "False"
      TabPanelIndex   =   0
      Top             =   50
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      ControlOrder    =   3
      BehaviorIndex   =   3
   End
   Begin PushButton btnOK
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "OK"
      Default         =   "True"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   320
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   14
      Underline       =   "False"
      Visible         =   "True"
      Width           =   22
      ControlOrder    =   4
      BehaviorIndex   =   4
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Cancel"
      Default         =   "False"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   320
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   48
      Underline       =   "False"
      Visible         =   "True"
      Width           =   22
      ControlOrder    =   5
      BehaviorIndex   =   5
   End
   Begin GroupBox grp_search_fields
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Search Fields"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   190
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   80
      Underline       =   "False"
      Visible         =   "True"
      Width           =   280
      ControlOrder    =   6
      BehaviorIndex   =   6
      Begin CheckBox chk_search_title
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Title"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   20
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   100
         Underline       =   "False"
         Value           =   "True"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   7
         BehaviorIndex   =   7
      End
      Begin CheckBox chk_search_author
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Author"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   20
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   120
         Underline       =   "False"
         Value           =   "True"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   8
         BehaviorIndex   =   8
      End
      Begin CheckBox chk_search_copyright
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Copyright"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   20
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   140
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   9
         BehaviorIndex   =   9
      End
      Begin CheckBox chk_search_ccli
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "CCLI #"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   20
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   160
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   10
         BehaviorIndex   =   10
      End
      Begin CheckBox chk_search_presentation
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Presentation"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   20
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   180
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   11
         BehaviorIndex   =   11
      End
      Begin CheckBox chk_search_lyrics
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Chords/Lyrics"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   20
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   200
         Underline       =   "False"
         Value           =   "True"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   12
         BehaviorIndex   =   12
      End
      Begin CheckBox chk_search_themes
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Themes"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   20
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   220
         Underline       =   "False"
         Value           =   "True"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   13
         BehaviorIndex   =   13
      End
      Begin CheckBox chk_search_capo
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Capo"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   20
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   240
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   14
         BehaviorIndex   =   14
      End
      Begin CheckBox chk_search_time_sig
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Time Signature"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   155
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   100
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   15
         BehaviorIndex   =   15
      End
      Begin CheckBox chk_search_tempo
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Tempo"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   155
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   120
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   16
         BehaviorIndex   =   16
      End
      Begin CheckBox chk_search_key
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Key"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   155
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   140
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   17
         BehaviorIndex   =   17
      End
      Begin CheckBox chk_search_aka
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "AKA"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   155
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   160
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   18
         BehaviorIndex   =   18
      End
      Begin CheckBox chk_search_key_line
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Key Line"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   155
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   180
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   19
         BehaviorIndex   =   19
      End
      Begin CheckBox chk_search_user1
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "User Defined 1"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   155
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   200
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   20
         BehaviorIndex   =   20
      End
      Begin CheckBox chk_search_user2
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "User Defined 2"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   155
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   220
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   21
         BehaviorIndex   =   21
      End
      Begin CheckBox chk_search_user3
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "User Defined 3"
         DataField       =   ""
         DataSource      =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_search_fields"
         Italic          =   "False"
         Left            =   155
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "False"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   240
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   22
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
