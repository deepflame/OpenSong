#tag Window
Begin Window StyleTabsWindow
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   1
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   286
   ImplicitInstance=   "True"
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   "False"
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   "True"
   MinHeight       =   64
   MinimizeButton  =   "True"
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   "False"
   Title           =   "Tabulators Editor"
   Visible         =   "True"
   Width           =   615
   Begin GroupBox grp_tabs
      AutoDeactivate  =   "True"
      Bold            =   ""
      Caption         =   "Tabulators"
      ControlOrder    =   0
      Enabled         =   True
      Height          =   217
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   10
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   14
      Underline       =   ""
      Visible         =   True
      Width           =   293
      BehaviorIndex   =   0
      Begin HighlightList lst_tabs
         AutoDeactivate  =   "True"
         AutoHideScrollbars=   "True"
         Bold            =   ""
         ColumnCount     =   3
         ColumnsResizable=   ""
         ColumnWidths    =   "25, 85, 0"
         ControlOrder    =   1
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   ""
         EnableDragReorder=   ""
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   ""
         HeadingIndex    =   -1
         Height          =   146
         HelpTag         =   ""
         Hierarchical    =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_tabs"
         InitialValue    =   ""
         Italic          =   ""
         Left            =   24
         LockBottom      =   ""
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         RequiresSelection=   "False"
         Scope           =   0
         ScrollbarHorizontal=   ""
         ScrollBarVertical=   "True"
         SelectionType   =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   39
         Underline       =   ""
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   110
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
         BehaviorIndex   =   1
      End
      Begin GroupBox grp_tabs_properties
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "Properties"
         ControlOrder    =   2
         Enabled         =   True
         Height          =   146
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_tabs"
         Italic          =   ""
         Left            =   146
         LockBottom      =   ""
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   39
         Underline       =   ""
         Visible         =   True
         Width           =   144
         BehaviorIndex   =   2
         Begin StaticText lbl_position
            AutoDeactivate  =   "True"
            Bold            =   ""
            ControlOrder    =   3
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_tabs_properties"
            Italic          =   ""
            Left            =   154
            LockBottom      =   ""
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Multiline       =   ""
            Scope           =   0
            TabPanelIndex   =   0
            Text            =   "Position"
            TextAlign       =   0
            TextColor       =   &h000000
            TextFont        =   "System"
            TextSize        =   0
            Top             =   55
            Underline       =   ""
            Visible         =   True
            Width           =   51
            BehaviorIndex   =   3
         End
         Begin SEditFieldNumeric edt_position
            AcceptTabs      =   ""
            Alignment       =   3
            AutoDeactivate  =   "True"
            BackColor       =   &hFFFFFF
            Bold            =   ""
            Border          =   "True"
            ControlOrder    =   4
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            EnforceRange    =   "False"
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_tabs_properties"
            Italic          =   ""
            Left            =   209
            LimitText       =   0
            LockBottom      =   ""
            LockLeft        =   ""
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
            ScrollbarVertical=   "True"
            SignalRangeErrors=   0
            Styled          =   ""
            TabPanelIndex   =   0
            Text            =   ""
            TextColor       =   &h000000
            TextFont        =   "System"
            TextSize        =   0
            Top             =   53
            Underline       =   ""
            UseFocusRing    =   "True"
            Visible         =   True
            Width           =   38
            BehaviorIndex   =   4
         End
         Begin UpDownArrows ud_tabs_position
            AcceptFocus     =   "False"
            AutoDeactivate  =   "True"
            ControlOrder    =   5
            Enabled         =   True
            Height          =   23
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_tabs_properties"
            Left            =   247
            LockBottom      =   ""
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            TabPanelIndex   =   0
            Top             =   53
            Visible         =   True
            Width           =   13
            BehaviorIndex   =   5
         End
         Begin StaticText txt_props_pixels
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   6
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_tabs_properties"
            Italic          =   "False"
            Left            =   264
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            Scope           =   0
            TabPanelIndex   =   0
            Text            =   "px"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   53
            Underline       =   "False"
            Visible         =   True
            Width           =   20
            BehaviorIndex   =   6
         End
         Begin StaticText lbl_align
            AutoDeactivate  =   "True"
            Bold            =   ""
            ControlOrder    =   7
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_tabs_properties"
            Italic          =   ""
            Left            =   154
            LockBottom      =   ""
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Multiline       =   ""
            Scope           =   0
            TabPanelIndex   =   0
            Text            =   "Alignment"
            TextAlign       =   0
            TextColor       =   &h000000
            TextFont        =   "System"
            TextSize        =   0
            Top             =   75
            Underline       =   ""
            Visible         =   True
            Width           =   51
            BehaviorIndex   =   7
         End
         Begin RadioButton edt_left
            AutoDeactivate  =   "True"
            Bold            =   ""
            Caption         =   "Left"
            ControlOrder    =   8
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_tabs_properties"
            Italic          =   ""
            Left            =   154
            LockBottom      =   ""
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            TabPanelIndex   =   0
            TextFont        =   "System"
            TextSize        =   0
            Top             =   97
            Underline       =   ""
            Value           =   "False"
            Visible         =   True
            Width           =   85
            BehaviorIndex   =   8
         End
         Begin RadioButton edt_middle
            AutoDeactivate  =   "True"
            Bold            =   ""
            Caption         =   "Middle"
            ControlOrder    =   9
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_tabs_properties"
            Italic          =   ""
            Left            =   154
            LockBottom      =   ""
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            TabPanelIndex   =   0
            TextFont        =   "System"
            TextSize        =   0
            Top             =   117
            Underline       =   ""
            Value           =   ""
            Visible         =   True
            Width           =   85
            BehaviorIndex   =   9
         End
         Begin RadioButton edt_right
            AutoDeactivate  =   "True"
            Bold            =   ""
            Caption         =   "Right"
            ControlOrder    =   10
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_tabs_properties"
            Italic          =   ""
            Left            =   154
            LockBottom      =   ""
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            TabPanelIndex   =   0
            TextFont        =   "System"
            TextSize        =   0
            Top             =   137
            Underline       =   ""
            Value           =   ""
            Visible         =   True
            Width           =   85
            BehaviorIndex   =   10
         End
         Begin RadioButton edt_char
            AutoDeactivate  =   "True"
            Bold            =   ""
            Caption         =   "At character"
            ControlOrder    =   11
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_tabs_properties"
            Italic          =   ""
            Left            =   154
            LockBottom      =   ""
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Scope           =   0
            TabPanelIndex   =   0
            TextFont        =   "System"
            TextSize        =   0
            Top             =   158
            Underline       =   ""
            Value           =   ""
            Visible         =   True
            Width           =   85
            BehaviorIndex   =   11
         End
         Begin SEditField edt_alignchar
            AcceptTabs      =   ""
            Alignment       =   2
            AutoDeactivate  =   "True"
            BackColor       =   &hFFFFFF
            Bold            =   ""
            Border          =   "True"
            ControlOrder    =   12
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_tabs_properties"
            Italic          =   ""
            Left            =   247
            LimitText       =   1
            LockBottom      =   ""
            LockLeft        =   ""
            LockRight       =   ""
            LockTop         =   ""
            Mask            =   ""
            Multiline       =   ""
            Password        =   ""
            ReadOnly        =   ""
            Scope           =   0
            ScrollbarHorizontal=   ""
            ScrollbarVertical=   "True"
            Styled          =   ""
            TabPanelIndex   =   0
            Text            =   ""
            TextColor       =   &h000000
            TextFont        =   "System"
            TextSize        =   0
            Top             =   156
            Underline       =   ""
            UseFocusRing    =   "True"
            Visible         =   True
            Width           =   25
            BehaviorIndex   =   12
         End
      End
      Begin PushButton btn_new
         AutoDeactivate  =   "True"
         Bold            =   ""
         Cancel          =   ""
         Caption         =   "&New"
         ControlOrder    =   13
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_tabs"
         Italic          =   ""
         Left            =   24
         LockBottom      =   ""
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   197
         Underline       =   ""
         Visible         =   True
         Width           =   51
         BehaviorIndex   =   13
      End
      Begin PushButton btn_remove
         AutoDeactivate  =   "True"
         Bold            =   ""
         Cancel          =   ""
         Caption         =   "&Remove"
         ControlOrder    =   14
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_tabs"
         Italic          =   ""
         Left            =   87
         LockBottom      =   ""
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   197
         Underline       =   ""
         Visible         =   True
         Width           =   68
         BehaviorIndex   =   14
      End
      Begin PushButton btn_removeall
         AutoDeactivate  =   "True"
         Bold            =   ""
         Cancel          =   ""
         Caption         =   "Remove &All"
         ControlOrder    =   15
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_tabs"
         Italic          =   ""
         Left            =   197
         LockBottom      =   ""
         LockLeft        =   ""
         LockRight       =   ""
         LockTop         =   ""
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   197
         Underline       =   ""
         Visible         =   True
         Width           =   93
         BehaviorIndex   =   15
      End
   End
   Begin StaticText lbl_style_preview
      AutoDeactivate  =   "True"
      Bold            =   ""
      ControlOrder    =   16
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   315
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      TabPanelIndex   =   0
      Text            =   "Preview:"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      Top             =   4
      Underline       =   ""
      Visible         =   True
      Width           =   102
      BehaviorIndex   =   16
   End
   Begin SBufferedCanvas can_style_preview
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   "True"
      Backdrop        =   ""
      ControlOrder    =   17
      Enabled         =   True
      EraseBackground =   "True"
      Height          =   210
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   315
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   21
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   280
      BehaviorIndex   =   17
   End
   Begin PushButton btn_ok
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "OK"
      ControlOrder    =   18
      Default         =   "True"
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   232
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   243
      Underline       =   "False"
      Visible         =   True
      Width           =   70
      BehaviorIndex   =   18
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Cancel"
      ControlOrder    =   19
      Default         =   "False"
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   312
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   243
      Underline       =   "False"
      Visible         =   True
      Width           =   70
      BehaviorIndex   =   19
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  App.T.TranslateWindow Me, "style_tabs", App.TranslationFonts
		  App.CenterInControlScreen Me
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Edit(style As SlideStyle, slide As XmlNode) As Boolean
		  self.editStyle = style
		  self.previewSlideNode = slide
		  
		  lst_tabs.SortedColumn = 0
		  lst_tabs.ColumnSortDirection(0) = ListBox.SortAscending
		  
		  self.isUpdatingUI = True
		  self.isUpdatingPreview = True
		  LoadValues
		  self.isUpdatingPreview = False
		  self.isUpdatingUI = False
		  UpdatePreview
		  
		  self.ReturnValue = False
		  ShowModalWithin(MainWindow)
		  Return self.ReturnValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdatePreview()
		  Dim i As Integer
		  Dim tab As StyleTabsType
		  
		  if not isUpdatingPreview then
		    isUpdatingPreview = True
		    
		    self.editStyle.BodyTabClear()
		    
		    For i = 0 To lst_tabs.ListCount()-1
		      tab.StringValue(true) = lst_tabs.Cell(i, 2)
		      self.editStyle.BodyTabAdd(tab)
		    Next
		    
		    can_style_preview.Repaint()
		    
		    isUpdatingPreview = False
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadValues()
		  Dim tabsNode As XmlNode
		  Dim tabNode as XmlNode
		  Dim i As Integer
		  Dim tab As StyleTabsType
		  
		  lst_tabs.DeleteAllRows()
		  For i = 0 to self.editStyle.BodyTabCount()-1
		    tab = self.editStyle.BodyTabGet(i)
		    
		    lst_tabs.AddRow cStr(tab.Position)
		    lst_tabs.Cell(lst_tabs.LastIndex, 1) = AlignmentDescription(tab)
		    lst_tabs.Cell(lst_tabs.LastIndex, 2) = tab.StringValue(true)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function AlignmentDescription(tab As StyleTabsType) As String
		  Dim descr As String
		  
		  descr = ""
		  
		  Select Case tab.align
		  Case StyleHAlignEnum.Left
		    descr = App.T.Translate("/style_tabs/properties/left/@caption")
		  Case StyleHAlignEnum.Middle
		    descr = App.T.Translate("/style_tabs/properties/middle/@caption")
		  Case StyleHAlignEnum.Right
		    descr = App.T.Translate("/style_tabs/properties/right/@caption")
		  Case StyleHAlignEnum.Char
		    descr = App.T.Translate("/style_tabs/properties/char/@caption")
		    descr = descr + " " + self.currentTab.alignChar
		  End Select
		  
		  return descr
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private isUpdatingPreview As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ReturnValue As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private currentTab As StyleTabsType
	#tag EndProperty

	#tag Property, Flags = &h21
		Private isUpdatingUI As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private editStyle As SlideStyle
	#tag EndProperty

	#tag Property, Flags = &h21
		Private previewSlideNode As XmlNode
	#tag EndProperty


#tag EndWindowCode

#tag Events lst_tabs
	#tag Event
		Sub Change()
		  self.isUpdatingUI = True
		  
		  If Me.ListIndex > -1 Then
		    grp_tabs_properties.Enabled = True
		    self.currentTab.StringValue(true) = Me.Cell(Me.ListIndex, 2)
		    
		    edt_alignchar.Enabled = False
		    edt_alignchar.Text = ""
		    edt_position.SetValue(self.currentTab.Position)
		    Select Case self.currentTab.align
		    Case StyleHAlignEnum.Left
		      edt_left.Value = True
		    Case StyleHAlignEnum.Middle
		      edt_middle.Value = True
		    Case StyleHAlignEnum.Right
		      edt_right.Value = True
		    Case StyleHAlignEnum.Char
		      edt_alignchar.Enabled = True
		      edt_char.Value = True
		      edt_alignchar.Text = self.currentTab.alignChar
		    End Select
		  Else
		    self.currentTab.Position = 0
		    self.currentTab.align = StyleHAlignEnum.Left
		    self.currentTab.alignChar = ""
		    
		    grp_tabs_properties.Enabled = False
		    edt_position.setString("")
		    edt_alignchar.Text = ""
		  End If
		  
		  self.isUpdatingUI = False
		End Sub
	#tag EndEvent
	#tag Event
		Function CompareRows(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  Dim resultType As Boolean
		  Dim tab1, tab2 As StyleTabsType
		  
		  If column = 0 Then
		    resultType = True
		    tab1.StringValue(true) = Me.Cell(row1, 2)
		    tab2.StringValue(true) = Me.Cell(row2, 2)
		    
		    If tab1.Position > tab2.Position Then
		      result = 1
		    ElseIf tab1.Position < tab2.Position Then
		      result = -1
		    Else
		      result = 0
		    End If
		  Else
		    resultType = False
		  End If
		  
		  return resultType
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events edt_position
	#tag Event
		Sub TextChange()
		  If edt_position.Value < 0 Then edt_position.SetValue(0)
		  
		  If Not self.isUpdatingUI And edt_position.Value <> self.currentTab.Position Then
		    self.currentTab.Position = edt_position.Value
		    
		    lst_tabs.Cell(lst_tabs.ListIndex, 0) = cStr(self.currentTab.Position)
		    lst_tabs.Cell(lst_tabs.ListIndex, 2) = self.currentTab.StringValue(true)
		    
		    UpdatePreview
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ud_tabs_position
	#tag Event
		Sub Up()
		  dim i as Integer
		  
		  i = edt_position.Value
		  if not edt_position.EnforceRange or  i<edt_position.Maximum then
		    i = i + 1
		  end if
		  edt_position.SetValue(i)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Down()
		  dim i as Integer
		  
		  i = edt_position.Value
		  if not edt_position.EnforceRange or  i>edt_position.Minimum then
		    i = i - 1
		  end if
		  edt_position.SetValue(i)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_left
	#tag Event
		Sub Action()
		  If Not self.isUpdatingUI And Me.Active Then
		    edt_alignchar.Enabled = False
		    
		    If self.currentTab.align <> StyleHAlignEnum.Left Then
		      self.currentTab.align = StyleHAlignEnum.Left
		      
		      lst_tabs.Cell(lst_tabs.ListIndex, 1) = AlignmentDescription(self.currentTab)
		      lst_tabs.Cell(lst_tabs.ListIndex, 2) = self.currentTab.StringValue(true)
		      
		      UpdatePreview
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_middle
	#tag Event
		Sub Action()
		  If Not self.isUpdatingUI And Me.Active Then
		    edt_alignchar.Enabled = False
		    
		    If self.currentTab.align <> StyleHAlignEnum.Middle Then
		      self.currentTab.align = StyleHAlignEnum.Middle
		      
		      lst_tabs.Cell(lst_tabs.ListIndex, 1) = AlignmentDescription(self.currentTab)
		      lst_tabs.Cell(lst_tabs.ListIndex, 2) = self.currentTab.StringValue(true)
		      
		      UpdatePreview
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_right
	#tag Event
		Sub Action()
		  If Not self.isUpdatingUI And Me.Active Then
		    edt_alignchar.Enabled = False
		    
		    If self.currentTab.align <> StyleHAlignEnum.Right Then
		      self.currentTab.align = StyleHAlignEnum.Right
		      
		      lst_tabs.Cell(lst_tabs.ListIndex, 1) = AlignmentDescription(self.currentTab)
		      lst_tabs.Cell(lst_tabs.ListIndex, 2) = self.currentTab.StringValue(true)
		      
		      UpdatePreview
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_char
	#tag Event
		Sub Action()
		  If Not self.isUpdatingUI And Me.Active Then
		    edt_alignchar.Enabled = True
		    
		    If self.currentTab.align <> StyleHAlignEnum.Char Then
		      self.currentTab.align = StyleHAlignEnum.Char
		      
		      lst_tabs.Cell(lst_tabs.ListIndex, 1) = AlignmentDescription(self.currentTab)
		      lst_tabs.Cell(lst_tabs.ListIndex, 2) = self.currentTab.StringValue(true)
		      
		      UpdatePreview
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_alignchar
	#tag Event
		Sub TextChange()
		  If Not self.isUpdatingUI And self.currentTab.alignChar <> Me.Text Then
		    self.currentTab.alignChar = Me.Text
		    
		    lst_tabs.Cell(lst_tabs.ListIndex, 1) = AlignmentDescription(self.currentTab)
		    lst_tabs.Cell(lst_tabs.ListIndex, 2) = self.currentTab.StringValue(true)
		    
		    UpdatePreview
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_new
	#tag Event
		Sub Action()
		  Dim tab As StyleTabsType
		  
		  tab.Position = 0
		  tab.align = StyleHAlignEnum.Left
		  tab.alignChar = ""
		  
		  lst_tabs.AddRow cStr(tab.Position)
		  lst_tabs.Cell(lst_tabs.LastIndex, 1) = AlignmentDescription(tab)
		  lst_tabs.Cell(lst_tabs.LastIndex, 2) = tab.StringValue(true)
		  
		  lst_tabs.ListIndex = lst_tabs.LastIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_remove
	#tag Event
		Sub Action()
		  If lst_tabs.ListIndex > -1 Then
		    lst_tabs.RemoveRow lst_tabs.ListIndex
		    
		    UpdatePreview
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_removeall
	#tag Event
		Sub Action()
		  lst_tabs.DeleteAllRows
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_style_preview
	#tag Event
		Sub Paint(g As Graphics)
		  Dim c as Color
		  Dim zoom as Double
		  Dim realBorder as Double
		  Dim Style As SlideStyle
		  Dim i as Integer
		  Dim tab As StyleTabsType
		  Dim margins As StyleMarginType
		  
		  SetML.DrawSlide g, _
		  self.previewSlideNode, _
		  self.editStyle
		  g.ForeColor = DarkBevelColor
		  g.DrawRect 0, 0, g.Width, g.Height
		  
		  zoom = g.Width / 640.0
		  RealBorder = g.Width / 50
		  
		  margins = self.editStyle.BodyMargins()
		  
		  'draw lines indicating the tabstops
		  g.ForeColor = RGB(255, 0, 255) 'Magenta - a color that is not likely to be used in a background...
		  For i = 0 to self.editStyle.BodyTabCount() - 1
		    tab = self.editStyle.BodyTabGet(i)
		    
		    g.DrawLine(((margins.Left + tab.Position) * zoom) + RealBorder, _
		    (margins.Top * zoom) + RealBorder, _
		    ((margins.Left + tab.Position) * Zoom) + RealBorder, _
		    g.Height - (margins.Bottom * zoom) - RealBorder)
		  Next
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_ok
	#tag Event
		Sub Action()
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
