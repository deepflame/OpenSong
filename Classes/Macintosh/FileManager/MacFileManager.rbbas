#tag Module
Protected Module MacFileManager
	#tag Method, Flags = &h0
		Function Iterate(Extends startPoint As FSRef, recurse As Boolean = False, displayPath As String = "") As Dictionary()
		  #If Not TargetCarbon
		    Return Nil
		  #endif
		  
		  //++
		  // If the object is a Folder, return a Dictionary with info about the
		  // children of the Folder
		  //++
		  Const kSizeOfHFSUniStr255 = 512
		  Const kSizeOfCatalogInfo = 144
		  Const kMaxObjects = 50
		  Const kerrFSNoMoreItems = -1417
		  Const kFSNodeIsDirectoryMask = &h0010
		  Const kFSCatInfoGettableInfo = &h3FFFF
		  
		  Dim OSErr As Integer
		  Soft Declare Function FSOpenIterator Lib InterfaceLib (ref As Ptr, iteratorFlags As Integer, ByRef iterator As Int32) As Short
		  Soft Declare Function FSCloseIterator Lib InterfaceLib (iterator As Int32) As Short
		  Soft Declare Function FSGetCatalogInfoBulk Lib InterfaceLib (iterator As Int32,  maximumObjects As Int32, ByRef actualObjects As Int32, _
		  ByRef containerChanged As Int32, whichInfo As UInt32, catalogInfos As Ptr, refs As Ptr, specs As Ptr, names As Ptr) As Short
		  Soft Declare Function CFStringCreateWithCharacters Lib InterfaceLib (alloc As Integer,  chars As Ptr, numChars As Integer) As CFStringRef
		  
		  Dim objectCount As Int32
		  Dim changed As Int32
		  Dim infoBitMap As UInt32
		  Dim catalogInfos As MemoryBlock
		  Dim iterator As Int32
		  Dim names As MemoryBlock
		  Dim refs As MemoryBlock
		  Dim f() As Dictionary
		  Dim s As String
		  Dim catalogFlags As UInt16
		  Dim childFolderFSRefs() As FSRef
		  
		  If Not startPoint.IsValid Then Return Nil
		  
		  OSErr = FSOpenIterator(startPoint, 0, iterator)
		  If OSErr <> 0 Then
		    Raise New MacOSException("MacFileManager.Iterate(FSOpenIterator)", OSErr)
		  End If
		  
		  Do 
		    catalogInfos = New MemoryBlock(kSizeOfCatalogInfo * kMaxObjects)
		    names = New MemoryBlock(kSizeOfHFSUniStr255 * kMaxObjects)
		    refs = New MemoryBlock(FSRef.sizeofFSRef * kMaxObjects)
		    
		    OSErr = FSGetCatalogInfoBulk(iterator, kMaxObjects, objectCount, changed, kFSCatInfoGettableInfo, catalogInfos, refs, Nil, names)
		    If OSErr <> 0 And OSErr <> kerrFSNoMoreItems Then
		      Raise New MacOSException("MacFileManager.Iterate(FSGetCatalogInfoBulk)", OSErr)
		    End If
		    
		    For i As Integer = 0 To objectCount - 1
		      // Get the name
		      s = DefineEncoding(names.StringValue(i * kSizeOfHFSUniStr255 + 2, 2 * names.UInt16Value(i * kSizeOfHFSUniStr255)), Encodings.UTF16)
		      s = ConvertEncoding(s, Encodings.UTF8) // Done to bypass a listbox bug shortening UTF16 strings
		      If Left(s, 1) = "." Or Left(s, 1) = "_" Then Continue For i // "Hidden" file
		      
		      Dim dictItem As New Dictionary
		      dictItem.Value("Name") = s
		      dictItem.Value("Path") = displayPath
		      // Is the item a folder?
		      catalogFlags = catalogInfos.UInt16Value(i * kSizeOfCatalogInfo)
		      catalogFlags = catalogFlags And kFSNodeIsDirectoryMask
		      
		      dictItem.Value("Folder") = (catalogFlags = kFSNodeIsDirectoryMask)
		      If dictItem.Value("Folder").BooleanValue Then
		        Dim fsr As New FSRef
		        fsr.StringValue(0, FSRef.sizeofFSRef) = refs.StringValue(i * FSRef.sizeofFSRef, FSRef.sizeofFSRef)
		        childFolderFSRefs.Append fsr
		      End If
		      
		      f.Append dictItem
		    Next
		    
		  Loop Until OSErr = kerrFSNoMoreItems
		  
		  OSErr = FSCloseIterator(iterator)
		  If OSErr <> 0 Then
		    Raise New MacOSException("MacFileManager.Iterate(FSCloseIterator)", OSErr)
		  End If
		  
		  If recurse Then
		    Dim childDict() As Dictionary
		    For Each fsr As FSRef in childFolderFSRefs
		      ReDim childDict(-1)
		      childDict = fsr.Iterate(recurse, displayPath + fsr.Name + "/")
		      For Each d As Dictionary in childDict
		        f.Append d
		      Next
		    Next
		  End If
		  
		  Return f
		End Function
	#tag EndMethod


	#tag Constant, Name = InterfaceLib, Type = String, Dynamic = False, Default = \"", Scope = Private
		#Tag Instance, Platform = Mac Classic, Language = Default, Definition  = \"InterfaceLib"
		#Tag Instance, Platform = Mac Carbon PEF, Language = Default, Definition  = \"CarbonLib"
		#Tag Instance, Platform = Mac Mach-O, Language = Default, Definition  = \"/System/Library/Frameworks/Carbon.framework/Carbon"
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
	#tag EndViewBehavior
End Module
#tag EndModule
