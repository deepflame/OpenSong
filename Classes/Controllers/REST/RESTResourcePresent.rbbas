#tag Class
Protected Class RESTResourcePresent
Implements REST.RESTResource
	#tag Method, Flags = &h21
		Private Function GetSlide(identifier As String) As REST.RESTResponse
		  Dim result As REST.RESTresponse = Nil
		  Dim xml As XmlDocument
		  Dim root, slide As XmlNode
		  Dim slide_group, xslide As XmlNode
		  Dim slideIndex As Integer = Max(CDbl(identifier), 1)
		  
		  If IsNull(PresentWindow.CurrentSet) Then
		    result = New REST.RESTresponse("The requested slide is not available, no active presentation.", "404 Not Found")
		  Else
		    result = New REST.RESTresponse
		    
		    xml = result.CreateXmlResponse(Name(), "slide", identifier)
		    root = xml.DocumentElement()
		    
		    xslide = SetML.GetSlide(PresentWindow.CurrentSet, slideIndex)
		    If Not IsNull(xslide) Then
		      
		      slide_group = xslide.Parent.Parent
		      slide = root.AppendChild(xml.CreateElement("slide"))
		      
		      SmartML.CloneChildren slide_group, slide
		      SmartML.CloneAttributes slide_group, slide
		      
		    End If
		    
		    result.response = xml.ToString
		    
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSlideImage(identifier As String, preview As Boolean, width As Integer, height As Integer, quality As Integer) As REST.RESTResponse
		  Dim result As REST.RESTResponse
		  Dim imageData As MemoryBlock = Nil
		  
		  If preview Then
		    If width = 0 Or height = 0 Then
		      If PresentWindow.HelperActive Then
		        If width = 0 then width = PresentHelperWindow.cnv_preview_next.Width
		        If height = 0 then height = PresentHelperWindow.cnv_preview_next.Height
		      Else
		        If width = 0 then width = 160
		        If height = 0 then height = 120
		      End If
		    End If
		  Else
		    If width = 0 Or height = 0 Then
		      Dim presentScreen As Integer = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@present") - 1
		      If presentScreen < 0 Or presentScreen + 1 > OSScreenCount() Then presentScreen = 0
		      
		      If width = 0 then width = OSScreen(presentScreen).Width
		      If height = 0 then height = OSScreen(presentScreen).Height
		    End If
		  End If
		  
		  width = Min(Max(width, 0), 4096)
		  height = Min(Max(height, 0), 4096)
		  quality = Min(Max(quality, 0), 100)
		  
		  If Not preview And identifier = "current" Then
		    imageData = PresentWindow.CurrentPicture.GetData(Picture.FormatJPEG, quality)
		  Else
		    Dim slide As XmlNode = SetML.GetSlide(PresentWindow.CurrentSet, CDbl(identifier))
		    If Not IsNull(slide) Then
		      Dim image As Picture = New Picture(width, height, OSScreen(0).Depth)
		      Try
		        SetML.DrawSlide image.Graphics, slide, SetML.GetStyle(slide)
		        imageData = image.GetData(Picture.FormatJPEG, quality)
		      Catch e As NilObjectException
		        imageData = Nil
		      End Try
		    End If
		  End If
		  
		  If Not IsNull(imageData) Then
		    result = NEW REST.RESTResponse()
		    
		    result.response = imageData
		    result.headers.Value(REST.kContentType) = REST.kContentTypeJpeg
		    result.headers.Value("Expires") = "Tue, 09 Feb 2011 14:02:00 GMT"    // a certain date in the past ...
		    result.headers.Value("Cache-Control") = "no-cache, must-revalidate"  // HTTP/1.1
		    result.headers.Value("Pragma") = "no-cache"
		  Else
		    result = New REST.RESTResponse("The current slide is not available.", "404 Not Found")
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetStatus() As REST.RESTResponse
		  Dim result As New REST.RESTResponse
		  Dim xml As XmlDocument
		  Dim root, active, present, screen, slide As XmlNode
		  
		  xml = result.CreateXmlResponse(Name(), "status")
		  root = xml.DocumentElement()
		  present = root.AppendChild(xml.CreateElement("presentation"))
		  If Globals.Status_Presentation Then
		    SmartML.SetValueN(present, "@running", 1)
		  Else
		    SmartML.SetValueN(present, "@running", 0)
		  End If
		  
		  If Globals.Status_Presentation Then
		    Dim mode As String
		    Select Case PresentWindow.Mode
		    Case "B"
		      mode = "black"
		    Case "F"
		      mode = "freeze"
		    Case "H"
		      mode = "hidden"
		    Case "L"
		      mode = "logo"
		    Case "N"
		      mode = "normal"
		    Case "W"
		      mode = "white"
		    End Select
		    SmartML.SetValue(present, "screen", mode)
		    screen = SmartML.GetNode(present, "screen")
		    SmartML.SetValue(screen, "@mode", PresentWindow.Mode)
		    
		    slide = present.AppendChild(xml.CreateElement("slide"))
		    SmartML.SetValue(slide, "@itemnumber", Str(PresentWindow.CurrentSlide))
		    If Not IsNull(PresentWindow.XCurrentSlide) Then
		      SmartML.SetValue(slide, "name", SmartML.GetValue(PresentWindow.XCurrentSlide.Parent.Parent, "@name"))
		      SmartML.SetValue(slide, "title", SmartML.GetValue(PresentWindow.XCurrentSlide.Parent.Parent, "title"))
		    End If
		  End If
		  
		  result.response = xml.ToString
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function HandleScreen(protocolHandler As REST.RESTProtocolHandler) As REST.RESTresponse
		  Dim result As REST.RESTResponse
		  
		  If protocolHandler.Method() = "POST" Then
		    Dim supported, success As Boolean
		    supported = True
		    success = False
		    
		    Select Case protocolHandler.Identifier()
		    Case"normal"
		      success = PresentWindow.PerformAction(PresentWindow.ACTION_NORMAL)
		    Case"toggle_black", _
		      "black"
		      success = PresentWindow.PerformAction(PresentWindow.ACTION_BLACK)
		    Case"toggle_white", _
		      "white"
		      success = PresentWindow.PerformAction(PresentWindow.ACTION_WHITE)
		    Case"toggle_hide", _
		      "hide"
		      success = PresentWindow.PerformAction(PresentWindow.ACTION_HIDE)
		    Case"toggle_logo", _
		      "logo"
		      success = PresentWindow.PerformAction(PresentWindow.ACTION_LOGO)
		    Case"toggle_freeze", _
		      "freeze"
		      success = PresentWindow.PerformAction(PresentWindow.ACTION_FREEZE)
		    Case"alert"
		      success = PresentWindow.PerformAction(PresentWindow.ACTION_ALERT, protocolHandler.Parameter("message", ""))
		    Else
		      supported = False
		    End Select
		    
		    If supported Then
		      If success Then
		        result = New REST.RESTResponse("OK")
		      Else
		        result = New REST.RESTResponse("The requested action failed.", "500 Internal Server Error")
		      End If
		    Else
		      result = New REST.RESTResponse("The requested action is not available.", "404 Not Found")
		    End If
		    
		  Else
		    result = New REST.RESTresponse("The request method is not allowed, use POST.", "405 Method Not Allowed")
		    result.headers.Value(REST.kHeaderAllow) = "POST"
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function HandleSection(protocolHandler As REST.RESTProtocolHandler) As REST.RESTresponse
		  Dim result As REST.RESTResponse
		  
		  If protocolHandler.Method() = "POST" Then
		    Dim supported, success As Boolean
		    supported = True
		    success = False
		    
		    Select Case protocolHandler.Identifier()
		    Case"next_section"
		      success = PresentWindow.PerformAction(PresentWindow.ACTION_NEXT_SECTION)
		    Case"previous_section"
		      success = PresentWindow.PerformAction(PresentWindow.ACTION_PREV_SECTION)
		    Else
		      supported = False
		    End Select
		    
		    If supported Then
		      If success Then
		        result = New REST.RESTResponse("OK")
		      Else
		        result = New REST.RESTResponse("The requested action failed.", "500 Internal Server Error")
		      End If
		    Else
		      result = New REST.RESTResponse("The requested action is not available.", "404 Not Found")
		    End If
		    
		  Else
		    result = New REST.RESTresponse("The request method is not allowed, use POST.", "405 Method Not Allowed")
		    result.headers.Value(REST.kHeaderAllow) = "POST"
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function HandleSlide(protocolHandler As REST.RESTProtocolHandler) As REST.RESTresponse
		  Dim result As REST.RESTResponse = Nil
		  
		  If protocolHandler.Identifier() = "" Or _
		    protocolHandler.Identifier() = "list" Then
		    
		    result = ListSlides()
		    
		  ElseIf protocolHandler.Identifier() <> "" Then
		    
		    If protocolHandler.Parameter("preview", false) Then
		      result = GetSlideImage(protocolHandler.Identifier(), true, _
		      protocolHandler.Parameter("width", 0), _
		      protocolHandler.Parameter("height", 0), _
		      protocolHandler.Parameter("quality", 50))
		    ElseIf protocolHandler.Parameter("image", false) Then
		      result = GetSlideImage(protocolHandler.Identifier(), false, _
		      protocolHandler.Parameter("width", 0), _
		      protocolHandler.Parameter("height", 0), _
		      protocolHandler.Parameter("quality", 85))
		    Else
		      result = GetSlide(protocolHandler.Identifier())
		    End If
		    
		  Else
		    If protocolHandler.Method() = "POST" Then
		      Dim supported, success As Boolean
		      supported = True
		      success = False
		      
		      Select Case protocolHandler.Identifier()
		      Case "next"
		        success = PresentWindow.PerformAction(PresentWindow.ACTION_NEXT_SLIDE)
		      Case "previous"
		        success = PresentWindow.PerformAction(PresentWindow.ACTION_PREV_SLIDE)
		      Case "first"
		        success = PresentWindow.PerformAction(PresentWindow.ACTION_FIRST_SLIDE)
		      Case"last"
		        success = PresentWindow.PerformAction(PresentWindow.ACTION_LAST_SLIDE)
		        
		      Case "song", _
		        "scripture"
		        
		        Return New REST.RESTResponse("Todo.", "501 Not Implemented")
		        
		      Else
		        supported = False
		      End Select
		      
		      If supported Then
		        If success Then
		          result = New REST.RESTResponse("OK")
		        Else
		          If IsNull(result) Then
		            result = New REST.RESTResponse("The requested action failed.", "500 Internal Server Error")
		          End If
		        End If
		      Else
		        result = New REST.RESTResponse("The requested action is not available.", "404 Not Found")
		      End If
		      
		    Else
		      result = New REST.RESTresponse("The request method is not allowed, use POST.", "405 Method Not Allowed")
		      result.headers.Value(REST.kHeaderAllow) = "POST"
		    End If
		  End If
		  
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function HandleSong(protocolHandler As REST.RESTProtocolHandler) As REST.RESTresponse
		  Dim result As REST.RESTResponse
		  
		  If protocolHandler.Method() = "POST" Then
		    Dim supported, success As Boolean
		    supported = True
		    success = False
		    
		    Select Case protocolHandler.Identifier()
		    Case"current"
		      
		      If protocolHandler.Parameter("chorus", false) Then
		        success = PresentWindow.PerformAction(PresentWindow.ACTION_CHORUS)
		      ElseIf protocolHandler.Parameter("bridge", false) Then
		        success = PresentWindow.PerformAction(PresentWindow.ACTION_BRIDGE)
		      ElseIf protocolHandler.Parameter("prechorus", false) Then
		        success = PresentWindow.PerformAction(PresentWindow.ACTION_PRECHORUS)
		      ElseIf protocolHandler.Parameter("tag", false) Then
		        success = PresentWindow.PerformAction(PresentWindow.ACTION_TAG)
		      Else
		        supported = False
		      End If
		      
		    Else
		      
		      Dim index As Integer = Val(protocolHandler.Identifier())
		      If index > 0 Then
		        If protocolHandler.Parameter("verse", false) Then
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_VERSE, index)
		        Else
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_SONG, index)
		        End If
		      Else
		        result = New REST.RESTResponse("The requested song or verse is not available.", "404 Not Found")
		      End If
		      
		    End Select
		    
		    If supported Then
		      If success Then
		        result = New REST.RESTResponse("OK")
		      Else
		        result = New REST.RESTResponse("The requested action failed.", "500 Internal Server Error")
		      End If
		    Else
		      result = New REST.RESTResponse("The requested action is not available.", "404 Not Found")
		    End If
		    
		  Else
		    result = New REST.RESTresponse("The request method is not allowed, use POST.", "405 Method Not Allowed")
		    result.headers.Value(REST.kHeaderAllow) = "POST"
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ListSlides() As REST.RESTResponse
		  Dim result As REST.RESTresponse = Nil
		  Dim xml As XmlDocument
		  Dim root, slide As XmlNode
		  Dim slide_group, xslide As XmlNode
		  
		  If IsNull(PresentWindow.CurrentSet) Then
		    result = New REST.RESTresponse("The requested set is not available, no active presentation.", "404 Not Found")
		  Else
		    result = New REST.RESTresponse
		    
		    xml = result.CreateXmlResponse(Name(), "slide")
		    root = xml.DocumentElement()
		    
		    xslide = SetML.GetSlide(PresentWindow.CurrentSet, 1)
		    While Not IsNull(xslide)
		      
		      If xslide.PreviousSibling Is Nil Then
		        Dim xPrevSlideGroup As XmlNode = xslide.Parent.Parent.PreviousSibling
		        If xPrevSlideGroup <> Nil Then
		          
		          If SmartML.GetValue(xPrevSlideGroup, "@type", False) = "style" Then
		            slide = root.AppendChild(xml.CreateElement("slide"))
		            SmartML.SetValue(slide, "@name", SmartML.GetValue(slide_group, "@name"))
		            SmartML.SetValue(slide, "@type", "style")
		          End If
		          
		        End If
		      End If
		      
		      slide_group = xslide.Parent.Parent
		      slide = root.AppendChild(xml.CreateElement("slide"))
		      SmartML.SetValueN(slide, "@id", SmartML.GetValueN(slide_group, "@ItemNumber"))
		      SmartML.SetValue(slide, "@name", SmartML.GetValue(slide_group, "@name"))
		      SmartML.SetValue(slide, "@type", SmartML.GetValue(slide_group, "@type"))
		      
		      If slide_group.GetAttribute("type") = "song" Then
		        SmartML.SetValue(slide, "@presentation", SmartML.GetValue(slide_group, "presentation"))
		      End If
		      
		      SmartML.SetValue(slide, "title", SmartML.GetValue(slide_group, "title"))
		      SmartML.SetValue(slide, "subtitle", SmartML.GetValue(slide_group, "subtitle"))
		      
		      xslide = SetML.GetNextSlide(xslide)
		    Wend
		    
		    result.response = xml.ToString
		    
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As String
		  // Part of the REST.RESTResource interface.
		  
		  Return "presentation"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Process(protocolHandler As REST.RESTProtocolHandler) As REST.RESTresponse
		  // Part of the REST.RESTResource interface.
		  
		  Dim result As REST.RESTresponse
		  Dim action As String = protocolHandler.Action()
		  Dim identifier As String = protocolHandler.Identifier()
		  
		  If action = "status" Then
		    result = GetStatus
		    
		  Else
		    If Globals.Status_Presentation Then
		      Select Case action
		      Case "song", _
		        "songs"
		        result =HandleSong(protocolHandler)
		        
		      Case "slide", _
		        "slides"
		        result =HandleSlide(protocolHandler)
		        
		      Case "screen"
		        result =HandleScreen(protocolHandler)
		        
		      Case "close"
		        If protocolHandler.Method() = "POST" Then
		          If PresentWindow.PerformAction(PresentWindow.ACTION_EXIT_NOPROMPT) Then
		            result = New REST.RESTresponse("OK")
		          Else
		            result = New REST.RESTresponse("The requested action failed.",  "500 Internal Server Error")
		          End If
		        Else
		          result = New REST.RESTresponse("The request method is not allowed, use POST.", "405 Method Not Allowed")
		          result.headers.Value(REST.kHeaderAllow) = "POST"
		        End If
		        
		      Else
		        result = New REST.RESTresponse("The requested action is not available.", "404 Not Found")
		      End Select
		    Else
		      result = New REST.RESTresponse("There is no running presentation, requested action cannot be executed.", "403 Forbidden")
		    End If
		  End If
		  
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
