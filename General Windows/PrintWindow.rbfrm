#tag Window
Begin Window PrintWindow
   Placement       =   0
   Width           =   630
   Height          =   410
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   1
   Composite       =   "True"
   HasBackColor    =   "False"
   BackColor       =   0
   Backdrop        =   0
   Title           =   "Print Preview"
   Visible         =   "True"
   FullScreen      =   "False"
   MenuBarVisible  =   "True"
   CloseButton     =   "True"
   Resizeable      =   "True"
   LiveResize      =   "True"
   MaximizeButton  =   "True"
   MinimizeButton  =   "True"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   0
   Begin Canvas cnv_page
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   10
      Top             =   50
      Width           =   200
      Height          =   200
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      BehaviorIndex   =   0
   End
   Begin ScrollBar scr_vertical
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   614
      Top             =   0
      Width           =   16
      Height          =   394
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Minimum         =   0
      Value           =   0
      Maximum         =   100
      LineStep        =   20
      PageStep        =   100
      LiveScroll      =   "False"
      AcceptFocus     =   "true"
      InitialParent   =   ""
      BehaviorIndex   =   1
   End
   Begin ScrollBar scr_horizontal
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   0
      Top             =   394
      Width           =   614
      Height          =   16
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Minimum         =   0
      Value           =   0
      Maximum         =   100
      LineStep        =   1
      PageStep        =   20
      LiveScroll      =   "False"
      AcceptFocus     =   "true"
      InitialParent   =   ""
      BehaviorIndex   =   2
   End
   Begin Canvas nil_header
      Index           =   -2147483648
      ControlOrder    =   3
      Left            =   0
      Top             =   0
      Width           =   614
      Height          =   40
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      BehaviorIndex   =   3
      Begin PushButton btn_page_print
         Index           =   -2147483648
         ControlOrder    =   4
         Left            =   470
         Top             =   8
         Width           =   65
         Height          =   22
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Print..."
         Default         =   "True"
         Cancel          =   "False"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "nil_header"
         BehaviorIndex   =   4
      End
      Begin Separator sep_header
         Index           =   -2147483648
         ControlOrder    =   5
         Left            =   0
         Top             =   36
         Width           =   614
         Height          =   4
         LockLeft        =   "True"
         LockTop         =   "False"
         LockRight       =   "True"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         InitialParent   =   "nil_header"
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         Enabled         =   ""
         BehaviorIndex   =   5
      End
      Begin PushButton btn_page_first
         Index           =   -2147483648
         ControlOrder    =   6
         Left            =   5
         Top             =   8
         Width           =   30
         Height          =   22
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "<<"
         Default         =   "False"
         Cancel          =   "False"
         Enabled         =   "False"
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "nil_header"
         BehaviorIndex   =   6
      End
      Begin PushButton btn_page_previous
         Index           =   -2147483648
         ControlOrder    =   7
         Left            =   40
         Top             =   8
         Width           =   30
         Height          =   22
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "<"
         Default         =   "False"
         Cancel          =   "False"
         Enabled         =   "False"
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "nil_header"
         BehaviorIndex   =   7
      End
      Begin PushButton btn_page_next
         Index           =   -2147483648
         ControlOrder    =   8
         Left            =   145
         Top             =   8
         Width           =   30
         Height          =   22
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   ">"
         Default         =   "False"
         Cancel          =   "False"
         Enabled         =   "False"
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "nil_header"
         BehaviorIndex   =   8
      End
      Begin PushButton btn_page_last
         Index           =   -2147483648
         ControlOrder    =   9
         Left            =   180
         Top             =   8
         Width           =   30
         Height          =   22
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   ">>"
         Default         =   "False"
         Cancel          =   "False"
         Enabled         =   "False"
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "nil_header"
         BehaviorIndex   =   9
      End
      Begin PushButton btn_page_zoom_in
         Index           =   -2147483648
         ControlOrder    =   10
         Left            =   232
         Top             =   8
         Width           =   30
         Height          =   22
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "-"
         Default         =   "False"
         Cancel          =   "False"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "nil_header"
         BehaviorIndex   =   10
      End
      Begin PushButton btn_page_zoom_out
         Index           =   -2147483648
         ControlOrder    =   11
         Left            =   315
         Top             =   8
         Width           =   30
         Height          =   22
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "+"
         Default         =   "False"
         Cancel          =   "False"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "nil_header"
         BehaviorIndex   =   11
      End
      Begin EditField edt_page_zoom
         Index           =   -2147483648
         ControlOrder    =   12
         Left            =   268
         Top             =   8
         Width           =   43
         Height          =   22
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
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Text            =   "100%"
         Mask            =   999
         ReadOnly        =   "False"
         LimitText       =   3
         AcceptTabs      =   "False"
         Alignment       =   3
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "nil_header"
         BehaviorIndex   =   12
      End
      Begin StaticText txt_page_page
         Index           =   -2147483648
         ControlOrder    =   13
         Left            =   75
         Top             =   8
         Width           =   65
         Height          =   22
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Text            =   "888 of 888"
         TextAlign       =   1
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
         InitialParent   =   "nil_header"
         BehaviorIndex   =   13
      End
      Begin PushButton btn_page_print_setup
         Index           =   -2147483648
         ControlOrder    =   14
         Left            =   363
         Top             =   8
         Width           =   100
         Height          =   22
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Print Setup..."
         Default         =   "False"
         Cancel          =   "False"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "nil_header"
         BehaviorIndex   =   14
      End
      Begin PushButton btn_cancel
         Index           =   -2147483648
         ControlOrder    =   15
         Left            =   541
         Top             =   8
         Width           =   65
         Height          =   22
         LockLeft        =   "False"
         LockTop         =   "False"
         LockRight       =   "True"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Cancel"
         Default         =   "False"
         Cancel          =   "False"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Arial"
         TextSize        =   11
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         InitialParent   =   "nil_header"
         BehaviorIndex   =   15
      End
   End
End
#tag EndWindow

#tag WindowCode
#tag Event
	Sub Activate()
	  HSizer.Resize ' linux fix
	  FixScrollBars
	  Catch ex // Don't die if this fires before HSizer exists
	    Return
	End Sub
#tag EndEvent

#tag Event
	Sub Close()
	  App.DebugWriter.Write "PrintWindow.Close: Enter"
	  SetReport Nil
	  PageCount = 0
	  PageObj = Nil
	  CurrentPage = 0
	  HSizer = Nil
	  App.DebugWriter.Write "PrintWindow.Close: Exit"
	End Sub
#tag EndEvent

#tag Event
	Function KeyDown(Key As String) As Boolean
	  
	  If Keyboard.AsyncKeyDown(&h35) Then ' Escape
	    Close
	    Return True
	  End If
	  
	End Function
#tag EndEvent

#tag Event
	Sub Open()
	  Dim ps As PrinterSetup
	  App.DebugWriter.Write "PrintWindow.Open: Enter"
	  Zoom = 1.0
	  
	  ' This is a fix for a Linux resize bug for modal dialogs
	  HSizer = New HalfSizer(Me)
	  HSizer.AddLeft scr_vertical, 1
	  HSizer.AddHeight scr_vertical, 1
	  HSizer.AddTop scr_horizontal, 1
	  HSizer.AddWidth scr_horizontal, 1
	  HSizer.AddWidth nil_header, 1
	  HSizer.AddWidth sep_header, 1
	  HSizer.AddLeft btn_cancel, 1
	  
	  App.T.TranslateWindow Me, "print_preview", App.TranslationFonts
	  'App.MaximizeInControlScreen Me
	  
	  App.DebugWriter.Write "PrintWindow.Open: Exit"
	End Sub
#tag EndEvent


#tag Method, Flags = &h1
	Protected Sub ChangePage(PageNum As Integer)
	  Dim newpg As Group2D
	  Dim i As Integer
	  
	  App.DebugWriter.Write "PrintWindow.ChangePage: Enter, page = " + str(PageNum)
	  If PrintReport = Nil Then Return
	  If PageNum > PageCount Or _
	    PageNum < 1 Then
	    Return ' out of bounds
	  End if
	  
	  CurrentPage = PageNum
	  App.DebugWriter.Write "PrintWindow.ChangePage: Call PrintReport.GetPage"
	  newpg = Group2D(PrintReport.GetPage(PageNum, Zoom))
	  If newpg <> Nil Then
	    App.DebugWriter.Write "PrintWindow.ChangePage: newpg.Count = " + str(newpg.Count) + ", PageObj.Count is " + str(PageObj.Count)
	    '#pragma DisableBackgroundTasks
	    'i = PageObj.Count - 1
	    'While i >= 0
	    'PageObj.Remove i
	    'i = i - 1
	    'Wend
	    'For i = 0 to newpg.Count -1
	    'PageObj.Append newpg.Item(i)
	    'Next
	    '#pragma BackgroundTasks
	    App.DebugWriter.Write "PrintWindow.ChangePage: PageObj.Count is now " + str(PageObj.Count)
	  Else
	    App.DebugWriter.Write "PrintWindow.ChangePage: PrintReport.GetPage returned Nil"
	  End If
	  txt_page_page.Caption = App.T.Translate("print_preview/pages/@caption", Str(currentPage), Str(PrintReport.GetPageCount))
	  'App.DebugWriter.Write "PrintWindow.ChangePage: Call SetupPage"
	  SetupPage
	  'App.DebugWriter.Write "PrintWindow.ChangePage: Call FixScrollBars"
	  FixScrollBars
	  'App.DebugWriter.Write "PrintWindow.ChangePage: Call UpdatePageNavigationControls"
	  UpdatePageNavigationControls
	  'App.DebugWriter.Write "PrintWindow.ChangePage: Call cnv_page.Refresh"
	  cnv_page.Refresh
	  App.DebugWriter.Write "PrintWindow.ChangePage: Exit"
	  Catch CPEx
	    App.DebugWriter.Write "PrintWindow.ChangePage: Caught Exception"
	End Sub
#tag EndMethod

#tag Method, Flags = &h0
	Sub Constructor()
	  // call the Window constructor, or Open events will not fire
	  App.DebugWriter.Write "PrintWindow"
	  Super.Window()
	  PageObj = New Group2D
	End Sub
#tag EndMethod

#tag Method, Flags = &h0
	Sub Destructor()
	  App.DebugWriter.Write "~PrintWindow"
	  PageObj = Nil
	End Sub
#tag EndMethod

#tag Method, Flags = &h1
	Protected Sub FixScrollBars()
	  App.DebugWriter.Write "PrintWindow.FixScrollBars: Enter"
	  scr_vertical.Minimum = 0
	  scr_vertical.Value = 0
	  
	  scr_horizontal.Minimum = 0
	  scr_horizontal.Value = 0
	  
	  If cnv_page.Top + cnv_page.Height + 2 > Me.Height - scr_horizontal.Height Then
	    scr_vertical.Enabled = True
	    scr_vertical.Maximum = cnv_page.Height - (Height - 35 - scr_horizontal.Height - 10)
	    scr_vertical.PageStep = (Height - 35 - scr_horizontal.Height - 10)
	    scr_vertical.LineStep = scr_vertical.PageStep / 20
	  Else
	    scr_vertical.Enabled = False
	    scr_vertical.Maximum = 0
	  End If
	  If cnv_page.Left + cnv_page.Width + 2 > Me.Width - scr_vertical.Width Then
	    scr_horizontal.Enabled = True
	    scr_horizontal.Maximum = cnv_page.Width - (Width - 10 - scr_vertical.Width - 10)
	    scr_horizontal.PageStep = (Width - 10 - scr_vertical.Width - 10)
	    scr_horizontal.LineStep = scr_horizontal.PageStep / 20
	  Else
	    scr_horizontal.Enabled = False
	    scr_horizontal.Maximum = 0
	  End If
	  App.DebugWriter.Write "PrintWindow.FixScrollBars: Exit"
	End Sub
#tag EndMethod

#tag Method, Flags = &h0
	Sub Resized()
	  'Me.Refresh False
	  App.DebugWriter.Write "PrintWindow.Resized: Enter"
	  FixScrollBars
	  App.DebugWriter.Write "PrintWindow.Resized: Exit"
	End Sub
#tag EndMethod

#tag Method, Flags = &h0
	Sub SetReport(Rpt As Report)
	  App.DebugWriter.Write "PrintWindow.SetReport: Enter"
	  PrintReport = Rpt
	  If Rpt <> Nil Then
	    PageCount = Rpt.GetPageCount
	    PrintableWidth = Rpt.PrintableWidth
	    PrintableHeight = Rpt.PrintableHeight
	    If Rpt.ps <> Nil Then
	      PageHeight = Rpt.ps.PageHeight / Rpt.ps.VerticalResolution
	      PageWidth = Rpt.ps.PageWidth / Rpt.ps.HorizontalResolution
	    Else
	      PageHeight = PrintableHeight
	      PageWidth = PrintableWidth
	    End If
	    ChangePage(1)
	  End If
	  App.DebugWriter.Write "PrintWindow.SetReport: Exit"
	End Sub
#tag EndMethod

#tag Method, Flags = &h0
	Sub SetupPage()
	  App.DebugWriter.Write "PrintWindow.SetupPage: Enter"
	  cnv_page.Width = PageWidth * 72 * zoom
	  cnv_page.Height = PageHeight * 72 * zoom
	  'MG: Changed this for handling a text field instead of a label
	  edt_page_zoom.Text = Str(zoom*100) + "%"
	  FixScrollBars
	  App.DebugWriter.Write "PrintWindow.SetupPage: Exit"
	End Sub
#tag EndMethod

#tag Method, Flags = &h1
	Protected Sub UpdatePageNavigationControls()
	  App.DebugWriter.Write "PrintWindow.UpdatePageNavigationControls: Enter"
	  
	  If PrintReport = Nil Then
	    btn_page_first.Enabled = False
	    btn_page_previous.Enabled = False
	    btn_page_next.Enabled = False
	    btn_page_last.Enabled = False
	  End If
	  
	  btn_page_previous.Enabled = CurrentPage > 1
	  btn_page_first.Enabled = CurrentPage > 1
	  
	  btn_page_next.Enabled = CurrentPage < PageCount
	  btn_page_last.Enabled = CurrentPage < PageCount
	  
	  App.DebugWriter.Write "PrintWindow.UpdatePageNavigationControls: Exit"
	End Sub
#tag EndMethod


#tag Property, Flags = &h0
	CurrentPage As Integer
#tag EndProperty

#tag Property, Flags = &h0
	HSizer As HalfSizer
#tag EndProperty

#tag Property, Flags = &h1
	#tag Note
		Total number of pages in the report being previewed
	#tag EndNote
	Protected PageCount As Integer
#tag EndProperty

#tag Property, Flags = &h1
	Protected PageHeight As Double
#tag EndProperty

#tag Property, Flags = &h1
	Protected PageObj As Group2D
#tag EndProperty

#tag Property, Flags = &h1
	Protected PageWidth As Double
#tag EndProperty

#tag Property, Flags = &h1
	Protected PrintableHeight As Double
#tag EndProperty

#tag Property, Flags = &h1
	Protected PrintableWidth As Double
#tag EndProperty

#tag Property, Flags = &h0
	#tag Note
		Report currently being displayed.
		Using superclass to support more report types.
	#tag EndNote
	PrintReport As Report
#tag EndProperty

#tag Property, Flags = &h0
	Zoom As Double
#tag EndProperty


#tag EndWindowCode

#tag Events cnv_page
#tag Event
	Sub Paint(g As Graphics)
	  Dim x, y As Double
	  Dim ps As PrinterSetup
	  Dim pg As Object2D
	  App.DebugWriter.Write "PrintWindow.cnv_page.paint: Enter"
	  ps = App.GetPrinterSetup(False)
	  If ps = Nil Then Return
	  App.DebugWriter.Write "Printwindow.cnv_page.paint: ps is OK"
	  g.ForeColor = &cffffff
	  g.FillRect 0, 0, g.Width, g.Height
	  pg = PrintReport.GetPage(CurrentPage, Zoom)
	  If pg = Nil Then
	    App.DebugWriter.Write "PrintWindow.cnv_page.Paint: pg = Nil"
	    Return
	  End If
	  x = PrintReport.LeftMargin * 72 * Zoom
	  y = PrintReport.TopMargin * 72 * Zoom
	  App.DebugWriter.Write "PrintWindow.cnv_page.paint: calling DrawObject with x, y: " + str(x) + ", " + str(y)
	  g.DrawObject pg, x, y
	  App.DebugWriter.Write "PrintWindow.cnv_page.paint: Exit"
	  Catch DrawException
	    If DrawException IsA OutOfBoundsException Then
	      App.DebugWriter.Write "PrintWindow.cnv_page.paint, OutOfBoundsException"
	    Else
	      App.DebugWriter.Write "PrintWindow.cnv_page.paint, caught unknown exception."
	    End If
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events scr_vertical
#tag Event
	Sub ValueChanged()
	  cnv_page.Top = 35 - scr_vertical.Value
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events scr_horizontal
#tag Event
	Sub ValueChanged()
	  cnv_page.Left = 10 - scr_horizontal.Value
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events nil_header
#tag Event
	Sub Paint(g As Graphics)
	  g.ForeColor = FillColor
	  g.FillRect 0, 0, Width, Height
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_page_print
#tag Event
	Sub Action()
	  If PrintReport = Nil Then Return
	  Call PrintReport.Print
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_page_first
#tag Event
	Sub Action()
	  //++EMP
	  'currentPage = 1
	  'RepaintPage
	  
	  ChangePage(1)
	  //--
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_page_previous
#tag Event
	Sub Action()
	  //++EMP
	  
	  'currentPage = currentPage - 1
	  'RepaintPage
	  If CurrentPage > 1 Then
	    ChangePage(CurrentPage - 1)
	  End If
	  //--
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_page_next
#tag Event
	Sub Action()
	  //++EMP
	  
	  'currentPage = currentPage + 1
	  'RepaintPage
	  If PrintReport = Nil Then Return
	  If currentPage <= PrintReport.GetPageCount Then
	    ChangePage(CurrentPage + 1)
	  End If
	  //--
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_page_last
#tag Event
	Sub Action()
	  If PrintReport = Nil Then Return
	  ChangePage(PrintReport.GetPageCount)
	  //++EMP
	  
	  'If printMode = "LEAD" Then
	  'currentPage = UBound(Songs)
	  'ElseIf printMode = "TOC" Or printMode = "CATTOC" Then
	  'currentPage = Ceil(UBound(Songs) / SongsPerPage)
	  'End If
	  'RepaintPage
	  
	  'If printMode = "LEAD" Then
	  ''currentPage = UBound(Songs)
	  'CurrentPage = UBound(PagesObj) + 1
	  'ChangePage(CurrentPage)
	  'return
	  'ElseIf printMode = "TOC" Or printMode = "CATTOC" Then
	  ''currentPage = Ceil(UBound(Songs) / SongsPerPage)
	  'CurrentPage = UBound(PagesObj) + 1
	  'ChangePage(CurrentPage)
	  'End If
	  ''RepaintPage(CurrentPage)
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_page_zoom_in
#tag Event
	Sub Action()
	  App.DebugWriter.Write "PrintWindow.btn_page_zoom_in: Enter"
	  zoom = zoom - .2
	  If zoom < .2 Then zoom = .2
	  App.DebugWriter.Write "PrintWindow.btn_page_zoom_in: zoom is " + str(Zoom)
	  'MG: Changed this for handling a text field instead of a label
	  edt_page_zoom.Text = Str(zoom*100) + "%"
	  ChangePage(CurrentPage)
	  App.DebugWriter.Write "PrintWindow.btn_page_zoom_in: back from ChangePage"
	  App.DebugWriter.Write "PrintWindow.btn_page_zoom_in: Exit"
	  Catch ExZoomIn
	    App.DebugWriter.Write "PrintWindow.btn_page_zoom_in: Caught exception"
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_page_zoom_out
#tag Event
	Sub Action()
	  App.DebugWriter.Write "PrintWindow.btn_page_zoom_out: Enter"
	  zoom = zoom + .2
	  edt_page_zoom.Text = Str(zoom*100) + "%"
	  App.DebugWriter.Write "PrintWindow.btn_page_zoom_out: Call ChangePage(" + str(CurrentPage) + ")"
	  ChangePage(CurrentPage)
	  'cnv_page.Refresh False 'EMP
	  App.DebugWriter.Write "PrintWindow.btn_page_zoom_out: Exit"
	  Catch ExZoomOut
	    App.DebugWriter.Write "PrintWindow.btn_page_zoom_out: Caught exception"
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events edt_page_zoom
#tag Event
	Function KeyDown(Key As String) As Boolean
	  Dim txt As String = Chr(10) + Chr(13) + Chr(9)
	  If InStr(txt, Key) > 0 Then
	    zoom  = CDbl(Me.Text) / 100
	    SetupPage
	    cnv_page.Refresh False
	  End If
	End Function
#tag EndEvent
#tag Event
	Sub LostFocus()
	  zoom  = CDbl(Me.Text) / 100
	  SetupPage
	  cnv_page.Refresh False
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_page_print_setup
#tag Event
	Sub Action()
	  PrintSettingsWindow.ShowModalWithin PrintWindow
	  SetupPage
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
