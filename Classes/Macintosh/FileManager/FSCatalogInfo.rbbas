#tag Class
Protected Class FSCatalogInfo
Inherits MemoryBlock
	#tag Method, Flags = &h0
		Sub Constructor()
		  Const sizeOfFSCatalogInfo = 144
		  Super.MemoryBlock(sizeOfFSCatalogInfo)
		End Sub
	#tag EndMethod


	#tag Note, Name = Struct
		struct FSCatalogInfo {
		  UInt16              nodeFlags;
		  FSVolumeRefNum      volume;
		  UInt32              parentDirID;
		  UInt32              nodeID;
		  UInt8               sharingFlags;
		  UInt8               userPrivileges;
		  UInt8               reserved1;
		  UInt8               reserved2;
		  UTCDateTime         createDate;
		  UTCDateTime         contentModDate;
		  UTCDateTime         attributeModDate;
		  UTCDateTime         accessDate;
		  UTCDateTime         backupDate;
		
		  UInt32              permissions[4];
		  UInt8               finderInfo[16];
		  UInt8               extFinderInfo[16]; 
		  UInt64              dataLogicalSize;
		  UInt64              dataPhysicalSize;
		  UInt64              rsrcLogicalSize;
		  UInt64              rsrcPhysicalSize;
		  UInt32              valence;
		  TextEncoding        textEncodingHint;
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
