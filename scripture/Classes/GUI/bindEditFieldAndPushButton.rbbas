#tag Class
Protected Class bindEditFieldAndPushButton
Implements BindingInterface,actionNotificationReceiver
	#tag Method, Flags = &h0
		Sub bind(source As Object, dest As Object)
		  // Part of the BindingInterface interface.
		  #pragma BindingSpecification sEditField, PushButton, "Enable %2 when text is in %1"
		  
		  BoundEditField = SEditField(source)
		  BoundPushButton = PushButton(dest)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PerformAction()
		  // Part of the actionNotificationReceiver interface.
		  
		  BoundPushButton.Enabled = BoundEditField.Text.Len > 0
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private BoundEditField As SEditfield
	#tag EndProperty

	#tag Property, Flags = &h21
		Private BoundPushButton As PushButton
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
