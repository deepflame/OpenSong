#tag Window
Begin Window InputBox
   BackColor       =   16777215
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   1
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   125
   LiveResize      =   "False"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   "True"
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   "True"
   MinHeight       =   64
   MinimizeButton  =   "True"
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   "False"
   Title           =   "OpenSong"
   Visible         =   "True"
   Width           =   315
   Begin StaticText lbl_the_question
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ControlOrder    =   0
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   79
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   8
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      MultiLine       =   "True"
      TabPanelIndex   =   0
      Text            =   "Label"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   7
      Underline       =   "False"
      Visible         =   "True"
      Width           =   299
      BehaviorIndex   =   0
   End
   Begin EditField edt_the_input
      AcceptTabs      =   "False"
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   16777215
      BalloonHelp     =   ""
      Bold            =   "False"
      Border          =   "True"
      ControlOrder    =   1
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Format          =   ""
      Height          =   21
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   8
      LimitText       =   255
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
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
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   65
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   300
      BehaviorIndex   =   1
   End
   Begin SButton btn_ok
      AcceptFocus     =   "True"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      ControlOrder    =   2
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "GroupBox4"
      IsStuck         =   "False"
      Label           =   "OK"
      LabelAlign      =   0
      Left            =   145
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "False"
      StickyBevel     =   "False"
      TabPanelIndex   =   0
      Top             =   93
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   75
      BehaviorIndex   =   2
   End
   Begin SButton btn_cancel
      AcceptFocus     =   "True"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      ControlOrder    =   3
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "GroupBox4"
      IsStuck         =   "False"
      Label           =   "Cancel"
      LabelAlign      =   0
      Left            =   230
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "False"
      StickyBevel     =   "False"
      TabPanelIndex   =   0
      Top             =   93
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   75
      BehaviorIndex   =   3
   End
   Begin PushButton btn_hidden_ok
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "OK"
      ControlOrder    =   4
      Default         =   "True"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   145
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   135
      Underline       =   "False"
      Visible         =   "True"
      Width           =   22
      BehaviorIndex   =   4
   End
   Begin PushButton btn_hidden_cancel
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Cancel"
      ControlOrder    =   5
      Default         =   "False"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   230
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   135
      Underline       =   "False"
      Visible         =   "True"
      Width           =   22
      BehaviorIndex   =   5
   End
   Begin PopupMenu pop_the_input
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ControlOrder    =   6
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   8
      ListIndex       =   0
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   70
      Underline       =   "False"
      Visible         =   "True"
      Width           =   300
      BehaviorIndex   =   6
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  Me.SetFocus
		  BringToFront
		  If edt_the_input.Visible Then edt_the_input.SetFocus
		  if pop_the_input.Visible Then pop_the_input.SetFocus
		End Sub
	#tag EndEvent

	#tag Event
		Sub Close()
		  Globals.Status_InputBoxOpen = False
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  '++JRC Prevent OutOfBounds Exception when translator isn't loaded
		  If App.T.IsLoaded Then
		    App.T.TranslateWindow Me, "input_box", App.TranslationFonts
		  End If
		  Globals.Status_InputBoxOpen = True
		  '--
		  App.CenterInControlScreen Me
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Ask(question As String) As Boolean
		  lbl_the_question.Text = question
		  edt_the_input.Visible = False
		  lbl_the_question.Height = 80
		  pop_the_input.Visible = False
		  
		  btn_ok.Left = 145
		  btn_cancel.Visible = True
		  
		  ShowModal
		  Return OutputB
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AskYN(question As String) As Boolean
		  //++
		  // Ask a yes/no question
		  // EMP, July 2006
		  //--
		  Dim status As Boolean
		  Dim ok, cancel As String
		  
		  ok = btn_ok.GetLabel
		  cancel = btn_cancel.GetLabel
		  
		  btn_ok.SetLabel(App.T.Translate("shared/yes/@caption"))
		  btn_cancel.SetLabel(App.T.Translate("shared/no/@caption"))
		  
		  status = Ask(question)
		  
		  Return status
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub BringToFront()
		  #If TargetWin32 Then
		    Const SWP_NOSIZE = &H1
		    Const SWP_NOMOVE = &H2
		    Const SWP_FRAMECHANGED = &H20
		    Const SWP_NOOWNERZORDER = &H200
		    Const HWND_TOP = 0
		    Const GWL_STYLE = -16
		    Const WS_POPUPWINDOW = &H80880000
		    
		    Dim styleFlags As Integer
		    
		    Declare Function SetWindowPos Lib "user32" (hwnd as Integer, hWndInsertAfter as Integer, x as Integer, y as Integer, cx as Integer, cy as Integer, flags as Integer) as Integer
		    
		    styleFlags = SetWindowPos( self.Handle, HWND_TOP, 0, 0, 0, 0, _
		    SWP_NOSIZE + SWP_NOMOVE + SWP_NOOWNERZORDER)
		    
		  #ElseIf TargetCarbon Then
		    
		    Dim Status As Integer
		    #if TargetMachO
		      Declare Function SelectWindow Lib "Carbon" (window As Integer) As Integer
		    #else
		      Declare Function SelectWindow Lib "CarbonLib" (window As Integer) As Integer
		    #endif
		    
		    Status = SelectWindow(Self.Handle)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Cancel()
		  Output = ""
		  OutputB = False
		  Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Input(question As String, default As String) As String
		  lbl_the_question.Text = question
		  edt_the_input.Text = default
		  edt_the_input.Visible = True
		  edt_the_input.SelStart = 0
		  edt_the_input.SelLength = Len(default)
		  pop_the_input.Visible = False
		  
		  lbl_the_question.Height = 40
		  btn_ok.Left = 145
		  btn_cancel.Visible = True
		  ShowModal
		  Return Output
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Message(message As String)
		  lbl_the_question.MultiLine = True
		  lbl_the_question.Text = message
		  edt_the_input.Visible = False
		  '++JRC: Increased height
		  lbl_the_question.Height = 150
		  '--
		  pop_the_input.Visible = False
		  
		  btn_ok.Left = 230
		  btn_cancel.Visible = False
		  
		  ShowModal
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Okay()
		  If edt_the_input.Visible Then
		    Output = edt_the_input.Text
		  ElseIf pop_the_input.Visible Then
		    Output = pop_the_input.Text
		  End If
		  OutputB = True
		  Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Pick(question As String, choices() As String, default As String = "") As String
		  lbl_the_question.Text = question
		  edt_the_input.Visible = False
		  
		  pop_the_input.DeleteAllRows
		  Dim i As Integer
		  For i = 1 To UBound(choices)
		    pop_the_input.AddRow choices(i)
		    If choices(i) = default Then pop_the_input.ListIndex = i - 1
		  Next i
		  pop_the_input.Visible = True
		  pop_the_input.ListIndex = 0
		  
		  lbl_the_question.Height = 40
		  btn_ok.Left = 145
		  btn_cancel.Visible = True
		  
		  ShowModal
		  Return Output
		End Function
	#tag EndMethod


	#tag Property, Flags = &h5
		Protected Output As String
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputB As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events edt_the_input
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    if c.TextAvailable then
		      edt_the_input.Text  = Left(c.Text, 255)
		    end if
		  end if
		  
		  c.close
		End Function
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
#tag Events btn_hidden_ok
	#tag Event
		Sub Action()
		  Okay
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_hidden_cancel
	#tag Event
		Sub Action()
		  Cancel
		End Sub
	#tag EndEvent
#tag EndEvents
