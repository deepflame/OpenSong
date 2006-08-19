#tag Class
Class SEditFieldNumeric
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
		  
		  If Not IsNumeric(Text) Then
		    InputBox.Message(App.T.Translate("errors/number_please"))
		    SetValue InitialValue
		    SetFocus
		  ElseIf (CurrentValue > Maximum Or CurrentValue < Minimum) And EnforceRange Then
		    InputBox.Message(App.T.Translate("errors/number_range", CStr(Minimum), CStr(Maximum)))
		    SetFocus
		  Else
		    CurrentValue = CDbl(Text)
		    ValueToText
		  End If
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SetValue(NewValue As Double)
		  //
		  // Set the value of the control.
		  // Store in CurrentValue and
		  // then set the text appropriately
		  //
		  Dim ex As New RuntimeException
		  If EnforceRange And (NewValue < Minimum Or NewValue > Maximum) Then
		    ex.Message = App.T.Translate("errors/range_error", CStr(NewValue))
		    Raise ex
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

	#tag Property, Flags = &h5
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


End Class
#tag EndClass
