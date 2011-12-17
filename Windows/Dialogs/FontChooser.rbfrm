#tag Window
Begin Window FontChooser
   BackColor       =   16777215
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   319
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
   Placement       =   1
   Resizeable      =   False
   Title           =   "Font Selection"
   Visible         =   True
   Width           =   345
   Begin PushButton btn_ok
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
      Left            =   163
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   277
      Underline       =   False
      Visible         =   True
      Width           =   70
   End
   Begin PushButton btn_cancel
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
      Left            =   255
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   277
      Underline       =   False
      Visible         =   True
      Width           =   70
   End
   Begin Label lbl_font_face
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   15
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      Text            =   "Font:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   15
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin SEditField edt_font_face
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
      Height          =   20
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   15
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Mask            =   ""
      Multiline       =   False
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Times New Roman"
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   30
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   150
   End
   Begin ListBox lst_font_faces
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   False
      HeadingIndex    =   -1
      Height          =   113
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   15
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   55
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   150
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Label lbl_font_size
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   175
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      Text            =   "Size:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   15
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin SEditField edt_font_size
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
      Height          =   20
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   175
      LimitText       =   3
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Mask            =   "##9"
      Multiline       =   False
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   12
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   30
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   60
   End
   Begin ListBox lst_font_size
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   False
      HeadingIndex    =   -1
      Height          =   113
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "8\r9\r10\r11\r12\r14\r16\r18\r20\r22\r24\r26\r28\r36\r48\r72"
      Italic          =   False
      Left            =   175
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   55
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   60
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Label lbl_font_color
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   245
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      Text            =   "Color:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   15
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin SColorCanvas can_font_color
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      IsColorSet      =   0
      Left            =   245
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MyColor         =   0
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   30
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin CheckBox chk_font_bold
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Bold"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   245
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   60
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   80
   End
   Begin CheckBox chk_font_italic
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Italic"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   245
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   85
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   80
   End
   Begin CheckBox chk_font_underline
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Underline"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   245
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   110
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   80
   End
   Begin CheckBox chk_font_border
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Border"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   245
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   135
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   80
   End
   Begin SColorCanvas can_font_border
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      IsColorSet      =   0
      Left            =   245
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MyColor         =   0
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   155
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin CheckBox chk_font_shadow
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Shadow"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   245
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   180
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   80
   End
   Begin SColorCanvas can_font_shadow
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      IsColorSet      =   0
      Left            =   245
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MyColor         =   0
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   200
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin CheckBox chk_font_fill
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Fill"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   245
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   225
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   80
   End
   Begin SColorCanvas can_font_fill
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      IsColorSet      =   0
      Left            =   245
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MyColor         =   0
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   245
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin SFontCanvas can_font_preview
      AcceptFocus     =   False
      AcceptMouseDown =   true
      AcceptTabs      =   False
      AdvancedOptions =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   85
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   15
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   180
      UseFocusRing    =   True
      Visible         =   True
      Width           =   220
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
		  MyFont = fromFont.Clone
		  
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

	#tag Property, Flags = &h21
		Private mMyFont As FontFace
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mMyFont
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mMyFont = value
			  
			  Dim c As Color
			  
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
			    can_font_preview.SetFont MyFont
			  End If
			  
			End Set
		#tag EndSetter
		MyFont As FontFace
	#tag EndComputedProperty


#tag EndWindowCode

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
