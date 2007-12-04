#tag Interface
Protected Interface IPreferences
	#tag Method, Flags = &h0
		Function error() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ErrorString() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValue(path As String, default As String = "", create As Boolean = True) As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValueB(path As String, default As Boolean = False, create As Boolean = True) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValueC(path As String, default As Color = &C000000, create As Boolean = True) As Color
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValueF(path As String, default As FontFace = Nil, create As Boolean = True) As FontFace
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValueFI(path As String, default As FolderItem = Nil, create As Boolean = True) As FolderItem
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValueN(path As String, default As Double = 0.0, create As Boolean = True) As Double
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Load(path As FolderItem = Nil) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NotifyReceivers()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub registerPreferencesReceiver(receiver As IpreferencesReceiver)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Save() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValue(path As String, value As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValueB(path As String, value As Boolean)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValueC(path As String, value As Color)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValueF(path As String, value As FontFace)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValueFI(path As String, value As FolderItem)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValueN(path As String, value As Double)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub unregisterPreferencesReceiver(receiver As IpreferencesReceiver)
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Overview
		Class interface for preferences.
		
		As OpenSong moves away from the Settings folder
		with three XML files holding configuration data, this
		interface is designed to help ease that transition
		by abstracting the access to preferences, allowing
		for the current method, a pList, registry, or other options.
		
		The preferences will be accessed using the path method
		defined by OpenSong V0.9.9: an XML path string, with the
		last element of the path optionally starting with "@"
		(used by SmartML to designate an attribute node).
	#tag EndNote


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
End Interface
#tag EndInterface
