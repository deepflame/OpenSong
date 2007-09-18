#tag Interface
Protected Interface iBible
	#tag Method, Flags = &h0
		Function LoadBible(file As FolderItem) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ErrorString() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetVerseNumbers(bookNumber As Integer, chapterNumber As Integer) As String()
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBibleFilename() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsSearchable() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetOTCount() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetNTCount() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetOTBooks(ByRef bookNames() As String, ByRef bookNumbers() As Integer) As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetNTBooks(ByRef bookNames() As String, ByRef bookNumbers() As Integer) As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetChapterCount(bookNumber As Integer) As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetVerseCount(bookNumber As Integer, chapterNumber As Integer) As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPassage(bookNumber As Integer, chapterNumber As Integer, startVerseOffset As Integer, endVerseOffset As Integer, embedVerseNumbers As Boolean = True) As String()
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ValidateCitation(bookNum As Integer, chapterNum As Integer, fromVerse As Integer, thruVerse As Integer) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function QuickLookup(cite As String) As Integer()
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVerseRange(BookNumber As Integer, ChapterNumber As Integer, VerseIndex As Integer, ByRef StartVerse As String, ByRef EndVerse As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBookNameFromStdBookNumber(bookNumber As Integer) As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCitation(bookNumber As Integer, chapterNumber As Integer, startVerse As Integer, endVerse As Integer = - 1) As String
		  
		End Function
	#tag EndMethod


	#tag Note, Name = GetPassage Note
		GetPassage: 
		
		The book number is based on the bnumber attribute of BIBLEBOOK for Zefania, 
		or the relative number (1-based) for OpenSong format.
		
		Chapter number: One-based
		
		FromVerse and ToVerse: One-based, relative verse position in the XML.
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
