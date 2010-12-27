#tag Window
Begin Window InputBox
   BackColor       =   16777215
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   1.57e+2
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
   Title           =   "OpenSong"
   Visible         =   True
   Width           =   3.15e+2
   Begin SButton btn_ok
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
      Left            =   145
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
      Top             =   125
      UseFocusRing    =   True
      Visible         =   True
      Width           =   75
   End
   Begin SButton btn_cancel
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
      Left            =   230
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
      Top             =   125
      UseFocusRing    =   True
      Visible         =   True
      Width           =   75
   End
   Begin PushButton btn_hidden_hidok
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   145
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      TextUnit        =   0
      Top             =   173
      Underline       =   False
      Visible         =   True
      Width           =   22
   End
   Begin PushButton btn_hidden_hidcancel
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   230
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      TextUnit        =   0
      Top             =   173
      Underline       =   False
      Visible         =   True
      Width           =   22
   End
   Begin StaticText lbl_the_question
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   111
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
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      Text            =   "Label"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   11
      TextUnit        =   0
      Top             =   7
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   297
   End
   Begin SEditField edt_the_input
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   21
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   8
      LimitText       =   255
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Mask            =   ""
      Multiline       =   False
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   11
      TextUnit        =   0
      Top             =   97
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   300
   End
   Begin PopupMenu pop_the_input
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   19
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   8
      ListIndex       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      TextUnit        =   0
      Top             =   97
      Underline       =   False
      Visible         =   True
      Width           =   300
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
		  If App.T <> Nil And App.T.IsLoaded Then
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
		  
		  btn_cancel.Visible = True
		  PositionPushButtons
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
		  btn_cancel.Visible = True
		  PositionPushButtons
		  ShowModal
		  Return Output
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Message(message As String)
		  lbl_the_question.MultiLine = True
		  lbl_the_question.Text = message
		  edt_the_input.Visible = False
		  '++JRC: dereased height to make push buttons visible again
		  lbl_the_question.Height = 80
		  '--
		  pop_the_input.Visible = False
		  
		  btn_cancel.Visible = False
		  PositionPushButtons
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
		  
		  btn_cancel.Visible = True
		  PositionPushButtons
		  
		  ShowModal
		  Return Output
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PositionPushButtons()
		  //++
		  // Position the pushbutton controls taking into account
		  // the OS UI guidelines and visibility
		  //--
		  Dim rightButton As RectControl
		  Dim leftButton As RectControl
		  
		  If btn_cancel.Visible Then
		    #if TargetMacOS Then
		      rightButton = btn_ok
		      leftButton = btn_cancel
		    #else
		      rightButton = btn_cancel
		      leftButton = btn_ok
		    #endif
		  Else
		    leftButton = Nil
		    rightButton = btn_ok
		  End If
		  
		  rightButton.Left = Self.Width - (rightButton.Width + 12)
		  If leftButton <> Nil Then
		    If leftButton.top = rightButton.top Then
		      leftButton.Left = rightButton.Left - (leftButton.Width + 12)
		    End If
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected Output As String
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputB As Boolean
	#tag EndProperty


#tag EndWindowCode

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
#tag Events btn_hidden_hidok
	#tag Event
		Sub Action()
		  Okay
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_hidden_hidcancel
	#tag Event
		Sub Action()
		  Cancel
		End Sub
	#tag EndEvent
#tag EndEvents
