#tag Window
Begin Window StyleMarginWindow
   BackColor       =   16777215
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   346
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   True
   MinHeight       =   346
   MinimizeButton  =   True
   MinWidth        =   500
   Placement       =   0
   Resizeable      =   False
   Title           =   "Margins Editor"
   Visible         =   True
   Width           =   500
   Begin PushButton btn_ok
      AutoDeactivate  =   True
      BehaviorIndex   =   0
      Bold            =   False
      Cancel          =   False
      Caption         =   "OK"
      ControlOrder    =   0
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   330
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   304
      Underline       =   False
      Visible         =   True
      Width           =   70
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   True
      BehaviorIndex   =   1
      Bold            =   False
      Cancel          =   True
      Caption         =   "Cancel"
      ControlOrder    =   1
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   410
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   304
      Underline       =   False
      Visible         =   True
      Width           =   70
   End
   Begin Label lbl_margins_left
      AutoDeactivate  =   True
      BehaviorIndex   =   2
      Bold            =   ""
      ControlOrder    =   2
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Left:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   125
      Underline       =   ""
      Visible         =   True
      Width           =   72
   End
   Begin SEditFieldNumeric edt_margins_left
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      BehaviorIndex   =   3
      Bold            =   ""
      Border          =   True
      ControlOrder    =   3
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      EnforceRange    =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   ""
      Mask            =   ""
      Maximum         =   0
      Minimum         =   0
      Multiline       =   ""
      Password        =   ""
      ReadOnly        =   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      SignalRangeErrors=   0
      Styled          =   ""
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   146
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   38
   End
   Begin UpDownArrows ud_margins_left
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BehaviorIndex   =   4
      ControlOrder    =   4
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Left            =   63
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   ""
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   146
      Visible         =   True
      Width           =   13
   End
   Begin Label lbl_margins_right
      AutoDeactivate  =   True
      BehaviorIndex   =   5
      Bold            =   ""
      ControlOrder    =   5
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   395
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Right:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   125
      Underline       =   ""
      Visible         =   True
      Width           =   76
   End
   Begin SEditFieldNumeric edt_margins_right
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      BehaviorIndex   =   6
      Bold            =   ""
      Border          =   True
      ControlOrder    =   6
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      EnforceRange    =   0
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   395
      LimitText       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Maximum         =   0
      Minimum         =   0
      Multiline       =   ""
      Password        =   ""
      ReadOnly        =   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      SignalRangeErrors=   0
      Styled          =   ""
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   149
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   38
   End
   Begin UpDownArrows ud_margins_right
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BehaviorIndex   =   7
      ControlOrder    =   7
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Left            =   438
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   149
      Visible         =   True
      Width           =   13
   End
   Begin Label lbl_margins_top
      AutoDeactivate  =   True
      BehaviorIndex   =   8
      Bold            =   ""
      ControlOrder    =   8
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   103
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Top:"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   14
      Underline       =   ""
      Visible         =   True
      Width           =   107
   End
   Begin SEditFieldNumeric edt_margins_top
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      BehaviorIndex   =   9
      Bold            =   ""
      Border          =   True
      ControlOrder    =   9
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      EnforceRange    =   0
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   213
      LimitText       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Mask            =   ""
      Maximum         =   0
      Minimum         =   0
      Multiline       =   ""
      Password        =   ""
      ReadOnly        =   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      SignalRangeErrors=   0
      Styled          =   ""
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   14
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   38
   End
   Begin UpDownArrows ud_margins_top
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BehaviorIndex   =   10
      ControlOrder    =   10
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Left            =   256
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   14
      Visible         =   True
      Width           =   13
   End
   Begin Label txt_right_pixels
      AutoDeactivate  =   True
      BehaviorIndex   =   11
      Bold            =   False
      ControlOrder    =   11
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   456
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "px"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   149
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin Label txt_top_pixels
      AutoDeactivate  =   True
      BehaviorIndex   =   12
      Bold            =   False
      ControlOrder    =   12
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   273
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
      Text            =   "px"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   14
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin Label lbl_margins_bottom
      AutoDeactivate  =   True
      BehaviorIndex   =   13
      Bold            =   ""
      ControlOrder    =   13
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   103
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Bottom:"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   272
      Underline       =   ""
      Visible         =   True
      Width           =   107
   End
   Begin SEditFieldNumeric edt_margins_bottom
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      BehaviorIndex   =   14
      Bold            =   ""
      Border          =   True
      ControlOrder    =   14
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      EnforceRange    =   0
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   213
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   ""
      Mask            =   ""
      Maximum         =   0
      Minimum         =   0
      Multiline       =   ""
      Password        =   ""
      ReadOnly        =   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      SignalRangeErrors=   0
      Styled          =   ""
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   272
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   38
   End
   Begin UpDownArrows ud_margins_bottom
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BehaviorIndex   =   15
      ControlOrder    =   15
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Left            =   256
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   ""
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   271
      Visible         =   True
      Width           =   13
   End
   Begin Label lbl_style_preview
      AutoDeactivate  =   True
      BehaviorIndex   =   16
      Bold            =   ""
      ControlOrder    =   16
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   103
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Preview:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Top             =   40
      Underline       =   ""
      Visible         =   True
      Width           =   240
   End
   Begin SBufferedCanvas can_style_preview
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      BehaviorIndex   =   17
      ControlOrder    =   17
      Enabled         =   True
      EraseBackground =   True
      Height          =   210
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Left            =   103
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   55
      UseFocusRing    =   True
      Visible         =   True
      Width           =   280
   End
   Begin Label txt_left_pixels
      AutoDeactivate  =   True
      BehaviorIndex   =   18
      Bold            =   False
      ControlOrder    =   18
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   80
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "px"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   146
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin Label txt_bottom_pixels
      AutoDeactivate  =   True
      BehaviorIndex   =   19
      Bold            =   False
      ControlOrder    =   19
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   274
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "px"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   272
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin Label txt_background_pixels1
      AutoDeactivate  =   True
      BehaviorIndex   =   20
      Bold            =   False
      ControlOrder    =   20
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   -365
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "px"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   -169
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  App.T.TranslateWindow Me, "style_margins", App.TranslationFonts
		  App.CenterInControlScreen Me
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Edit(style As SlideStyle, slide as XmlNode, sectionType As StyleSectionEnum) As Boolean
		  self.editType = sectionType
		  self.editStyle = style
		  self.previewSlideNode = slide
		  
		  isUpdatingPreview = True
		  LoadValues
		  isUpdatingPreview = False
		  UpdatePreview
		  
		  ReturnValue = False
		  ShowModalWithin(MainWindow)
		  
		  Return ReturnValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadValues()
		  Select Case self.editType
		  Case StyleSectionEnum.Title
		    margins = self.editStyle.TitleMargins()
		  Case StyleSectionEnum.Subtitle
		    margins = self.editStyle.SubtitleMargins()
		  Case StyleSectionEnum.Body
		    margins = self.editStyle.BodyMargins()
		  End Select
		  
		  'Initialise the edit controls with the margin values
		  edt_margins_left.SetValue(margins.Left)
		  edt_margins_right.SetValue(margins.Right)
		  edt_margins_top.SetValue(margins.Top)
		  edt_margins_bottom.SetValue(margins.Bottom)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdatePreview()
		  'Todo...
		  if not isUpdatingPreview then
		    isUpdatingPreview = True
		    
		    'MsgBox "Update!"
		    can_style_preview.Repaint()
		    
		    isUpdatingPreview = False
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private editStyle As SlideStyle
	#tag EndProperty

	#tag Property, Flags = &h21
		Private editType As StyleSectionEnum
	#tag EndProperty

	#tag Property, Flags = &h21
		Private isUpdatingPreview As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private margins As StyleMarginType
	#tag EndProperty

	#tag Property, Flags = &h21
		Private previewSlideNode As XmlNode
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ReturnValue As boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events btn_ok
	#tag Event
		Sub Action()
		  Select Case self.editType
		  Case StyleSectionEnum.Body
		    self.editStyle.BodyMargins(margins)
		  Case StyleSectionEnum.Subtitle
		    self.editStyle.SubtitleMargins(margins)
		  Case StyleSectionEnum.Title
		    self.editStyle.TitleMargins(margins)
		  Case Else
		    Dim e As New OutOfBoundsException
		    e.Message = "StyleMarginWindow.can_style_preview.Paint, unhandled StyleMargin type"
		    Raise e
		  End Select
		  
		  ReturnValue = True
		  
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_cancel
	#tag Event
		Sub Action()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_margins_left
	#tag Event
		Sub TextChange()
		  if Me.Value <> margins.Left then
		    margins.Left =  CDbl(Me.Text)
		    UpdatePreview
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ud_margins_left
	#tag Event
		Sub Up()
		  dim i as Integer
		  
		  i = edt_margins_left.Value
		  if not edt_margins_left.EnforceRange or  i<edt_margins_left.Maximum then
		    i = i + 1
		  end if
		  edt_margins_left.SetValue(i)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Down()
		  dim i as Integer
		  
		  i = edt_margins_left.Value
		  if not edt_margins_left.EnforceRange or  i>edt_margins_left.Minimum then
		    i = i - 1
		  end if
		  edt_margins_left.SetValue(i)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_margins_right
	#tag Event
		Sub TextChange()
		  if  Me.Value <> margins.Right then
		    margins.Right =  CDbl(Me.Text)
		    UpdatePreview
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ud_margins_right
	#tag Event
		Sub Down()
		  dim i as Integer
		  
		  i = edt_margins_right.Value
		  if not edt_margins_right.EnforceRange or  i>edt_margins_right.Minimum then
		    i = i - 1
		  end if
		  edt_margins_right.SetValue(i)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Up()
		  dim i as Integer
		  
		  i = edt_margins_right.Value
		  if not edt_margins_right.EnforceRange or  i<edt_margins_right.Maximum then
		    i = i + 1
		  end if
		  edt_margins_right.SetValue(i)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_margins_top
	#tag Event
		Sub TextChange()
		  if  Me.Value <> margins.Top then
		    margins.Top =  CDbl(Me.Text)
		    UpdatePreview
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ud_margins_top
	#tag Event
		Sub Down()
		  dim i as Integer
		  
		  i = edt_margins_top.Value
		  if not edt_margins_top.EnforceRange or  i>edt_margins_top.Minimum then
		    i = i - 1
		  end if
		  edt_margins_top.SetValue(i)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Up()
		  dim i as Integer
		  
		  i = edt_margins_top.Value
		  if not edt_margins_top.EnforceRange or  i<edt_margins_top.Maximum then
		    i = i + 1
		  end if
		  edt_margins_top.SetValue(i)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_margins_bottom
	#tag Event
		Sub TextChange()
		  if Me.Value <> margins.Bottom then
		    margins.Bottom = CDbl(Me.Text)
		    UpdatePreview
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ud_margins_bottom
	#tag Event
		Sub Up()
		  dim i as Integer
		  
		  i = edt_margins_bottom.Value
		  if not edt_margins_bottom.EnforceRange or  i<edt_margins_bottom.Maximum then
		    i = i + 1
		  end if
		  edt_margins_bottom.SetValue(i)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Down()
		  dim i as Integer
		  
		  i = edt_margins_bottom.Value
		  if not edt_margins_bottom.EnforceRange or  i>edt_margins_bottom.Minimum then
		    i = i - 1
		  end if
		  edt_margins_bottom.SetValue(i)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_style_preview
	#tag Event
		Sub Paint(g As Graphics)
		  Dim zoom as Double
		  Dim realBorder as Double
		  
		  Select Case self.editType
		  Case StyleSectionEnum.Body
		    self.editStyle.BodyMargins(margins)
		  Case StyleSectionEnum.Subtitle
		    self.editStyle.SubtitleMargins(margins)
		  Case StyleSectionEnum.Title
		    self.editStyle.TitleMargins(margins)
		  Case Else
		    Dim e As New OutOfBoundsException
		    e.Message = "StyleMarginWindow.can_style_preview.Paint, unhandled StyleMargin type"
		    Raise e
		  End Select
		  
		  SetML.DrawSlide g, _
		  self.previewSlideNode, _
		  self.editStyle
		  g.ForeColor = DarkBevelColor
		  g.DrawRect 0, 0, g.Width, g.Height
		  
		  zoom = g.Width / 640.0
		  RealBorder = g.Width / 50
		  
		  'draw a rectangle indicating the margin area
		  g.ForeColor = RGB(255, 0, 255) 'Magenta - a color that is not likely to be used in a background...
		  g.DrawRect margins.Left * zoom, _
		  margins.Top * zoom, _
		  g.Width - (margins.Left + margins.Right) * zoom, _
		  g.Height - (margins.Top + margins.Bottom) * zoom
		  
		  'draw a rectangle indicating the actual writing area
		  g.ForeColor = RGB(0, 255, 0) 'Bright Green - a color that is not likely to be used in a background...
		  g.DrawRect (margins.Left * zoom) + RealBorder, _
		  (margins.Top * zoom) + RealBorder, _
		  g.Width - ((margins.Left + margins.Right) * zoom) - (RealBorder * 2), _
		  g.Height - ((margins.Top + margins.Bottom) * zoom) - (RealBorder * 2)
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
