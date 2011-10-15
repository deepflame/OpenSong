#tag Class
Protected Class OOoSlideShowListener
	#tag Method, Flags = &h0
		Sub beginEvent(Node As OLEObject)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub disposing(Source As OLEObject)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub endEvent(Node As OLEObject)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub hyperLinkClicked(hyperLink As String)
		  OOoPresentationHost.hyperLinkClicked( hyperLink )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub paused()
		  OOoPresentationHost.paused()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub repeat(Node As OLEObject, Repeat As Int32)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub resumed()
		  OOoPresentationHost.resumed()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub slideAnimationsEnded()
		  OOoPresentationHost.slideAnimationsEnded()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub slideEnded()
		  OOoPresentationHost.slideEnded()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub slideTransitionEnded()
		  OOoPresentationHost.slideTransitionEnded()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub slideTransitionStarted()
		  OOoPresentationHost.slideTransitionStarted()
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Dim interfaces() As String
			  interfaces.Append("com.sun.star.presentation.XSlideShowListener")
			  return interfaces
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  'Ignore any calls to the setter
			End Set
		#tag EndSetter
		Bridge_ImplementedInterfaces As Variant
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="2147483648"
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
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
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
	#tag EndViewBehavior
End Class
#tag EndClass
