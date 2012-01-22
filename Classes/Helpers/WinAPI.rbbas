#tag Module
Protected Module WinAPI
	#tag Method, Flags = &h21
		Private Function SystemParametersInfo(action as Integer, param1 as Integer, param2 as MemoryBlock = Nil, iniChange as Integer = SPIF_SENDCHANGE) As Boolean
		  Dim result as Boolean = False
		  
		  #if TargetWin32
		    Soft Declare Function SystemParametersInfoA Lib "User32" ( _
		    action as Integer, param1 as Integer, param2 as Ptr, change as Integer ) as Boolean
		    Soft Declare Function SystemParametersInfoW Lib "User32" ( _
		    action as Integer, param1 as Integer, param2 as Ptr, change as Integer ) as Boolean
		    
		    if System.IsFunctionAvailable( "SystemParametersInfoW", "User32" ) then
		      If IsNull(param2) Then
		        result = SystemParametersInfoW( action, param1, Nil, iniChange )
		      Else
		        result = SystemParametersInfoW( action, param1, param2, iniChange )
		      End If
		    else
		      If IsNull(param2) Then
		        result = SystemParametersInfoA( action, param1, Nil, iniChange )
		      Else
		        result = SystemParametersInfoA( action, param1, param2, iniChange )
		      End If
		    end if
		    
		  #endif
		  
		  return result
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Dim Enabled As Boolean = False
			  Dim AnimationInfo As MemoryBlock = New MemoryBlock(8)
			  
			  'Try
			  'Dim keyVisualFX As New RegistryItem("HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", False)
			  'useAnimations = keyVisualFX.Value("MinAnimate")
			  'Catch
			  'End Try
			  
			  AnimationInfo.Long(0) = 8
			  If SystemParametersInfo(SPI_GETANIMATION, AnimationInfo.Size, AnimationInfo) Then
			    Enabled = AnimationInfo.Long(4) > 0
			  End If
			  
			  Return Enabled
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Dim success As Boolean
			  Dim AnimationInfo As MemoryBlock = New MemoryBlock(8)
			  
			  'Try
			  'Dim keyVisualFX As New RegistryItem("HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics", False)
			  'If value > 0 Then
			  'keyVisualFX.Value("MinAnimate") = 1
			  'Else
			  'keyVisualFX.Value("MinAnimate") = 0
			  'End If
			  'Catch
			  'End Try
			  
			  AnimationInfo.Long(0) = 8
			  If value Then
			    AnimationInfo.Long(4) = 1
			  Else
			    AnimationInfo.Long(4) = 0
			  End If
			  
			  success = SystemParametersInfo(SPI_SETANIMATION, AnimationInfo.Size, AnimationInfo)
			End Set
		#tag EndSetter
		Animation As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = SPIF_SENDCHANGE, Type = Double, Dynamic = False, Default = \"2", Scope = Private
	#tag EndConstant

	#tag Constant, Name = SPI_GETANIMATION, Type = Double, Dynamic = False, Default = \"&H0048", Scope = Private
	#tag EndConstant

	#tag Constant, Name = SPI_GETSCREENSAVEACTIVE, Type = Double, Dynamic = False, Default = \"&H0010", Scope = Private
	#tag EndConstant

	#tag Constant, Name = SPI_SETANIMATION, Type = Double, Dynamic = False, Default = \"&H0049", Scope = Private
	#tag EndConstant

	#tag Constant, Name = SPI_SETSCREENSAVEACTIVE, Type = Double, Dynamic = False, Default = \"&H0011", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Animation"
			Group="Behavior"
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
