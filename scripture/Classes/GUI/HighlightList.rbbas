#tag Class
Protected Class HighlightList
Inherits ListBox
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  If Self = Nil Then Return False // Yes, I know, but stranger things have happened
		  If Self.Window = Nil Then Return False
		  If Self.Window.Focus = Self Then Return False
		  If ListIndex <> row Then Return False
		  g.ForeColor = HighlightColor
		  g.FillRect(0, 0, g.Width, g.Height)
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub GotFocus()
		  App.DebugWriter.Write "HighlightList.GotFocus: " + Me.Name, 4
		  HasFocus = True
		  GotFocus
		End Sub
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  App.DebugWriter.Write "HighlightList.LostFocus: " + Me.Name, 4
		  HasFocus = False
		  LostFocus
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event GotFocus()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event LostFocus()
	#tag EndHook


	#tag Property, Flags = &h1
		Protected HasFocus As Boolean = False
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			Type="Integer"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Integer"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			InheritedFrom="ListBox"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - ThinDotted"
				"3 - ThinSolid"
				"4 - ThickSolid"
				"5 - DoubleThinSolid"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			InheritedFrom="ListBox"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - ThinDotted"
				"3 - ThinSolid"
				"4 - ThickSolid"
				"5 - DoubleThinSolid"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Font"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Font"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Font"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			InheritedFrom="ListBox"
			#tag EnumValues
				"0 - Single"
				"1 - Multiple"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataSource"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataField"
			InheritedFrom="ListBox"
		#tag EndViewProperty
		#tag ViewProperty
			InheritedFrom="ListBox"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
