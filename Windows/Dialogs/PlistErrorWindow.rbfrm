#tag Window
Begin Window PlistErrorWindow
   BackColor       =   16777215
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   165
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   150
   MinimizeButton  =   True
   MinWidth        =   150
   Placement       =   0
   Resizeable      =   True
   Title           =   "OpenSong Preferences Error"
   Visible         =   True
   Width           =   575
   Begin SButton btn_recover
      AcceptFocus     =   True
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasFocus        =   0
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      LabelAlign      =   0
      Left            =   283
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      StickyBevel     =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   133
      UseFocusRing    =   True
      Visible         =   True
      Width           =   150
   End
   Begin SButton btn_quit
      AcceptFocus     =   True
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasFocus        =   0
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      LabelAlign      =   0
      Left            =   445
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      StickyBevel     =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   133
      UseFocusRing    =   True
      Visible         =   True
      Width           =   110
   End
   Begin Label lbl_message
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   119
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   8
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Error loading plist..."
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   11
      TextUnit        =   0
      Top             =   7
      Underline       =   False
      Visible         =   True
      Width           =   557
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  Me.SetFocus
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  btn_quit.SetLabel("Exit OpenSong")
		  btn_recover.SetLabel("Recreate preferences")
		  
		  App.CenterInControlScreen Me
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function DoRecover(preferencesFile As FolderItem) As Boolean
		  m_recover = False
		  lbl_message.Text = "An error occurred while loading the preferences list. " + _
		  "The file probably is corrupt and therefore cannot be loaded." + Chr(13) + Chr(10) + Chr(13) + Chr(10) + _
		  "OpenSong can recreate the preferences file for you, which will cause your main program settings to be deleted." + Chr(13) + Chr(10) + _
		  "You can also choose to close OpenSong now and manually try to recover the preferences file located at " + Chr(13) + Chr(10) + preferencesFile.AbsolutePath() + "."
		  
		  ShowModal()
		  Return m_recover
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private m_recover As Boolean = False
	#tag EndProperty


#tag EndWindowCode

#tag Events btn_recover
	#tag Event
		Sub Open()
		  Me.SetIcon redopic, redomask
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  m_recover = True
		  Close()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_quit
	#tag Event
		Sub Open()
		  Me.SetIcon exitpic, exitmask
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  m_recover = False
		  Close()
		End Sub
	#tag EndEvent
#tag EndEvents
