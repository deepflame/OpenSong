#tag Module
Protected Module SmartML
	#tag Method, Flags = &h0
		Sub CloneAttributes(fromNode As XmlNode, toNode As XmlNode)
		  Dim i As Integer
		  Dim attCount As Integer
		  Dim att As XmlAttribute
		  
		  attCount = fromNode.AttributeCount
		  
		  For i = 0 To attCount - 1
		    att = fromNode.GetAttributeNode(i)
		    toNode.SetAttribute(att.Name, att.Value)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CloneChildren(fromNode As XmlNode, toNode As XmlNode)
		  Dim xchild As XmlNode
		  xchild = fromNode.FirstChild
		  While xchild <> Nil
		    toNode.AppendChild toNode.OwnerDocument.ImportNode(xchild, True)
		    xchild = xchild.NextSibling
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DisplayError()
		  InputBox.Message GetErrorMessage()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetAttribute(xnode As XmlNode, attribName As String) As String
		  Dim attribute As XmlNode
		  Dim s As String
		  Dim i As Integer
		  if xnode = Nil Then Return "" 'EMP 09/05
		  s = attribName
		  i = 0
		  //++EMP
		  // Add Try block
		  Try
		    attribute = xnode.GetAttributeNode(attribName)
		  Catch err
		    '++JRC Translated
		    MsgBox(TranslateMessage("smartml/attrib_except", "Exception with attribute %s, %s", attribName, xnode.ToString))
		    '--
		    Return ""
		  End Try
		  
		  //--
		  If attribute <> Nil Then Return attribute.Value
		  
		  ' For some reason, the following seems necessary sometimes. At least it did in RB 5.2.1
		  'For i = 1 To xnode.AttributeCount + 1 ' 5.2.1
		  For i = 0 To xnode.AttributeCount - 1 ' 5.2.2
		    attribute = xnode.GetAttributeNode(i)
		    If attribute <> Nil Then
		      If attribute.Name = s Then Return attribute.Value
		    End If
		  Next i
		  
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetChildNode(xnode As XmlNode, childName As String, create As Boolean = True) As XmlNode
		  If xnode = Nil Then Return Nil
		  
		  Dim child As XmlNode
		  
		  child = xnode.FirstChild
		  While child <> Nil
		    If child.Name = childName Then Return child
		    child = child.NextSibling
		  Wend
		  
		  If create Then Return xnode.AppendChild(xnode.OwnerDocument.CreateElement(childName))
		  
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetErrorMessage() As String
		  Return ErrorString + " (" + Str(ErrorCode) + ")"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetNode(xnode As XmlNode, nodePath As String, create As Boolean = False) As XmlNode
		  Dim parent As XmlNode
		  
		  Dim i, j As Integer
		  
		  parent = xnode
		  
		  nodePath = nodePath + "/"
		  i = 1
		  j = InStr(i, nodePath, "/")
		  While j > 0
		    parent = GetChildNode(parent, Mid(nodePath, i, j-i), create) ' GetNode will create a node if asked
		    If parent = Nil Then Return Nil
		    
		    i = j + 1
		    j = InStr(i, nodePath, "/")
		  Wend
		  
		  Return parent
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetValue(xnode As XmlNode, childPath As String, create As Boolean = True) As String
		  If xnode = Nil Then Return ""
		  
		  Dim atPos As Integer
		  atPos = InStr(childPath, "@")
		  If atPos > 0 Then
		    If atPos > 1 Then xnode = GetNode(xnode, Left(childPath, atPos-2), create)
		    Return GetAttribute(xnode, Mid(childPath, atPos+1))
		  End If
		  
		  xnode = GetNode(xnode, childPath, create)
		  If xnode <> Nil Then
		    If xnode.ChildCount > 0 Then
		      Return xnode.Child(0).Value
		    Else
		      Return ""
		    End If
		  Else
		    Return ""
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetValueB(xnode As XmlNode, childPath As String, create As Boolean = True, default As Boolean = False) As Boolean
		  Dim s As String
		  s = GetValue(xnode, childPath, create)
		  If create And Len(s) = 0 Then
		    SetValueB(xnode, childPath, default)
		    Return default
		  End If
		  If Lowercase(s) = "true" Then Return True
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetValueC(xnode As XmlNode, childPath As String, ByRef c As Color, create As Boolean = True) As Boolean
		  Dim s As String
		  s = GetValue(xnode, childPath, create)
		  If Left(s, 1) <> "#" Or Len(s) <> 7 Then Return False
		  
		  c = RGB( _
		  Val("&H" + (Mid(s, 2, 2))), _
		  Val("&H" + (Mid(s, 4, 2))), _
		  Val("&H" + (Mid(s, 6, 2))))
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValueDate(xnode As XmlNode, childPath As String, create As Boolean = True, default As Date = Nil) As Date
		  'TODO Internationalize & cross-platform
		  
		  Dim s As String
		  Dim d As New Date
		  
		  s = GetValue(xnode, childPath, create)
		  If create And Len(s) = 0 Then
		    SetValueDate(xnode, childPath, default)
		    Return default
		  End If
		  d.SQLDate = s
		  return d
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetValueF(xnode As XmlNode, childPath As String, create As Boolean = True) As FontFace
		  Dim f As New FontFace
		  Dim c As Color
		  
		  f.Name = GetValue(xnode, childPath + "/@font")
		  f.Size = GetValueN(xnode, childPath  + "/@size")
		  f.Bold = GetValueB(xnode, childPath  + "/@bold")
		  f.Italic = GetValueB(xnode, childPath  + "/@italic")
		  f.Underline = GetValueB(xnode, childPath  + "/@underline")
		  
		  f.Border = GetValueB(xnode, childPath  + "/@border")
		  If GetValueC(xnode, childPath  + "/@border_color", c) Then
		    f.BorderColor = c
		  End If
		  f.Shadow = GetValueB(xnode, childPath  + "/@shadow")
		  If GetValueC(xnode, childPath  + "/@shadow_color", c) Then
		    f.ShadowColor = c
		  End If
		  f.Fill = GetValueB(xnode, childPath  + "/@fill")
		  If GetValueC(xnode, childPath  + "/@fill_color", c) Then
		    f.FillColor = c
		  End If
		  
		  If GetValueC(xnode, childPath  + "/@color", c) Then
		    f.ForeColor = c
		  End If
		  
		  Return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetValueN(xnode As XmlNode, childPath As String, create As Boolean = True) As Double
		  Return Val(GetValue(xnode, childPath, create))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetValueP(xnode As XmlNode, childPath As String, create As Boolean = True) As Picture
		  Dim s As String
		  Dim p As Picture
		  s = GetValue(xnode, childPath, create)
		  If Len(s) = 0 Then Return Nil
		  
		  Dim f As FolderItem
		  Dim outputStream As BinaryStream
		  
		  f = GetTemporaryFolderItem()
		  If f <> Nil Then
		    outputStream = BinaryStream.Create(f, True)
		    outputStream.Write DecodeBase64(s)
		    outputStream.Close
		    p = f.OpenAsPicture
		    f.Delete
		  End If
		  
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValueTime(xnode As XmlNode, childPath As String, create As Boolean = True, default As Date = Nil) As Date
		  'TODO Internationalize & cross-platform
		  
		  Dim s As String
		  Dim d As New Date
		  
		  s = GetValue(xnode, childPath, create)
		  If create And Len(s) = 0 Then
		    SetValueTime(xnode, childPath, default)
		    Return default
		  End If
		  d.SQLDateTime = d.SQLDate + " " + s
		  return d
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Init()
		  If TargetMacOS Or TargetPPC Then
		    PathSeparator = ":"
		    Newline = Chr(13)
		  ElseIf TargetWin32 Then
		    PathSeparator = "\"
		    Newline = Chr(13) + Chr(10)
		  ElseIf TargetCarbon Then
		    PathSeparator = "/"
		    Newline = Chr(10)
		  Else
		    PathSeparator = "/"
		    Newline = Chr(10)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InsertAfter(xnode As XmlNode, newNode As String) As XmlNode
		  If xnode.NextSibling = Nil Then
		    Return xnode.Parent.AppendChild(xnode.OwnerDocument.CreateElement(newNode))
		  Else
		    Return xnode.Parent.Insert(xnode.OwnerDocument.CreateElement(newNode), xnode.NextSibling)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function InsertBefore(xnode As XmlNode, newNode As String) As XmlNode
		  Return xnode.Parent.Insert(xnode.OwnerDocument.CreateElement(newNode), xnode)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function InsertChild(xnode As XmlNode, childName As String, index As Integer) As XmlNode
		  If index < xnode.ChildCount Then
		    Return xnode.Insert(xnode.OwnerDocument.CreateElement(childName), xnode.Child(index))
		  Else
		    Return xnode.AppendChild(xnode.OwnerDocument.CreateElement(childName))
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function InsertChildNode(xnode As XmlNode, child As XmlNode, index As Integer) As XmlNode
		  If index < xnode.ChildCount Then
		    Return xnode.Insert(xnode.OwnerDocument.ImportNode(child, True), xnode.Child(index))
		  Else
		    Return xnode.AppendChild(xnode.OwnerDocument.ImportNode(child, True))
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MoveChild(xnode As XmlNode, fromIndex As Integer, toIndex As Integer) As XmlNode
		  If toIndex >= xnode.ChildCount Then
		    Return xnode.AppendChild(xnode.Child(fromIndex))
		  Else
		    Return xnode.Insert(xnode.Child(fromIndex), xnode.Child(toIndex))
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RemoveChild(xnode As XmlNode, index As Integer)
		  xnode.RemoveChild xnode.Child(index)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RemoveChild(xnode As XmlNode, child As XmlNode)
		  xnode.RemoveChild child
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RemoveChildren(xnode As XmlNode)
		  Dim xchild As XmlNode
		  
		  xchild = xnode.FirstChild
		  While xchild <> Nil
		    xnode.RemoveChild xchild
		    xchild = xnode.FirstChild
		  Wend
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RemoveSelf(xnode As XmlNode)
		  If xnode = Nil Then Return
		  If xnode.Parent <> Nil Then
		    xnode.Parent.RemoveChild xnode
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ReplaceWithImportNode(oldNode As XmlNode, newNode As XmlNode) As XmlNode
		  Dim parent, previous As XmlNode
		  
		  parent = oldNode.Parent
		  previous = oldNode.PreviousSibling
		  
		  parent.ReplaceChild oldNode.OwnerDocument.ImportNode(newNode, True), oldNode
		  If previous = Nil Then
		    Return parent.FirstChild
		  Else
		    Return previous.NextSibling
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SafeImport(fromNode As XmlNode, toNode As XmlNode)
		  ' Using this rather than the builtin ImportNode seems to stop weird problems with changes not being made until a set or whatever is reloaded
		  
		  'toNode.Name = fromNode.Name
		  
		  Dim i As Integer
		  Dim child As XmlNode
		  Dim attribute As XmlAttribute
		  
		  For i = 0 To fromNode.AttributeCount - 1
		    attribute = fromNode.GetAttributeNode(i)
		    SmartML.SetValue toNode, "@" + attribute.Name, attribute.Value
		  Next i
		  
		  For i = 0 To fromNode.ChildCount - 1
		    child = fromNode.Child(i)
		    If child.Type = XmlNodeType.ELEMENT_NODE Then
		      SafeImport child, toNode.AppendChild(toNode.OwnerDocument.CreateElement(child.Name))
		    ElseIf child.Type = XmlNodeType.TEXT_NODE Then
		      toNode.AppendChild toNode.OwnerDocument.CreateTextNode(child.Value)
		    End If
		  Next i
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetAttribute(xnode As XmlNode, attribName As String, value As String)
		  xnode.SetAttribute attribName, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetValue(xnode As XmlNode, childPath As String, value As String)
		  Dim atPos As Integer
		  atPos = InStr(childPath, "@")
		  If atPos > 0 Then
		    If atPos > 1 Then xnode = GetNode(xnode, Left(childPath, atPos-2), True)
		    If xnode <> Nil Then SetAttribute(xnode, Mid(childPath , atPos+1), value)
		    Return
		  End If
		  
		  xnode = GetNode(xnode, childPath, True)
		  If xnode <> Nil Then
		    If xnode.ChildCount > 0 Then
		      xnode.Child(0).Value = value
		      Return
		    Else
		      xnode = xnode.AppendChild(xnode.OwnerDocument.CreateTextNode(value))
		      Return
		    End If
		  Else
		    Return
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetValueB(xnode As XmlNode, childPath As String, value As Boolean)
		  If value Then
		    SetValue xnode, childPath, "true"
		  Else
		    SetValue xnode, childPath, "false"
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetValueC(xnode As XmlNode, childPath As String, c As Color)
		  Dim r, g, b As String
		  
		  r = Hex(c.red)
		  If c.red < 16 Then r = "0" + r
		  g = Hex(c.green)
		  If c.green < 16 Then g = "0" + g
		  b = Hex(c.blue)
		  If c.blue < 16 Then b = "0" + b
		  
		  SetValue xnode, childPath, "#" + r + g + b
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValueDate(xnode As XmlNode, childPath As String, D As Date)
		  If D = Nil Then Return
		  
		  SetValue xnode, childPath, D.SQLDate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetValueF(xnode As XmlNode, childPath As String, f As FontFace)
		  SetValue xnode, childPath + "/@font", f.Name
		  SetValueN xnode, childPath + "/@size", f.Size
		  SetValueB xnode, childPath + "/@bold", f.Bold
		  SetValueB xnode, childPath + "/@italic", f.Italic
		  SetValueB xnode, childPath + "/@underline", f.Underline
		  SetValueC xnode, childPath + "/@color", f.ForeColor
		  
		  SetValueB xnode, childPath  + "/@border", f.Border
		  SetValueC xnode, childPath  + "/@border_color", f.BorderColor
		  SetValueB xnode, childPath  + "/@shadow", f.Shadow
		  SetValueC xnode, childPath  + "/@shadow_color", f.ShadowColor
		  SetValueB xnode, childPath  + "/@fill", f.Fill
		  SetValueC xnode, childPath  + "/@fill_color", f.FillColor
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetValueN(xnode As XmlNode, childPath As String, value As Double)
		  SetValue xnode, childPath, Str(value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetValueP(xnode As XmlNode, childPath As String, f As FolderItem)
		  Dim inputStream As BinaryStream
		  
		  If f <> Nil Then
		    inputStream = BinaryStream.Open(f)
		    If inputStream <> Nil Then
		      SetValue xnode, childPath, EncodeBase64(inputStream.Read(f.Length))
		      inputStream.Close
		    End If
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValueTime(xnode As XmlNode, childPath As String, T As Date)
		  'TODO Internationalize & cross-platform
		  If T = Nil Then Return
		  Dim timeString As String
		  
		  timeString = T.SQLDateTime
		  timeString = Mid(timeString, Len(T.SQLDate) + 2)
		  SetValue xnode, childPath, timeString
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SwapChildren(xnode As XmlNode, index1 As Integer, index2 As Integer)
		  Dim temp As XmlNode
		  
		  temp = MoveChild(xnode, index1, index2)
		  temp = MoveChild(xnode, index2, index1)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TranslateMessage(id As String, altText As String = "", param1 As String = "", param2 As String = "", param3 As String = "") As String
		  //++
		  // Even though Translator.Translate is defined with a paramarray argument, there's no way
		  // to use one as input here and pass it along.  Therefore, only handle the most basic cases
		  // (0, 1, 2 or 3)
		  //
		  // This routine helps eliminate excessive If...Then coding in error traps by providing a
		  // means to generate a meaningful error message if the translator object is not loaded.
		  //
		  // Ed Palmer, June 2007
		  //--
		  
		  If App.T Is Nil Then
		    Return StringUtils.Sprintf(altText, param1, param2, param3)
		  Else
		    Return App.T.Translate(id, param1, param2, param3)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function XDocFromFile(f As FolderItem) As XmlDocument
		  Dim input As TextInputStream
		  Dim s As String
		  Dim d As New XmlDocument
		  d.PreserveWhitespace = False
		  
		  If f = Nil Then
		    ErrorCode = 1
		    '++JRC Translated
		    ErrorString = TranslateMessage("smartml/no_path", "The FolderItem object is Nil in XDocFromFile")
		    '--
		    Return Nil
		  ElseIf Not f.Exists Then
		    ErrorCode = 2
		    '++JRC Translated
		    ErrorString = TranslateMessage("smartml/no_file",  "File does not exist in XDocFromFile: %s", f.AbsolutePath)
		    '--
		    Return Nil
		  End If
		  input = TextInputStream.Open(f)
		  '++JRC Prevent NilObject Exception if file could not be opened
		  If input = Nil Then
		    ErrorCode = 4
		    '++JRC Translated
		    ErrorString = TranslateMessage("smartml/cant_open",  "Could not open %s in XDocFromFile: %s", f.AbsolutePath, CStr(f.LastErrorCode))
		    '--
		    return nil
		  End If
		  '--
		  s = input.ReadAll.FormatUnixEndOfLine
		  input.Close
		  Try
		    If Len(s) > 5 Then
		      's = ConvertEncoding(s, Encodings.ISOLatin1)
		      d.LoadXml(s)
		      Return d
		    Else
		      ErrorCode = 5
		      '++JRC Translated
		      ErrorString = TranslateMessage("smartml/xml_error",  "LoadXML Error from file %s", f.AbsolutePath)
		      '--
		      Return Nil
		    End If
		  Catch err As XmlException
		    ErrorCode = 3
		    '++JRC Translated
		    ErrorString = TranslateMessage("smartml/xml_exterror",  "XmlException from LoadXML on file %s, %s, %s", f.AbsolutePath, err.Line, err.Node)
		    '--
		    Return Nil
		  End Try
		Catch ex
		  If ex IsA NilObjectException Then
		    //++
		    // Most likely the Nil object is App.T and we're trying to open
		    // one of the XML documents that should be in a subdirectory of
		    // the application.  Without trapping this, the program abruptly
		    // blows up.  With this, at least a basic error message is output
		    // to give someone an idea of what is happening.
		    //--
		    ErrorString = "Error in SmartML.XDocFromFile and translator is not loaded"
		  Else
		    ErrorString = "Unexpected exception in SmartML.XDocFromFile"
		    If ErrorCode = 0 Then ErrorCode = -1
		  End If
		  If f <> Nil Then ErrorString = ErrorString + ", file is " + f.AbsolutePath
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function XDocFromString(s As String) As XmlDocument
		  Dim d As New XmlDocument
		  d.PreserveWhitespace = False
		  
		  Try
		    If Len(s) > 5 Then
		      d.LoadXml(s)
		      Return d
		    Else
		      Return Nil
		    End If
		  Catch err As XmlException
		    ErrorCode = 3
		    '++JRC Translated
		    ErrorString = TranslateMessage("smartml/xml_error",  "XML Error in XDocFromString: %s", Left(s, 30))
		    '--
		    If Len(s) > 30 Then ErrorString = ErrorString
		    Return Nil
		  End Try
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function XDocToFile(xdoc As XmlDocument, f As FolderItem) As Boolean
		  If f = Nil Then
		    ErrorCode = 11
		    '++JRC Translated
		    ErrorString = TranslateMessage("smartml/no_path", "XDocToFile: FolderItem argument is Nil")
		    '--
		    Return False
		  End If
		  
		  Dim output As TextOutputStream
		  'xdoc.Encoding = "ISO-8859-1"
		  output = TextOutputStream.Create(f)
		  If output <> Nil Then
		    output.Write XDocToString(xdoc).FormatLocalEndOfLine
		    output.Close
		    Return True
		  Else
		    ErrorCode = 12
		    '++JRC Translated
		    ErrorString = TranslateMessage("smartml/cant_create", "XDocToFile: Unable to create file: %s", f.AbsolutePath)
		    '--
		    Return False
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function XDocToString(xdoc As XmlDocument) As String
		  Dim s As String
		  
		  s = xdoc.ToString
		  s = ReplaceAll(s, "/></", "/>" + Newline + "</")
		  s = ReplaceAll(s, "?><", "?>" + Newline + "<")
		  s = ReplaceAll(s, "></", "&aardvark;")
		  s = ReplaceAll(s, "><", ">" + Newline + "  <")
		  s = ReplaceAll(s, "&aardvark;", "></")
		  s = ReplaceAll(s, "<option>", "  <option>")
		  's = ReplaceAll(s, "UTF-8", "ISO-8859-1")
		  's = ConvertEncoding(s, Encodings.ISOLatin1) ' ISO-8859-1
		  
		  Return s
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected ErrorCode As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected ErrorString As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Newline As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected PathSeparator As String
	#tag EndProperty


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
