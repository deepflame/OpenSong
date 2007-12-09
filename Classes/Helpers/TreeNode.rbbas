#tag Class
Protected Class TreeNode
	#tag Method, Flags = &h0
		Sub delete(word as String)
		  
		  If MyDictionary.HasKey(word) Then
		    MyDictionary.Remove word
		  End If
		  Return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function find(word as String) As TreeNode
		  If MyDictionary.HasKey(word) Then
		    Return TreeNode(MyDictionary.Value(word).ObjectValue)
		  Else
		    Return New TreeNode(word, MyDictionary)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub inorderTraverse(list() as TreeNode)
		  //++
		  // Build a list of index entries in alphabetical order.
		  // Since we can't pass the Keys() arrays of a Dict directly to a sort,
		  // sort the dict into a new array.  To save on string copies, the sort
		  // routine returns the sorted list as an array of indices to the Dict
		  // (in other words, the "i"'s of Dict.Key(i))
		  //
		  // Original version with binary tree instead of Dict by
		  // Ben.  Rewrite by Ed to use Dict.
		  //--
		  Dim x as Integer
		  Dim keys() As Integer
		  Dim sortobj As New HeapSortDict
		  
		  sortobj.Sort MyDictionary, keys
		  
		  Redim list(UBound(keys))
		  
		  For x = 0 to UBound(keys)
		    //++
		    // The next line is a long way of saying that the next TreeNode to get
		    // is the value of the Nth entry in MyDictionary, where N is the
		    // value of the Xth entry in our Keys array.  Double indirection.
		    //--
		    list(x) = TreeNode(MyDictionary.Value(MyDictionary.Key(Keys(x))).ObjectValue)
		  Next
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TreeNode(tentry As String, parentDictionary As Dictionary)
		  MyDictionary = parentDictionary
		  If MyDictionary.HasKey(tentry) Then Return
		  MyDictionary.Value(tentry) = Me
		  entry = tentry
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		entry As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MyDictionary As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		passages() As String
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
			Name="entry"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
