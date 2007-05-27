#tag Class
Class SButtonPopup
Inherits ContextualMenu
	#tag Event
		Sub Action(item As String)
		  Parent.MenuItem = item
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		Parent As SButton
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="ContextualMenu"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			InheritedFrom="ContextualMenu"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="ContextualMenu"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlOrder"
			Visible=true
			Group="Position"
			InheritedFrom="ContextualMenu"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InheritedFrom="ContextualMenu"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InheritedFrom="ContextualMenu"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseMacCMM"
			Visible=true
			Group="Appearance"
			Type="Boolean"
			InheritedFrom="ContextualMenu"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
