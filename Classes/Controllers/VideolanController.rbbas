#tag Class
Protected Class VideolanController
	#tag Method, Flags = &h0
		Sub Constructor()
		  m_vlcShell = New Shell()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Start(parameters As String) As Boolean
		  Dim videolanLocation As FolderItem = App.MainPreferences.GetValueFI(Prefs.kVideolanLocation, Nil, False)
		  
		  If m_running Then
		    Stop()
		  End If
		  
		  If Not IsNull( videolanLocation ) Then
		    Dim cmd As String = """" + VideolanLocation.AbsolutePath() + """  " + VLC_INIT + " " + parameters + " vlc://quit"
		    
		    m_vlcShell.Mode = 1 'Asynchronous
		    m_vlcShell.Execute( cmd )
		    
		    m_running = True
		  Else
		    m_running = False
		    MsgBox(App.T.Translate("errors/videolan_app_missing"))
		  End If
		  
		  Return m_running
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Stop()
		  Dim telnet As EasyTCPSocket
		  
		  If m_running Then
		    telnet = New EasyTCPSocket
		    
		    telnet.Address = "localhost"
		    telnet.Port = 4212 'The default VLC telnet port
		    telnet.Connect()
		    
		    If telnet.WaitForConnection(5) Then
		      telnet.Write "OpenSong" + EndOfLine 'The password specified in VLC_INIT
		      telnet.Write "shutdown" + EndOfLine
		    End If
		    
		    telnet.Close()
		    
		    If m_vlcShell.IsRunning Then
		      'Close any running external application instance.
		      m_vlcShell.Close()
		    End If
		  End If
		  
		  m_running = False
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private m_running As boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_vlcShell As Shell = Nil
	#tag EndProperty


	#tag Constant, Name = VLC_INIT, Type = String, Dynamic = False, Default = \"-I telnet --telnet-password\x3DOpenSong --dummy-quiet --global-key-quit\x3DCtrl-Alt-Shift-q", Scope = Private
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
End Class
#tag EndClass
