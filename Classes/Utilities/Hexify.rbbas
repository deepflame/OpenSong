#tag Module
Protected Module Hexify
	#tag Method, Flags = &h0
		Function Hexify(s as String, insertSpaces as Boolean = false) As String
		  #pragma disableBackgroundTasks
		  
		  If s = "" then
		    Return ""
		  End if
		  
		  Static HexTable as MemoryBlock
		  If HexTable Is Nil then
		    HexTable = new MemoryBlock(512)
		    For i as Integer = 0 to 15
		      HexTable.StringValue(i + i , 2) = "0" + Lowercase(Hex(i))
		    Next
		    For i as Integer = 16 to 255
		      HexTable.StringValue(i + i, 2) = Lowercase(Hex(i))
		    Next
		  End if
		  
		  dim inData as MemoryBlock = s
		  dim outData as MemoryBlock
		  If insertSpaces then
		    outData = new MemoryBlock(3*inData.Size - 1)
		  Else
		    outData = new MemoryBlock(2*inData.Size)
		  End if
		  
		  //access via a Ptr is a lot faster than MemoryBlock accessors
		  dim HexTablePtr as Ptr = HexTable
		  dim inDataPtr as Ptr = inData
		  dim outDataPtr as Ptr = outData
		  dim lastByte as Integer = inData.Size - 1
		  
		  If insertSpaces then
		    outDataPtr.Short(0) =  HexTablePtr.Short(2*inDataPtr.Byte(0))
		    For offset as Integer = 1 to lastByte
		      outDataPtr.Byte(3*offset - 1) = 32
		      outDataPtr.Short(3*offset) = HexTablePtr.Short(2*inDataPtr.Byte(offset))
		    Next
		  Else
		    For offset as Integer = 0 to lastByte
		      outDataPtr.Short(offset + offset) = HexTablePtr.Short(2*inDataPtr.Byte(offset))
		    Next
		  End if
		  Return DefineEncoding(outData.StringValue(0, outData.Size), Encodings.ASCII)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function NewUnhexLookupTable() As Dictionary
		  dim d as new Dictionary
		  
		  for i as Integer = 0 to 15
		    d.Value("0" + Hex(i)) = ChrB(i)
		  next
		  for i as Integer = 16 to 255
		    d.Value(Hex(i)) = ChrB(i)
		  next
		  return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TestHexify()
		  If Hexify("") <> "" then
		    MsgBox "Test Hexify("""") = """" failed."
		    Return
		  End if
		  If Hexify("", true) <> "" then
		    MsgBox "Test Hexify("""", true) = """" failed."
		    Return
		  End if
		  
		  dim testInput as String
		  For i as Integer = 0 to 255
		    testInput = testInput + Encodings.ASCII.Chr(i)
		  Next
		  
		  dim testResult as String = "00"
		  For i as Integer = 1 to 15
		    testResult = testResult + " " + "0" + Hex(i)
		  Next
		  For i as Integer = 16 to 255
		    testResult = testResult + " " + Hex(i)
		  Next
		  
		  
		  If Hexify(testInput, true) <> testResult then
		    MsgBox "Test Hexify(testInput, true) <> testResult failed."
		    Return
		  End if
		  
		  testResult = ReplaceAll(testResult, " ", "")
		  
		  If Hexify(testInput) <> testResult then
		    MsgBox "Test Hexify(testInput) <> testResult failed."
		    Return
		  End if
		  
		  MsgBox "Tests passed."
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TestUnhexify()
		  for i as Integer = 0 to 15
		    if Unhexify("0" + Hex(i)) <> ChrB(i) then
		      break
		    end if
		  next
		  
		  for i as Integer = 16 to 255
		    if Unhexify(Hex(i)) <> ChrB(i) then
		      break
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Unhexify(s as String) As String
		  //I'm not checking the validity of the input...
		  
		  static map as Dictionary = NewUnhexLookupTable
		  
		  dim output() as String
		  
		  dim inputLength as Integer = LenB(s)
		  for i as Integer = 1 to inputLength step 2
		    output.Append map.Value(MidB(s, i, 2))
		  next
		  return Join(output, "")
		End Function
	#tag EndMethod


	#tag Note, Name = Read Me
		Hexify 5/29/2006
		Charles Yeomans
		charles@declareSub.com
		
		Another fine download from www.declareSub.com.
		
		Hexify now requires REALbasic 2006.
		
		Recent changes:
		
		Hexify now takes an optional parameter insertSpaces as Boolean.  If true, then
		a space is inserted between hex bytes.
		
		The code was rewritten to use Ptrs; it's now about three times faster.
		
		A private method TestHexify was added as an idiot-check for my changes.
	#tag EndNote


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="2147483648"
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
