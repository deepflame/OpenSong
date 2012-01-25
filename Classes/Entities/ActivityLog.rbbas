#tag Class
Protected Class ActivityLog
	#tag Method, Flags = &h0
		Function ClearLog() As Boolean
		    If LogFolderItem = Nil Then Return False
		  
		  xDoc = New XmlDocument
		  xDoc.PreserveWhitespace = True
		  'Create file stub
		  xdoc.AppendChild(xdoc.CreateElement(E_LOG))
		  
		  Try
		    xdoc.SaveXml LogFolderItem
		  Catch ex
		    'TODO
		  End Try
		  
		  NumEntries = 0
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetNumEntries() As Integer
		  Dim head As XmlNode
		  Dim node As XmlNode
		  
		  If xDoc = Nil Then
		    xDoc = New XmlDocument
		    xDoc.PreserveWhitespace = True
		    'Create file stub
		    head = xdoc.AppendChild(xdoc.CreateElement(E_LOG))
		    
		    Try
		      xdoc.SaveXml LogFolderItem
		    Catch ex
		      'TODO
		    End Try
		    
		    Return 0
		  Else
		    head = xDoc.DocumentElement
		  End If
		  
		  // Verify we have a log file here...
		  
		  If head.Name <> E_LOG Then
		    Return 0
		  End If
		  
		  'TODO Define entry number limit
		  node = head.FirstChild
		  NumEntries = 0
		  While node <> Nil
		    If Left(node.Name, 5) = E_ENTRY Then
		      NumEntries = NumEntries + 1
		    End If
		    
		    node = node.NextSibling
		  Wend
		  
		  Return NumEntries
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Load(File As FolderItem = Nil) As Boolean
		  //++
		  // If a FolderItem is passed, then the object shouldn't have one.
		  // If a FolderItem isn't passed, the object should have one.
		  //--
		  If File <> Nil Then
		    If LogFolderItem = Nil Then
		      LogFolderItem = File
		    Else
		      Return False
		    End If
		  Else
		  If LogFolderItem = Nil Then Return False
		  End If
		  
		  //++
		  // Let's see if it is a valid XML document
		  //--
		  
		  Try
		    xDoc = New XmlDocument(LogFolderItem)
		  Catch ex As XmlException
		    If NOT LogFolderItem.Exists Then
		      
		    Else
		      LogFolderItem = Nil
		      Return False
		    End If
		  End Try
		  
		  Call GetNumEntries
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Load(Doc As String) As Boolean
		  //++
		  // Load the object from the string that is passed.
		  //
		  // Note that LogFolderItem will be Nil when this is done.
		  //--
		  
		  Try
		    xDoc = New XmlDocument(Doc)
		  Catch ex As XmlException
		    LogFolderItem = Nil
		    Return False
		  End Try
		  
		  Call GetNumEntries
		  Return True
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		LogFolderItem As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		NumEntries As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		xDoc As XMLDocument
	#tag EndProperty


	#tag Constant, Name = E_ENTRY, Type = String, Dynamic = False, Default = \"Entry", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = E_LOG, Type = String, Dynamic = False, Default = \"log", Scope = Protected
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
			Name="NumEntries"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
