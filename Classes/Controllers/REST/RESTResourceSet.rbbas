#tag Class
Protected Class RESTResourceSet
Implements REST.RESTResource
	#tag Method, Flags = &h21
		Private Function GetSet(setName As String) As XmlDocument
		  Dim f As FolderItem
		  Dim setXml As XmlDocument = Nil
		  
		  setName = ReplaceAll(setName, "/", "")
		  setName = ReplaceAll(setName, "\", "")
		  setName = ReplaceAll(setName, "..", "")
		  
		  
		  f = App.DocsFolder.Child("Sets").Child(setName)
		  If (f.Exists()) Then
		    setXml = SmartML.XDocFromFile(f)
		  End If
		  
		  return setXml
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSetSlide(setName As String, slideIndex As Integer) As REST.RESTResponse
		  Dim result As REST.RESTresponse = Nil
		  Dim setXml As XmlDocument
		  Dim xml As XmlDocument
		  Dim root, slide As XmlNode
		  Dim slide_group As XmlNode
		  
		  slideIndex = Max(slideIndex, 1)
		  
		  setXml = GetSet(setName)
		  If IsNull(setXml) Then
		    result = New REST.RESTresponse("The requested set is not available.", "404 Not Found")
		  Else
		    
		    result = New REST.RESTresponse
		    
		    xml = result.CreateXmlResponse(Name(), "slide", setName)
		    root = xml.DocumentElement()
		    slide = root.AppendChild(xml.CreateElement("slide"))
		    SmartML.SetValueN(slide, "@id", slideIndex)
		    
		    slide_group = SmartML.GetNode(setXml.DocumentElement, "slide_groups", True).FirstChild
		    Dim i As Integer = 1
		    While i < slideIndex And Not IsNull(slide_group)
		      slide_group  = slide_group.NextSibling
		      i = i + 1
		    Wend
		    
		    If Not IsNull(slide_group) Then
		      SmartML.CloneAttributes slide_group, slide
		      
		      If slide_group.GetAttribute("type") = "song" Then
		        
		        Dim f As FolderItem = MainWindow.Songs.GetFile(slide_group.GetAttribute("path") + "/" +slide_group.GetAttribute("name"))
		        If f <> Nil And f.Exists Then
		          Dim songDoc As XmlDocument = SmartML.XDocFromFile(f)
		          If Not IsNull(songDoc) then
		            slide.AppendChild(xml.ImportNode(songDoc.DocumentElement(), True))
		          End If
		        End If
		        
		      Else
		        SmartML.CloneChildren slide_group, slide
		        SmartML.CloneAttributes slide_group, slide
		      End If
		      
		    End If
		    
		    result.response = xml.ToString
		    
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ListSets() As REST.RESTResponse
		  Dim result As New REST.RESTresponse
		  Dim xml As XmlDocument
		  Dim root, set As XmlNode
		  
		  xml = result.CreateXmlResponse(Name(), "list")
		  root = xml.DocumentElement()
		  
		  For i As Integer = 0 To MainWindow.pop_sets_sets.ListCount()-1
		    set = root.AppendChild(xml.CreateElement("set"))
		    SmartML.SetValueN(set, "@id", i)
		    set.AppendChild(xml.CreateTextNode(MainWindow.pop_sets_sets.List(i)))
		  Next
		  
		  result.response = xml.ToString
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ListSetSlides(setName As String) As REST.RESTResponse
		  Dim result As REST.RESTresponse = Nil
		  Dim setXml As XmlDocument
		  Dim xml As XmlDocument
		  Dim root, slide As XmlNode
		  Dim slide_groups, xchild As XmlNode
		  Dim id As Integer
		  
		  setXml = GetSet(setName)
		  If IsNull(setXml) Then
		    result = New REST.RESTresponse("The requested set is not available.", "404 Not Found")
		  Else
		    
		    result = New REST.RESTresponse
		    
		    xml = result.CreateXmlResponse(Name(), "slides", setName)
		    root = xml.DocumentElement()
		    
		    slide_groups = SmartML.GetNode(setXml.DocumentElement, "slide_groups", False)
		    If Not IsNull(slide_groups) Then
		      
		      xchild = slide_groups.FirstChild
		      id = 0
		      While xchild <> Nil
		        id = id + 1
		        
		        slide = root.AppendChild(xml.CreateElement("slide"))
		        SmartML.SetValueN(slide, "@id", id)
		        SmartML.SetValue(slide, "@name", xchild.GetAttribute("name"))
		        SmartML.SetValue(slide, "@type", xchild.GetAttribute("type"))
		        
		        If xchild.GetAttribute("type") = "song" Then
		          SmartML.SetValue(slide, "@presentation", xchild.GetAttribute("presentation"))
		          SmartML.SetValue(slide, "@path", xchild.GetAttribute("path"))
		        Else
		          SmartML.SetValue(slide, "title", SmartML.GetValue(xchild, "title"))
		          SmartML.SetValue(slide, "subtitle", SmartML.GetValue(xchild, "subtitle"))
		        End If
		        
		        xchild = xchild.NextSibling
		      Wend
		      
		    End If
		    
		    result.response = xml.ToString
		    
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As String
		  // Part of the REST.RESTResource interface.
		  
		  Return "set"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Process(protocolHandler As REST.RESTProtocolHandler) As REST.RESTresponse
		  // Part of the REST.RESTResource interface.
		  Dim result As REST.RESTresponse
		  
		  Select Case protocolHandler.Action()
		  Case "", _
		    "list"
		    
		    result = ListSets()
		    
		  Case "slide", _
		    "slides"
		    
		    If IsNull(protocolHandler.Parameter("slide", Nil)) Then
		      result = ListSetSlides(protocolHandler.Identifier())
		    Else
		      result = GetSetSlide(protocolHandler.Identifier(), protocolHandler.Parameter("slide", 0))
		    End If
		    
		  case "load", _
		    "present"
		    
		    Select Case protocolHandler.Method()
		    Case "POST"
		      
		      result = New REST.RESTresponse("Todo.", "501 Not Implemented")
		      
		    Else
		      result = New REST.RESTresponse("The request method is not allowed, use POST.", "405 Method Not Allowed")
		      result.headers.Value(REST.kHeaderAllow) = "POST"
		      
		    End Select
		    
		  Else
		    result = New REST.RESTresponse("The requested action is not available.", "404 Not Found")
		  End Select
		  
		  Return result
		End Function
	#tag EndMethod


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
End Class
#tag EndClass
