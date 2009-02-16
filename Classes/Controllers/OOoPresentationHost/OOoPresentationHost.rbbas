#tag Module
Protected Module OOoPresentationHost
	#tag Method, Flags = &h0
		Sub paused()
		  MsgBox "paused"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub resumed()
		  MsgBox "resumed"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub slideTransitionStarted()
		  MsgBox "slideTransitionStarted"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub slideTransitionEnded()
		  MsgBox "slideTransitionEnded"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub slideAnimationsEnded()
		  MsgBox "slideAnimationsEnded"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub slideEnded()
		  MsgBox "slideEnded"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub hyperLinkClicked(hyperLink As String)
		  MsgBox "hyperLinkClicked"
		End Sub
	#tag EndMethod


	#tag Enum, Name = OOoFrameSearchFlag, Flags = &h0
		PARENT=1
		  SELF_=2
		  CHILDREN=4
		  CREATE=8
		  SIBLINGS=16
		  TASKS=32
		  ALL=23
		GLOBAL_=55
	#tag EndEnum

	#tag Enum, Name = OOoPosSize, Flags = &h0
		X=1
		  Y=2
		  WIDTH=4
		  HEIGHT=8
		  POS=3
		  SIZE=12
		POSSIZE=15
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
