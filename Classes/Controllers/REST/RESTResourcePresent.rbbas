#tag Class
Protected Class RESTResourcePresent
Implements REST.RESTResource
	#tag Method, Flags = &h0
		Function Name() As String
		  // Part of the REST.RESTResource interface.
		  
		  Return "present"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Process(protocolHandler As REST.RESTProtocolHandler) As REST.RESTresponse
		  // Part of the REST.RESTResource interface.
		  
		  Dim result As New REST.RESTresponse
		  Dim action As String = protocolHandler.Action()
		  
		  Select Case action
		  Case "list", _
		    "slide", _
		    "slide_preview"
		    
		    result.response = "Todo."
		    result.status = "501 Not Implemented"
		    
		  Case "slide_image"
		    
		    If Not IsNull(PresentWindow.CurrentPicture) Then
		      result.response = PresentWindow.CurrentPicture.GetData(Picture.FormatJPEG, Picture.QualityHigh)
		      result.headers.Value(REST.kContentType) = REST.kContentTypeJpeg
		      result.headers.Value("Expires") = "Tue, 08 Feb 2011 14:02:00 GMT"    // a certain date in the past ...
		      result.headers.Value("Cache-Control") = "no-cache, must-revalidate"  // HTTP/1.1
		      result.headers.Value("Pragma") = "no-cache"
		    Else
		      result.response = "The current slide is not available."
		      result.status = "404 Not Found"
		    End If
		    
		  Else
		    Select Case protocolHandler.Method()
		    Case "POST"
		      
		      If Globals.Status_Presentation Then
		        Dim success, problem As Boolean = False
		        
		        Select Case action
		        Case "next_slide"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_NEXT_SLIDE)
		        Case "previous_slide"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_PREV_SLIDE)
		        Case "first_slide"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_FIRST_SLIDE)
		        Case"last_slide"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_LAST_SLIDE)
		        Case"next_section"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_NEXT_SECTION)
		        Case"previous_section"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_PREV_SECTION)
		        Case"jump_to_chorus"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_CHORUS)
		        Case"jump_to_bridge"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_BRIDGE)
		        Case"jump_to_prechorus"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_PRECHORUS)
		        Case"jump_to_tag"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_TAG)
		        Case "close_presentation"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_EXIT_NOPROMPT)
		        Case"normal_screen"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_NORMAL)
		        Case"toggle_black"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_BLACK)
		        Case"toggle_white"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_WHITE)
		        Case"toggle_hide"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_HIDE)
		        Case"toggle_logo"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_LOGO)
		        Case"toggle_freeze"
		          success = PresentWindow.PerformAction(PresentWindow.ACTION_FREEZE)
		        Case"alert", _
		          "jump_to_verse_n", _
		          "jump_to_song_n", _
		          "insert_scripture", _
		          "insert_song"
		          
		          problem = True
		          result.response = "Todo."
		          result.status = "501 Not Implemented"
		          
		        Else
		          problem = True
		          result.response = "The requested action is not available."
		          result.status = "404 Not Found"
		        End Select
		        
		        If Not problem Then
		          If success Then
		            result.response = "OK"
		          Else
		            result.response = "The requested action failed."
		            result.status = "500 Internal Server Error"
		          End If
		        End If
		        
		      Else
		        result.response = "There is no running presentation, requested action cannot be executed."
		        result.status = "403 Forbidden"
		      End If
		      
		    Else
		      result.response = "The request method is not allowed, use POST."
		      result.status = "405 Method Not Allowed"
		      result.headers.Value(REST.kHeaderAllow) = "POST"
		    End Select
		    
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
