#tag Class
Protected Class SEditFieldNumeric
Inherits SEditField
	#tag Event
		Sub GotFocus()
		  
		  InitialValue = CurrentValue
		  
		  SelStart = 0
		  SelLength = Len(Text)
		End Sub
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  //
		  // Validate the field is a number
		  //
		  Dim IsError As Boolean = False
		  If Not IsNumeric(Text) Then
		    InputBox.Message(App.T.Translate("errors/number_please"))
		    SetValue InitialValue
		    SetFocus
		  ElseIf EnforceRange Then
		    If Value < Minimum Then
		      IsError = True
		      CurrentValue = Minimum
		      ValueToText
		    ElseIf Value > Maximum Then
		      IsError = True
		      CurrentValue = Maximum
		      ValueToText
		    Else
		      CurrentValue = CDbl(Text)
		      ValueToText
		    End If
		  Else
		    CurrentValue = CDbl(Text)
		    ValueToText
		  End If
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor()
		  SignalRangeErrors = True
		  Minimum = -2.25073858507201e-308
		  Maximum = 1.79769313486231e308
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValue(NewValue As Double)
		  //
		  // Set the value of the control.
		  // Store in CurrentValue and
		  // then set the text appropriately
		  //
		  Dim ex As New OutOfBoundsException
		  If EnforceRange Then
		    If SignalRangeErrors And (NewValue < Minimum Or NewValue > Maximum) Then
		      ex.Message = App.T.Translate("errors/range_error", CStr(NewValue))
		      Raise ex
		    End If
		  Else
		    If NewValue < Minimum Then NewValue = Minimum
		    If NewValue > Maximum Then NewValue = Maximum
		  End If
		  CurrentValue = NewValue
		  ValueToText
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Value() As Double
		  //
		  // Return the CurrentValue of the control
		  //
		  
		  Return CurrentValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ValueToText()
		  If DisplayFormat <> "" Then
		    Text = Format(CurrentValue, DisplayFormat)
		  Else
		    Text = CStr(CurrentValue)
		  End If
		End Sub
	#tag EndMethod


	#tag Note, Name = Description
		Subclasses the SEditField to limit input to valid numbers
		This can be used when the format for the number isn't fixed.
		Validation takes place when the field loses focus, not during input.
	#tag EndNote


	#tag Property, Flags = &h1
		Protected CurrentValue As Double
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			DisplayFormat contains the format to be used in displaying
			the value of the control.  This is used instead of the base class's
			Format property in order to keep OpenSong from trying to
			re-format the string on input.
		#tag EndNote
		Protected DisplayFormat As String
	#tag EndProperty

	#tag Property, Flags = &h4
		EnforceRange As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			This is the value of the control when the control gets focus.
		#tag EndNote
		Protected InitialValue As Double
	#tag EndProperty

	#tag Property, Flags = &h4
		Maximum As Double
	#tag EndProperty

	#tag Property, Flags = &h4
		Minimum As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			If True, Raise a exception if the set value violates the min/max for the control
			If False, just set to the min or max as appropriate
		#tag EndNote
		SignalRangeErrors As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="80"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="22"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="&h000000"
			Type="Color"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="&hFFFFFF"
			Type="Color"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			Type="String"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Font"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Font"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Font"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Initial State"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			Type="String"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			InheritedFrom="EditField"
			#tag EnumValues
				"0 - Default"
				"1 - Left"
				"2 - Center"
				"3 - Right"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataSource"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataField"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
