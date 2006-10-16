#tag Window
Begin Window ProgressWindow
   Placement       =   1
   Width           =   300
   Height          =   60
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   4
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "OpenSong"
   Visible         =   "True"
   FullScreen      =   "False"
   MenuBarVisible  =   "True"
   CloseButton     =   "True"
   Resizeable      =   "True"
   LiveResize      =   "False"
   MaximizeButton  =   "True"
   MinimizeButton  =   "True"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   0
   Begin ProgressBar bar
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   10
      Top             =   25
      Width           =   280
      Height          =   12
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      Value           =   0
      Maximum         =   100
      InitialParent   =   ""
      BehaviorIndex   =   0
   End
   Begin StaticText StatusLine
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   10
      Top             =   40
      Width           =   280
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Text            =   ""
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "False"
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
      BehaviorIndex   =   1
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


	#tag Method, Flags = &h0
		Sub AlignStatusCenter()
		  StatusLine.TextAlign = 1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AlignStatusLeft()
		  StatusLine.TextAlign = 0
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
		  StatusLine.Text = ""
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
		  StatusLine.Text = StatusText
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

