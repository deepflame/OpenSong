#tag Class
Protected Class SnapshotData
	#tag Method, Flags = &h0
		Sub Constructor()
		  timestamp = New Date
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(currentslideIndex As Integer, image As Picture, slide As XmlNode, style As XmlNode)
		  Me.timestamp = New Date
		  Me.currentslideIndex = currentslideIndex
		  Me.image = image
		  Me.slide = slide
		  Me.style = style
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		currentslideIndex As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		image As Picture = Nil
	#tag EndProperty

	#tag Property, Flags = &h0
		slide As XmlNode = Nil
	#tag EndProperty

	#tag Property, Flags = &h0
		style As XmlNode = Nil
	#tag EndProperty

	#tag Property, Flags = &h0
		timestamp As Date
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="currentslideIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="image"
			Group="Behavior"
			InitialValue="Nil"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
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
