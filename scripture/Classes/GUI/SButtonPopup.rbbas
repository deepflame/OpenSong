#tag Class
Class SButtonPopup
Inherits ContextualMenu
	#tag Event
		Sub Action(item As String)
		  System.DebugLog "SButtonPopup.Action"
		  Parent.MenuItem = item
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		Parent As SButton
	#tag EndProperty


End Class
#tag EndClass
