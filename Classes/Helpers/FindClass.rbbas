#tag Class
Protected Class FindClass
	#tag Method, Flags = &h0
		Sub Constructor()
		  FindTitle = True
		  FindAuthor = True
		  FindLyrics = True
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		FindAKA As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindAuthor As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindCapo As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindCCLI As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindCopyright As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindHymnNumber As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindKey As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindKeyLine As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindLyrics As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindPresentation As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindString As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FindTempo As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindThemes As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindTimeSig As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindTitle As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindUser1 As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindUser2 As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		FindUser3 As Boolean
	#tag EndProperty


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
			InitialValue="-2147483648"
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
		#tag ViewProperty
			Name="FindAKA"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindAuthor"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindCapo"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindCCLI"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindCopyright"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindHymnNumber"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindKey"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindKeyLine"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindLyrics"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindPresentation"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindString"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindTempo"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindThemes"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindTimeSig"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindTitle"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindUser1"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindUser2"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindUser3"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
