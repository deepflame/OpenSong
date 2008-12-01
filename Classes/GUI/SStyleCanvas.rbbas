#tag Class
Protected Class SStyleCanvas
Inherits SBufferedCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Dim f As FolderItem
		  
		  If Enabled Then
		    If StyleWindow.Edit(StyleNode, PreviewSlideNode, SongStyle) Then
		      Action
		      Repaint
		    End If
		    Return False
		  Else
		    Return False
		  End If
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics)
		  //++EMP
		  // September 2005
		  // Updated to use a SlideStyle object for DrawSlide
		  //
		  Dim Style As SlideStyle
		  //--EMP
		  If Enabled Then
		    If Not (StyleNode Is Nil) Then
		      Style = New SlideStyle(StyleNode) 'EMP 09/05
		      'SetML.DrawSlide g, _
		      'SmartML.GetNode(App.StylePreview, "slide_groups/slide_group/slides/slide"), _
		      'StyleNode
		      SetML.DrawSlide g, _
		      self.PreviewSlideNode, _
		      Style 'EMP 09/05
		      g.ForeColor = DarkBevelColor
		      g.DrawRect 0, 0, g.Width, g.Height
		    Else
		      g.ForeColor = FillColor
		      g.FillRect 0, 0, g.Width, g.Height
		      g.ForeColor = DarkBevelColor
		      g.DrawRect 0, 0, g.Width, g.Height
		      g.DrawLine 0, 0, g.Width, g.Height
		    End
		  Else
		    g.ForeColor = FillColor
		    g.FillRect 0, 0, g.Width, g.Height
		    g.ForeColor = DarkBevelColor
		    g.DrawRect 0, 0, g.Width, g.Height
		  End If
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ClearStyleNode()
		  StyleNode = Nil
		  Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetStyleNode() As XmlNode
		  Return StyleNode
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetStyleNode(node As XmlNode)
		  StyleNode = node
		  Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PreviewSlide(Assigns slide As XmlNode)
		  self.PreviewSlideNode = slide
		  Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.RectControl
		  
		  ClearPreviewSlide
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearPreviewSlide()
		  self.PreviewSlideNode = SmartML.GetNode(App.StylePreview, "slide_groups/slide_group/slides/slide")
		  Repaint
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Action()
	#tag EndHook


	#tag Property, Flags = &h4
		SongStyle As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected StyleNode As XmlNode = Nil
	#tag EndProperty

	#tag Property, Flags = &h21
		Private PreviewSlideNode As XmlNode
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
		#tag ViewProperty
			Name="SongStyle"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
