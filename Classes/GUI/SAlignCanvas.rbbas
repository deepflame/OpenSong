#tag Class
Protected Class SAlignCanvas
Inherits Canvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Dim xx, yy, z As Integer
		  For yy = 0 To 2
		    For xx = 0 To 2
		      z = yy * 3 + xx + 1
		      If X > xx*(Width/3)+2 And X < xx*(Width/3)+2 + Width/3-4 And _
		        Y > yy*(Height/3)+2 And Y < yy*(Height/3)+2 + Height/3-4 Then
		        If Mid(Matrix, z, 1) <> "N" Then
		          HAlign = xx
		          VAlign = yy
		          Refresh
		        End If
		      End If
		    Next xx
		  Next yy
		End Function
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics)
		  Dim x, y, z As Integer
		  'g.ForeColor = LightBevelColor
		  'g.DrawRect 0, 0, g.Width, g.Height
		  For y = 0 To 2
		    For x = 0 To 2
		      z = y * 3 + x + 1
		      If Mid(Matrix, z, 1) <> "N" Then
		        g.ForeColor = FrameColor
		        g.DrawRect x*(g.Width/3)+2, y*(g.Height/3)+2, g.Width/3-4, g.Height/3-4
		        If VAlign = y And HAlign = x Then
		          g.ForeColor = HighlightColor
		          g.FillRect x*(g.Width/3)+4, y*(g.Height/3)+4, g.Width/3-8, g.Height/3-8
		        End If
		      End If
		    Next x
		  Next y
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function GetHAlign() As String
		  If HAlign = 0 Then Return "left"
		  If HAlign = 1 Then Return "center"
		  If HAlign = 2 Then Return "right"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetVAlign() As String
		  If VAlign = 0 Then Return "top"
		  If VAlign = 1 Then Return "middle"
		  If VAlign = 2 Then Return "bottom"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetHAlign(align As String)
		  If align = "left" Then HAlign = 0
		  If align = "center" Then HAlign = 1
		  If align = "right" Then HAlign = 2
		  Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetValid(matrix As String)
		  ' matrix format = "123456789"; matrix values = "YNYNYNYNY"
		  ' where...
		  ' 1 2 3
		  ' 4 5 6
		  ' 7 8 9
		  Me.Matrix = matrix
		  Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetVAlign(align As String)
		  If align = "top" Then VAlign = 0
		  If align = "middle" Then VAlign = 1
		  If align = "bottom" Then VAlign = 2
		  Refresh
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected HAlign As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Matrix As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected VAlign As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ControlOrder"
			Visible=true
			Group="Position"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			InheritedFrom="Canvas"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
