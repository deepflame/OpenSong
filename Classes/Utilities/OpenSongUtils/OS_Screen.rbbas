#tag Class
Protected Class OS_Screen
	#tag Method, Flags = &h0
		Function AvailableHeight() As Integer
		  #If TargetLinux
		    'The determination of the available workspace region is unclear using Gdk/Gtk
		    'As fallback, the minimum of the calculated height and the reported available height, but only for screen 0
		    Dim availableHeight As Integer = Height()
		    If m_Index = 0 Then
		      availableHeight = Min(availableHeight, Screen(0).AvailableHeight)
		    End If
		    Return availableHeight - AvailableTop()
		  #Else
		    Return Screen(m_Index).AvailableHeight
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AvailableLeft() As Integer
		  #If TargetLinux
		    'The determination of the available workspace region is unclear using Gdk/Gtk
		    'As fallback, the maximum of the calculated left and the reported available left, but only for screen 0
		    Dim availableLeft As Integer = Left()
		    If m_Index = 0 Then
		      availableLeft = Max(availableLeft, Screen(0).AvailableLeft)
		    End If
		    Return availableLeft
		  #Else
		    Return Screen(m_Index).AvailableLeft
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AvailableTop() As Integer
		  #If TargetLinux
		    'The determination of the available workspace region is unclear using Gdk/Gtk
		    'As fallback, the maximum of the calculated top and the reported available top, but only for screen 0
		    Dim availableTop As Integer = Top()
		    If m_Index = 0 Then
		      availableTop = Max(availableTop, Screen(0).AvailableTop)
		    End If
		    Return availableTop
		  #Else
		    Return Screen(m_Index).AvailableTop
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AvailableWidth() As Integer
		  #If TargetLinux
		    'The determination of the available workspace region is unclear using Gdk/Gtk
		    'As fallback, we just take the full Width
		    Return Width() - AvailableLeft()
		  #Else
		    Return Screen(m_Index).AvailableWidth
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(index as Integer)
		  m_Index = index
		  
		  If m_Index < 0 Or m_Index > (OSScreenCount()-1) Then
		    Raise new InvalidParameterException("Screen with index " + str(m_Index) + " does not exist.")
		  End If
		  
		  #If TargetLinux
		    // The the overridden superclass constructor. explicitly is not called as Linux does a complete reimplement
		    //Super.Constructor
		    Soft Declare Function gdk_screen_get_default Lib "libgdk-x11-2.0.so" () As Integer
		    Soft Declare Sub gdk_screen_get_monitor_geometry Lib "libgdk-x11-2.0.so" (screen As Integer, monitor_num As Integer, ByRef rect As GdkRectangle)
		    
		    Try
		      m_GtkScreen = gdk_screen_get_default()
		      gdk_screen_get_monitor_geometry(m_GtkScreen, index, m_Geometry)
		    Catch
		      m_GtkScreen = -1
		    End Try
		  #EndIf
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Depth() As Integer
		  #If TargetLinux
		    Return Screen(0).Depth
		  #Else
		    Return Screen(m_Index).Depth
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Height() As Integer
		  #If TargetLinux Then
		    If m_GtkScreen <> -1 Then
		      Return m_Geometry.height
		    Else
		      Return Screen(0).Height
		    End If
		  #Else
		    Return Screen(m_Index).Height
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Left() As Integer
		  #If TargetLinux
		    Dim left As Integer = 0
		    
		    If m_GtkScreen <> -1 Then
		      left = m_Geometry.x
		    Else
		      If m_Index = 0 then
		        left = Screen(0).Left
		      ElseIf m_Index=1 Then
		        If (Screen(0).Width /2) > Screen(0).Height Then
		          left = Screen(0).Left + Screen(0).Width /2
		        Else
		          left = Screen(0).Left
		        End If
		      Else
		        left =0 'Fallback, actually not supported
		      End If
		    End If
		    
		    Return left
		  #Else
		    Return Screen(m_Index).Left
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Top() As Integer
		  #If TargetLinux
		    If m_GtkScreen <> -1 Then
		      Return m_Geometry.y
		    Else
		      Return Screen(0).Top
		    End If
		  #Else
		    Return Screen(m_Index).Top
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Width() As Integer
		  #If TargetLinux
		    Dim width As Integer = 0
		    
		    If m_GtkScreen <> -1 Then
		      width = m_Geometry.width
		    Else
		      If m_Index = 0 then
		        width = Screen(0).Width
		      ElseIf m_Index=1 Then
		        If (Screen(0).Width /2) > Screen(0).Height Then
		          width = Screen(0).Width /2
		        Else
		          width = Screen(0).Width
		        End If
		      Else
		        width = 0 'Fallback, actually not supported
		      End If
		    End If
		    
		    Return width
		  #Else
		    Return Screen(m_Index).Width
		  #EndIf
		End Function
	#tag EndMethod


	#tag Note, Name = About OS_Screen
		OS_Screen is an extension of Screen() to provide correct display counting and screen dimension reporting.
		Unfortunately, Screen() does not provide an interface, nor overloadable parameters, 
		which requires the complete object to be reimplemented, proxying the functionality for non-Linux operation to Screen()
	#tag EndNote


	#tag Property, Flags = &h21
		Private m_Geometry As GdkRectangle
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_GtkScreen As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_Index As Integer = -1
	#tag EndProperty


	#tag Structure, Name = GdkRectangle, Flags = &h0
		x As Int32
		  y As Int32
		  width As Int32
		height As Int32
	#tag EndStructure


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
			Type="Integer"
			InheritedFrom="Screen"
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
			Type="Integer"
			InheritedFrom="Screen"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
