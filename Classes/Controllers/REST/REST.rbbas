#tag Module
Protected Module REST
	#tag Method, Flags = &h0
		Function CrLf() As String
		  Return Encodings.ASCII.Chr(13) + Encodings.ASCII.Chr(10)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ParseURI(data As String, ByRef resource As String, ByRef action As String, ByRef identifier As String, ByRef parameters As Dictionary) As Integer
		  Dim iPart As Integer = 0
		  
		  If IsNull(parameters) Then
		    parameters = New Dictionary()
		  End If
		  
		  For Each part As String In data.Split("/")
		    
		    part = part.Trim()
		    Select Case iPart
		    Case 0
		      'Skip, there always is a leading slash
		      'Abort when that is not the case
		      If part <> "" Then
		        Exit For
		      End If
		    Case 1
		      resource = LowerCase(part)
		    Case 2
		      action = LowerCase(part)
		      
		    Case 3
		      Select Case part.InStr(":")
		      Case 0
		        'This is an identifier
		        identifier = part
		      Case 1
		        'This is an identifier, starting with ":" (Ruby style REST)
		        identifier = part.Mid(2)
		      Else
		        'Skip id and handles as param
		        parameters.Value(part.Left(part.InStr(":")-1)) = part.Mid(part.InStr(":")+1)
		      End Select
		      
		    Else
		      
		      If part.CountFields(":") > 1 Then
		        parameters.Value(part.Left(part.InStr(":")-1)) = part.Mid(part.InStr(":")+1)
		      Else
		        parameters.Value(part) = true
		      End If
		      
		    End Select
		    
		    iPart = iPart + 1
		  Next
		  
		  Return iPart
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UrlDecode(s As String) As String
		  // takes a Unix-encoded string and decodes it to the standard text encoding.
		  
		  // Based on DecodeFromUnixString
		  // By Sascha René Leib, published 11/08/2003 on the Athenaeum
		  // http://web.archive.org/web/20060520231659/http://realbasic.thezaz.com/Athenaeum/Browse.php?by=category&category=2
		  
		  dim r as String
		  dim c as Integer ' current char
		  dim i as Integer ' loop var
		  
		  for i= 1 to lenB(s)
		    c = ascB(midB(s, i, 1))
		    
		    if c = 37 then ' %
		      r = r + ChrB(val("&h" + MidB(s, i+1, 2)))
		      i = i + 2
		    else
		      r = r + ChrB(c)
		    end if
		  next ' i
		  
		  return r
		End Function
	#tag EndMethod


	#tag Note, Name = Readme
		This module and underlying classes provide a RESTful API to OpenSong.
		This API enables remote control and user interface implementations on
		other platforms than those supported by RealBasic.
		For al full description of the API itself, see http://www.opensong.org/d/api
		
		Architecture description
		The REST module provides several utility functions and contants.
		It primarily acts as container and namespace for the REST functional classes.
		
		The RESTServer is the entry point for all requests. This object acts as server that accepts connections and manages resources.
		A resource must implement the RESTResource interface. A RESTResource implementation needs to be registered to the RESTServer.
		There is no limitation to the number of resources that can be used as long as each resource has a unique name.
		
		The RESTServer creates a RESTSocket object for each connection that is established. The RESTSocket handles basic data communication
		over a TCPSocket. The communicated protocol is not encoded in RESTSocket, but is dispatched to a RESTProtocolHandler implementation.
		The supported protocols are HTTP and WebSocket, implemented in RESTHttpHandler and RESTWebSocketHandler.
		The initial protocol used by the RESTSocket is HTTP. The protocol can be switched by calling the ProtocolUpgrade method.
		The upgrade is executed right after completion of the handing of the incoming data.
		
		Credits:
		The REST Server is inspired by the HTTP Server Classes for REALbasic 2006r3
		by The ZAZ Studios, http://www.thezaz.com/opensource/realbasic/server/http/
	#tag EndNote


	#tag Constant, Name = kAccessControlAllowOrigin, Type = String, Dynamic = False, Default = \"Access-Control-Allow-Origin", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kContentType, Type = String, Dynamic = False, Default = \"Content-Type", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kContentTypeHtml, Type = String, Dynamic = False, Default = \"text/html", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kContentTypeJpeg, Type = String, Dynamic = False, Default = \"image/jpeg", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kContentTypeText, Type = String, Dynamic = False, Default = \"text/plain", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kContentTypeXml, Type = String, Dynamic = False, Default = \"text/xml", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kHeaderAllow, Type = String, Dynamic = False, Default = \"Allow", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kHeaderAuthorization, Type = String, Dynamic = False, Default = \"Authorization", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kHeaderContentLength, Type = String, Dynamic = False, Default = \"Content-Length", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kHeaderWWWAuthenticate, Type = String, Dynamic = False, Default = \"WWW-Authenticate", Scope = Public
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
