#tag Class
Class SColorCanvas
Inherits Canvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Dim c As Color
		  
		  If Enabled Then
		    If IsCMMClick Then
		      If InputBox.Ask(App.T.Translate("questions/clear/@caption")) Then
		        IsColorSet = False
		        Action
		        Repaint
		        Return True
		      Else
		        Repaint
		        Return False
		      End If
		    Else
		      c = MyColor
		      If SelectColor(c, "Color") Then
		        SetColor c
		        Action
		        Return True
		      Else
		        Repaint
		        Return False
		      End If
		    End If
		  End If
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics)
		  Repaint g
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ClearColor()
		  IsColorSet = False
		  Repaint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetColor(ByRef c As Color) As Boolean
		  If IsColorSet Then
		    c = MyColor
		    Return True
		  Else
		    Return False
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Repaint(g As Graphics = Nil)
		  Dim c As Color
		  
		  If g = Nil then g = Graphics
		  
		  If IsColorSet Then
		    g.ForeColor = MyColor
		    g.FillRect 0, 0, Width, Height
		    
		    g.ForeColor = DarkBevelColor
		    g.DrawRect 0, 0, Width, Height
		  Else
		    g.ForeColor = LightBevelColor
		    g.FillRect 0, 0, Width, Height
		    
		    g.ForeColor = DarkBevelColor
		    g.DrawRect 0, 0, Width, Height
		    g.DrawLine 0, 0, Width, Height
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetColor(c As Color)
		  IsColorSet = True
		  MyColor = c
		  Repaint
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Action()
	#tag EndHook


	#tag Property, Flags = &h0
		IsColorSet As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		MyColor As Color
	#tag EndProperty


End Class
#tag EndClass
