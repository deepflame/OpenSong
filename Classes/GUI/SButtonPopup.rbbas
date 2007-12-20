#tag Class
Class SButtonPopup
Inherits ContextualMenu
	#tag Event
		Sub Action(item As String)
		  'Parent.MenuItem =  Item
		  
		  '++JRC Workaround for RB 2007 issue where UTF-8 strings are
		  'improperly encoded in ContextualMenus (bug #1829317)
		  'var Item is returning strings with extra zero padding bytes
		  'as a result string lengths are double what they should be (i.e. Len("hello") returns 10  :| )
		  'this throws off string comparisons in MainWindow
		  'so we'll just create our own array of CORRECTLY encoded strings
		  Dim s As String
		  Dim i As Integer
		  
		  For i = 0 To UBound(GoodStrings)
		    If GoodStrings(i) = Left(Item, Len(GoodStrings(i))) Then
		      s = GoodStrings(i)
		      exit
		    End If
		  Next i
		  
		  Parent.MenuItem = s
		  
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		Parent As SButton
	#tag EndProperty

	#tag Property, Flags = &h0
		GoodStrings() As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="ContextualMenu"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			Type="Integer"
			InheritedFrom="ContextualMenu"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			InheritedFrom="ContextualMenu"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InheritedFrom="ContextualMenu"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InheritedFrom="ContextualMenu"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InheritedFrom="ContextualMenu"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			Type="Boolean"
			InheritedFrom="ContextualMenu"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
