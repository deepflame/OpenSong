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


	#tag Hook, Flags = &h0
		Event Untitled()
	#tag EndHook


	#tag Note, Name = Overview
		Subclassed from EditField, SEditField has additional code to support
		Cut, Paste, Clear and Copy menu items and accelerators.
		
		Assumes that a control with a name starting "edt" is a standard
		EditField, but one starting "edf" is a fixed-font EditField.
	#tag EndNote


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
	#tag EndViewBehavior
End Class
#tag EndClass
