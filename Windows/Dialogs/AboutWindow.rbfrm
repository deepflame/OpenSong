#tag Window
Begin Window AboutWindow
   BackColor       =   16777215
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   350
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "About OpenSong"
   Visible         =   True
   Width           =   562
   Begin PushButton btn_about_close
      AutoDeactivate  =   True
      BehaviorIndex   =   0
      Bold            =   False
      Cancel          =   False
      Caption         =   "Close"
      Default         =   True
      Enabled         =   True
      Height          =   20
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
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      Top             =   310
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin ImageWell ImageWell1
      AutoDeactivate  =   True
      BehaviorIndex   =   1
      Enabled         =   True
      Height          =   128
      HelpTag         =   ""
      Image           =   -1045728915
      Index           =   2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   14
      Visible         =   True
      Width           =   128
   End
   Begin StaticText txt_about_version
      AutoDeactivate  =   True
      BehaviorIndex   =   2
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   29
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   160
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "OpenSong V1.5"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   24
      Top             =   14
      Underline       =   False
      Visible         =   True
      Width           =   328
   End
   Begin StaticText txt_about_copyright
      AutoDeactivate  =   True
      BehaviorIndex   =   3
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   160
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Copyright (c) 2003, 2004, 2005, 2006 Sean Lickfold"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   55
      Underline       =   False
      Visible         =   True
      Width           =   376
   End
   Begin StaticText txt_about_gpl
      AutoDeactivate  =   True
      BehaviorIndex   =   4
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   160
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Licensed under the GNU Public License V2.1"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   75
      Underline       =   False
      Visible         =   True
      Width           =   376
   End
   Begin StaticText txt_about_web
      AutoDeactivate  =   True
      BehaviorIndex   =   5
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   160
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "http://www.opensong.org"
      TextAlign       =   0
      TextColor       =   &h0000FF
      TextFont        =   "System"
      TextSize        =   12
      Top             =   95
      Underline       =   True
      Visible         =   True
      Width           =   376
   End
   Begin StaticText txt_about_programmers
      AutoDeactivate  =   True
      BehaviorIndex   =   6
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   71
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   160
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Joshua Coley, Ed Palmer, Gareth Evans, Joseph Dol, Sebastian Schöps, Rüdiger Greeb, Martyn Eggleton, Ben Henny, Matt Gillies, Jon Wright, Dean Whisnant, Ewout Voogt, Gerrit Prins, Tim Howard."
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   127
      Underline       =   False
      Visible         =   True
      Width           =   376
   End
   Begin TextArea edt_about_libraries
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      BehaviorIndex   =   7
      Bold            =   ""
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   82
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   160
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      Password        =   ""
      ReadOnly        =   True
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   210
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   376
   End
   Begin StaticText txt_about_compiler
      AutoDeactivate  =   True
      BehaviorIndex   =   8
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   22
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Compiler"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Top             =   251
      Underline       =   ""
      Visible         =   True
      Width           =   100
   End
   Begin StaticText txt_about_memory
      AutoDeactivate  =   True
      BehaviorIndex   =   9
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Memory"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Top             =   264
      Underline       =   ""
      Visible         =   True
      Width           =   102
   End
   Begin StaticText txt_about_objects
      AutoDeactivate  =   True
      BehaviorIndex   =   10
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
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
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Object Count"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Top             =   277
      Underline       =   ""
      Visible         =   True
      Width           =   102
   End
   Begin StaticText txt_about_build
      AutoDeactivate  =   True
      BehaviorIndex   =   11
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
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
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Build"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Top             =   290
      Underline       =   ""
      Visible         =   True
      Width           =   102
   End
   Begin StaticText txt_about_language
      AutoDeactivate  =   True
      BehaviorIndex   =   12
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "English: Sean Lickfold"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   10
      Top             =   313
      Underline       =   False
      Visible         =   True
      Width           =   376
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim str As String
		  
		  str = "OpenSong " + App.SmartVersion
		  txt_about_version.Text = str
		  str = App.T.Translate("about/copyright") + " " + Encodings.UTF8.Chr(169) + _
		  " 2003-2006, Sean Lickfold"
		  txt_about_copyright.Text = str
		  
		  txt_about_gpl.Text = App.T.Translate("about/gpl")
		  txt_about_web.Text = App.T.Translate("about/web")
		  '++JRC translated
		  txt_about_programmers.Text = App.T.Translate("about/additional") + EndOfLine + txt_about_programmers.Text
		  '--
		  str = App.T.Translate("general_settings/general/language/@caption") + ": "
		  str = str + App.T.Translate("@name") + " - " + App.T.Translate("@author")
		  txt_about_language.Text = str
		  
		  str = App.T.Translate("about/sources")
		  edt_about_libraries.Text = str
		  
		  btn_about_close.Caption = App.T.Translate("shared/close/@caption")
		  
		  txt_about_memory.Text = Format(REALbasic.Runtime.MemoryUsed, "#,##9")
		  txt_about_objects.Text = Format(REALbasic.Runtime.ObjectCount, "#,##9")
		  txt_about_build.Text = Format(App.NonReleaseVersion, "#,##9")
		  txt_about_compiler.Text = RBVersionString
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events btn_about_close
	#tag Event
		Sub Action()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txt_about_web
	#tag Event
		Sub MouseEnter()
		  App.MouseCursor = System.Cursors.FingerPointer
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  ShowURL "http://www.opensong.org/"
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  App.MouseCursor = Nil
		End Sub
	#tag EndEvent
#tag EndEvents
