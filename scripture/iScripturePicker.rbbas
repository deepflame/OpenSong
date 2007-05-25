#tag Interface
Protected Interface iScripturePicker
	#tag Method, Flags = &h0
		Function CurrentBookNumber() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentChapterNumber() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentFromVerseIndex() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentThruVerseIndex() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ChangeBible(newBible as iBible)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ChangePassage(bookNumber As Integer, chapterNumber As Integer, fromVerse As Integer, thruVerse As Integer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableUI()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableUI()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CloseScripturePicker()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VersesPerSlide() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FormatAsParagraph(useParagraphFormat As Boolean)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub VersesPerSlide(verseCount As Integer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowVerseNumbers(show As Boolean)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FormatAsParagraph() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowVerseNumbers() As Boolean
		  
		End Function
	#tag EndMethod


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
