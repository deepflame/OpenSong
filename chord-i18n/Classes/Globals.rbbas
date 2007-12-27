#tag Module
Protected Module Globals
	#tag Method, Flags = &h1
		Protected Function GetFilterString(Index As integer) As string
		  Dim i As integer
		  Dim CurrIndex As integer
		  Dim Ext As Boolean
		  Dim s As string
		  Dim Pos As integer
		  
		  if Globals.Filters = Nil or Globals.Filters.Byte(0) = 0 then
		    return s
		  end if
		  Ext = false
		  Pos = 0
		  CurrIndex = 0
		  while i < Globals.Filters.Size
		    if Globals.Filters.Byte(i) = 0 then
		      if Ext = true then
		        Ext = false
		        Pos = i + 1
		      else
		        CurrIndex = CurrIndex + 1
		        if CurrIndex = Index then
		          s = Globals.Filters.CString(Pos)
		          return s
		        end if
		        Ext = true
		      end if
		    end if
		    i = i + 1
		  wend
		  
		  return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub MakeFilterArray()
		  Dim CurrPos As integer
		  Dim m As MemoryBlock
		  Dim c As integer
		  Dim s As string
		  Dim r As integer
		  Dim Ext As Boolean
		  Dim Pos As integer
		  Dim A(-1) As string
		  Dim i As integer
		  
		  CurrPos = 0
		  Pos = 0
		  Ext = false
		  Globals.Filters = NewMemoryBlock(5000)
		  c = InStr(CurrPos, Globals.AudioPluginFormats, "|")
		  
		  while c <> 0
		    r = c - CurrPos
		    s = Mid(Globals.AudioPluginFormats, CurrPos, r)
		    
		    if Ext = true then 'extention
		      Ext = false
		      Globals.Filters.CString(Pos) = " ("
		      Pos = Pos + 2
		      
		      if InStr(s, ";") <> 0 then
		        A = Split(s, ";")
		        for i = 0 to UBound(A)
		          Globals.Filters.CString(Pos) = "*." + A(i)
		          Pos = Pos + A(i).Len + 2
		          
		          if i = UBound(A) then
		            
		          else
		            Globals.Filters.CString(Pos) = ";"
		            Pos = Pos + 1
		          end if
		          
		        next
		      else
		        Globals.Filters.CString(Pos) = "*." + s
		        Pos = Pos + s.Len + 2
		      end if
		      
		      Globals.Filters.CString(Pos) = ")"
		      Pos = Pos + 1
		      Globals.Filters.Byte(Pos) = 0
		      Pos = Pos + 1
		      
		      if InStr(s, ";") <> 0 then
		        for i = 0 to UBound(A)
		          Globals.Filters.CString(Pos) = "*." + A(i)
		          Pos = Pos + A(i).Len + 2
		          
		          if i = UBound(A) then
		            
		          else
		            Globals.Filters.CString(Pos) = ";"
		            Pos = Pos + 1
		          end if
		          
		        next
		      else
		        Globals.Filters.CString(Pos) = "*." + s
		        Pos = Pos + s.Len + 2
		      end if
		      
		      Globals.Filters.Byte(Pos) = 0
		      Pos = Pos + 1
		    else
		      Ext = true
		      Globals.Filters.CString(Pos) = s
		      Pos = Pos + s.Len
		      'm.Byte(Pos) = 0
		    end if
		    
		    CurrPos = CurrPos + r + 1
		    c = InStr(CurrPos, Globals.AudioPluginFormats, "|")
		    
		  wend
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Audio!
		A property deleted from this module
		was "SXMSAudio As SXMS"
		
		This was taken out to allow for a mainstream
		cross-platform version until other audio options
		(or an #ifdef) can be utilized
		
		EMP, 17 Feb 2006
	#tag EndNote


	#tag Property, Flags = &h1
		Protected AudioPluginFormats As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentSongFolder As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentSongPickerFolder As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Filters As MemoryBlock
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LastSongFolder As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected OldFolderSel As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected OldSongFileName As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected OldSongSel As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_InputBoxOpen As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_Presentation As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_ScripturePickerOpen As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_SongPickerOpen As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected WhitespaceChars() As string
	#tag EndProperty

	#tag Property, Flags = &h0
		SongActivityLog As ActivityLog
	#tag EndProperty


	#tag Constant, Name = CTRL_V, Type = Integer, Dynamic = False, Default = \"22", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ENTER, Type = Integer, Dynamic = False, Default = \"10", Scope = Public
	#tag EndConstant


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
		#tag ViewProperty
			Name="CurrentSongPickerFolder"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
