#tag Class
Protected Class LogEntry
	#tag Method, Flags = &h0
		Function GetLogEntry(EntryNumber As Integer) As Boolean
		  //++
		  // Loads the information from the XML document into
		  // this instance's variables
		  //--
		  Dim head As XmlNode
		  Dim node As XmlNode
		  Dim entry As XmlNode
		  Dim att As XmlAttribute
		  Dim s As String
		  Dim i As Integer
		  Dim j As Integer
		  Dim D As Date
		  Dim T As Date
		  
		  If xDoc = Nil Then Return False
		  
		  head = xDoc.DocumentElement
		  
		  // Verify we have a log file here...
		  
		  If head.Name <> E_LOG Then
		    Return False
		  End If
		  
		  node = head.FirstChild
		  
		  i = 1
		  While node <> Nil
		    If node.Name = E_ENTRY + Str(EntryNumber) Then
		      
		      entry = node.Child(j)
		      While entry <> Nil
		        Select Case entry.Name
		          // Do this alphabetically to make it easier for the programmer :-)
		          
		          // Author
		        Case E_AUTHOR
		          Author = TextNode(entry)
		          
		          //CCLI Song #
		        Case E_CCLI
		          CCLISongNumber = TextNode(entry)
		          
		          //HasChords
		        Case E_CHORDS
		          HasChords = SmartML.GetValueB(node, entry.Name, false)
		          
		          //Date
		        Case E_DATE
		          D = SmartML.GetValueDate(node, entry.Name, false)
		          
		          //Description
		        Case E_DESCRIPTION
		          Description = SmartML.GetValueN(node, entry.Name, false)
		          
		          Select Case Description
		          Case 1 'Created
		            Created = True
		          Case 2 'Deleted
		            Deleted = True
		          Case 3 'Modified
		            Modified = True
		          Case 4 'Moved
		            Moved = True
		          Case 5 'Presented
		            Presented = True
		          Case 6 'Printed
		            Printed = True
		          Case 7 'Renamed
		            Renamed = True
		          End Select
		          
		          // Filename
		        Case E_FILENAME
		          SongFileName = TextNode(entry)
		          
		          //Time
		        Case E_TIME
		          T= SmartML.GetValueTime(node, entry.Name, false)
		          
		          // Title
		        Case E_TITLE
		          Title = TextNode(entry)
		          
		        Case Else
		          goto done
		          'InputBox.Message App.T.Translate("song/errors/unknown_element", entry.Name)
		        End Select
		        
		        j = j + 1
		        entry = node.Child(j)
		      Wend
		      
		      goto done
		    End If
		    
		    i = i +1
		    node = node.NextSibling
		  Wend
		  
		  done:
		  'Combine Date & Time
		  If D <> Nil And T <> Nil Then
		    DateAndTime = D
		    DateAndTime.Hour = T.Hour
		    DateAndTime.Minute = T.Minute
		    DateAndTime.Second = T.Second
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AddLogEntry() As Boolean
		  Dim head As XmlNode
		  Dim entry As XmlNode
		  Dim node As XmlNode
		  
		  If xDoc = Nil Then
		    xDoc = New XmlDocument
		    
		    head = xdoc.AppendChild(xdoc.CreateElement(E_LOG))
		  Else
		    head = xDoc.DocumentElement
		  End If
		  
		  xDoc.PreserveWhitespace = True
		  NumEntries = NumEntries + 1
		  
		  entry = head.AppendChild(xDoc.CreateElement(E_ENTRY + Str(NumEntries)))
		  
		  If DateAndTime <> Nil Then
		    'Date
		    SmartML.SetValueDate entry, E_DATE, DateAndTime
		    
		    'Time
		    SmartML.SetValueTime entry, E_TIME, DateAndTime
		  End If
		  
		  'Description
		  
		  'The user should only be able to preform one of these actions in any given second (In Theory ;)
		  
		  // Do this alphabetically to make it easier for the programmer :-)
		  If Created Then 'Created
		    SmartML.SetValueN entry, E_DESCRIPTION, 1
		  ElseIf Deleted Then 'Deleted
		    SmartML.SetValueN entry, E_DESCRIPTION, 2
		  ElseIf Modified Then 'Modifed
		    SmartML.SetValueN entry, E_DESCRIPTION, 3
		  ElseIf Moved Then 'Moved
		    SmartML.SetValueN entry, E_DESCRIPTION, 4
		  Elseif Presented Then 'Presented
		    SmartML.SetValueN entry, E_DESCRIPTION, 5
		  Elseif Printed Then 'Printed
		    SmartML.SetValueN entry, E_DESCRIPTION, 6
		  ElseIf Renamed Then 'Renamed
		    SmartML.SetValueN entry, E_DESCRIPTION, 7
		  Else
		    
		  End If
		  
		  
		  'File Name
		  SmartML.SetValue entry, E_FILENAME, SongFileName
		  
		  'Title
		  SmartML.SetValue entry, E_TITLE, Title
		  
		  'Author
		  SmartML.SetValue entry, E_AUTHOR, Author
		  
		  'CCLI #
		  SmartML.SetValue entry, E_CCLI, CCLISongNumber
		  
		  'Chords
		  SmartML.SetValueB(entry, E_CHORDS, HasChords)
		  
		  If LogFolderItem = Nil Then
		    LogFolderItem = GetFolderItem(App.DocsFolder.AbsolutePath + "\Settings\ActivityLog")
		  End If
		  If Not SmartML.XDocToFile(xDoc, LogFolderItem) Then
		    SmartML.DisplayError
		    Return False
		  End If
		  
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Log As ActivityLog)
		  If Log <> Nil Then
		    xDoc = Log.xDoc
		    LogFolderItem = Log.LogFolderItem
		    NumEntries = Log.NumEntries
		  Else
		    xDoc = Nil
		    LogFolderItem = Nil
		    NumEntries = 0
		  End If
		  
		End Sub
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
		Sub UpdateNumEntries(Log As ActivityLog)
		  Log.NumEntries = NumEntries
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CheckLyricsForChords(lyrics As string) As Boolean
		  //++
		  // This is just bascially a modified MainWindow.CheckLyricLines()
		  //
		  // Do a basic check on the lyrics lines
		  // If the first character on the line has a ".",
		  // assume it's a chord line and return True
		  //--
		  Dim lines() As String
		  Dim codes As String
		  
		  codes = "."
		  lyrics = ReplaceLineEndings(lyrics, EndOfLine.Unix)
		  lines = Split(lyrics, EndOfLine.Unix)
		  
		  For i As Integer = 0 To lines.UBound
		    If InStr(codes, Left(lines(i).ConvertEncoding(Encodings.UTF8), 1)) <> 0 Then
		      Return True
		    End If
		  Next
		  
		  Return False
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Author As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CCLISongNumber As String
	#tag EndProperty

	#tag Property, Flags = &h0
		HasChords As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Title As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected xDoc As XMLDocument
	#tag EndProperty

	#tag Property, Flags = &h0
		NumEntries As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LogFolderItem As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		SongFileName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DateAndTime As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		Presented As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Modified As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Printed As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Deleted As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Renamed As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Created As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		OldSongFileName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Moved As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Description As Integer
	#tag EndProperty


	#tag Constant, Name = E_LOG, Type = String, Dynamic = False, Default = \"log", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_AUTHOR, Type = String, Dynamic = False, Default = \"author", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_CCLI, Type = String, Dynamic = False, Default = \"ccli", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_TITLE, Type = String, Dynamic = False, Default = \"title", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_ENTRY, Type = String, Dynamic = False, Default = \"Entry", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_CHORDS, Type = String, Dynamic = False, Default = \"HasChords", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_FILENAME, Type = String, Dynamic = False, Default = \"FileName", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_DESCRIPTION, Type = String, Dynamic = False, Default = \"Description", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_DATE, Type = String, Dynamic = False, Default = \"Date", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_TIME, Type = String, Dynamic = False, Default = \"Time", Scope = Protected
	#tag EndConstant


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
		#tag ViewProperty
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
