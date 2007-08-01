#tag Class
Protected Class FSRef
Inherits MemoryBlock
	#tag Method, Flags = &h0
		Sub Constructor()
		  
		  Super.MemoryBlock sizeOfFSRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(f as FolderItem)
		  If f Is Nil then
		    f = GetFolderItem("")
		  End if
		  
		  Soft Declare Function FSGetVolumeInfo Lib InterfaceLib (volume as Short, volumeIndex as Integer, actualVolume as Ptr, whichInfo as Integer, info as Ptr, volumeName as Ptr, rootDirectory as Ptr) as Short
		  Soft Declare Function FSMakeFSRefUnicode Lib InterfaceLib (parentPtr as Ptr, nameLength as Integer, name as CString, enc as Integer, outRef as Ptr) as Short
		  
		  Const kTextEncodingUnknown = &hffff
		  Const kFSVolInfoNone = &h0000
		  
		  me.Constructor
		  
		  dim OSErr as Integer
		  If f.Parent Is nil then //f is the root directory of the volume
		    OSErr = FSGetVolumeInfo(f.MacVRefNum, 0, Nil, kFSVolInfoNone, Nil, Nil, me)
		  Else
		    dim parentFSRef as new FSRef(f.Parent)
		    dim itemName as String = ConvertEncoding(f.Name, Encodings.UTF16)
		    OSErr = FSMakeFSRefUnicode(parentFSRef, Len(itemName), itemName, kTextEncodingUnknown, me)
		  End if
		  If OSErr <> 0 then
		    Raise new MacOSException("FSMakeFSRefUnicode", OSErr)
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Path() As String
		  If Not System.IsFunctionAvailable("FSRefMakePath", InterfaceLib) then
		    Return ""
		  End if
		  Soft Declare Function FSRefMakePath Lib InterfaceLib (ref as Ptr, path as Ptr, maxPathSize as Integer) as Integer
		  
		  dim pathBuffer as MemoryBlock = new MemoryBlock(256)
		  dim OSError as Integer = FSRefMakePath(me, pathBuffer, pathBuffer.Size)
		  If OSError <> 0 then
		    Return ""
		  End if
		  Return Trim(DefineEncoding(pathBuffer.StringValue(0, pathBuffer.Size), Encodings.ASCII))
		  
		  
		  'OSStatus FSRefMakePath (
		  'const FSRef * ref,
		  'UInt8 * path,
		  'UInt32 maxPathSize
		  ');
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Convert() As FolderItem
		  If Not System.IsFunctionAvailable("FSGetCatalogInfo", InterfaceLib) then
		    Return nil
		  End if
		  Soft Declare Function FSGetCatalogInfo Lib InterfaceLib (ref as Ptr, whichInfo as Integer, catalogInfo as Ptr, outName as Ptr, fsSpec as Ptr, parentRef as Ptr) as Short
		  
		  Const  fsRtParID = 1
		  Const kFSCatInfoNone = &h0000000
		  Const kFSCatInfoVolume = &h00000004
		  Const kFSCatInfoParentDirID = &h00000008
		  
		  
		  //the block below is a workaround for a MacOS problem.  When the condition below is satisfied, FSGetCatalogInfo 
		  //returns a different value for the volumeID of the boot Volume than does an FSSpec.  FSSpec has the volumeID that
		  //that agrees with the value returned by Volume(0).MacVRefNum, hence the workaround.
		  dim OSVersion as Integer
		  If TargetPPC and System.Gestalt("sysv", OSVersion) and OSVersion >= &h1000 then
		    dim theFSSpec as  new FSSpec(me)
		    Return theFSSpec.Operator_Convert
		  End if
		  ///
		  
		  dim f as FolderItem
		  dim parentRef as new FSRef
		  dim catalogInfo as new FSCatalogInfo
		  dim OSError as Integer = FSGetCatalogInfo(me, kFSCatInfoVolume + kFSCatInfoParentDirID, catalogInfo, Nil, Nil, parentRef)
		  If OSError <> 0 then
		    Return nil
		  End if
		  dim parentDirectoryID as Integer = catalogInfo.Long(4)
		  If parentDirectoryID = fsRtParID then //is root directory, and parentRef is invalid
		    dim volumeID as Integer = catalogInfo.Short(2)
		    For i as Integer = 0 to VolumeCount - 1
		      If Volume(i).MacVRefNum = volumeID then
		        f = Volume(i)
		        Exit
		      End if
		    Next
		    Return f
		  Else
		    f = parentRef //calls Operator_Convert recursively
		    If f Is nil then
		      Return nil
		    End if
		    dim itemName as new HFSUniStr255
		    OSError = FSGetCatalogInfo(me, kFSCatInfoNone, Nil, itemName, Nil, Nil)
		    If OSError <> 0 then
		      Return nil
		    End if
		    Return f.TrueChild(itemName)
		  End if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(theFSSpec as FSSpec)
		  If theFSSpec Is Nil then
		    theFSSpec = new FSSpec
		  End if
		  
		  Soft Declare Function FSpMakeFSRef Lib InterfaceLib (source as Ptr, newRef as Ptr) as Short
		  
		  me.Constructor()
		  dim OSError as Integer = FSpMakeFSRef(theFSSpec, me)
		  If OSError <> 0 then
		    Raise new MacOSException("FSpMakeFSRef", OSError)
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsValid() As Boolean
		  If Not System.IsFunctionAvailable("FSGetCatalogInfo", InterfaceLib) then
		    Return false
		  End if
		  Soft Declare Function FSGetCatalogInfo Lib InterfaceLib (ref as Ptr, whichInfo as Integer, catalogInfo as Ptr, outName as Ptr, fsSpec as Ptr, parentRef as Ptr) as Short
		  
		  Const kFSCatInfoNone = 0
		  
		  dim OSError as Integer = FSGetCatalogInfo(me, kFSCatInfoNone, Nil, Nil, Nil, Nil)
		  Return (OSError = 0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As String
		  If Not System.IsFunctionAvailable("FSGetCatalogInfo", InterfaceLib) then
		    Return ""
		  End if
		  Soft Declare Function FSGetCatalogInfo Lib InterfaceLib (ref as Ptr, whichInfo as Integer, catalogInfo as Ptr, outName as Ptr, fsSpec as Ptr, parentRef as Ptr) as Short
		  
		  Const kFSCatInfoNone = 0
		  
		  dim itemName as new HFSUniStr255
		  dim OSErr as Integer = FSGetCatalogInfo(me, kFSCatInfoNone, Nil, itemName, Nil, Nil)
		  If OSErr = 0 then
		    Return itemName
		  Else
		    Return ""
		  End if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AlternateConstructor(f as FolderItem)
		  If f Is Nil then
		    Raise new InvalidParameterException("FSRef.Constructor: f cannot be nil")
		  End if
		  If NOT f.Exists then
		    Raise new InvalidParameterException("FSRef.Constructor: f must exist.")
		  End if
		  
		  Soft Declare Function FSGetVolumeInfo Lib InterfaceLib (volume as Short, volumeIndex as Integer, actualVolume as Ptr, whichInfo as Integer, info as Ptr, volumeName as Ptr, rootDirectory as Ptr) as Short
		  Soft Declare Function FSMakeFSRefUnicode Lib InterfaceLib (parentPtr as Ptr, nameLength as Integer, name as CString, enc as Integer, outRef as Ptr) as Short
		  
		  Const kTextEncodingUnknown = &hffff
		  Const fsRtParID = 1
		  Const kFSVolInfoNone = &h0000
		  
		  me.Constructor()
		  If f.MacDirID = fsRtParID then //f is a volume, so get root directory directly
		    dim OSError as Integer = FSGetVolumeInfo(f.MacVRefNum, 0, Nil, kFSVolInfoNone, Nil, Nil, me)
		  Else
		    dim parentRef as new FSRef(new FSSpec(f.Parent))
		    dim fileName as String = ConvertEncoding(f.name, Encodings.UTF16)
		    dim OSError as Integer = FSMakeFSRefUnicode(parentRef, Len(fileName), fileName, kTextEncodingUnknown, me)
		    If OSError <> 0 then
		      Raise new MacOSException("FSMakeFSRefUnicode", OSError)
		    End if
		  End if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(theFSRef as FSRef) As Boolean
		  If theFSRef Is Nil then
		    Return false
		  End if
		  
		  If Not System.IsFunctionAvailable("FSCompareFSRefs", InterfaceLib) then
		    Return false
		  End if
		  Soft Declare Function FSCompareFSRefs Lib InterfaceLib (ref1 as Ptr, ref2 as Ptr) as Short
		  
		  dim OSError as Integer = FSCompareFSRefs(me, theFSRef)
		  Return (OSError <> 0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Parent() As FSRef
		  If Not System.IsFunctionAvailable("FSGetCatalogInfo", InterfaceLib) then
		    Return nil
		  End if
		  Soft Declare Function FSGetCatalogInfo Lib InterfaceLib (ref as Ptr, whichInfo as Integer, catalogInfo as Ptr, outName as Ptr, fsSpec as Ptr, parentRef as Ptr) as Short
		  
		  Const kFSCatInfoNone = 0
		  
		  dim theParent as new FSRef
		  dim OSErr as Integer = FSGetCatalogInfo(me, kFSCatInfoNone, Nil, Nil, Nil, theParent)
		  If OSErr = 0 then
		    Return theParent
		  Else
		    Return nil
		  End if
		End Function
	#tag EndMethod


	#tag Constant, Name = InterfaceLib, Type = String, Dynamic = False, Default = \"", Scope = Private
		#Tag Instance, Platform = Mac Classic, Language = Default, Definition  = \"InterfaceLib"
		#Tag Instance, Platform = Mac Carbon PEF, Language = Default, Definition  = \"CarbonLib"
		#Tag Instance, Platform = Mac Mach-O, Language = Default, Definition  = \"/System/Library/Frameworks/Carbon.framework/Carbon"
	#tag EndConstant

	#tag Constant, Name = sizeofFSRef, Type = Double, Dynamic = False, Default = \"80", Scope = Public
	#tag EndConstant


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
