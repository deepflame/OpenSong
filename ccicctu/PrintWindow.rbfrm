#tag Window
Begin Window PrintWindow
   BackColor       =   0
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   422
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   300
   MinimizeButton  =   True
   MinWidth        =   650
   Placement       =   0
   Resizeable      =   True
   Title           =   "Print Preview"
   Visible         =   True
   Width           =   663
   Begin PagePanel nil_panel
      AutoDeactivate  =   True
      BehaviorIndex   =   0
      ControlOrder    =   0
      Enabled         =   True
      Height          =   363
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   2
      Panels          =   ""
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   43
      Value           =   0
      Visible         =   True
      Width           =   647
      Begin Canvas cnv_page
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         BehaviorIndex   =   1
         ControlOrder    =   1
         Enabled         =   True
         EraseBackground =   True
         Height          =   200
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "nil_panel"
         Left            =   10
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   50
         UseFocusRing    =   True
         Visible         =   True
         Width           =   200
      End
   End
   Begin ScrollBar scr_vertical
      AcceptFocus     =   true
      AutoDeactivate  =   True
      BehaviorIndex   =   2
      ControlOrder    =   2
      Enabled         =   True
      Height          =   406
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Left            =   647
      LineStep        =   20
      LiveScroll      =   True
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Maximum         =   100
      Minimum         =   0
      PageStep        =   100
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Value           =   0
      Visible         =   True
      Width           =   16
   End
   Begin ScrollBar scr_horizontal
      AcceptFocus     =   true
      AutoDeactivate  =   True
      BehaviorIndex   =   3
      ControlOrder    =   3
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Left            =   0
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Maximum         =   100
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   406
      Value           =   0
      Visible         =   True
      Width           =   647
   End
   Begin PagePanel nil_header
      AutoDeactivate  =   True
      BehaviorIndex   =   4
      ControlOrder    =   4
      Enabled         =   True
      Height          =   40
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   1
      Panels          =   ""
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Value           =   0
      Visible         =   True
      Width           =   647
      Begin PushButton btn_page_print
         AutoDeactivate  =   True
         BehaviorIndex   =   5
         Bold            =   False
         Cancel          =   False
         Caption         =   "Print..."
         ControlOrder    =   5
         Default         =   True
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "nil_header"
         Italic          =   False
         Left            =   497
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   9
         Underline       =   False
         Visible         =   True
         Width           =   65
      End
      Begin PushButton btn_cancel
         AutoDeactivate  =   True
         BehaviorIndex   =   6
         Bold            =   False
         Cancel          =   True
         Caption         =   "Cancel"
         ControlOrder    =   6
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "nil_header"
         Italic          =   False
         Left            =   574
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   9
         Underline       =   False
         Visible         =   True
         Width           =   65
      End
      Begin PushButton btn_page_first
         AutoDeactivate  =   True
         BehaviorIndex   =   7
         Bold            =   False
         Cancel          =   False
         Caption         =   "<<"
         ControlOrder    =   7
         Default         =   False
         Enabled         =   False
         Height          =   22
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "nil_header"
         Italic          =   False
         Left            =   10
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   9
         Underline       =   False
         Visible         =   True
         Width           =   34
      End
      Begin PushButton btn_page_previous
         AutoDeactivate  =   True
         BehaviorIndex   =   8
         Bold            =   False
         Cancel          =   False
         Caption         =   "<"
         ControlOrder    =   8
         Default         =   False
         Enabled         =   False
         Height          =   22
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "nil_header"
         Italic          =   False
         Left            =   52
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   9
         Underline       =   False
         Visible         =   True
         Width           =   30
      End
      Begin StaticText txt_page_page
         AutoDeactivate  =   True
         BehaviorIndex   =   9
         Bold            =   False
         ControlOrder    =   9
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "nil_header"
         Italic          =   False
         Left            =   86
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "888 of 888"
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   9
         Underline       =   False
         Visible         =   True
         Width           =   65
      End
      Begin PushButton btn_page_next
         AutoDeactivate  =   True
         BehaviorIndex   =   10
         Bold            =   False
         Cancel          =   False
         Caption         =   ">"
         ControlOrder    =   10
         Default         =   False
         Enabled         =   False
         Height          =   22
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "nil_header"
         Italic          =   False
         Left            =   155
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   9
         Underline       =   False
         Visible         =   True
         Width           =   30
      End
      Begin PushButton btn_page_last
         AutoDeactivate  =   True
         BehaviorIndex   =   11
         Bold            =   False
         Cancel          =   False
         Caption         =   ">>"
         ControlOrder    =   11
         Default         =   False
         Enabled         =   False
         Height          =   22
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "nil_header"
         Italic          =   False
         Left            =   193
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   9
         Underline       =   False
         Visible         =   True
         Width           =   34
      End
      Begin PushButton btn_page_zoom_in
         AutoDeactivate  =   True
         BehaviorIndex   =   12
         Bold            =   False
         Cancel          =   False
         Caption         =   "-"
         ControlOrder    =   12
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "nil_header"
         Italic          =   False
         Left            =   239
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   9
         Underline       =   False
         Visible         =   True
         Width           =   30
      End
      Begin TextField edt_page_zoom
         AcceptTabs      =   False
         Alignment       =   3
         AutoDeactivate  =   True
         BackColor       =   16777215
         BehaviorIndex   =   13
         Bold            =   False
         Border          =   True
         ControlOrder    =   13
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "nil_header"
         Italic          =   False
         Left            =   273
         LimitText       =   3
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   999
         Multiline       =   False
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   False
         TabIndex        =   8
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "100%"
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   9
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   43
      End
      Begin PushButton btn_page_zoom_out
         AutoDeactivate  =   True
         BehaviorIndex   =   14
         Bold            =   False
         Cancel          =   False
         Caption         =   "+"
         ControlOrder    =   14
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "nil_header"
         Italic          =   False
         Left            =   324
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   9
         Underline       =   False
         Visible         =   True
         Width           =   30
      End
      Begin PushButton btn_page_print_setup
         AutoDeactivate  =   True
         BehaviorIndex   =   15
         Bold            =   False
         Cancel          =   False
         Caption         =   "Print Setup..."
         ControlOrder    =   15
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "nil_header"
         Italic          =   False
         Left            =   362
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   10
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11
         Top             =   9
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  HSizer.Resize ' linux fix
		  If initialActivation Then // This is the first time the window is activated, size appropriately
		    Self.Width = Min(Self.Width, (cnv_page.Left * 2) + cnv_page.Width + scr_vertical.Width)
		    Self.Height = Min(Self.Height, cnv_page.Top + (cnv_page.Top - nil_header.Height) + cnv_page.Height + scr_horizontal.Height)
		    initialActivation = False
		  End If
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
		  HSizer.AddLeft btn_cancel, 1
		  
		  App.T.TranslateWindow Me, "print_preview", App.TranslationFonts
		  
		  App.DebugWriter.Write "PrintWindow.Open: Exit"
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  FixScrollBars
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  nil_panel.Refresh
		  FixScrollBars
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub ChangePage(PageNum As Integer)
		  Dim newpg As Group2D
		  
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
		    App.DebugWriter.Write "PrintWindow.ChangePage: PageObj.Count is now " + str(PageObj.Count)
		  Else
		    App.DebugWriter.Write "PrintWindow.ChangePage: PrintReport.GetPage returned Nil"
		  End If
		  txt_page_page.Caption = App.T.Translate("print_preview/pages/@caption", Str(currentPage), Str(PrintReport.GetPageCount))
		  SetupPage
		  FixScrollBars
		  UpdatePageNavigationControls
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
		  App.DebugWriter.Write "PrintWindow.FixScrollBars: Enter", 9
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
		  If (cnv_page.Left + cnv_page.Width + 2) > (Self.Width - scr_vertical.Width) Then
		    scr_horizontal.Enabled = True
		    scr_horizontal.Maximum = cnv_page.Width - (Width - 10 - scr_vertical.Width - 10)
		    scr_horizontal.PageStep = (Width - 10 - scr_vertical.Width - 10)
		    scr_horizontal.LineStep = scr_horizontal.PageStep / 20
		  Else
		    scr_horizontal.Enabled = False
		    scr_horizontal.Maximum = 0
		  End If
		  App.DebugWriter.Write "PrintWindow.FixScrollBars: Exit", 9
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ScrollPreview(X As Integer, Y As Integer, deltaX As Integer, deltaY As Integer)
		  //++
		  // Handle the scroll wheel events
		  //--
		  
		  Dim newX As Integer
		  Dim newY As Integer
		  Dim changed As Boolean = False
		  
		  If deltaX <> 0 Then
		    newX = scr_horizontal.Value + (deltaX * scr_horizontal.LineStep)
		    newX = Min(newX, scr_horizontal.Maximum)
		    newX = Max(newX, scr_horizontal.Minimum)
		    scr_horizontal.Value = newX
		    changed = True
		  End If
		  
		  If deltaY <> 0 Then
		    newY = scr_vertical.Value + (deltaY * scr_vertical.LineStep)
		    newY = Min(newY, scr_vertical.Maximum)
		    newY = Max(newY, scr_vertical.Minimum)
		    scr_vertical.Value = newY
		    changed = True
		  End If
		  
		  If changed Then
		    nil_panel.Invalidate
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetReport(Rpt As ReportClass)
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
		  App.DebugWriter.Write "PrintWindow.SetupPage: Enter", 9
		  cnv_page.Width = PageWidth * 72 * zoom
		  cnv_page.Height = PageHeight * 72 * zoom
		  'MG: Changed this for handling a text field instead of a label
		  edt_page_zoom.Text = Str(zoom*100) + "%"
		  FixScrollBars
		  App.DebugWriter.Write "PrintWindow.SetupPage: Exit", 9
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
		Protected initialActivation As Boolean = True
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
		PrintReport As ReportClass
	#tag EndProperty

	#tag Property, Flags = &h0
		Zoom As Double
	#tag EndProperty


#tag EndWindowCode

#tag Events nil_panel
	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  ScrollPreview(X, Y, deltaX, deltaY)
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
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
		  y = PrintReport.TopMargin * 72 * Zoom -  (scr_vertical.Value)// - Me.Top)
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
		  cnv_page.Refresh
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
#tag Events btn_page_print
	#tag Event
		Sub Action()
		  If PrintReport = Nil Then Return
		  Self.Hide
		  If PrintReport.Print Then Close
		  Self.Show
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
#tag Events edt_page_zoom
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Dim i As Integer
		  Dim zoomtext As String
		  Dim newzoom As Double
		  Dim txt As String = Chr(10) + Chr(13) + Chr(9)
		  If InStr(txt, Key) > 0 Then
		    // Check to see if the user typed in the % or something else
		    For i = 1 to Len(Me.Text)
		      If StringUtils.isdigit(Asc(Mid(Me.Text, i, 1))) Then _
		      zoomtext = zoomtext + Mid(Me.Text, i, 1)
		    Next i
		    Try
		      Newzoom  = CDbl(zoomtext) / 100
		    Catch e As typeMismatchException
		      newzoom = Zoom // Set it back to where it was
		    End Try
		    Zoom = newzoom
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
#tag Events btn_page_print_setup
	#tag Event
		Sub Action()
		  PrintSettingsWindow.ShowModalWithin PrintWindow
		  //++
		  // September 2006, EMP
		  //
		  // Regenerate the report with the new settings.
		  // Future TODO: Don't automatically regenerate.
		  //--
		  If PrintReport.Generate Then
		    SetReport(PrintReport)
		  End If
		  
		  SetupPage
		End Sub
	#tag EndEvent
#tag EndEvents
