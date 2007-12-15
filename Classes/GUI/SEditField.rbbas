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


	#tag ViewBehavior
		#tag ViewProperty
			Name="ControlOrder"
			Visible=true
			Group="Position"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="80"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="22"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Border"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Multiline"
			Visible=true
			Group="Appearance"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollbarHorizontal"
			Visible=true
			Group="Appearance"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollbarVertical"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Styled"
			Visible=true
			Group="Appearance"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Password"
			Visible=true
			Group="Appearance"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h000000"
			Type="Color"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackColor"
			Visible=true
			Group="Appearance"
			InitialValue="&hFFFFFF"
			Type="Color"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Format"
			Visible=true
			Group="Appearance"
			Type="String"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextFont"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSize"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Visible=true
			Group="Initial State"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mask"
			Visible=true
			Group="Behavior"
			Type="String"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReadOnly"
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LimitText"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alignment"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataSource"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataSource"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataField"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataField"
			InheritedFrom="EditField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			InheritedFrom="EditField"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
