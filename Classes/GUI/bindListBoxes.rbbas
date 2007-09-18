#tag Class
Protected Class bindListBoxes
Implements bindingInterface,listSelectionNotificationReceiver
	#tag Method, Flags = &h0
		Sub bind(source As Object, dest As Object)
		  // Part of the bindingInterface interface.
		  
		  #pragma BindingSpecification Listbox, Listbox, "Notify %2 when %1 has a selection"
		  
		  SourceListbox = Listbox(source)
		  DestListBox = Listbox(dest)
		  
		  SourceListbox.addListSelectionNotificationReceiver Self
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub selectionChanging()
		  // Part of the listSelectionNotificationReceiver interface.
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub selectionChanged()
		  // Part of the listSelectionNotificationReceiver interface.
		  'System.DebugLog "bindListBoxes.selectionChanged: Source is " + SourceListbox.Name + ":" + CStr(SourceListbox.ListIndex)
		  'System.DebugLog "bindListBoxes.selectionChanged: Destination is " + DestListBox.Name + ": " + CStr(DestListbox.ListIndex)
		  If SourceListbox.ListIndex = -1 Then Return
		  DestListBox.ListIndex = -1
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private SourceListbox As Listbox
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DestListBox As ListBox
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
