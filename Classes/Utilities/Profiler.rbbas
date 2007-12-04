#tag Module
Protected Module Profiler
	#tag Method, Flags = &h0
		Sub BeginProfilerEntry(desc As String)
		  If Not ProfileEnabled Then Return
		  
		  If ProfileFile = Nil Then
		    ProfileFile = GetFolderItem("profile.txt")
		    If ProfileFile.Exists Then ProfileFile.Delete
		    ProfileStream = ProfileFile.CreateTextFile
		  End If
		  
		  If ProfileFile <> Nil Then
		    ProfileStream.WriteLine MakeSpaces(UBound(LastDateStack)) + desc
		    LastDateStack.Append New Date
		    LastEntryStack.Append desc
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableProfiler()
		  ProfileEnabled = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EndProfilerEntry()
		  If Not ProfileEnabled Then Return
		  
		  If ProfileFile = Nil Then
		    ProfileFile = GetFolderItem("profile.txt")
		    If ProfileFile.Exists Then ProfileFile.Delete
		    ProfileStream = ProfileFile.CreateTextFile
		  End If
		  
		  Dim d As New Date
		  Dim diff As Double
		  
		  If ProfileFile <> Nil Then
		    diff = d.TotalSeconds - LastDateStack(UBound(LastDateStack)).TotalSeconds
		    ProfileStream.WriteLine MakeSpaces(UBound(LastDateStack)-1) + Str(diff) + " seconds (" + LastEntryStack(UBound(LastEntryStack)) + ")"
		    ProfileStream.WriteLine ""
		    LastDateStack.Remove UBound(LastDateStack)
		    LastEntryStack.Remove UBound(LastEntryStack)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MakeSpaces(count As Integer) As String
		  Dim i As Integer
		  Dim s As String
		  
		  For i = 1 To count
		    s = s + " "
		  Next i
		  
		  Return s
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private LastDateStack(0) As Date
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastEntryStack(0) As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ProfileEnabled As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ProfileFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ProfileStream As TextOutputStream
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
