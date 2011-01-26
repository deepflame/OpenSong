#tag Class
Protected Class DebugOutput
	#tag Method, Flags = &h1
		Protected Sub CloseLog()
		  If Not (DebugTOS Is Nil) Then
		    DebugTOS.Close
		    DebugTOS = Nil
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  SetDefaults
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(logFile As FolderItem)
		  SetDefaults
		  DebugFile = logFile
		  OpenLog
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  Done
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Done()
		  CloseLog
		  DebugFile = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Init() As Boolean
		  OpenLog
		  Return True
		Catch ex
		  MsgBox("DebugOutput couldn't Init: " + ex.message)
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LessDetail() As Integer
		  If DebugLevel > MINDEBUGLEVEL Then DebugLevel = DebugLevel - 1
		  Return DebugLevel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Level() As Integer
		  If Not Enabled Then Return MINDEBUGLEVEL - 1
		  Return DebugLevel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Level(Assigns NewLevel As Integer)
		  Dim ex As New OutOfBoundsException
		  
		  If NewLevel < MINDEBUGLEVEL Then
		    Enabled = False
		    Return '++JRC Prevent OOB Exception when NewLevel = 0 (Disabled)
		  End If
		  
		  If NewLevel >= MINDEBUGLEVEL And NewLevel <= MAXDEBUGLEVEL Then
		    DebugLevel = NewLevel
		    Enabled = True
		  Else
		    ex.Message = "DebugLevel must be between " + Str(MINDEBUGLEVEL) + " and " + Str(MAXDEBUGLEVEL) +_
		    ", requested level was " + Str(NewLevel)
		    Enabled = False
		    Raise ex
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MoreDetail() As Integer
		  If DebugLevel < MAXDEBUGLEVEL Then DebugLevel = DebugLevel + 1
		  Return DebugLevel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub OpenLog()
		  If Not (DebugFile Is Nil) And (DebugTOS Is Nil) Then
		    If AppendLog Then
		      DebugTOS = TextOutputStream.Append(DebugFile)
		    Else
		      If DebugFile.Exists Then DebugFile.Delete
		      DebugTOS = TextOutputStream.Create(DebugFile)
		    End If
		  End If
		  
		Catch
		  System.DebugLog "DebugOutput.OpenLog: Unable to open file."
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetDefaults()
		  DebugTOS = Nil
		  DebugFile = Nil
		  Enabled = True
		  '++JRC
		  AppendLog = True
		  '--
		  DebugLevel = 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetOutput(logFile As FolderItem, append As Boolean = False)
		  AppendLog = append
		  If Not (DebugFile Is Nil) Then
		    CloseLog
		  End If
		  
		  DebugFile = logFile
		  OpenLog
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write(text As String, Level As Integer = 3)
		  If Not Enabled Then Return
		  
		  If (Not (DebugFile Is Nil)) And (DebugTOS Is Nil) Then
		    OpenLog
		  End If
		  
		  If Level <= DebugLevel Then
		    If DebugFile Is Nil Then
		      System.DebugLog "[OpenSong] " + text
		    Else
		      DebugTOS.WriteLine(text)
		      DebugTOS.Flush
		    End If
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AppendLog As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected DebugFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Indicates the lowest level we should print
			debug messages for (0 is effectively disabled)
		#tag EndNote
		Protected DebugLevel As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected DebugTOS As TextOutputStream
	#tag EndProperty

	#tag Property, Flags = &h0
		Enabled As Boolean
	#tag EndProperty


	#tag Constant, Name = MAXDEBUGLEVEL, Type = Integer, Dynamic = False, Default = \"10", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MINDEBUGLEVEL, Type = Integer, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="AppendLog"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
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
