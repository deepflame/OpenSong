#tag Class
Protected Class HFSUniStr255
Inherits MemoryBlock
	#tag Method, Flags = &h0
		Sub Constructor()
		  Const sizeOfHFSUniStr255 = 512
		  
		  Super.MemoryBlock(sizeOfHFSUniStr255)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Convert() As String
		  
		  Return ConvertEncoding(DefineEncoding(me.StringValue(2, 2*me.UInt16Value(0)), Encodings.UTF16), Encodings.UTF8)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(RawPtr As MemoryBlock)
		  // Calling the overridden superclass constructor.
		  Const sizeOfHFSUniStr255 = 512
		  Super.MemoryBlock(sizeOfHFSUniStr255)
		  Dim i As Integer
		  
		  For i = 0 To sizeOfHFSUniStr255 - 1
		    Me.Byte(i) = RawPtr.Byte(i)
		  Next
		End Sub
	#tag EndMethod


	#tag Note, Name = struct
		struct HFSUniStr255 {
		   UInt16 length;
		   UniChar unicode[255];
		};
		
		
	#tag EndNote


	#tag ViewBehavior
		#tag ViewProperty
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			InheritedFrom="MemoryBlock"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="MemoryBlock"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
