#tag Interface
Protected Interface IpreferencesReceiver
	#tag Method, Flags = &h0
		Sub PreferencesChanged(NewPreferences As IPreferences)
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Overview
		Complementary interface to IPreferences.
		
		Allows a class to register a callback routine to be called
		when a preference changes in the IPreferences
		object the class is registered with.
	#tag EndNote


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
End Interface
#tag EndInterface
