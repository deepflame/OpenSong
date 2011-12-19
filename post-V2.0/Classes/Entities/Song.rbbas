#tag Class
Protected Class Song
	#tag Method, Flags = &h0
		Function Clone(OriginalObject As Song) As Song
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FromXML(xDoc As XmlDocument) As Boolean
		  //++
		  // Loads the information from the XML document into
		  // this instance's variables
		  //--
		  Dim head As XmlNode
		  Dim node As XmlNode
		  Dim att As XmlAttribute
		  Dim s As String
		  
		  head = xDoc.DocumentElement
		  
		  // Verify we have a song here...
		  
		  If head.Name <> E_SONG Then
		    Return False
		  End If
		  
		  node = head.FirstChild
		  
		  While node <> Nil
		    
		    Select Case node.Name
		      // Do this alphabetically to make it easier for the programmer :-)
		      
		    Case E_AKA
		      AKA = TextNode(node)
		      
		    Case E_ALTTHEME
		      // The "alttheme" tag is deprecated.  Add to themes
		      s = TextNode(node)
		      If Len(s) > 0 Then
		        SongThemes.Append s
		      End If
		      
		    Case E_AUTHOR
		      Author = TextNode(node)
		      
		    Case E_CAPO
		      Try
		        Capo = CDbl(TextNode(node))
		      Catch ex As RuntimeException
		        Capo = 0
		      End Try
		      att = node.GetAttributeNode(A_CAPO_PRINT)
		      PrintCapoChords = (Lowercase(att.Value) = "true")
		      
		      // CCLISongNumber
		    Case E_CCLI
		      CCLISongNumber = TextNode(node)
		      
		      // Copyright
		    Case E_COPYRIGHT
		      Copyright = TextNode(node)
		      
		      // Hymn Number
		    Case E_HYMN_NUMBER
		      HymnNumber = TextNode(node)
		      
		      // Key
		    Case E_KEY
		      Key = TextNode(node)
		      
		      // Key Line
		    Case E_KEYLINE
		      KeyLine = TextNode(node)
		      
		      // Lyrics
		    Case E_LYRICS
		      Lyrics = TextNode(node)
		      
		      // Presentation
		    Case E_PRESENTATION
		      Presentation = TextNode(node)
		      
		      // Song Style
		    Case E_SONGSTYLE
		      SongStyle = New SlideStyle(node)
		      
		      // Tempo
		    Case E_TEMPO
		      Tempo = TextNode(node)
		      
		      // Themes
		    Case E_THEME
		      s = TextNode(node)
		      // Files written before this object was implemented will have a trailing semi-colon in this field.
		      If Right(s, 1) = ";" Then
		        s = Left(s, Len(s) - 1)
		      End If
		      If Len(s) > 0 Then SongThemes = Split(s, ";")
		      
		      // Time Signature
		      // ("timesig" node is deprecated)
		    Case E_TIME_SIGNATURE, E_TIMESIG
		      TimeSignature = TextNode(node)
		      
		      // Title
		    Case E_TITLE
		      Title = TextNode(node)
		      
		      // User1/2/3
		    Case E_USER1
		      User1 = TextNode(node)
		      
		    Case E_USER2
		      User2 = TextNode(node)
		      
		    Case E_USER3
		      User3 = TextNode(node)
		      
		    Case E_BACKGROUND
		      // Background is deprecated, use style instead.  Ignore for now.
		      // Need to come up with a way to put this in a style object if a style doesn't exist for this song.
		      
		    Case Else
		      InputBox.Message App.T.Translate("song/errors/unknown_element", node.Name)
		    End Select
		    
		    node = node.NextSibling
		  Wend
		  
		  CustomPresentation = ""
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub IndentXml(xNode As XmlNode, Level As Integer = 1)
		  Dim s As String
		  
		  s = StringUtils.Repeat(" ", Level * 2)
		  xNode.AppendChild xnode.OwnerDocument.CreateTextNode(EndOfLine + s)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Load(File As FolderItem = Nil) As Boolean
		  Dim xDoc As XmlDocument
		  
		  //++
		  // If a FolderItem is passed, then the object shouldn't have one.
		  // If a FolderItem isn't passed, the object should have one.
		  //--
		  If File <> Nil Then
		    If SongFolderItem = Nil Then
		      SongFolderItem = File
		    Else
		      Return False
		    End If
		  Else
		    If SongFolderItem = Nil Then Return False
		  End If
		  
		  //++
		  // Let's see if it is a valid XML document
		  //--
		  
		  Try
		    xDoc = New XmlDocument(SongFolderItem)
		  Catch ex As XmlException
		    SongFolderItem = Nil
		    Return False
		  End Try
		  
		  If FromXML(xDoc) Then
		    SongChanged = False
		    Return True
		  Else
		    SongFolderItem = Nil
		    Return False
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Load(sDoc As String) As Boolean
		  //++
		  // Load the object from the string that is passed.
		  //
		  // Note that SongFolderItem will be Nil when this is done.
		  //--
		  
		  Dim xDoc As XmlDocument
		  
		  Try
		    xDoc = New XmlDocument(sDoc)
		  Catch ex As XmlException
		    SongFolderItem = Nil
		    Return False
		  End Try
		  
		  If FromXML(xDoc) Then
		    SongFolderItem = Nil
		    SongChanged = True // True because this instance hasn't been written to a file
		    Return True
		  Else
		    Return False
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Save(f As FolderItem = Nil) As Boolean
		  Dim xDoc As XmlDocument
		  Dim tempfile As FolderItem
		  
		  If f = Nil Then f = FolderItem
		  
		  // Still Nil?  Nowhere to go.
		  
		  If f = Nil Then Return False
		  
		  xDoc = ToXML
		  
		  If xDoc = Nil Then Return False
		  
		  tempfile = Nil
		  
		  If f.Exists Then
		    // Rename existing file in the event the save fails.
		    tempfile = GetFolderItem(f.AbsolutePath, FolderItem.PathTypeAbsolute)
		    tempfile.Name = "." + tempfile.Name
		  End If
		  
		  Try
		    xdoc.SaveXml f
		  Catch ex
		    If tempfile <> Nil Then
		      tempfile.Name = Mid(tempfile.Name, 2)  //Restore backup
		      Return False
		    End If
		  End Try
		  
		  If tempfile <> Nil Then
		    tempfile.Delete
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TextNode(node As XmlNode) As String
		  //+
		  // Return the contents of the text node child of a node.
		  // Will return an empty string if there is no text node.
		  //--
		  
		  Dim c As XmlNode
		  Dim s As String
		  
		  c = node.FirstChild
		  s = ""
		  
		  While c <> Nil
		    If c IsA XmlTextNode Then
		      s = s + c.Value
		    End If
		    c = c.NextSibling
		  Wend
		  
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Themes() As String()
		  //++
		  // Return a copy of the SongThemes array
		  // It's done this way since arrays are always passed by reference, so returning
		  // the SongThemes array directly would result in a modifiable reference
		  //--
		  
		  Dim i As Integer
		  Dim numThemes As Integer
		  Dim ThemeList() As String
		  
		  numThemes = UBound(SongThemes)
		  
		  ReDim ThemeList(numThemes)
		  
		  i = 0
		  Do Until i > numThemes
		    ThemeList(i) = SongThemes(i)
		    i = i + 1
		  Loop
		  
		  Return ThemeList
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Themes(Assigns newThemes() As String)
		  Dim i As Integer
		  Dim numThemes As Integer
		  
		  numThemes = UBound(newThemes)
		  
		  ReDim SongThemes(numThemes)
		  
		  i = 0
		  Do Until i > numThemes
		    SongThemes(i) = newThemes(i)
		    i = i + 1
		  Loop
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  //++
		  // Returns a string representation of the object
		  // This is actually just the XML document with the runtime-only fields included.
		  //--
		  
		  Dim xDoc As XmlDocument
		  Dim node As XmlNode
		  
		  xDoc = ToXML
		  
		  xDoc.DocumentElement.AppendChild(xDoc.CreateComment("Elements that follow are not stored in the document file"))
		  IndentXml(xDoc.DocumentElement)
		  
		  node = xDoc.DocumentElement.AppendChild(xDoc.CreateElement("custom_presentation"))
		  node.AppendChild(xDoc.CreateTextNode(CustomPresentation))
		  IndentXml(xDoc.DocumentElement)
		  
		  node = xDoc.DocumentElement.AppendChild(xDoc.CreateElement("folderitem_name"))
		  If FolderItem <> Nil Then
		    node.AppendChild(xDoc.CreateTextNode(FolderItem.AbsolutePath))
		  End If
		  IndentXml(xDoc.DocumentElement, 0)
		  
		  Return xdoc.ToString
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToXML() As XmlDocument
		  //+
		  // Convert this instance to an XML document
		  //--
		  
		  Dim xDoc As XmlDocument
		  Dim head As XmlNode
		  Dim node As XmlNode
		  Dim attNode As XmlNode
		  Dim i As Integer
		  Dim s As String
		  Dim t As String
		  
		  xDoc = New XmlDocument
		  xDoc.PreserveWhitespace = True
		  
		  head = xdoc.AppendChild(xdoc.CreateElement(E_SONG))
		  IndentXml(head)
		  
		  // Title
		  node = head.AppendChild(xdoc.CreateElement(E_TITLE))
		  If Len(Title) > 0 Then node.AppendChild(xdoc.CreateTextNode(Title))
		  IndentXml(head)
		  
		  // Author
		  node = head.AppendChild(xDoc.CreateElement(E_AUTHOR))
		  If Len(Author) > 0 Then node.AppendChild(xdoc.CreateTextNode(Author))
		  IndentXml(head)
		  
		  // Copyright
		  node = head.AppendChild(xDoc.CreateElement(E_COPYRIGHT))
		  If Len(Copyright) > 0 Then node.AppendChild(xDoc.CreateTextNode(Copyright))
		  IndentXml(head)
		  
		  // Presentation
		  node = head.AppendChild(xDoc.CreateElement(E_PRESENTATION))
		  If Len(Presentation) > 0 Then node.AppendChild(xDoc.CreateTextNode(Presentation))
		  IndentXml(head)
		  
		  // CCLI
		  node = head.AppendChild(xDoc.CreateElement(E_CCLI))
		  If Len(CCLISongNumber) > 0 Then node.AppendChild(xDoc.CreateTextNode(CCLISongNumber))
		  IndentXml(head)
		  
		  // Lyrics
		  node = head.AppendChild(xDoc.CreateElement(E_LYRICS))
		  If Len(Lyrics) > 0 Then node.AppendChild(xDoc.CreateTextNode(Lyrics))
		  IndentXml(head)
		  
		  // Capo
		  
		  node = head.AppendChild(xDoc.CreateElement(E_CAPO))
		  If Capo <> 0 Then node.AppendChild(xDoc.CreateTextNode(CStr(Capo)))
		  If PrintCapoChords Then
		    node.SetAttribute(A_CAPO_PRINT, "True")
		  Else
		    node.SetAttribute(A_CAPO_PRINT, "False")
		  End If
		  IndentXml(head)
		  
		  // Key
		  node = head.AppendChild(xDoc.CreateElement(E_KEY))
		  If Len(Key) > 0 Then node.AppendChild(xDoc.CreateTextNode(Key))
		  IndentXml(head)
		  
		  // AKA ("Also Known As")
		  node = head.AppendChild(xDoc.CreateElement(E_AKA))
		  If Len(AKA) > 0 Then node.AppendChild(xDoc.CreateTextNode(AKA))
		  IndentXml(head)
		  
		  // Key Line
		  node = head.AppendChild(xDoc.CreateElement(E_KEYLINE))
		  If Len(KeyLine) > 0 Then node.AppendChild(xDoc.CreateTextNode(KeyLine))
		  IndentXml(head)
		  
		  // User1
		  node = head.AppendChild(xDoc.CreateElement(E_USER1))
		  If Len(User1) > 0 Then node.AppendChild(xDoc.CreateTextNode(User1))
		  IndentXml(head)
		  
		  // User2
		  node = head.AppendChild(xDoc.CreateElement(E_USER2))
		  If Len(User2) > 0 Then node.AppendChild(xDoc.CreateTextNode(User2))
		  IndentXml(head)
		  
		  // User3
		  node = head.AppendChild(xDoc.CreateElement(E_USER3))
		  If Len(User3) > 0 Then node.AppendChild(xDoc.CreateTextNode(User3))
		  IndentXml(head)
		  
		  // Theme
		  node = head.AppendChild(xDoc.CreateElement(E_THEME))
		  If UBound(SongThemes) > 0 Then node.AppendChild(xDoc.CreateTextNode(ThemeList))
		  IndentXml(head)
		  
		  // Tempo
		  node = head.AppendChild(xDoc.CreateElement(E_TEMPO))
		  If Len(Tempo) > 0 Then node.AppendChild(xDoc.CreateTextNode(Tempo))
		  IndentXml(head)
		  
		  // Time Signature
		  node = head.AppendChild(xDoc.CreateElement(E_TIME_SIGNATURE))
		  If Len(TimeSignature) > 0 Then node.AppendChild(xDoc.CreateTextNode(TimeSignature))
		  IndentXml(head)
		  
		  // Hymn Number
		  node = head.AppendChild(xDoc.CreateElement(E_HYMN_NUMBER))
		  If Len(HymnNumber) > 0 Then node.AppendChild(xDoc.CreateTextNode(HymnNumber))
		  IndentXml(head)
		  
		  // Song Style...this one's a little trickier
		  If SongStyle <> Nil Then
		    node = SongStyle.ToXml
		  End If
		  
		  head.AppendChild(xDoc.ImportNode(node, True))
		  IndentXml(head)
		  
		  Return xDoc
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongAKA
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If value <> SongAKA Then
			    SongChanged = True
			    SongAKA = value
			  End If
			End Set
		#tag EndSetter
		AKA As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongAuthor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value <> SongAuthor Then
			    SongChanged = True
			    SongAuthor = Value
			  End If
			End Set
		#tag EndSetter
		Author As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongCapo
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value <> SongCapo Then
			    SongChanged = True
			    SongCapo = Value
			  End If
			End Set
		#tag EndSetter
		Capo As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongCCLISongNumber
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value <> SongCCLISongNumber Then
			    SongChanged = True
			    SongCCLISongNumber = Value
			  End If
			End Set
		#tag EndSetter
		CCLISongNumber As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  //
			  // No Setter for this property.
			  //
			  Return SongChanged
			End Get
		#tag EndGetter
		Changed As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongCopyright
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If value <> SongCopyright Then
			    SongChanged = True
			    SongCopyright = value
			  End If
			End Set
		#tag EndSetter
		Copyright As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongCustomPresentation
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If value <> SongCustomPresentation Then
			    SongChanged = True
			    SongCustomPresentation = value
			  End If
			End Set
		#tag EndSetter
		CustomPresentation As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongFolderItem
			End Get
		#tag EndGetter
		FolderItem As FolderItem
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongHymnNumber
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value <> SongHymnNumber Then
			    SongChanged = True
			    SongHymnNumber = Value
			  End If
			End Set
		#tag EndSetter
		HymnNumber As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongKey
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value <> SongKey Then
			    SongChanged = True
			    SongKey = Value
			  End If
			End Set
		#tag EndSetter
		Key As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongKeyLine
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value <> SongKeyLine Then
			    SongChanged = True
			    SongKeyLine = Value
			  End If
			End Set
		#tag EndSetter
		KeyLine As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongLyrics
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value <> SongLyrics Then
			    SongChanged = True
			    SongLyrics = Value
			  End If
			End Set
		#tag EndSetter
		Lyrics As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongPresentation
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value <> SongPresentation Then
			    SongChanged = True
			    SongPresentation = Value
			  End If
			End Set
		#tag EndSetter
		Presentation As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongPrintCapoChords
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If value <> SongPrintCapoChords Then
			    SongChanged = True
			    SongPrintCapoChords = value
			  End If
			End Set
		#tag EndSetter
		PrintCapoChords As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected SongAKA As String
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			The author(s) of the song
		#tag EndNote
		Protected SongAuthor As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SongCapo As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			The number assigned by CCLI for this song.
			
			This is NOT the church's CCLI license number.
		#tag EndNote
		Protected SongCCLISongNumber As String
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Flag indicating if a change has been made to this object
		#tag EndNote
		Protected SongChanged As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Copyright information for the song.É
		#tag EndNote
		Protected SongCopyright As String
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			This is the custom presentation to be used for a song.
			It will be empty while songs are being edited.
			It will be filled in at presentation time.
		#tag EndNote
		Protected SongCustomPresentation As String
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			The FolderItem that points to the file on disk.
			
			Can be Nil if the song is being built in memory and hasn't been saved.
		#tag EndNote
		Protected SongFolderItem As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SongHymnNumber As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SongKey As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SongKeyLine As String
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			The lyrics as a big, multi-line text string.
		#tag EndNote
		Protected SongLyrics As String
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			OK, this may seem a little weird...
			This will hold a copy of the original Song object when edits start.
		#tag EndNote
		Protected SongOriginalObject As Song
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			This is the value that shows how the song will be presented on-screen.
			It can be overridden by SongCustomPresentation (used by sets).
		#tag EndNote
		Protected SongPresentation As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SongPrintCapoChords As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return _Style
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SongChanged = True
			  _Style = value
			End Set
		#tag EndSetter
		SongStyle As SlideStyle
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected SongTempo As String
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			A list of all the themes associated with this song
		#tag EndNote
		Protected SongThemes() As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SongTimeSignature As String
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			The title of the song.
			This does not have to be the same as the filename.
		#tag EndNote
		Protected SongTitle As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SongUser1 As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SongUser2 As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SongUser3 As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongTempo
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If value <> SongTempo Then
			    SongChanged = True
			    SongTempo = value
			  End If
			End Set
		#tag EndSetter
		Tempo As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  //++
			  // Return a semi-colon separated list of themes
			  //--
			  
			  Dim ThemeString As String
			  
			  ThemeString = Join(SongThemes, ";")
			  
			  Return ThemeString
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  //++
			  // Take a semi-colon separated list of themes and replace the SongThemes array
			  //--
			  Dim newThemes() As String
			  Dim i As Integer
			  Dim numThemes As Integer
			  
			  newThemes = Split(value, ";")
			  
			  numThemes = UBound(newThemes)
			  
			  ReDim SongThemes(numThemes)
			  
			  For i = 0 to numThemes - 1
			    SongThemes(i) = newThemes(i)
			  Next
			End Set
		#tag EndSetter
		ThemeList As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongTimeSignature
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If value <> SongTimeSignature Then
			    SongChanged = True
			    SongTimeSignature = value
			  End If
			End Set
		#tag EndSetter
		TimeSignature As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongTitle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If value <> SongTitle Then
			    SongChanged = True
			    SongTitle = value
			  End If
			End Set
		#tag EndSetter
		Title As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongUser1
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value <> SongUser1 Then
			    SongChanged = True
			    SongUser1 = Value
			  End If
			End Set
		#tag EndSetter
		User1 As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongUser2
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value <> SongUser2 Then
			    SongChanged = True
			    SongUser2 = Value
			  End If
			End Set
		#tag EndSetter
		User2 As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SongUser3
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value <> SongUser3 Then
			    SongChanged = True
			    SongUser3 = Value
			  End If
			End Set
		#tag EndSetter
		User3 As String
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		#tag Note
			Custom style for the song.  May be Nil.
		#tag EndNote
		Protected _Style As SlideStyle
	#tag EndProperty


	#tag Constant, Name = A_CAPO_PRINT, Type = String, Dynamic = False, Default = \"print", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_AKA, Type = String, Dynamic = False, Default = \"aka", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_ALTTHEME, Type = String, Dynamic = False, Default = \"alttheme", Scope = Public
	#tag EndConstant

	#tag Constant, Name = E_AUTHOR, Type = String, Dynamic = False, Default = \"author", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_BACKGROUND, Type = String, Dynamic = False, Default = \"background", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_CAPO, Type = String, Dynamic = False, Default = \"capo", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_CCLI, Type = String, Dynamic = False, Default = \"ccli", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_COPYRIGHT, Type = String, Dynamic = False, Default = \"copyright", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_HYMN_NUMBER, Type = String, Dynamic = False, Default = \"hymn_number", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_KEY, Type = String, Dynamic = False, Default = \"key", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_KEYLINE, Type = String, Dynamic = False, Default = \"key_line", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_LYRICS, Type = String, Dynamic = False, Default = \"lyrics", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_PRESENTATION, Type = String, Dynamic = False, Default = \"presentation", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_SONG, Type = String, Dynamic = False, Default = \"song", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_SONGSTYLE, Type = String, Dynamic = False, Default = \"style", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_TEMPO, Type = String, Dynamic = False, Default = \"tempo", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_THEME, Type = String, Dynamic = False, Default = \"theme", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_TIMESIG, Type = String, Dynamic = False, Default = \"timesig", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_TIME_SIGNATURE, Type = String, Dynamic = False, Default = \"time_sig", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_TITLE, Type = String, Dynamic = False, Default = \"title", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_USER1, Type = String, Dynamic = False, Default = \"user1", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_USER2, Type = String, Dynamic = False, Default = \"user2", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_USER3, Type = String, Dynamic = False, Default = \"user3", Scope = Protected
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="AKA"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Author"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Capo"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CCLISongNumber"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Changed"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Copyright"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CustomPresentation"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HymnNumber"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Key"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeyLine"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Lyrics"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Presentation"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrintCapoChords"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tempo"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeSignature"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="User1"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="User2"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="User3"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
