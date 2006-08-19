#tag Class
Class SaveDialog
Inherits MessageDialog
	#tag Method, Flags = &h0
		Sub Constructor()
		  
		  ActionButton.Caption = App.T.Translate("shared/save/@caption")
		  ActionButton.Default = True
		  ActionButton.Visible = True
		  
		  AlternateActionButton.Caption = App.T.Translate("shared/nosave/@caption")
		  AlternateActionButton.Visible = True
		  
		  CancelButton.Caption = App.T.Translate("shared/cancel/@caption")
		  CancelButton.Visible = True
		  CancelButton.Cancel = True
		  
		  
		  Title = App.T.Translate("input_box/@title")
		  
		  Icon = 3 // Question mark
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Display(ItemName As String) As Integer
		  Dim ResultButton As MessageDialogButton
		  Dim Result As Integer
		  
		  Message = App.T.Translate("shared/save/@message", ItemName)
		  
		  ResultButton = ShowModal
		  
		  Select Case ResultButton
		    
		  Case ActionButton
		    Result = SAVEDIALOG_SAVE
		    
		  Case AlternateActionButton
		    Result = SAVEDIALOG_DONTSAVE
		    
		  Case CancelButton
		    Result = SAVEDIALOG_CANCEL
		    
		  End Select
		  
		  Return Result
		End Function
	#tag EndMethod


	#tag Constant, Name = SAVEDIALOG_CANCEL, Type = Integer, Dynamic = False, Default = \"-1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SAVEDIALOG_DONTSAVE, Type = Integer, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SAVEDIALOG_SAVE, Type = Integer, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant


End Class
#tag EndClass
