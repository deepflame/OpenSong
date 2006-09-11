#tag Window
Begin Window InputBox
   Placement       =   0
   Width           =   315
   Height          =   125
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   1
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "OpenSong"
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
   Begin StaticText lbl_the_question
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   8
      Top             =   7
      Width           =   299
      Height          =   79
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Text            =   "Label"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   11
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   0
   End
   Begin EditField edt_the_input
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   8
      Top             =   65
      Width           =   300
      Height          =   21
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
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
      TextFont        =   "Arial"
      TextSize        =   11
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Text            =   ""
      Mask            =   ""
      ReadOnly        =   "False"
      LimitText       =   255
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
      Left            =   145
      Top             =   93
      Width           =   75
      Height          =   24
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   "True"
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
      Left            =   230
      Top             =   93
      Width           =   75
      Height          =   24
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   "True"
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "True"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      BehaviorIndex   =   3
   End
   Begin PushButton btn_hidden_ok
      Index           =   -2147483648
      ControlOrder    =   4
      Left            =   145
      Top             =   135
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
   Begin PushButton btn_hidden_cancel
      Index           =   -2147483648
      ControlOrder    =   5
      Left            =   230
      Top             =   135
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
   Begin PopupMenu pop_the_input
      Index           =   -2147483648
      ControlOrder    =   6
      Left            =   8
      Top             =   70
      Width           =   300
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Enabled         =   True
      InitialValue    =   ""
      ListIndex       =   0
      Visible         =   True
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
      BehaviorIndex   =   6
   End
End
#tag EndWindow

#tag WindowCode
#tag Event
	Sub Open()
	  App.T.TranslateWindow Me, "input_box", App.TranslationFonts
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


#tag Property, Flags = &h1
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
