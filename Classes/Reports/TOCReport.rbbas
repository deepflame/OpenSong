#tag Class
Protected Class TOCReport
Inherits ReportClass
	#tag Method, Flags = &h1
		Protected Sub ClearArray(ArrayToClear() As String)
		  Dim i As Integer
		  i = UBound(ArrayToClear)
		  While i >= 0
		    ArrayToClear.Remove i
		    i = i - 1
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CopyArray(Source() As String, Destination() As String)
		  Dim i As Integer
		  
		  ClearArray(Destination)
		  For i = 0 To UBound(Source)
		    Destination.Append Source(i)
		  Next i
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPage(PageNum As Integer, Zoom As Double = 1.0) As Object2D
		  //
		  // See comments in LeadSheetReport.GetPage.  This routine only does
		  // the essentials now and will need to be fleshed out later.
		  //
		  App.DebugWriter.Write "TOCReport.GetPage: Enter/Exit with PageNum, Zoom = " + Str(PageNum) + ", " + Str(Zoom)
		  If PageNum > Pages.Count + 1 Then Return Nil
		  
		  Pages.Item(PageNum - 1).Scale = Zoom
		  Return Pages.Item(PageNum - 1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function PrintTOCPages(Items() As String, MyPages As Group2D, Scale As Double = 1.0) As Boolean
		  Dim dummySong As New XmlDocument
		  Dim TempFont As FontFace
		  Dim CurrentCategory As String
		  Dim Continued As String
		  Dim Pic As Picture
		  Dim g As Graphics
		  Dim top, bottom, runningBase, leftSide As Integer
		  Dim colwidth As Integer
		  Dim CurrentItem As Integer
		  Dim TempHeight As Integer
		  Dim TempPage As New Group2D
		  Dim LineHeight As Double
		  Dim PageObj As Group2D
		  
		  App.DebugWriter.Write "TOCReport.PrintTOCPages: Enter"
		  //
		  // Allocate a picture to build Object2D's against
		  //
		  Pic = New Picture(PrintableWidth * 72 * Scale, PrintableHeight * 72 * Scale, 32)
		  If Pic = Nil Then Return False // Sorry, out of memory (TODO: Log and report)
		  g = Pic.Graphics
		  
		  TempFont = SmartML.GetValueF(App.MyPrintSettings.DocumentElement, "lyrics")
		  TempFont.Size = TempFont.size * Scale
		  TempFont.OntoGraphics g
		  
		  LineHeight = g.TextHeight
		  colwidth = (Round(PrintableWidth * 72 * Scale) / 2) - g.StringWidth("MM") // Two EM spacing between columns
		  leftSide = 0 // Start in the first column, margins are handled by the PrinterSetup object
		  
		  //
		  // Loop through and print.  Categories will print at the top of each column.
		  //
		  CurrentCategory = ""
		  
		  Continued = " " + App.T.Translate("print/continued/@caption")
		  
		  // Borrow the header and footer routines from SongML
		  
		  dummySong.AppendChild dummySong.CreateElement("song")
		  
		  SmartML.SetValue dummySong.DocumentElement, "title", App.T.Translate("print/toc/@caption")
		  
		  SmartML.SetValue dummySong.DocumentElement, "author", ReportName
		  
		  PageObj = New Group2D
		  
		  top = SongML.Draw_Header(dummySong, g, 0, 0, g.Width, Scale, PageObj)
		  bottom = g.Height - SongML.Draw_Footer(dummySong, g, 0, g.Height, g.Width, Scale, MyPages.Count + 1, PageObj)
		  runningBase = top
		  
		  CurrentItem = 0
		  
		  While CurrentItem < UBound(Items)
		    //
		    // Check for new category
		    //
		    If Left(Items(CurrentItem), 1) = "-" Then // New Category
		      CurrentCategory = Mid(Items(CurrentItem), 2)
		      // Widow control...change column if near the bottom
		      TempFont.Bold = True
		      If runningBase <> top Then runningBase = runningBase + (g.TextHeight / 2) // Add some vertical space before the category heading
		      TempHeight = GraphicsX.DrawFontString(g, CurrentCategory, leftSide, runningBase, TempFont, colwidth, _
		      TempPage, CategoryAlign, 0, "top")
		      TempFont.Bold = False
		      TempHeight = TempHeight + GraphicsX.DrawFontString(g, Items(CurrentItem + 1), leftSide + Round(Indent * Scale), runningBase + TempHeight, TempFont, colwidth, _
		      TempPage, "left", 0, "top")
		      //
		      // Check for new page or column change
		      //
		      If runningBase + TempHeight >= bottom Then
		        If leftSide > 0 Then // New Page
		          MyPages.Append PageObj
		          PageObj = New Group2D
		          top = SongML.Draw_Header(dummySong, g, 0, 0, g.Width, Scale, PageObj)
		          bottom = g.Height - SongML.Draw_Footer(dummySong, g, 0, g.Height, g.Width, Scale, MyPages.Count + 1, PageObj)
		          leftSide = 0
		        Else // New Column
		          leftSide = g.Width - colwidth
		        End If
		        runningBase = top
		        TempPage = New Group2D
		        TempFont.Bold = True
		        runningBase = runningBase + GraphicsX.DrawFontString(g, CurrentCategory, leftSide, runningBase, TempFont, colwidth, _
		        PageObj, CategoryAlign, 0, "top")
		        TempFont.Bold = False
		        CurrentItem = CurrentItem + 1
		        
		      Else // Category will fit in current column, just add what's already done to the current page
		        PageObj.Append TempPage.Item(0)
		        PageObj.Append TempPage.Item(1)
		        runningBase = runningBase + TempHeight
		        TempPage.Remove 0
		        TempPage.Remove 0
		        CurrentItem = CurrentItem + 2
		      End If
		    Else // Not a category change, just a regular item
		      TempHeight = GraphicsX.DrawFontString(g, Ltrim(Items(CurrentItem)), leftSide + (Indent * Scale), runningBase, TempFont, colwidth, _
		      TempPage, "left", 0, "top")
		      //
		      // Check to see if the item is too tall for the remaining space in the column
		      //
		      If runningBase + TempHeight >= bottom Then
		        If leftSide > 0 Then // New Page
		          MyPages.Append PageObj
		          PageObj = New Group2D
		          top = SongML.Draw_Header(dummySong, g, 0, 0, g.Width, Scale, PageObj)
		          bottom = g.Height - SongML.Draw_Footer(dummySong, g, 0, g.Height, g.Width, Scale, MyPages.Count + 1, PageObj)
		          leftSide = 0
		        Else // New Column
		          leftSide = g.Width - colwidth
		        End If
		        runningBase = top
		        TempPage.Remove 0
		        TempFont.Bold = True
		        runningBase = runningBase + GraphicsX.DrawFontString(g, CurrentCategory + Continued, leftSide, runningBase, TempFont, colwidth, _
		        PageObj, CategoryAlign, 0, "top")
		        TempFont.Bold = False
		        //
		        // Don't increment CurrentItem: it will be processed again and put at the top of the new column/page
		        // the next time the While loop is executed
		        //
		      Else // No change, just add it
		        PageObj.Append TempPage.Item(0)
		        runningBase = runningBase + TempHeight
		        TempPage.Remove 0
		        CurrentItem = CurrentItem + 1
		      End If
		    End If
		  Wend
		  
		  // Add any partial page
		  If PageObj.Count > 0 Then
		    MyPages.Append PageObj
		  End If
		  App.DebugWriter.Write "TOCReport.PrintTOCPages: Exit"
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Setup() As Boolean
		  App.DebugWriter.Write "TOCReport.Setup: Enter"
		  ps = App.GetPrinterSetup
		  If ps = Nil Then
		    ps = App.GetPrinterSetup(True, Window(0))
		    If ps = Nil Then Return False // User doesn't want to print
		  End If
		  PrintableHeight = CalcPrintableHeight
		  PrintableWidth = CalcPrintableWidth
		  
		  Scale = 1.0
		  Pages = New Group2D
		  App.DebugWriter.Write "TOCReport.Setup: Exit"
		  Return True
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		#tag Note
			Defines how the category header should be aligned on the page.
			Must be set prior to calling PrintTOCPages
			Valid values are "left", "center" and "right" (NOTE: NO VALIDATION IS DONE)
		#tag EndNote
		Protected CategoryAlign As String
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Defines how far to indent an item.  Must be set prior to calling PrintTOCPages.
			Unit of measure is points (i.e., will be multiplied by scale/zoom)
		#tag EndNote
		Protected Indent As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Name of the report (placed in the author field of the header).
			Must be set prior to calling PrintTOCPages
		#tag EndNote
		Protected ReportName As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
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
			Name="LeftMargin"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="ReportClass"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrintableHeight"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="ReportClass"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrintableWidth"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="ReportClass"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
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
			Name="TopMargin"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="ReportClass"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
