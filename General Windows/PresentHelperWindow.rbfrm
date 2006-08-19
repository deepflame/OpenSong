#tag Window
Begin Window PresentHelperWindow
   Placement       =   0
   Width           =   640
   Height          =   480
   MinWidth        =   640
   MinHeight       =   480
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   0
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Presentation Helper"
   Visible         =   "True"
   FullScreen      =   "False"
   MenuBarVisible  =   "True"
   CloseButton     =   "False"
   Resizeable      =   "True"
   LiveResize      =   "False"
   MaximizeButton  =   "True"
   MinimizeButton  =   "True"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   0
   Begin GroupBox grp_presentation_modes
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Mode"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   180
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   484
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   5
      Underline       =   "False"
      Visible         =   "True"
      Width           =   145
      ControlOrder    =   0
      BehaviorIndex   =   8
      Begin SButton btn_mode_black
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_presentation_modes"
         IsStuck         =   "False"
         Label           =   "Black (K)"
         LabelAlign      =   0
         Left            =   494
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "True"
         LockTop         =   "False"
         StickyBevel     =   "False"
         TabPanelIndex   =   0
         Top             =   50
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   5
         BehaviorIndex   =   4
      End
      Begin SButton btn_mode_white
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_presentation_modes"
         IsStuck         =   "False"
         Label           =   "White (W)"
         LabelAlign      =   0
         Left            =   494
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "True"
         LockTop         =   "False"
         StickyBevel     =   "False"
         TabPanelIndex   =   0
         Top             =   75
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   6
         BehaviorIndex   =   5
      End
      Begin SButton btn_mode_hidden
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_presentation_modes"
         IsStuck         =   "False"
         Label           =   "Hidden (H)"
         LabelAlign      =   0
         Left            =   494
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "True"
         LockTop         =   "False"
         StickyBevel     =   "False"
         TabPanelIndex   =   0
         Top             =   100
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   7
         BehaviorIndex   =   6
      End
      Begin SButton btn_mode_normal
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_presentation_modes"
         IsStuck         =   "False"
         Label           =   "Normal (N)"
         LabelAlign      =   0
         Left            =   494
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "True"
         LockTop         =   "False"
         StickyBevel     =   "False"
         TabPanelIndex   =   0
         Top             =   25
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   8
         BehaviorIndex   =   7
      End
      Begin SButton btn_mode_logo
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_presentation_modes"
         IsStuck         =   "False"
         Label           =   "Logo (L)"
         LabelAlign      =   0
         Left            =   494
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "True"
         LockTop         =   "False"
         StickyBevel     =   "False"
         TabPanelIndex   =   0
         Top             =   125
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   14
         BehaviorIndex   =   14
      End
      Begin SButton btn_mode_frozen
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_presentation_modes"
         IsStuck         =   "False"
         Label           =   "Frozen (F)"
         LabelAlign      =   0
         Left            =   494
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "True"
         LockTop         =   "False"
         StickyBevel     =   "False"
         TabPanelIndex   =   0
         Top             =   150
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   16
         BehaviorIndex   =   16
      End
   End
   Begin ListBox lst_all_slides
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ColumnCount     =   3
      ColumnsResizable=   "True"
      ColumnWidths    =   "27%,8%,65%"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      DisabledBalloonHelp=   ""
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      Enabled         =   "True"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   "True"
      HeadingIndex    =   -1
      Height          =   200
      HelpTag         =   ""
      Hierarchical    =   "False"
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      ScrollBarHorizontal=   "False"
      ScrollBarVertical=   "True"
      ScrollPosition  =   0
      ScrollPositionX =   0
      SelectionType   =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   10
      Underline       =   "False"
      UseFocusRing    =   "False"
      Visible         =   "True"
      Width           =   435
      ControlOrder    =   1
      BehaviorIndex   =   0
   End
   Begin Canvas cnv_preview
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   249
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   222
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   346
      ControlOrder    =   2
      BehaviorIndex   =   1
   End
   Begin StaticText txt_shortcut_keys
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   135
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   373
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "False"
      MultiLine       =   "True"
      TabPanelIndex   =   0
      Text            =   "- Arrows: -\r\nDown: Next Slide\r\nUp: Previous Slide\r\nRight: Next Section\r\nLeft: Previous Section\r\n- Jump To: -\r\n1-9: Verse\r\nC: Chorus\r\nP: Pre-chorus\r\nB: Bridge\r\nT: Tag"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   9
      Top             =   215
      Underline       =   "False"
      Visible         =   "True"
      Width           =   105
      ControlOrder    =   3
      BehaviorIndex   =   2
   End
   Begin EditField edt_slide_notes
      AcceptTabs      =   "False"
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   16777215
      BalloonHelp     =   ""
      Bold            =   "True"
      Border          =   "True"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Format          =   ""
      Height          =   116
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   368
      LimitText       =   0
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "False"
      Mask            =   ""
      MultiLine       =   "True"
      Password        =   "False"
      ReadOnly        =   "True"
      ScrollBar       =   "True"
      ScrollBarHorizontal=   "False"
      ScrollBarVertical=   "True"
      Styled          =   "False"
      TabPanelIndex   =   0
      Text            =   ""
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   16
      Top             =   355
      Underline       =   "False"
      UseFocusRing    =   "False"
      Visible         =   "True"
      Width           =   261
      ControlOrder    =   4
      BehaviorIndex   =   3
   End
   Begin GroupBox grp_presentation_actions
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Actions"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   155
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   484
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   190
      Underline       =   "False"
      Visible         =   "True"
      Width           =   145
      ControlOrder    =   9
      BehaviorIndex   =   9
      Begin SButton btn_action_quick_song
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_presentation_actions"
         IsStuck         =   "False"
         Label           =   "Add Song (Q)"
         LabelAlign      =   0
         Left            =   494
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "True"
         LockTop         =   "False"
         StickyBevel     =   "False"
         TabPanelIndex   =   0
         Top             =   235
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   10
         BehaviorIndex   =   10
      End
      Begin SButton btn_action_scripture
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_presentation_actions"
         IsStuck         =   "False"
         Label           =   "Scripture (S)"
         LabelAlign      =   0
         Left            =   494
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "True"
         LockTop         =   "False"
         StickyBevel     =   "False"
         TabPanelIndex   =   0
         Top             =   260
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   11
         BehaviorIndex   =   11
      End
      Begin SButton btn_action_return
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_presentation_actions"
         IsStuck         =   "False"
         Label           =   "Return (Esc)"
         LabelAlign      =   0
         Left            =   494
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "True"
         LockTop         =   "False"
         StickyBevel     =   "False"
         TabPanelIndex   =   0
         Top             =   310
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   12
         BehaviorIndex   =   12
      End
      Begin SButton btn_action_alert
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_presentation_actions"
         IsStuck         =   "False"
         Label           =   "Alert (A)"
         LabelAlign      =   0
         Left            =   494
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "True"
         LockTop         =   "False"
         StickyBevel     =   "False"
         TabPanelIndex   =   0
         Top             =   210
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   13
         BehaviorIndex   =   13
      End
      Begin SButton btn_action_full_screen
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         BalloonHelp     =   ""
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_presentation_actions"
         IsStuck         =   "False"
         Label           =   "Full Screen (M)"
         LabelAlign      =   0
         Left            =   494
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "True"
         LockTop         =   "False"
         StickyBevel     =   "False"
         TabPanelIndex   =   0
         Top             =   285
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   125
         ControlOrder    =   15
         BehaviorIndex   =   15
      End
   End
End
#tag EndWindow

#tag WindowCode
#tag Event
	Function CancelClose(appQuitting as Boolean) As Boolean
	  If MainWindow.Status_Presentation And Not appQuitting Then Return True
	End Function
#tag EndEvent

#tag Event
	Function KeyDown(Key As String) As Boolean
	  Return PresentWindow.KeyDownX(Key)
	End Function
#tag EndEvent

#tag Event
	Sub Open()
	  App.T.TranslateWindow Me, "presentation_helper", App.TranslationFonts
	  txt_shortcut_keys.Caption = App.T.Translate("presentation_helper/keys")
	End Sub
#tag EndEvent

#tag Event
	Sub Resized()
	  '++JRC: Recalc whenever window is resized
	  RecalcLstAllSlidesColumnWidths
	  Refresh
	  '--
	End Sub
#tag EndEvent


#tag Method, Flags = &h0
	Sub InsertItem(slide As XmlNode, index As Integer)
	  Dim NamesEqual As Boolean = True
	  Dim TagsEqual As Boolean = True //++EMP 15 Jan 06
	  
	  If index >= lst_all_slides.ListCount Then
	    lst_all_slides.AddRow SmartML.GetValue(slide.Parent.Parent, "@name", True)
	    index = lst_all_slides.ListCount - 1
	    'index = index - 1
	  Else
	    lst_all_slides.InsertRow index, SmartML.GetValue(slide.Parent.Parent, "@name", True)
	  End If
	  
	  lst_all_slides.CellTag(index, 0) = SmartML.GetValue(slide.Parent.Parent, "@type", True)  //++EMP 15 Jan 06
	  
	  lst_all_slides.CellBold(index,1) = SmartML.GetValueB(slide, "@emphasize", False) _
	  And SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@highlight_chorus", True, True) 'EMP 12/05
	  lst_all_slides.Cell(index,1) = SmartML.GetValue(slide, "@id", False)
	  lst_all_slides.CellAlignment(index, 1) = 2
	  lst_all_slides.Cell(index,2) = ReplaceAll(Trim(SmartML.GetValue(slide, "body", True)), Chr(10), " ").CleanSpaces
	  //++EMP 15 Jan 06
	  // Put in separator lines if either the name and celltags differ 
	  If Index > 0 Then
	    NamesEqual = lst_all_slides.Cell(index, 0) = lst_all_slides.Cell(index - 1, 0)
	    TagsEqual = lst_all_slides.CellTag(index, 0) = lst_all_slides.CellTag(index - 1, 0)
	  End If
	  //--
	  If index = 0 Or _
	    (index > 0 And Not (TagsEqual And NamesEqual)) Then
	    lst_all_slides.CellBorderTop(index, 0) = 4
	    lst_all_slides.CellBorderTop(index, 1) = 4
	    lst_all_slides.CellBorderTop(index, 2) = 4
	  End If
	  
	  If slide.NextSibling = Nil And SmartML.GetValueB(slide.Parent.Parent, "@loop") Then
	    lst_all_slides.Cell(index, 2) = "(" + App.T.Translate("presentation_helper/loop/@caption") + ") " + lst_all_slides.Cell(index, 2)
	  End If
	End Sub
#tag EndMethod

#tag Method, Flags = &h1
	Protected Sub RecalcLstAllSlidesColumnWidths()
	  '
	  ' After a resize event on the screen (i.e., the FullScreen button was pressed),
	  'rework the column widths to keep the Verse column from growing too big.
	  ' EMP 01/31/05
	  '
	  Dim ControlWidth As Integer
	  Dim g As Graphics
	  Dim WidthString As String
	  Dim tempWidth As double
	  dim maxlen As Integer
	  Dim ems as String
	  Dim i As Integer
	  
	  g = cnv_preview.Graphics
	  g.TextSize = lst_all_slides.TextSize
	  g.TextFont = lst_all_slides.TextFont
	  
	  maxlen = 0
	  if lst_all_slides.ListCount < 1 then return
	  for i = 0 to lst_all_slides.ListCount - 1
	    if len(lst_all_slides.cell(i,0)) > len(lst_all_slides.cell(maxlen,0)) then maxlen = i
	  next i
	  tempWidth = g.StringWidth(lst_all_slides.cell(maxlen,0))
	  ControlWidth = ceil((tempwidth / lst_all_slides.Width)*100) + 2 'Fudge Factor
	  ControlWidth = Min(ControlWidth, 20)
	  WidthString = str(ControlWidth) + "%, "
	  tempWidth = g.StringWidth("MMMM")' four-em width should be good
	  ControlWidth = ceil((tempWidth / lst_all_slides.Width)*100)
	  WidthString = WidthString + str(ControlWidth) + " %, *"
	  lst_all_slides.ColumnWidths = WidthString
	End Sub
#tag EndMethod

#tag Method, Flags = &h0
	Sub ScrollTo(index As Integer)
	  lst_all_slides.ListIndex = index - 1
	End Sub
#tag EndMethod

#tag Method, Flags = &h0
	Sub SetMode(mode As String, refresh As Boolean = True)
	  If mode = "B" Then
	    btn_mode_black.SetStuck True
	  Else
	    btn_mode_black.SetStuck False
	  End If
	  
	  If mode = "W" Then
	    btn_mode_white.SetStuck True
	  Else
	    btn_mode_white.SetStuck False
	  End If
	  
	  If mode = "H" Then
	    btn_mode_hidden.SetStuck True
	  Else
	    btn_mode_hidden.SetStuck False
	  End If
	  
	  If mode = "L" Then
	    btn_mode_logo.SetStuck True
	  Else
	    btn_mode_logo.SetStuck False
	  End If
	  
	  If mode = "F" Then
	    btn_mode_frozen.SetStuck True
	  Else
	    btn_mode_frozen.SetStuck False
	  End If
	  
	  If mode = "N" Then
	    btn_mode_normal.SetStuck True
	  Else
	    btn_mode_normal.SetStuck False
	  End If
	  
	  If refresh Then PresentWindow.ResetPaint PresentWindow.XCurrentSlide
	  
	  cnv_preview.Refresh False
	  
	End Sub
#tag EndMethod

#tag Method, Flags = &h0
	Sub SwapFullScreen()
	  If Not FullScreen Then
	    FullScreen = True
	    btn_action_full_screen.SetIcon windownofullscreenpic, windownofullscreenmask
	    btn_action_full_screen.SetLabel App.T.Translate("presentation_helper/actions/normal_screen/@caption")
	  Else
	    FullScreen = False
	    btn_action_full_screen.SetIcon windowfullscreenpic, windowfullscreenmask
	    btn_action_full_screen.SetLabel App.T.Translate("presentation_helper/actions/full_screen/@caption")
	  End If
	End Sub
#tag EndMethod


#tag Property, Flags = &h1
	Protected InitialColumnWidths As String
#tag EndProperty


#tag EndWindowCode

#tag Events lst_all_slides
#tag Event
	Sub Change()
	  If Me.ListIndex >= 0 Then
	    PresentWindow.CurrentSlide = Me.ListIndex + 1
	    PresentWindow.XCurrentSlide = SetML.GetSlide(PresentWindow.CurrentSet, Me.ListIndex + 1)
	    PresentWindow.ResetPaint PresentWindow.XCurrentSlide
	    If Abs(Me.ListIndex - Me.ScrollPosition) < 3 Then
	      Me.ScrollPosition = Me.ListIndex - 3
	    ElseIf Abs(Me.ListIndex - Me.ScrollPosition) > (Me.Height / (Me.TextSize+3)) - 5 Then
	      Me.ScrollPosition = Me.ListIndex - (Me.Height / (Me.TextSize+3)) + 5
	    End If
	    Me.Refresh False
	    cnv_preview.Refresh False
	  End If
	  
	End Sub
#tag EndEvent
#tag Event
	Function HeaderPressed(column as Integer) As Boolean
	  Me.SetFocus //Take focus off the header to allow keystrokes to properly process
	  Return True
	End Function
#tag EndEvent
#tag Event
	Function SortColumn(column As Integer) As Boolean
	  Me.setFocus 'EMP: If we don't do this, focus stays on the header and keystrokes won't go to the command handler
	  Return True
	End Function
#tag EndEvent
#tag EndEvents
#tag Events cnv_preview
#tag Event
	Sub GotFocus()
	  lst_all_slides.SetFocus 'EMP: Don't allow this control to get focus
	End Sub
#tag EndEvent
#tag Event
	Sub Paint(g As Graphics)
	  edt_slide_notes.Text = SmartML.GetValue(PresentWindow.XCurrentSlide.Parent.Parent, "notes", True)
	  If edt_slide_notes.Text = "" Then
	    // Load the text of the slide into the notes field for easy reference.
	    If lst_all_slides.ListIndex > -1 Then
	      edt_slide_notes.Text = lst_all_slides.Cell(lst_all_slides.ListIndex, 2)
	    End If
	  End If
	  g.DrawPicture PresentWindow.PreviewPicture, 0, 0, g.Width, g.Height, 0, 0, PresentWindow.PreviewPicture.Width, PresentWindow.PreviewPicture.Height
	  
	  Dim RealBorder, w, h As Integer
	  RealBorder = 5
	  
	  If btn_mode_black.GetStuck Then
	    g.ForeColor = Rgb(0,0,0)
	    g.fillRect 0, 0, RealBorder, g.Height ' left
	    g.fillRect 0, 0, g.Width, RealBorder ' top
	    g.fillRect g.Width-RealBorder, 0, RealBorder, g.Height ' right
	    g.fillRect 0, g.Height-RealBorder, g.Width, RealBorder ' bottom
	    g.PenHeight = RealBorder
	    g.PenWidth = RealBorder
	    g.DrawLine 0, 0, g.Width, g.Height
	  ElseIf btn_mode_white.GetStuck Then
	    g.ForeColor = Rgb(255,255,255)
	    g.fillRect 0, 0, RealBorder, g.Height ' left
	    g.fillRect 0, 0, g.Width, RealBorder ' top
	    g.fillRect g.Width-RealBorder, 0, RealBorder, g.Height ' right
	    g.fillRect 0, g.Height-RealBorder, g.Width, RealBorder ' bottom
	    g.PenHeight = RealBorder
	    g.PenWidth = RealBorder
	    g.DrawLine 0, 0, g.Width, g.Height
	  ElseIf btn_mode_hidden.GetStuck Then
	    g.ForeColor = Rgb(128, 128, 255)
	    g.fillRect 0, 0, RealBorder, g.Height ' left
	    g.fillRect 0, 0, g.Width, RealBorder ' top
	    g.fillRect g.Width-RealBorder, 0, RealBorder, g.Height ' right
	    g.fillRect 0, g.Height-RealBorder, g.Width, RealBorder ' bottom
	    g.PenHeight = RealBorder
	    g.PenWidth = RealBorder
	    g.DrawLine 0, 0, g.Width, g.Height
	  ElseIf btn_mode_logo.GetStuck Then
	    g.ForeColor = Rgb(128, 255, 128)
	    g.fillRect 0, 0, RealBorder, g.Height ' left
	    g.fillRect 0, 0, g.Width, RealBorder ' top
	    g.fillRect g.Width-RealBorder, 0, RealBorder, g.Height ' right
	    g.fillRect 0, g.Height-RealBorder, g.Width, RealBorder ' bottom
	    g.PenHeight = RealBorder
	    g.PenWidth = RealBorder
	    g.DrawLine 0, 0, g.Width, g.Height
	    If PresentWindow.LogoCache <> Nil Then
	      h = PresentWindow.LogoCache.Height
	      w = PresentWindow.LogoCache.Width
	      While h > g.Height / 2 And w > g.Width / 2
	        h = h * .95
	        w = w * .95
	      Wend
	      g.DrawPicture PresentWindow.LogoCache, g.Width-w, g.Height-h, w, h, _
	      0, 0, PresentWindow.LogoCache.Width, PresentWindow.LogoCache.Height
	    End If
	  ElseIf btn_mode_frozen.GetStuck Then
	    g.ForeColor = Rgb(255, 128, 128)
	    g.fillRect 0, 0, RealBorder, g.Height ' left
	    g.fillRect 0, 0, g.Width, RealBorder ' top
	    g.fillRect g.Width-RealBorder, 0, RealBorder, g.Height ' right
	    g.fillRect 0, g.Height-RealBorder, g.Width, RealBorder ' bottom
	    g.PenHeight = RealBorder
	    g.PenWidth = RealBorder
	    g.DrawLine 0, 0, g.Width, g.Height
	  End If
	  g.ForeColor = DarkBevelColor
	  g.PenHeight = 1
	  g.PenWidth = 1
	  g.DrawRect 0, 0, g.Width, g.Height
	  
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events edt_slide_notes
#tag Event
	Sub GotFocus()
	  lst_all_slides.setFocus 'EMP: Don't allow this control to get focus
	  
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_mode_black
#tag Event
	Sub Action()
	  If PresentWindow.KeyDownX("k") Then
	  End If
	End Sub
#tag EndEvent
#tag Event
	Sub Open()
	  Me.SetIcon blackbackgroundpic, blackbackgroundmask
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_mode_white
#tag Event
	Sub Action()
	  If PresentWindow.KeyDownX("w") Then
	  End If
	End Sub
#tag EndEvent
#tag Event
	Sub Open()
	  Me.SetIcon whitebackgroundpic, whitebackgroundmask
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_mode_hidden
#tag Event
	Sub Action()
	  If PresentWindow.KeyDownX("h") Then
	  End If
	End Sub
#tag EndEvent
#tag Event
	Sub Open()
	  Me.SetIcon backgroundpic, backgroundmask
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_mode_normal
#tag Event
	Sub Action()
	  If PresentWindow.KeyDownX("n") Then
	  End If
	End Sub
#tag EndEvent
#tag Event
	Sub Open()
	  Me.SetIcon textbackgroundpic, textbackgroundmask
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_action_quick_song
#tag Event
	Sub Action()
	  If PresentWindow.KeyDownX("q") Then
	  End If
	End Sub
#tag EndEvent
#tag Event
	Sub Open()
	  Me.SetIcon midipic, midimask
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_action_scripture
#tag Event
	Sub Action()
	  If PresentWindow.KeyDownX("s") Then
	  End If
	End Sub
#tag EndEvent
#tag Event
	Sub Open()
	  Me.SetIcon emptypic, emptymask
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_action_return
#tag Event
	Sub Action()
	  If PresentWindow.KeyDownX(Chr(27)) Then
	  End If
	End Sub
#tag EndEvent
#tag Event
	Sub Open()
	  Me.SetIcon exitpic, exitmask
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_action_alert
#tag Event
	Sub Action()
	  If PresentWindow.KeyDownX("a") Then
	  End If
	End Sub
#tag EndEvent
#tag Event
	Sub Open()
	  Me.SetIcon bellpic, bellmask
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_mode_logo
#tag Event
	Sub Action()
	  If PresentWindow.KeyDownX("l") Then
	  End If
	End Sub
#tag EndEvent
#tag Event
	Sub Open()
	  Me.SetIcon logobackgroundpic, logobackgroundmask
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_action_full_screen
#tag Event
	Sub Action()
	  SwapFullScreen
	End Sub
#tag EndEvent
#tag Event
	Sub Open()
	  Me.SetIcon windowfullscreenpic, windowfullscreenmask
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_mode_frozen
#tag Event
	Sub Action()
	  If PresentWindow.KeyDownX("f") Then
	  End If
	End Sub
#tag EndEvent
#tag Event
	Sub Open()
	  Me.SetIcon pausebackgroundpic, pausebackgroundmask
	End Sub
#tag EndEvent
#tag EndEvents
