#tag Class
Protected Class ImageListbox
Inherits Listbox
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  Dim r, c As Integer
		  
		  DropRowObject( obj, action, Me.currentDropRow )
		  
		  For r = 0 to ListCount()-1
		    For c = 0 to ColumnCount()-1
		      CellBorderTop( r, c ) = ListBox.BorderDefault
		    Next
		  Next
		End Sub
	#tag EndEvent

	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  Dim result As Boolean
		  Dim img As StyleImage
		  Dim pic As Picture
		  Dim width, colwidth As Integer
		  Dim scale As Double
		  Dim imageMargin As Integer = 4
		  
		  result = False
		  
		  If column = 0 Then
		    If Me.Column(column).WidthActual <> Me.DefaultRowHeight Then
		      Me.DefaultRowHeight = Me.Column(column).WidthActual
		    End If
		    
		    If row < ListCount() Then
		      If CellTag( row, 0 ) IsA StyleImage Then
		        scale = 1
		        colwidth = Me.Column(column).WidthActual - imageMargin
		        
		        img  = CellTag( row, 0 )
		        pic = img.GetImage()
		        If Not IsNull( pic ) Then
		          width = pic.Width / pic.Height * (Me.DefaultRowHeight - imageMargin)
		          If (width > colwidth) And (width <> 0) Then
		            scale = colwidth / width
		            width = colwidth
		          End If
		          
		          g.DrawPicture( pic, (imageMargin/2) + (colwidth - width) / 2, (imageMargin/2) + (Me.DefaultRowHeight - (Me.DefaultRowHeight * scale)) / 2, width, Me.DefaultRowHeight * scale, 0, 0, pic.Width, pic.Height )
		          
		          result = True
		        End If
		        
		      End If
		    End If
		    
		  End If
		  
		  Return result
		End Function
	#tag EndEvent

	#tag Event
		Function DragOver(x As Integer, y As Integer, obj As DragItem, action As Integer) As Boolean
		  Dim result As Boolean
		  Dim r, c As Integer
		  
		  Me.currentDropRow = ListBox.RowFromXY( x, y + DefaultRowHeight / 2 )
		  
		  For r = 0 to ListCount()-1
		    For c = 0 to ColumnCount()-1
		      If r = Me.currentDropRow Then
		        CellBorderTop( r, c ) = ListBox.BorderThinSolid
		      Else
		        CellBorderTop( r, c ) = ListBox.BorderDefault
		      End If
		    Next
		  Next
		  
		  result = DragOverRow( x, y, obj, action, Me.currentDropRow )
		  Return result
		End Function
	#tag EndEvent

	#tag Event
		Function DragReorderRows(newPosition as Integer, parentRow as Integer) As Boolean
		  Dim r, c As Integer
		  Dim sourceRow As Integer
		  
		  sourceRow = ListIndex()
		  If newPosition < sourceRow Then
		    sourceRow = sourceRow + 1
		  End If
		  
		  InsertRow( newPosition, "")
		  For c = 0 to ColumnCount()-1
		    CellTag( newPosition, c ) = CellTag( sourceRow, c )
		    Cell( newPosition, c ) = Cell( sourceRow, c )
		  Next
		  
		  RemoveRow( sourceRow )
		  ListIndex() = newPosition
		  
		  For r = 0 to sourceRow-1
		    For c = 0 to ColumnCount()-1
		      CellBorderTop( r, c ) = ListBox.BorderDefault
		    Next
		  Next
		  
		  Return False
		End Function
	#tag EndEvent

	#tag Event
		Function DragRow(drag As DragItem, row As Integer) As Boolean
		  Dim img As StyleImage
		  
		  If CellTag( row, 0 ) IsA StyleImage Then
		    img  = CellTag( row, 0 )
		    drag.PrivateRawData("StIm") = img.GetImageFilename()
		  End If
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub GotFocus()
		  isFocused = True
		  GetFocus()
		End Sub
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  isFocused = False
		  LostFocus()
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddImage(image as StyleImage)
		  AddRow( "" )
		  CellTag( LastIndex(), 0 ) = image
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertImage(row As Integer, image As StyleImage)
		  InsertRow( row, "" )
		  CellTag( LastIndex(), 0 ) = image
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SwapRows(rowA As Integer, rowB As Integer) As Boolean
		  Dim tags() As Variant
		  Dim text() As String
		  Dim c As Integer
		  Dim result As Boolean
		  
		  result = False
		  
		  If rowA <> rowB And rowA > -1 And rowB > -1 And rowA < ListCount() And rowB < ListCount() Then
		    For c = 0 to ColumnCount()-1
		      tags.Append( CellTag( rowB, c ) )
		      text.Append( Cell( rowB, c ) )
		      
		      CellTag( rowB, c ) = CellTag( rowA, c )
		      Cell( rowB, c ) = Cell( rowA, c )
		      
		      CellTag( rowA, c ) = tags( c )
		      Cell( rowA, c ) = text( c )
		    Next
		    
		    result = True
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImage(row As Integer) As StyleImage
		  Dim result As StyleImage
		  result = Nil
		  
		  If row > -1 And row < Me.ListCount() Then
		    result = CellTag( row, 0 )
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasFocus() As Boolean
		  Return self.isFocused
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DragOverRow(x As Integer, y As Integer, obj As DragItem, action As Integer, row as Integer) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DropRowObject(obj As DragItem, action As Integer, row as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GetFocus()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event LostFocus()
	#tag EndHook


	#tag Note, Name = Info
		Imagelistbox is an extended Listbox adding a image preview column.
		The image is stored in the first column and is managed by ImageListBox.
		
		The other columns are freely usable.
	#tag EndNote


	#tag Property, Flags = &h21
		Private currentDropRow As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private isFocused As Boolean = False
	#tag EndProperty


	#tag ViewBehavior
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
			Name="ControlOrder"
			Visible=true
			Group="Position"
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
