#tag Class
Protected Class HTMLExportOptions
	#tag Method, Flags = &h0
		Function Clone() As HTMLExportOptions
		  Dim newCopy As HTMLExportOptions
		  
		  newCopy = New HTMLExportOptions
		  
		  newCopy.EmbedCSS = EmbedCSS
		  newCopy.PrintStyle = PrintStyle
		  newCopy.UniqueFiles = UniqueFiles
		  
		  If mOutputFolder = Nil Then
		    newCopy.mOutputFolder = Nil
		  Else
		    newcopy.mOutputFolder = New FolderItem(mOutputFolder)
		  End If
		  
		  If mStyleSheet = Nil Then
		    newCopy.mStyleSheet = Nil
		  Else
		    newCopy.mStyleSheet = new FolderItem(mStyleSheet)
		  End If
		  
		  Return newCopy
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  EmbedCSS = False
		  PrintStyle = False
		  UniqueFiles = True
		  
		  mOutputFolder = Nil
		  
		  mStyleSheet = App.AppFolder.Child("OpenSong Settings").Child("style.css")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CopyFrom(source As HTMLExportOptions)
		  EmbedCSS = source.EmbedCSS
		  PrintStyle = source.PrintStyle
		  UniqueFiles = source.UniqueFiles
		  
		  mOutputFolder = source.mOutputFolder
		  mStyleSheet = source.mStyleSheet
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  mOutputFolder = Nil
		  mStyleSheet = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load(prefs As IPreferences)
		  EmbedCSS = prefs.GetValueB(kEmbedCSS, False, True)
		  PrintStyle = prefs.GetValueB(kPrintStyle, False, True)
		  UniqueFiles = prefs.GetValueB(kUniqueFiles, True, True)
		  
		  If mOutputFolder <> Nil Then
		    mOutputFolder = Nil
		  End If
		  mOutputFolder = prefs.GetValueFI(kFolder, Nil, True)
		  
		  If mOutputFolder = Nil Then
		    mOutputFolder = SpecialFolder.Documents
		  End If
		  
		  If mStyleSheet <> Nil Then
		    mStyleSheet = Nil
		  End If
		  
		  Dim defaultStyleSheet As FolderItem
		  If PrintStyle Then
		    defaultStyleSheet = Nil
		  Else
		    defaultStyleSheet = App.AppFolder.Child("OpenSong Settings").Child("style.css")
		  End If
		  mStyleSheet = prefs.GetValueFI(kStyleSheet, defaultStyleSheet, True)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save(prefs As IPreferences)
		  prefs.SetValueB(kEmbedCSS, EmbedCSS)
		  prefs.SetValueB(kPrintStyle, PrintStyle)
		  prefs.SetValueB(kUniqueFiles, UniqueFiles)
		  prefs.SetValueFI(kFolder, mOutputFolder)
		  prefs.SetValueFI(kStyleSheet, mStyleSheet)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		#tag Note
			If true, the CSS for the document should be embedded in the HTML file.
			If false, link to a separate CSS file
		#tag EndNote
		EmbedCSS As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Storage for the OutputFolder computed property
		#tag EndNote
		Private mOutputFolder As FolderItem = Nil
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Local store for the StyleSheet computed property
		#tag EndNote
		Private mStyleSheet As FolderItem = Nil
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			The folder where the HTML (and optionally CSS) files should be saved.
		#tag EndNote
		#tag Getter
			Get
			  Return mOutputFolder
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If value = Nil Then
			    mOutputFolder = Nil
			    Return
			  End If
			  //
			  // Check for valid item before changing
			  //
			  If Not value.Exists Then
			    Dim r As RuntimeException
			    r.ErrorNumber = -1
			    r.Message = "Folder does not exist"
			    Return
			  End If
			  
			  If Not value.IsReadable Then
			    Dim r As RuntimeException
			    r.ErrorNumber = -2
			    r.Message = "Folder is not readable"
			    Return
			  End If
			  
			  If Not value.Directory Then
			    Dim r As RuntimeException
			    r.ErrorNumber = -3
			    r.Message = "Folder must be a directory"
			    Return
			  End If
			  
			  mOutputFolder = value
			End Set
		#tag EndSetter
		OutputFolder As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		#tag Note
			If true, CSS should be created based upon the current print settings
			If false, use the default stylesheet
		#tag EndNote
		PrintStyle As Boolean = False
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mStyleSheet
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If value = Nil Then
			    mStyleSheet = Nil
			    Return
			  End If
			  //
			  // Check for valid item before changing
			  //
			  If Not value.Exists Then
			    Dim r As RuntimeException
			    r.ErrorNumber = -1
			    r.Message = "File does not exist"
			    Return
			  End If
			  
			  If Not value.IsReadable Then
			    Dim r As RuntimeException
			    r.ErrorNumber = -2
			    r.Message = "File is not readable"
			    Return
			  End If
			  
			  If value.Directory Then
			    Dim r As RuntimeException
			    r.ErrorNumber = -3
			    r.Message = "File must be a regular file"
			    Return
			  End If
			  
			  mStyleSheet = value
			End Set
		#tag EndSetter
		StyleSheet As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		#tag Note
			If true, multiple documents (songs, etc.) will be exported to separate files
			If false, all documents involved in an export will be combined into one HTML file
			(Note: this applies to the content; the CSS style sheet is excluded from this setting and its handling is defined by the EmbedCSS property)
		#tag EndNote
		UniqueFiles As Boolean
	#tag EndProperty


	#tag Constant, Name = kEmbedCSS, Type = String, Dynamic = False, Default = \"style/@embed", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kFolder, Type = String, Dynamic = False, Default = \"folder", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kPrintStyle, Type = String, Dynamic = False, Default = \"style/@print", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kStyleSheet, Type = String, Dynamic = False, Default = \"style", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kUniqueFiles, Type = String, Dynamic = False, Default = \"folder/@unique", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="EmbedCSS"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
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
			Name="PrintStyle"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
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
		#tag ViewProperty
			Name="UniqueFiles"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
