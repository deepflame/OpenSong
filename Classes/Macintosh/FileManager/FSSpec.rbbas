#tag Class
Protected Class FSSpec
Inherits MemoryBlock
	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.MemoryBlock sizeOfFSSpec
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(theFSRef as FSRef)
		  Soft Declare Function FSMakeFSSpec Lib InterfaceLib (vRefNum as Short, dirID as Integer, filename as Pstring, spec as Ptr) as Short
		  Soft Declare Function FSGetCatalogInfo Lib InterfaceLib (ref as Ptr, whichInfo as Integer, catalogInfo as Ptr, outName as Ptr, fsSpec as Ptr, parentRef as Ptr) as Short
		  
		  Const noError = 0
		  Const fileNotFound = -43
		  Const kFSCatInfoNone = 0
		  
		  me.Constructor
		  If theFSRef Is Nil then
		    dim OSError as Integer = FSMakeFSSpec(0, 0, "", me)
		    If OSError <> noError and OSError <> fileNotFound then
		      Raise new MacOSException("FSMakeFSSpec", OSError)
		    End if
		  Else
		    dim OSError as Integer = FSGetCatalogInfo(theFSRef, kFSCatInfoNone, Nil, Nil, me, Nil)
		    If OSError <> 0 then
		      Raise new MacOSException("FSGetCatalogInfo", OSError)
		    End if
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As String
		  Return DefineEncoding(me.PString(6), Encodings.SystemDefault)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Convert() As FolderItem
		  Soft Declare Function FSMakeFSSpec Lib InterfaceLib (vRefNum as Short, dirID as Integer, filename as Pstring, spec as Ptr) as Short
		  
		  Const  fsRtParID = 1 //directoryID of parent of root directory
		  
		  dim f as FolderItem
		  If me.parID = fsRtParID then //I am the root directory
		    For i as Integer = 0 to VolumeCount - 1
		      If Volume(i).MacVRefNum = me.vRefNum then
		        f = Volume(i)
		        Exit
		      End if
		    Next
		    Return f
		  Else
		    dim parentSpec as new FSSpec
		    dim OSError as Integer = FSMakeFSSpec(me.vRefNum, me.parID, "", parentSpec)
		    If OSError <> 0 then
		      Return nil
		    End if
		    f = parentSpec //recursion occurs here
		    If f <> nil then
		      Return f.TrueChild(me.Name)
		    Else
		      Return nil
		    End if
		  End if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function parID() As Integer
		  Return me.Long(2)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function vRefNum() As Integer
		  Return me.Short(0)
		End Function
	#tag EndMethod


	#tag Note, Name = struct
		struct FSSpec {
		   short vRefNum;
		   long parID;
		   StrFileName name;
		};
	#tag EndNote


	#tag Constant, Name = InterfaceLib, Type = String, Dynamic = False, Default = \"", Scope = Private
		#Tag Instance, Platform = Mac Classic, Language = Default, Definition  = \"InterfaceLib"
		#Tag Instance, Platform = Mac Carbon PEF, Language = Default, Definition  = \"CarbonLib"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"/System/Library/Frameworks/Carbon.framework/Carbon"
	#tag EndConstant

	#tag Constant, Name = sizeOfFSSpec, Type = Double, Dynamic = False, Default = \"", Scope = Private
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"70"
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"262"
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
			Name="LittleEndian"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
			InheritedFrom="MemoryBlock"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="MemoryBlock"
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
