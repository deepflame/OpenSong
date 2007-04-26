#tag Class
Protected Class DebugOutput
	#tag Method, Flags = &h0
		Sub Constructor()
		  DebugTOS = Nil
		  DebugFile = Nil
		  Enabled = False
		  If System.EnvironmentVariable("OPENSONGDEBUGLEVEL") = "" Then
		    DebugLevel = 1
		  Else
		    DebugLevel = CDbl(System.EnvironmentVariable("OPENSONGDEBUGLEVEL"))
		  End If
		  '++JRC
		  AppendLog = True
		  '--
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Done()
		  If DebugTOS <> Nil Then DebugTOS.Close
		  DebugTOS = Nil
		  DebugFile = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Init() As Boolean
		  If DebugTOS <> Nil Then Return True
		  If Enabled Then
		    If System.EnvironmentVariable("OPENSONGDEBUGFILE") = "" Then
		      DebugFile = New FolderItem("Debug.txt")
		    Else
		      DebugFile = New FolderItem(System.EnvironmentVariable("OPENSONGDEBUGFILE"))
		    End If
		    If DebugFile.Exists Then 
		      '++JRC
		      if AppendLog then
		        DebugTOS = DebugFile.AppendToTextFile
		      else
		        DebugFile.Delete
		        DebugTOS = DebugFile.CreateTextFile
		      end if
		    Else
		      DebugTOS = DebugFile.CreateTextFile
		      '--
		    End If
		    Return DebugTOS <> Nil
		  End If
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
		  Return DebugLevel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Level(Assigns NewLevel As Integer)
		  Dim ex As New OutOfBoundsException
		  
		  If NewLevel >= MINDEBUGLEVEL And NewLevel <= MAXDEBUGLEVEL Then
		    DebugLevel = NewLevel
		  Else
		    ex.Message = "DebugLevel must be between " + Str(MINDEBUGLEVEL) + " and " + Str(MAXDEBUGLEVEL) +_
		    ", requested level was " + Str(NewLevel)
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

	#tag Method, Flags = &h0
		Sub Write(text As String, Level As Integer = 3)
		  If Not Enabled Then Return
		  
		  If DebugTOS = Nil Then 
		    If Not Init Then Return
		  End  If
		  
		  If Level <= DebugLevel Then
		    DebugTOS.WriteLine(text)
		    DebugTOS.Flush
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


End Class
#tag EndClass
