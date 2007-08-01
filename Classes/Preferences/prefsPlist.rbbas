#tag Class
Protected Class prefsPlist
Implements IPreferences
	#tag Method, Flags = &h1
		Protected Function CreatePath(path As String) As plistdict
		  //++
		  // Create a path based on the string
		  // Separated by slashes
		  // If final element starts with "@", don't do anything to it
		  //--
		  Dim elements() As String
		  Dim child As String
		  Dim dict As plistDict
		  
		  Error = False
		  ErrorString = kErrNoError
		  ErrorNumber = kErrNoErrorNum
		  
		  If plistobj = Nil Then
		    error = True
		    ErrorString = kErrNilPlistObj
		    ErrorNumber = kErrNilPlistObjNum
		    Return Nil
		  End If
		  
		  If Left(path, 1) = "/" Then path = Mid(path, 2)
		  
		  elements = Split(path, "/")
		  
		  If UBound(elements) = -1 Then
		    error = True
		    ErrorString = kErrNilPath
		    ErrorNumber = kErrNilPathNum
		    Return Nil
		  End If
		  
		  If Left(elements(UBound(elements)), 1) = "@" Then
		    elements.Remove UBound(elements)
		  End If
		  
		  dict = plistobj.root
		  
		  For Each child in elements
		    If dict.Exists(child) Then
		      If dict.GetType(child) <> "Dict" Then
		        error = True
		        ErrorString = kErrNonDict + ": " + dict.child(child).AbsolutePath
		        ErrorNumber = kErrNonDictNum
		        Return Nil
		      End If
		    Else
		      dict.AddChild(child)
		      dict = dict.child(child)
		    End If
		  Next
		  
		  Return dict
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function error() As Boolean
		  // Done this way because there's no way to put a computed property in an interface definition
		  Return error
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ErrorString() As String
		  Return ErrorString
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetChild(path As String, byRef dict As plistDict, byRef element As String) As Boolean
		  //++
		  // Given a path, return the plistDict for that path
		  // Path leafs are separated by a slash
		  // If the final element has a "@" at the start, it's
		  // a key.  If not, it's the final leaf.
		  // Return true if it exists, false otherwise
		  //--
		  Dim elements() As String
		  Dim i As Integer
		  Dim attribute As Boolean = False
		  Dim attributeName As String = "value"
		  
		  If plistobj = Nil Then
		    error = True
		    ErrorString = kErrPlistNotInit
		    ErrorNumber = kErrPlistNotInitNum
		    dict = Nil
		    element = ""
		    Return False
		  End If
		  // Trap out any leading "/"
		  
		  If Left(path, 1) = "/" Then path = Mid(path, 2)
		  
		  elements = Split(path, "/")
		  
		  If UBound(elements) = -1 Then // Pointing at root
		    error = False
		    element = ""
		    Return True
		  End If
		  
		  dict = plistobj.root
		  
		  If Left(elements(UBound(elements)), 1) = "@" Then
		    attribute = True
		    attributeName = elements(UBound(elements))
		    elements.Remove UBound(elements)
		  End If
		  
		  For i = 0 To UBound(elements)
		    If dict.Exists(elements(i)) Then
		      If dict.GetType(elements(i)) <> "Dict" Then
		        error = True
		        ErrorString = kErrNonDict
		        ErrorNumber = kErrNonDictNum
		        dict = Nil
		        element = ""
		        Return False
		      End If
		      dict = dict.child(elements(i))
		    Else
		      // Allow for non-existent final leaf
		      If i <> UBound(elements) Then
		        error = True
		        ErrorString = kErrMissingLeaf
		        ErrorNumber = kErrMissingLeafNum
		        // Leave dict pointing where we are
		        element = ""
		        Return False
		      End If
		    End If
		  Next
		  
		  element = attributeName
		  error = False
		  Return dict.Exists(element)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValue(path As String, default As String = "", create As Boolean = True) As String
		  Dim pl As plistDict
		  Dim child As String
		  Dim elements() As String
		  
		  If GetChild(path, pl, child) Then
		    Return pl.GetString(child, default)
		  End If
		  If error And ErrorNumber <> kErrMissingLeafNum Then Return default
		  If Not create Then Return default
		  
		  pl = CreatePath(path)
		  If error Then Return default
		  elements = Split(path, "/")
		  child = elements(UBound(elements))
		  If Left(child, 1) = "@" Then
		    child = Mid(child, 2)
		  Else
		    child = "value"
		  End If
		  pl.SetString(child, default)
		  Return default
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValueB(path As String, default As Boolean = False, create As Boolean = True) As Boolean
		  Dim pl As plistDict
		  Dim child As String
		  Dim elements() As String
		  
		  If GetChild(path, pl, child) Then
		    Return pl.GetBoolean(child, default)
		  End If
		  If error And ErrorNumber <> kErrMissingLeafNum Then Return default
		  If Not create Then Return default
		  
		  pl = CreatePath(path)
		  If error Then Return default
		  elements = Split(path, "/")
		  child = elements(UBound(elements))
		  If Left(child, 1) = "@" Then
		    child = Mid(child, 2)
		  Else
		    child = "value"
		  End If
		  pl.SetBoolean(child, default)
		  Return default
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValueC(path As String, default As Color = &C000000, create As Boolean = True) As Color
		  Dim pl As plistDict
		  Dim child As String
		  Dim elements() As String
		  
		  If GetChild(path, pl, child) Then
		    Return pl.GetColor(child, default)
		  End If
		  If error And ErrorNumber <> kErrMissingLeafNum Then Return default
		  If Not create Then Return default
		  
		  pl = CreatePath(path)
		  If error Then Return default
		  elements = Split(path, "/")
		  child = elements(UBound(elements))
		  If Left(child, 1) = "@" Then
		    child = Mid(child, 2)
		  Else
		    child = "value"
		  End If
		  pl.SetColor(child, default)
		  Return default
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValueF(path As String, default As FontFace = Nil, create As Boolean = True) As FontFace
		  Dim pl As plistDict
		  Dim child As String
		  Dim elements() As String
		  
		  If GetChild(path, pl, child) Then
		    //Return pl.GetString(child, default)
		  End If
		  If error And ErrorNumber <> kErrMissingLeafNum Then Return default
		  If Not create Then Return default
		  
		  pl = CreatePath(path)
		  If error Then Return default
		  elements = Split(path, "/")
		  child = elements(UBound(elements))
		  If Left(child, 1) = "@" Then
		    child = Mid(child, 2)
		  Else
		    child = "value"
		  End If
		  //pl.SetString(child, default)
		  Return default
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValueFI(path As String, default As FolderItem = Nil, create As Boolean = False) As FolderItem
		  Dim pl As plistDict
		  Dim child As String
		  Dim elements() As String
		  Dim SaveInfo As String
		  Const URLsuffix = "-url"
		  
		  If GetChild(path, pl, child) Then
		    Return TemporaryFolder.GetRelative(DecodeBase64(pl.GetString(child)))
		  End If
		  If error And ErrorNumber <> kErrMissingLeafNum Then Return Nil
		  If Not create Then Return default
		  
		  SetValueFI(path, default)
		  Return default
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValueN(path As String, default As Double = 0.0, create As Boolean = True) As Double
		  Dim pl As plistDict
		  Dim child As String
		  Dim elements() As String
		  
		  If GetChild(path, pl, child) Then
		    Return pl.GetReal(child, default)
		  End If
		  If error And ErrorNumber <> kErrMissingLeafNum Then Return default
		  If Not create Then Return default
		  
		  pl = CreatePath(path)
		  If error Then Return default
		  elements = Split(path, "/")
		  child = elements(UBound(elements))
		  If Left(child, 1) = "@" Then
		    child = Mid(child, 2)
		  Else
		    child = "value"
		  End If
		  pl.SetReal(child, default)
		  Return default
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Load(path As FolderItem = Nil) As Boolean
		  If path = Nil Then
		    error = True
		    ErrorString = kErrNoPrefsPath
		    ErrorNumber = kErrNoPrefsPathNum
		    Return True
		  End If
		  
		  If plistobj = Nil Then plistobj = New plist(path)
		  
		  If plistobj.error Then
		    error = True
		    ErrorString = plistobj.errorMessage
		  Else
		    error = False
		    ErrorString = kErrNoError
		    ErrorNumber = kErrNoErrorNum
		  End If
		  
		  Return Not error
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NotifyReceivers()
		  Dim i As Integer
		  
		  For i = UBound(Receivers) DownTo 0
		    Receivers(i).PreferencesChanged Me
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub registerPreferencesReceiver(receiver As IpreferencesReceiver)
		  Receivers.Append receiver
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Save() As Boolean
		  plistobj.Save
		  Return True
		Catch e
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValue(path As String, value As String)
		  Dim pl As plistDict
		  Dim child As String
		  Dim elements() As String
		  
		  If Not GetChild(path, pl, child) Then
		    If error And ErrorNumber <> kErrMissingLeafNum Then Return
		    pl = CreatePath(path)
		    If error Then Return
		    elements = Split(path, "/")
		    child = elements(UBound(elements))
		    If Left(child, 1) = "@" Then
		      child = Mid(child, 2)
		    Else
		      child = "value"
		    End If
		  End If
		  
		  pl.SetString(child, value)
		  error = plistobj.error
		  ErrorString = plistobj.errorMessage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValueB(path As String, value As Boolean)
		  Dim pl As plistDict
		  Dim child As String
		  Dim elements() As String
		  
		  If Not GetChild(path, pl, child) Then
		    If error And ErrorNumber <> kErrMissingLeafNum Then Return
		    pl = CreatePath(path)
		    If error Then Return
		    elements = Split(path, "/")
		    child = elements(UBound(elements))
		    If Left(child, 1) = "@" Then
		      child = Mid(child, 2)
		    Else
		      child = "value"
		    End If
		  End If
		  
		  pl.SetBoolean(child, value)
		  error = plistobj.error
		  ErrorString = plistobj.errorMessage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValueC(path As String, value As Color)
		  Dim pl As plistDict
		  Dim child As String
		  Dim elements() As String
		  
		  If Not GetChild(path, pl, child) Then
		    If error And ErrorNumber <> kErrMissingLeafNum Then Return
		    pl = CreatePath(path)
		    If error Then Return
		    elements = Split(path, "/")
		    child = elements(UBound(elements))
		    If Left(child, 1) = "@" Then
		      child = Mid(child, 2)
		    Else
		      child = "value"
		    End If
		  End If
		  
		  pl.SetColor(child, value)
		  error = plistobj.error
		  ErrorString = plistobj.errorMessage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValueF(path As String, value As FontFace)
		  Dim pl As plistDict
		  Dim child As String
		  Dim elements() As String
		  
		  If Not GetChild(path, pl, child) Then
		    If error And ErrorNumber <> kErrMissingLeafNum Then Return
		    pl = CreatePath(path)
		    If error Then Return
		    elements = Split(path, "/")
		    child = elements(UBound(elements))
		    If Left(child, 1) = "@" Then
		      child = Mid(child, 2)
		    Else
		      child = "value"
		    End If
		  End If
		  
		  //pl.SetString(child, value)
		  error = plistobj.error
		  ErrorString = plistobj.errorMessage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValueFI(path As String, value As FolderItem)
		  //++
		  // The absolutepath (pre-RB2007) is to provide a human-readable
		  // description of the file pointed to by GetSaveInfo.  The
		  // application doesn't use this value.
		  // TODO: Consider using URLpath as the only
		  // stored value when OpenSong officially moves to RB2007.
		  //--
		  
		  Dim pl As plistDict
		  Dim child As String
		  Dim pathchild As String
		  Dim elements() As String
		  
		  If Not GetChild(path, pl, child) Then
		    If error And ErrorNumber <> kErrMissingLeafNum Then Return
		    pl = CreatePath(path)
		    If error Then Return
		    elements = Split(path, "/")
		    child = elements(UBound(elements))
		    If Left(child, 1) = "@" Then
		      child = Mid(child, 2)
		      pathchild = child + "-path"
		    Else
		      child = "value"
		      pathchild = "path"
		    End If
		  End If
		  
		  If Not (Value Is Nil) Then
		    pl.SetString(child, EncodeBase64(value.GetSaveInfo(Nil)))
		    #If RBVersion > 2006
		      pl.SetString(pathchild, value.URLPath)
		    #else
		      pl.SetString(pathchild, value.AbsolutePath)
		    #endif
		  Else
		    pl.SetString(child, "")
		    pl.SetString(pathchild, "")
		  End If
		  
		  error = plistobj.error
		  ErrorString = plistobj.errorMessage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValueN(path As String, value As Double)
		  Dim pl As plistDict
		  Dim child As String
		  Dim elements() As String
		  
		  If Not GetChild(path, pl, child) Then
		    If error And ErrorNumber <> kErrMissingLeafNum Then Return
		    pl = CreatePath(path)
		    If error Then Return
		    elements = Split(path, "/")
		    child = elements(UBound(elements))
		    If Left(child, 1) = "@" Then
		      child = Mid(child, 2)
		    Else
		      child = "value"
		    End If
		  End If
		  
		  pl.SetReal(child, value)
		  error = plistobj.error
		  ErrorString = plistobj.errorMessage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub unregisterPreferencesReceiver(receiver As IpreferencesReceiver)
		  Dim i As Integer
		  
		  For i = UBound(Receivers) DownTo 0
		    If Receivers(i) = receiver Then Receivers.Remove i
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected error As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected ErrorString As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected plistobj As plist
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Receivers() As ipreferencesReceiver
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected ErrorNumber As Integer
	#tag EndProperty


	#tag Constant, Name = kErrNilPlistObj, Type = String, Dynamic = True, Default = \"", Scope = Protected
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"CreatePath: plistobj is Nil"
	#tag EndConstant

	#tag Constant, Name = kErrNilPlistObjNum, Type = Double, Dynamic = False, Default = \"2", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kErrNilPathNum, Type = Double, Dynamic = False, Default = \"1", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kErrNilPath, Type = String, Dynamic = True, Default = \"", Scope = Protected
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Nil path passed as argument"
	#tag EndConstant

	#tag Constant, Name = kErrNonDict, Type = String, Dynamic = True, Default = \"", Scope = Protected
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Leaf node is not a Dict"
	#tag EndConstant

	#tag Constant, Name = kErrNonDictNum, Type = Double, Dynamic = False, Default = \"3", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kErrPlistNotInit, Type = String, Dynamic = True, Default = \"", Scope = Protected
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"plist is not initialized"
	#tag EndConstant

	#tag Constant, Name = kErrPlistNotInitNum, Type = Double, Dynamic = False, Default = \"4", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kErrMissingLeaf, Type = String, Dynamic = True, Default = \"", Scope = Protected
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Missing leaf node"
	#tag EndConstant

	#tag Constant, Name = kErrMissingLeafNum, Type = Double, Dynamic = False, Default = \"5", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kErrNoPrefsPath, Type = String, Dynamic = True, Default = \"", Scope = Protected
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"No path to preferences specified"
	#tag EndConstant

	#tag Constant, Name = kErrNoPrefsPathNum, Type = Double, Dynamic = False, Default = \"6", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kErrNoError, Type = String, Dynamic = False, Default = \"", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kErrNoErrorNum, Type = Double, Dynamic = False, Default = \"0", Scope = Protected
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
	#tag EndViewBehavior
End Class
#tag EndClass
