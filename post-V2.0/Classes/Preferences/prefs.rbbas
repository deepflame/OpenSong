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

	#tag Constant, Name = kLyricsReplaceWithSpace, Type = String, Dynamic = False, Default = \"songs/lyrics/whitespace", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kPPTViewLocation, Type = String, Dynamic = False, Default = \"pptview_location", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kSetsLastExportFolder, Type = String, Dynamic = False, Default = \"sets/last_export", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kSongsPreviewWithChords, Type = String, Dynamic = False, Default = \"songs/preview/showchords", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kUseOldBibleFactoryRegEx, Type = String, Dynamic = False, Default = \"biblefactory/useoldregex", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kUseOldFolderDB, Type = String, Dynamic = False, Default = \"documents_folder/UseOldFolderDB", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kUseSheetDialogs, Type = String, Dynamic = False, Default = \"dialogs/@usesheets", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kVideolanLocation, Type = String, Dynamic = False, Default = \"videolan_location", Scope = Protected
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
