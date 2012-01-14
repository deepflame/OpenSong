#tag Module
Protected Module BibleFactory
	#tag Method, Flags = &h0
		Function BibleList() As String()
		  //++
		  // This is a readonly property; do not implement the Set method
		  //
		  // Return a list of scripture files found in the current folder
		  //--
		  Dim files() As String
		  Dim i As Integer
		  Dim max As Integer
		  Dim f As FolderItem
		  
		  If ScriptureFolder = Nil Then Return files
		  
		  max = ScriptureFolder.Count
		  For i = 1 to max
		    f = ScriptureFolder.Item(i)
		    If f.IsFileVisible And (Not f.Directory) Then files.Append(f.Name)
		  Next
		  
		  Return files
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBible(name As String) As iBible
		  //++
		  // This is the "factory" for the object.
		  // Today there is only one type of Bible object, but that will change shortly.
		  //--
		  
		  Dim i As Integer
		  Dim f As FolderItem
		  Dim b As iBible
		  Dim names() As String
		  Dim nameFound As Boolean
		  
		  'Sanity check
		  If name = "" Then Return Nil
		  
		  // Does the name correspond to one of the names we see?
		  
		  names = BibleList
		  nameFound = False
		  For i = 0 To UBound(names)
		    If names(i) = name Then
		      nameFound = True
		      exit for
		    End If
		  Next
		  
		  If Not nameFound Then
		    Return Nil
		  End If
		  
		  // Check to see if it is loaded already.
		  
		  For Each b in openedBibles
		    If b.name = name Then Return b
		  Next
		  
		  b = New Bible
		  If Not b.LoadBible(ScriptureFolder.Child(name)) Then
		    Return Nil
		  End If
		  
		  openedBibles.Append b
		  
		  Return b
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ParseCitation(cite As String) As String()
		  //
		  // Parse a citation in standard form (Book, Chapter, start & end verses)
		  // "book chap:from-to"
		  // Book and chapter required, verses optional
		  // Returns the individual elements as an array (book, chapter [, verse, verseAix [, verse2, verse2Aix]])
		  // Although the regex handles an optional bible version field, that is not used
		  // here (it's used by ScripturePickerController).
		  //
		  Const kVerseRegEx = "[-:]?(\d+)(\w*)"
		  
		  Dim regexCite As New RegEx
		  Dim regexVerse As New RegEx
		  Dim citeMatch As RegExMatch
		  Dim verseMatch As RegExMatch
		  
		  Dim result() As String
		  Dim verses() As String
		  Dim bibleException As New BibleRefException
		  
		  //++
		  // The parsing regex was changed to work around an apparent bug in the regex library
		  // that incorrectly excludes extended Latin-1 characters from the [[:alpha:]] and [[:alnum:]] classes
		  // To allow the old regex to be used if it breaks other languages than Turkish (where the error
		  // was first seen), allow a key to be added to the preferences to return to the old behavior.
		  //--
		  If App.MainPreferences.GetValueB(prefs.kUseOldBibleFactoryRegEx, False, False) Then
		    regexCite.SearchPattern = kOldCitationRegEx
		  Else
		    regexCite.SearchPattern = kCitationRegEx
		  End If
		  cite = Trim(cite)
		  
		  Try
		    citeMatch = regexCite.Search(cite)
		  Catch e
		    bibleException.Message = App.T.Translate("scripture_lookup/bad_reference/format")
		    Raise bibleException
		  End Try
		  
		  If citeMatch Is Nil Or citeMatch.SubExpressionCount < 4 Then
		    bibleException.Message = App.T.Translate("scripture_lookup/bad_reference/format")
		    Raise bibleException
		  End If
		  
		  result.Append DeleteWhiteSpace(citeMatch.SubExpressionString(1)) // Book
		  result.Append citeMatch.SubExpressionString(2) // Chapter
		  //
		  // Book and chapter are done.  Examine remaining for valid form and verses
		  //
		  Dim remaining As String
		  
		  remaining = citeMatch.SubExpressionString(3)
		  
		  If remaining.len = 0 Then // No verses, book and chapter only
		    Return result
		  End If
		  //
		  // Must have a colon followed by a verse and optionally a hyphen also followed by a verse
		  //
		  If left(remaining, 1) <> ":" Then
		    RaiseVerseError(remaining)
		  End If
		  
		  verses = Split(mid(remaining,2), "-")
		  If verses.UBound = -1 Then
		    RaiseVerseError(remaining)
		  End If
		  
		  For i As Integer = 0 To verses.UBound
		    regexVerse.SearchPattern = kVerseRegEx
		    Try
		      verseMatch = regexVerse.Search(verses(i))
		    Catch e
		      App.DebugWriter.Write "ParseCitation caught a " + RuntimeException(e).ToString, 1
		      RaiseVerseError(verses(i))
		    End Try
		    If verseMatch Is Nil Then RaiseVerseError(verses(i))
		    
		    For j As Integer = 1 To verseMatch.SubExpressionCount - 1
		      result.Append verseMatch.SubExpressionString(j)
		    Next
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RaiseVerseError(ref As String)
		  Dim e As New BibleRefException
		  Dim message As String
		  
		  If App.T Is Nil Then
		    message = "Cannot determine verse from '" + ref + "'"
		  Else
		    message = App.T.Translate("scripture_lookup/bad_reference/verse", ref)
		  End If
		  
		  e.Message = message
		  Raise e
		End Sub
	#tag EndMethod


	#tag Note, Name = Overview
		BibleFactory is a class to create Bible objects.  The original design of Bible had quite a bit of conditional code
		to support the three formats supported in V1.0.  BibleFactory helps move past that code and simplifies the overall logic.
		
		BibleFactory will return an object that conforms to the iBible interface.  For the initial release, it's really just putting
		a wrapper around the existing Bible object.  Eventually this will break out to other Bible objects.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return ScriptureFolder
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If value <> Nil Then
			    If value.Exists And value.IsFileVisible And _
			      value.Directory And value.IsReadable Then
			      ScriptureFolder = value
			      //++
			      // Remove all the existing Bibles since they belong to the old folder.
			      //--
			      ReDim openedBibles(-1)
			    End If
			  End If
			End Set
		#tag EndSetter
		Folder As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected openedBibles() As iBible
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected ScriptureFolder As FolderItem
	#tag EndProperty


	#tag Constant, Name = kCitationRegEx, Type = String, Dynamic = False, Default = \"^((\?:\\d\\s*)\?(\?:[^[:punct:][:space:]]+))\\s+(\\b\\d+\\b)(:\\d{1\x2C2}\\b\\s*-\\s*\\d{1\x2C2}\\b|:\\d{1\x2C2}\\b(\?!-)|\\b(\?![:-]))(\?:\\s*\\(([[:alpha:].]+)\\)|\\b)$", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOldCitationRegEx, Type = String, Dynamic = False, Default = \"^((\?:\\d)\?\\s*(\?:[[:alpha:]]+))\\s+(\\b\\d+\\b)(:\\d{1\x2C2}\\b\\s*-\\s*\\d{1\x2C2}\\b|:\\d{1\x2C2}\\b(\?!-)|\\b(\?![:-]))(\?:\\s*\\(([[:alpha:].]+)\\)|\\b)$", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
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
End Module
#tag EndModule
