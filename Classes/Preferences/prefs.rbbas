#tag Module
Protected Module prefs
	#tag Note, Name = Overview
		For the moment, this module is just to provide a
		place to hold the path constants for the different
		preferences.
	#tag EndNote


	#tag Constant, Name = kDocumentsFolder, Type = String, Dynamic = False, Default = \"documents_folder", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kLanguage, Type = String, Dynamic = False, Default = \"language", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kUseOldFolderDB, Type = String, Dynamic = False, Default = \"documents_folder/UseOldFolderDB", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kSetsLastExportFolder, Type = String, Dynamic = False, Default = \"sets/last_export", Scope = Protected
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
