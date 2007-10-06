#tag Class
Protected Class Report
	#tag Method, Flags = &h0
		Function CalcPrintableHeight() As Double
		  //
		  // Calculate the printable height of the page
		  // based upon the information in the PrintSettings XML document
		  //
		  // Margins are the maximum of what is in the PrinterSetup object returned
		  // by the operating system and the value stored in the PrintSettings XML.
		  //
		  // Height is the MINIMUM of the two values.
		  //
		  // Ed Palmer 5 Feb 2006
		  //
		  // Update September 2006:
		  //
		  // MyPrintSettings can be in points or inches depending on the version of the
		  // PrintSettings XML file.  Take this into account so all calculations here are done in inches.
		  // (This isn't being US-centric, it's just that RB makes calculating in inches easier)
		  //--
		  
		  Dim TMargin, BMargin As Double
		  Dim psHeight, xmlHeight As Double
		  Dim psTMargin, psBMargin As Double
		  
		  TMargin = SmartML.GetValueN(App.MyPrintSettings.DocumentElement, "page/@top")
		  BMargin = SmartML.GetValueN(App.MyPrintSettings.DocumentElement, "page/@bottom")
		  xmlHeight = SmartML.GetValueN(App.MyPrintSettings.DocumentElement, "page/@height")
		  
		  If SmartML.GetValueB(App.MyPrintSettings.DocumentElement, "page/@points") Then
		    TMargin = PointsToInches(TMargin)
		    BMargin = PointsToInches(BMargin)
		    xmlHeight = PointsToInches(xmlHeight)
		  End If
		  
		  If ps <> Nil Then
		    psHeight = ps.PageHeight / ps.VerticalResolution
		    psTMargin = -(ps.PageTop / ps.VerticalResolution)
		    psBMargin = (ps.PageHeight + ps.PageTop - ps.Height) / ps.VerticalResolution
		  Else
		    psHeight = Pow(10, 6) // Insanely large number to insure it's not the Min
		    psTMargin = 0
		    psBMargin = 0
		  End If
		  TopMargin = Max(TMargin, psTMargin)
		  
		  Return Min(xmlHeight, psHeight) - TopMargin - max(BMargin, psBMargin)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CalcPrintableWidth() As Double
		  //
		  // Calculate the printable width of the page
		  // based upon the information in the PrintSettings XML document
		  //
		  // Margins are the maximum of what is in the PrinterSetup object returned
		  // by the operating system and the value stored in the PrintSettings XML.
		  //
		  // Width is the MINIMUM of the two values.
		  //
		  // Ed Palmer 5 Feb 2006
		  //
		  Dim LMargin, RMargin As Double
		  Dim psWidth, xmlWidth As Double
		  Dim psLMargin, psRMargin As Double
		  
		  LMargin = SmartML.GetValueN(App.MyPrintSettings.DocumentElement, "page/@left")
		  RMargin = SmartML.GetValueN(App.MyPrintSettings.DocumentElement, "page/@right")
		  xmlWidth = SmartML.GetValueN(App.MyPrintSettings.DocumentElement, "page/@width")
		  
		  If SmartML.GetValueB(App.MyPrintSettings.DocumentElement, "page/@points") Then
		    LMargin = PointsToInches(LMargin)
		    RMargin = PointsToInches(RMargin)
		    xmlWidth = PointsToInches(xmlWidth)
		  End If
		  
		  If ps <> Nil Then
		    psWidth = ps.PageWidth / ps.HorizontalResolution
		    psLMargin = -(ps.PageLeft / ps.HorizontalResolution)
		    psRMargin = (ps.PageWidth + ps.PageLeft - ps.Width) / ps.HorizontalResolution
		  Else
		    psWidth = Pow(10, 6) // Just a ridiculously big number so it'll never be the Min
		    psLMargin = 0
		    psRMargin = 0
		  End If
		  
		  LeftMargin = Max(psLMargin, LMargin)
		  
		  Return Min(xmlWidth, psWidth) - LeftMargin - Max(RMargin, psRMargin)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  //
		  // Let's set some reasonable (U.S.) defaults "just in case"
		  //
		  TopMargin = 0.5
		  LeftMargin = 0.5
		  PrintableHeight = 10.0
		  PrintableWidth = 7.5
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Generate(Zoom As Double = 1.0, MyPages As Group2D = Nil) As Boolean
		  //
		  // Implement this in the subclass
		  //
		  App.DebugWriter.Write "Report.Generate: Enter/Exit"
		  InputBox.Message "Entered function Report.Generate:" + EndOfLine +_
		  "This should be implemented in the subclass."
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPage(PageNumber As Integer, Zoom As Double = 1.0) As Object2D
		  //
		  // The source for this method should be in the subclass
		  //
		  App.DebugWriter.Write "Report.GetPage: Enter/Exit"
		  InputBox.Message "Entered function Report.GetPage:" + EndOfLine +_
		  "This should be implemented in the subclass."
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPageCount() As Integer
		  //
		  // Returns the number of pages in the report.
		  //
		  // If, for some reason, Pages is Nil, zero will be returned
		  //
		  // Ed Palmer, January 2006
		  //
		  If Pages <> Nil Then
		    App.DebugWriter.Write "Report.GetPageCount: Enter/Exit, count = " + str(Pages.Count)
		    Return Pages.Count
		  Else
		    App.DebugWriter.Write "Report.GetPageCount: Enter/Exit, Pages = Nil"
		    Return 0
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Print() As Boolean
		  //
		  // Time to put it on paper
		  //
		  // Ed Palmer, January 2006
		  //
		  // October 2007
		  //    Under certain circumstances, the Graphics object returned by
		  // the OpenPrinterDialog will have different dimensions than the
		  // page dimensions in the PrinterSetup object.  This has been
		  // observed on the Macintosh with the Canon i9900 printer and
		  // others.
		  //    Therefore, for the time being, this routine will calculate any
		  // change to the resolution between Generate and OpenPrinterDialog
		  // and scale the Group2D accordingly.  This does mean a slight loss in
		  // accuracy when scaling up, but is the minimal impact workaround until
		  // printing can be reexamined to use new techniques.  It also assumes that
		  // the ratios are equal both horizontally and vertically.
		  //
		  
		  Dim i As Integer
		  Dim CopyCount As Integer
		  Dim PagesPrinted As Integer = 0
		  Dim g As Graphics
		  Dim PrinterPages As Group2D
		  Dim xOffset, yOffset As Double
		  Dim printerHRes, printerVRes As Integer
		  Dim oldHRes, oldVRes As Integer
		  Dim HRatio, VRatio As Double
		  Dim printerScale As Double
		  
		  App.DebugWriter.Write "Report.Print: Enter"
		  // Let's check out some things to get ready
		  
		  If ps = Nil Then Return False // Gotta have a print setup object (TODO: Fix for Linux)
		  
		  PrinterPages = New Group2D
		  
		  If Not Generate(ps.HorizontalResolution / 72, PrinterPages) Then Return False
		  oldHRes = ps.HorizontalResolution
		  oldVRes = ps.VerticalResolution
		  
		  If PrinterPages = Nil Then Return False // Nothing to print
		  If PrinterPages.Count = 0 Then Return False // Ditto
		  
		  //
		  // Should be OK now.  Time to print
		  //
		  
		  g =  OpenPrinterDialog(ps, Window(0))
		  If g = Nil Then Return False // Error, or user cancelled
		  
		  printerHRes = ps.HorizontalResolution
		  printerVRes = ps.VerticalResolution
		  
		  HRatio = printerHRes / oldHRes
		  VRatio = printerVRes / oldVRes
		  
		  If HRatio <> VRatio Then
		    App.DebugWriter.Write StringUtils.Sprintf("Calculated horizontal scaling and vertical scaling are different, H = %d, V = %d",_
		    HRatio, VRatio), 1
		  End If
		  printerScale = Min(HRatio, VRatio)
		  
		  App.DebugWriter.Write StringUtils.Sprintf("Report.Print: copies %d, firstpage %d, lastpage %d, count %d",_
		  g.Copies, g.FirstPage, g.LastPage, PrinterPages.Count)
		  
		  xOffset = (LeftMargin * printerHRes) + ps.PageLeft
		  yOffset = (TopMargin * printerVRes) + ps.PageTop
		  
		  //
		  // Mac OSX will manage copy count through the printer driver,
		  // but Windows requires the program to track this.
		  //
		  #If Not TargetMacOS
		    For CopyCount = 1 To g.Copies
		  #endif
		  For i = 1 To PrinterPages.Count
		    If i >= g.FirstPage And i <= g.LastPage Then
		      App.DebugWriter.Write "Report.Print: Printing page "+ str(i)
		      If PagesPrinted > 0 Then g.NextPage
		      // Alter scale to match the calculated scale based on any change in resolution
		      PrinterPages.Item(i - 1).Scale = PrinterPages.Item(i - 1).Scale * printerScale
		      
		      g.DrawObject PrinterPages.Item(i - 1), xOffset, yOffset
		      PagesPrinted = PagesPrinted + 1
		    End If
		    
		  Next i
		  
		  #if Not TargetMacOS
		    Next CopyCount
		  #endif
		  
		  //
		  // For some reason, if this isn't done a second printing pass won't work
		  //
		  g = Nil
		  App.DebugWriter.Write "Report.Print: Printed " + str(PagesPrinted) + " pages"
		  App.DebugWriter.Write "Report.Print: Exit"
		  Return True
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		LeftMargin As Double
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Holds the generated pages of the report
		#tag EndNote
		Protected Pages As Group2D
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Size (in inches) of the printable area of a page.
			This is calculated from the PrinterSetup object.
		#tag EndNote
		PrintableHeight As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			This is the width in inches of the printable area of the page.
			It is calculated from the PrinterSetup object.
		#tag EndNote
		PrintableWidth As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			PrinterSetup object associated with this report
		#tag EndNote
		ps As PrinterSetup
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Current scale setting for Pages
		#tag EndNote
		Protected Scale As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		TopMargin As Double
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LeftMargin"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrintableHeight"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrintableWidth"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TopMargin"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
