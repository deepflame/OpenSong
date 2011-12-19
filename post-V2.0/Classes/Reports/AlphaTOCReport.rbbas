#tag Class
Protected Class AlphaTOCReport
Inherits TOCReport
	#tag Method, Flags = &h0
		Sub AddItem(Item As String)
		  ContentsArray.Append Item
		  IsSorted = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear()
		  ClearArray(ContentsArray)
		  ClearArray(SortedArray)
		  ClearArray(CategorizedArray)
		  IsSorted = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  IsSorted = False
		  IsCategorized = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Generate(Zoom As Double = 1.0, MyPages As Group2D = Nil) As Boolean
		  Dim Status As Boolean
		  
		  App.DebugWriter.Write "AlphaTOCReport.Generate: Enter"
		  
		  If MyPages = Nil Then MyPages = Pages
		  
		  If Not IsCategorized Then
		    Status = Prepare
		    If Not Status Then
		      App.DebugWriter.Write "AlphaTOCReport.Generate: Exit (Prepare failed)"
		      Return Status
		    End If
		  End If
		  
		  Indent = 0
		  CategoryAlign = "center"
		  ReportName = App.T.Translate("print/alphabetical/@caption")
		  
		  Status = PrintTOCPages(CategorizedArray, MyPages, Zoom)
		  
		  If Not Status Then
		    App.DebugWriter.Write "AlphaTOCReport.Generate: PrintTOCPages failed", 1
		  End If
		  
		  App.DebugWriter.Write "AlphaTOCReport.Generate: Exit"
		  
		  Return Status
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Prepare() As Boolean
		  //
		  // Prepare is used to process the report contents from
		  // the raw items in ContentsArray to a Sorted form and
		  // then with the categories inserted.
		  // From here, Generate can be called to create the pages
		  //
		  // Ed Palmer, February 2006
		  //
		  
		  Dim i As Integer
		  Dim CurrentCategory As String = ""
		  Dim DigitsSeen As Boolean
		  
		  App.DebugWriter.Write "AlphaTOCReport.Prepare: Enter"
		  
		  If IsCategorized Then // We've already done this step
		    App.DebugWriter.Write "AlphaTOCReport.Prepare: Exit (previously done)"
		    Return IsCategorized
		  End If
		  App.MouseCursor = System.Cursors.Wait
		  // Determine if a sort is necessary
		  
		  If Not IsSorted Then
		    App.DebugWriter.Write StringUtils.Sprintf("AlphaTOCReport.Prepare: Sorting %d songs...", UBound(ContentsArray))
		    CopyArray(ContentsArray, SortedArray)
		    HeapSort SortedArray
		    IsSorted = True
		  End If
		  
		  ClearArray(CategorizedArray)
		  
		  i = 0
		  DigitsSeen = False // Special flag for songs starting with numbers
		  While i <= UBound(SortedArray)
		    If CurrentCategory <> Uppercase(Left(SortedArray(i), 1)) Then
		      If Left(SortedArray(i), 1) >= "0" And Left(SortedArray(i), 1) <= "9" Then
		        If Not DigitsSeen Then
		          CategorizedArray.Append "-- 0 - 9 -"
		          DigitsSeen = True
		        End If
		      Else // Regular alpha character
		        CurrentCategory = Uppercase(Left(SortedArray(i), 1))
		        CategorizedArray.Append  "-- " + CurrentCategory + " -" //First hyphen gets stripped by print routine
		      End If
		    End If
		    CategorizedArray.Append SortedArray(i)
		    i = i + 1
		  Wend
		  App.MouseCursor = Nil
		  App.DebugWriter.Write "AlphaTOCReport.Prepare: Exit"
		  IsCategorized = True
		  Return IsCategorized
		  
		Catch
		  App.DebugWriter.Write "AlphaTOCReport.Prepare: Exit (Exception)"
		  IsCategorized = False
		  Return IsCategorized
		End Function
	#tag EndMethod


	#tag Note, Name = Overview
		
		Subclassed from Report, this supports the printing of
		"Table Of Contents" reports.  The contents are held in an array,
		with special characters used to define grouping breaks.
		
		Most of the hard work is done by the routines that were in
		various PrintWindow methods in V0.9.9 and moved here (mostly in
		method Generate) with the split of PrintWindow and the different 
		reports, and the creation of the Report classes.
		
		Ed Palmer, February 2006
	#tag EndNote


	#tag Property, Flags = &h1
		#tag Note
			Final contents for report.  Sorted, with category headers inserted.
		#tag EndNote
		Protected CategorizedArray() As String
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Raw contents, unsorted, in the order added by the caller
		#tag EndNote
		Protected ContentsArray() As String
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Flags whether or not Prepare is complete
		#tag EndNote
		Protected IsCategorized As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Flags if ContentsArray has been sorted into SortedArray
		#tag EndNote
		Protected IsSorted As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Contents of report, sorted but without categories
		#tag EndNote
		Protected SortedArray() As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="TOCReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="TOCReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="TOCReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="TOCReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="TOCReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LeftMargin"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="TOCReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrintableHeight"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="TOCReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrintableWidth"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="TOCReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TopMargin"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="TOCReport"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
