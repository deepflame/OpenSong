#tag Window
Begin Window ProgressWindow
   BackColor       =   16777215
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   4
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   60
   ImplicitInstance=   "True"
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
   Placement       =   1
   Resizeable      =   "True"
   Title           =   "OpenSong"
   Visible         =   "True"
   Width           =   300
   Begin ProgressBar bar
      AutoDeactivate  =   "True"
      ControlOrder    =   0
      Enabled         =   True
      Height          =   12
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Maximum         =   100
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   25
      Value           =   0
      Visible         =   True
      Width           =   280
      BehaviorIndex   =   0
   End
   Begin StaticText txt_StatusLine
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   1
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
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
      Multiline       =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      Text            =   ""
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   40
      Underline       =   "False"
      Visible         =   True
      Width           =   280
      BehaviorIndex   =   1
   End
   Begin StaticText lbl_status
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   2
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   12
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Multiline       =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      Text            =   "druk op <Ctrl> toets om direct door te gaan."
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   3
      Underline       =   "False"
      Visible         =   True
      Width           =   276
      BehaviorIndex   =   2
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Dim Excep As RuntimeException
		  If Not AllowEscape Then Return True
		  
		  If AscB(Key) = 27 Then //Escape
		    CancelRequested = True
		  End If
		  Return True //Basically, just ignore everything else
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  App.T.TranslateWindow Self, "progress_window", App.TranslationFonts, False, True
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AlignStatusCenter()
		  txt_StatusLine.TextAlign = 1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AlignStatusLeft()
		  txt_StatusLine.TextAlign = 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CanCancel(CancelValid As Boolean)
		  // TODO: Enable this again
		  // (Turned off to get V1.0 Beta 2 BL 10 out)
		  AllowEscape = False
		  'AllowEscape = CancelValid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  // call the Window constructor, or Open events will not fire
		  Super.Window()
		  bar.Maximum = 100
		  Bar.Value = 0
		  txt_StatusLine.Text = ""
		  AllowEscape = False
		  CancelRequested = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function QueryCancel() As Boolean
		  Return CancelRequested
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMaximum(max As Integer = 100)
		  bar.Maximum = max
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetProgress(percent As Integer)
		  bar.Value = percent
		  If Visible Then
		    Refresh False
		    App.DoEvents 0
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetProgress(percent As Integer) As Boolean
		  //
		  // Returns inverse value of CancelRequested in addition to setting
		  // the progress bar
		  //
		  SetProgress percent
		  Return Not CancelRequested
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SetStatus(StatusText As String) As Boolean
		  //
		  // Set the StatusLine text and return the inverse of CancelRequested value
		  //
		  SetStatus StatusText
		  Return Not CancelRequested
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetStatus(StatusText As String)
		  txt_StatusLine.Text = StatusText
		  If Visible Then Refresh False
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		#tag Note
			Flag to indicate if user is allowed to press the Escape
			key to signal a request to cancel the operation in progress.
			See KeyDown event.  Default False (from Constructor)
		#tag EndNote
		Private AllowEscape As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Indicates if the user has requested to cancel.  Default False.
		#tag EndNote
		Protected CancelRequested As Boolean
	#tag EndProperty


#tag EndWindowCode

