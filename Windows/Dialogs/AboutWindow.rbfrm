#tag Window
Begin Window AboutWindow
   BackColor       =   16777215
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   1
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   350
   ImplicitInstance=   "True"
   LiveResize      =   "False"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   "False"
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   "True"
   MinHeight       =   64
   MinimizeButton  =   "False"
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   "False"
   Title           =   "About OpenSong"
   Visible         =   "True"
   Width           =   562
   Begin PushButton btn_about_close
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Close"
      ControlOrder    =   0
      Default         =   "True"
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   467
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   310
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
   End
   Begin ImageWell ImageWell1
      AutoDeactivate  =   "True"
      ControlOrder    =   1
      Enabled         =   "True"
      Height          =   128
      HelpTag         =   ""
      Image           =   -1045728915
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   14
      Visible         =   "True"
      Width           =   128
   End
   Begin StaticText txt_about_version
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   2
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   29
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   160
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "OpenSong V1.0"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   24
      Top             =   14
      Underline       =   "False"
      Visible         =   "True"
      Width           =   328
   End
   Begin StaticText txt_about_copyright
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   3
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   160
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "True"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "Copyright (c) 2003, 2004, 2005, 2006 Sean Lickfold"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   55
      Underline       =   "False"
      Visible         =   "True"
      Width           =   328
   End
   Begin StaticText txt_about_gpl
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   4
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   160
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "True"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "Licensed under the GNU Public License V2.1"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   75
      Underline       =   "False"
      Visible         =   "True"
      Width           =   322
   End
   Begin StaticText txt_about_web
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   5
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   160
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "True"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "http://www.opensong.org"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   95
      Underline       =   "False"
      Visible         =   "True"
      Width           =   376
   End
   Begin StaticText txt_about_programmers
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   6
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   71
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   160
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      Multiline       =   "True"
      TabPanelIndex   =   0
      Text            =   "Ed Palmer, Joshua Coley, Gareth Evans, Joseph Dol, Sebastian Schöps, Rüdiger Greeb, Martyn Eggleton, Ben Henny, Matt Gillies, Jon Wright, Dean Whisnant."
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   127
      Underline       =   "False"
      Visible         =   "True"
      Width           =   376
   End
   Begin EditField edt_about_libraries
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   16777215
      Bold            =   ""
      Border          =   "True"
      ControlOrder    =   7
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Format          =   ""
      Height          =   82
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   160
      LimitText       =   0
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      Mask            =   ""
      Multiline       =   "True"
      Password        =   ""
      ReadOnly        =   "True"
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   "True"
      Styled          =   ""
      TabPanelIndex   =   0
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   210
      Underline       =   ""
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   376
   End
   Begin StaticText txt_about_compiler
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   8
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   22
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      TabPanelIndex   =   0
      Text            =   "Compiler"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Top             =   251
      Underline       =   ""
      Visible         =   "True"
      Width           =   100
   End
   Begin StaticText txt_about_memory
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   9
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   15
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
      Text            =   "Memory"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Top             =   264
      Underline       =   ""
      Visible         =   "True"
      Width           =   102
   End
   Begin StaticText txt_about_objects
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   10
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   15
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
      Text            =   "Object Count"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Top             =   277
      Underline       =   ""
      Visible         =   "True"
      Width           =   102
   End
   Begin StaticText txt_about_build
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   11
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   15
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
      Text            =   "Build"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Top             =   290
      Underline       =   ""
      Visible         =   "True"
      Width           =   102
   End
   Begin StaticText txt_about_language
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   12
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   20
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "True"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "English: Sean Lickfold"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   10
      Top             =   313
      Underline       =   "False"
      Visible         =   "True"
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
