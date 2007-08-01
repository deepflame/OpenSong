#tag Class
Protected Class SBufferedCanvas
Inherits Canvas
	#tag Event
		Sub Paint(g As Graphics)
		  If Buffer = Nil Or Buffer.Width <> Width Or Buffer.Height <> Height Then
		    Buffer = NewPicture(Width, Height, 32)
		    Paint Buffer.Graphics
		  End If
		  
		  g.DrawPicture Buffer, 0, 0
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Repaint()
		  Buffer = Nil
		  Refresh False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetEnabled(value As Boolean)
		  Enabled = value
		  Repaint
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Paint(g As Graphics)
	#tag EndHook


	#tag Property, Flags = &h1
		Protected Buffer As Picture
	#tag EndProperty


End Class
#tag EndClass
