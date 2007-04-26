#tag Class
Protected Class SStyleCanvas
Inherits SBufferedCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Dim f As FolderItem
		  
		  If Enabled Then
		    If StyleWindow.Edit(StyleNode, SongStyle) Then
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
		    If StyleNode <> Nil Then
		      Style = New SlideStyle(StyleNode) 'EMP 09/05
		      'SetML.DrawSlide g, _
		      'SmartML.GetNode(App.StylePreview, "slide_groups/slide_group/slides/slide"), _
		      'StyleNode
		      SetML.DrawSlide g, _
		      SmartML.GetNode(App.StylePreview, "slide_groups/slide_group/slides/slide"), _
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


	#tag Hook, Flags = &h0
		Event Action()
	#tag EndHook


	#tag Property, Flags = &h4
		SongStyle As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected StyleNode As XmlNode
	#tag EndProperty


End Class
#tag EndClass
