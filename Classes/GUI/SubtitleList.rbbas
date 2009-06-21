#tag Class
Protected Class SubtitleList
Inherits Listbox
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  Dim Status As String
		  
		  If Me.CellCheck(row, 1) Then Status = "Checked" Else Status = "Not Checked"
		  App.DebugWriter.Write "In SubtitleList::CellClick: (" + str(row) + ","+ str(column) + "), old state was " + status
		  Return False
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  SetupList
		  Open
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function GetSelectedOptions() As String
		  //++EMP 12/02
		  // Build the subtitle options
		  Dim subtitles As String = ""
		  Dim i As Integer
		  For i = 0 to ListCount - 1
		    If CellCheck(i, 1) Then
		      If Len(subtitles) > 0 then subtitles = subtitles + "|"
		      subtitles = subtitles + CellTag(i, 2)
		    End If
		  Next
		  Return Subtitles
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSelected(InitialSettings As String)
		  Dim Order(-1) As String
		  Dim Row, Pos As Integer
		  
		  Order = Split(InitialSettings, "|")
		  ' Now order them
		  For row = 0 to UBound(Order)
		    For pos = 0 to ListCount - 1
		      If me.CellTag(pos, 2) = Order(row) Then
		        me.Cell(pos,0) = Str(row)
		        me.CellCheck(pos, 1) = True
		      End If
		    Next pos
		  Next row
		  
		  For row = 0 to ListCount - 1
		    If me.Cell(row, 0) = "" Then
		      me.Cell(row, 0) = "99" 'Sort at end of list
		      me.CellCheck(row, 1) = False 'Not selected
		    End If
		  Next row
		  me.SortedColumn = 0
		  me.Sort
		  me.SortedColumn = -1
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetupList()
		  Dim row As Integer
		  Dim temp As String
		  Dim RowData(-1) As String
		  Dim InitialSettings As String
		  Dim Order(-1) As String
		  Dim pos As Integer
		  'InitialSettings = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "style/@subtitles")
		  row = 0
		  temp = App.T.Translate("subtitles/row" + Str(row) + "/@caption")
		  ColumnCount = 3
		  ColumnWidths = "0,15%,*"
		  me.ColumnType(1) = 2 'Left Column is a checkbox
		  DeleteAllRows
		  While Len(temp) > 0
		    me.AddRow ""
		    RowData = Split(temp, "|")
		    me.Cell(LastIndex, 2) = RowData(0)
		    me.CellTag(LastIndex, 2) = RowData(1)
		    row = row + 1
		    temp = App.T.Translate("subtitles/row" + Str(row) + "/@caption")
		  Wend
		  
		  'SetSelected(InitialSettings)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag ViewBehavior
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Border"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnCount"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Integer"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnWidths"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasHeading"
			Visible=true
			Group="Appearance"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialValue"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeadingIndex"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollbarHorizontal"
			Visible=true
			Group="Appearance"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollBarVertical"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridLinesHorizontal"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridLinesVertical"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DefaultRowHeight"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_ScrollWidth"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_ScrollOffset"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextFont"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSize"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hierarchical"
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableDrag"
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableDragReorder"
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequiresSelection"
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectionType"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnsResizable"
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoHideScrollbars"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataSource"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataSource"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataField"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataField"
			InheritedFrom="Listbox"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			InheritedFrom="Listbox"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
