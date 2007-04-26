#tag Class
Protected Class SEditField
Inherits EditField
	#tag Event
		Sub EnableMenuItems()
		  Dim State As Boolean
		  Dim c As New Clipboard
		  State = SelLength > 0
		  mnu_edit_clear.Enabled = State
		  mnu_edit_cut.Enabled = State
		  mnu_edit_copy.Enabled = State
		  mnu_edit_selall.Enabled = Len(Text) > 0
		  
		  mnu_copy_paste.Enabled = c.TextAvailable
		End Sub
	#tag EndEvent


#tag MenuHandler
		Function mnu_copy_paste() As Boolean Handles mnu_copy_paste.Action
			Dim c As New Clipboard
			Dim f As FontFace
			
			If c.TextAvailable Then
			SelText = ConvertEncoding(c.Text, Encodings.UTF8)
			If Left(Name, 3) = "edf" Then // Fixed font EditField
			f = SmartML.GetValueF(App.MyMainSettings.DocumentElement, "fonts/fixed_width")
			SelTextFont = f.Name
			SelTextSize = f.Size
			SelBold = f.Bold
			SelItalic = f.Italic
			SelUnderline = f.Underline
			End If
			End If
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_edit_clear() As Boolean Handles mnu_edit_clear.Action
			SelText = ""
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_edit_copy() As Boolean Handles mnu_edit_copy.Action
			Dim c As New Clipboard
			If SelText.Len > 0 Then
			c.SetText SelText
			End If
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_edit_cut() As Boolean Handles mnu_edit_cut.Action
			Dim c As New Clipboard
			If SelText.Len > 0 Then
			c.SetText SelText
			SelText = ""
			End If
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_edit_selall() As Boolean Handles mnu_edit_selall.Action
			SelStart = 0
			SelLength = Len(Text)
		End Function
#tag EndMenuHandler


	#tag Note, Name = Overview
		Subclassed from EditField, SEditField has additional code to support
		Cut, Paste, Clear and Copy menu items and accelerators.
		
		Assumes that a control with a name starting "edt" is a standard
		EditField, but one starting "edf" is a fixed-font EditField.
		
	#tag EndNote


End Class
#tag EndClass
