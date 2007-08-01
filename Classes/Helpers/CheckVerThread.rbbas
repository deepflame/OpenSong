#tag Class
Protected Class CheckVerThread
Inherits Thread
	#tag Event
		Sub Run()
		  Dim major, minor, bug As Integer
		  Dim s As String
		  Dim xml As XmlDocument
		  
		  Dim sock As New HTTPSocket
		  sock.httpProxyAddress = SmartML.GetValue(App.MyMainSettings.DocumentElement, "proxy")
		  sock.httpProxyPort = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "proxy/@port")
		  'sock.Yield = True
		  s = sock.Get("http://www.opensong.org/downloads/OpenSongInstall.xml", 20)
		  
		  If Len(s) = 0 Then Return
		  Try
		    xml = SmartML.XDocFromString(s)
		  Catch XmlException
		    Return
		  End Try
		  
		  If xml <> Nil Then
		    major = SmartML.GetValueN(xml.DocumentElement, "version/@major")
		    minor = SmartML.GetValueN(xml.DocumentElement, "version/@minor")
		    bug = SmartML.GetValueN(xml.DocumentElement, "version/@bug")
		    
		    If major > App.MajorVersion Or _
		      (major = App.MajorVersion And minor > App.MinorVersion) Or _
		      (major = App.MajorVersion And minor = App.MinorVersion And bug > App.BugVersion) Then
		      InputBox.Message App.T.Translate("load_settings/latest_version/newer_available", Str(major) + "." + Str(minor) + "." + Str(bug))
		    End If
		  End If
		  
		End Sub
	#tag EndEvent


End Class
#tag EndClass
