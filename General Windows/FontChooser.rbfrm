#tag Window
Begin Window FontChooser
   Placement       =   1
   Width           =   320
   Height          =   285
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   1
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Font Selection"
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
   Begin StaticText lbl_font_face
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   15
      Top             =   15
      Width           =   100
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Text            =   "Font:"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   0
   End
   Begin EditField edt_font_face
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   15
      Top             =   30
      Width           =   150
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
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
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Text            =   "Times New Roman"
      Mask            =   ""
      ReadOnly        =   "False"
      LimitText       =   0
      AcceptTabs      =   "False"
      Alignment       =   0
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   1
   End
   Begin ListBox lst_font_faces
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   15
      Top             =   55
      Width           =   150
      Height          =   100
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      ColumnCount     =   1
      ColumnWidths    =   ""
      HasHeading      =   "False"
      UseFocusRing    =   "True"
      InitialValue    =   ""
      HeadingIndex    =   -1
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      DefaultRowHeight=   -1
      _ScrollWidth    =   -1
      _ScrollOffset   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Hierarchical    =   "False"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      RequiresSelection=   ""
      SelectionType   =   0
      ColumnsResizable=   "False"
      AutoHideScrollbars=   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   2
   End
   Begin StaticText lbl_font_size
      Index           =   -2147483648
      ControlOrder    =   3
      Left            =   175
      Top             =   15
      Width           =   60
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Text            =   "Size:"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   3
   End
   Begin EditField edt_font_size
      Index           =   -2147483648
      ControlOrder    =   4
      Left            =   175
      Top             =   30
      Width           =   60
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
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
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Text            =   12
      Mask            =   "##9"
      ReadOnly        =   "False"
      LimitText       =   3
      AcceptTabs      =   "False"
      Alignment       =   0
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   4
   End
   Begin ListBox lst_font_size
      Index           =   -2147483648
      ControlOrder    =   5
      Left            =   175
      Top             =   55
      Width           =   60
      Height          =   100
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      ColumnCount     =   1
      ColumnWidths    =   ""
      HasHeading      =   "False"
      UseFocusRing    =   "True"
      InitialValue    =   "8\r9\r10\r11\r12\r14\r16\r18\r20\r22\r24\r26\r28\r36\r48\r72"
      HeadingIndex    =   -1
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      DefaultRowHeight=   -1
      _ScrollWidth    =   -1
      _ScrollOffset   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Hierarchical    =   "False"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      RequiresSelection=   ""
      SelectionType   =   0
      ColumnsResizable=   "False"
      AutoHideScrollbars=   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   5
   End
   Begin CheckBox chk_font_bold
      Index           =   -2147483648
      ControlOrder    =   6
      Left            =   245
      Top             =   60
      Width           =   80
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Bold"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   6
   End
   Begin CheckBox chk_font_italic
      Index           =   -2147483648
      ControlOrder    =   7
      Left            =   245
      Top             =   85
      Width           =   80
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Italic"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   7
   End
   Begin CheckBox chk_font_underline
      Index           =   -2147483648
      ControlOrder    =   8
      Left            =   245
      Top             =   110
      Width           =   80
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Underline"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   8
   End
   Begin PushButton btn_ok
      Index           =   -2147483648
      ControlOrder    =   9
      Left            =   50
      Top             =   255
      Width           =   70
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
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   9
   End
   Begin PushButton btn_cancel
      Index           =   -2147483648
      ControlOrder    =   10
      Left            =   130
      Top             =   255
      Width           =   70
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
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   10
   End
   Begin SColorCanvas can_font_color
      Index           =   -2147483648
      ControlOrder    =   11
      Left            =   245
      Top             =   30
      Width           =   60
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   "True"
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      IsColorSet      =   0
      MyColor         =   &h000000
      BehaviorIndex   =   11
   End
   Begin StaticText lbl_font_color
      Index           =   -2147483648
      ControlOrder    =   12
      Left            =   245
      Top             =   15
      Width           =   60
      Height          =   15
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Text            =   "Color:"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   12
   End
   Begin SFontCanvas can_font_preview
      ControlOrder    =   13
      Width           =   220
      Height          =   80
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   "False"
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      Index           =   -2147483648
      Left            =   15
      Top             =   165
      AdvancedOptions =   "False"
      BehaviorIndex   =   13
   End
   Begin CheckBox chk_font_border
      Index           =   -2147483648
      ControlOrder    =   14
      Left            =   245
      Top             =   135
      Width           =   80
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Border"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   14
   End
   Begin SColorCanvas can_font_border
      Index           =   -2147483648
      ControlOrder    =   15
      Left            =   245
      Top             =   155
      Width           =   60
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   "True"
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      IsColorSet      =   0
      MyColor         =   &h000000
      BehaviorIndex   =   15
   End
   Begin CheckBox chk_font_shadow
      Index           =   -2147483648
      ControlOrder    =   16
      Left            =   245
      Top             =   180
      Width           =   80
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Shadow"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   16
   End
   Begin SColorCanvas can_font_shadow
      Index           =   -2147483648
      ControlOrder    =   17
      Left            =   245
      Top             =   200
      Width           =   60
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   "True"
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      IsColorSet      =   0
      MyColor         =   &h000000
      BehaviorIndex   =   17
   End
   Begin CheckBox chk_font_fill
      Index           =   -2147483648
      ControlOrder    =   18
      Left            =   245
      Top             =   225
      Width           =   80
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Fill"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   18
   End
   Begin SColorCanvas can_font_fill
      Index           =   -2147483648
      ControlOrder    =   19
      Left            =   245
      Top             =   245
      Width           =   60
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   "True"
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      IsColorSet      =   0
      MyColor         =   &h000000
      BehaviorIndex   =   19
   End
End
#tag EndWindow

#tag WindowCode
#tag Event
	Sub Open()
	  BorderFraction = 15
	  
	  App.T.TranslateWindow Me, "font_selection", App.TranslationFonts
	  App.CenterInControlScreen Me
	End Sub
#tag EndEvent


#tag Method, Flags = &h0
	Function Ask(fromFont As FontFace, advancedOptions As Boolean = True) As FontFace
	  Dim c As Color
	  MyFont = fromFont.Clone
	  
	  If MyFont <> Nil Then
	    edt_font_face.Text = MyFont.Name
	    edt_font_size.Text = Str(MyFont.Size)
	    chk_font_bold.Value = MyFont.Bold
	    chk_font_italic.Value = MyFont.Italic
	    chk_font_underline.Value = MyFont.Underline
	    c = MyFont.ForeColor
	    can_font_color.SetColor c
	    c = MyFont.BorderColor
	    can_font_border.SetColor c
	    c = MyFont.ShadowColor
	    can_font_shadow.SetColor c
	    c = MyFont.FillColor
	    can_font_fill.SetColor c
	    chk_font_border.Value = MyFont.Border
	    chk_font_shadow.Value = MyFont.Shadow
	    chk_font_fill.Value = MyFont.Fill
	  End If
	  
	  Dim x As Integer
	  For x = 1 To UBound(App.FontList)
	    lst_font_faces.AddRow App.FontList(x)
	  Next x
	  
	  If Not advancedOptions Then
	    chk_font_border.Visible = False
	    can_font_border.Visible = False
	    chk_font_shadow.Visible = False
	    can_font_shadow.Visible = False
	    chk_font_fill.Visible = False
	    can_font_fill.Visible = False
	  End If
	  
	  ShowModalWithin(MainWindow)
	  
	  Return MyFont
	  
	End Function
#tag EndMethod


#tag Property, Flags = &h1
	Protected BorderFraction As Integer
#tag EndProperty

#tag Property, Flags = &h1
	Protected MyFont As FontFace
#tag EndProperty


#tag EndWindowCode

#tag Events edt_font_face
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_font_face.Text  = c.Text
	      return true
	    end if
	    
	  end if
	  c.close
	End Function
#tag EndEvent
#tag Event
	Sub TextChange()
	  MyFont.Name = Me.Text
	  can_font_preview.SetFont MyFont
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events lst_font_faces
#tag Event
	Sub Change()
	  edt_font_face.Text = Me.Text
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events edt_font_size
#tag Event
	Function KeyDown(Key As String) As Boolean
	  dim c As New Clipboard
	  
	  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
	    
	    if c.TextAvailable then
	      edt_font_size.Text  = c.Text
	      return true
	    end if
	    
	  end if
	  c.close
	End Function
#tag EndEvent
#tag Event
	Sub TextChange()
	  MyFont.Size = Val(Me.Text)
	  can_font_preview.SetFont MyFont
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events lst_font_size
#tag Event
	Sub Change()
	  edt_font_size.Text = lst_font_size.Text
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events chk_font_bold
#tag Event
	Sub Action()
	  MyFont.Bold = Me.Value
	  can_font_preview.SetFont MyFont
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events chk_font_italic
#tag Event
	Sub Action()
	  MyFont.Italic = Me.Value
	  can_font_preview.SetFont MyFont
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events chk_font_underline
#tag Event
	Sub Action()
	  MyFont.Underline = Me.Value
	  can_font_preview.SetFont MyFont
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_ok
#tag Event
	Sub Action()
	  Close
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_cancel
#tag Event
	Sub Action()
	  MyFont = Nil
	  Close
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events can_font_color
#tag Event
	Sub Action()
	  Dim c As Color
	  If can_font_color.GetColor(c) Then
	    MyFont.ForeColor = c
	  Else
	    MyFont.ForeColor = RGB(0,0,0)
	  End If
	  
	  can_font_preview.SetFont MyFont
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events chk_font_border
#tag Event
	Sub Action()
	  MyFont.Border = Me.Value
	  If Me.Value Then
	    can_font_border.Enabled = True
	    can_font_border.SetColor MyFont.BorderColor
	  Else
	    can_font_border.Enabled = False
	    can_font_border.ClearColor
	  End If
	  can_font_preview.SetFont MyFont
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events can_font_border
#tag Event
	Sub Action()
	  Dim c As Color
	  If Me.GetColor(c) Then
	    MyFont.BorderColor = c
	  Else
	    MyFont.BorderColor = RGB(0,0,0)
	  End If
	  
	  can_font_preview.SetFont MyFont
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events chk_font_shadow
#tag Event
	Sub Action()
	  MyFont.Shadow = Me.Value
	  If Me.Value Then
	    can_font_shadow.Enabled = True
	    can_font_shadow.SetColor MyFont.ShadowColor
	  Else
	    can_font_shadow.Enabled = False
	    can_font_shadow.ClearColor
	  End If
	  can_font_preview.SetFont MyFont
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events can_font_shadow
#tag Event
	Sub Action()
	  Dim c As Color
	  If can_font_shadow.GetColor(c) Then
	    MyFont.ShadowColor = c
	  Else
	    MyFont.ShadowColor = RGB(0,0,0)
	  End If
	  
	  can_font_preview.SetFont MyFont
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events chk_font_fill
#tag Event
	Sub Action()
	  MyFont.Fill = Me.Value
	  If Me.Value Then
	    can_font_fill.Enabled = True
	    can_font_fill.SetColor MyFont.FillColor
	  Else
	    can_font_fill.Enabled = False
	    can_font_fill.ClearColor
	  End If
	  can_font_preview.SetFont MyFont
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events can_font_fill
#tag Event
	Sub Action()
	  Dim c As Color
	  If can_font_fill.GetColor(c) Then
	    MyFont.FillColor = c
	  Else
	    MyFont.FillColor = RGB(255,255,255)
	  End If
	  
	  can_font_preview.SetFont MyFont
	End Sub
#tag EndEvent
#tag EndEvents
