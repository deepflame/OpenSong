#tag Class
Protected Class HalfSizer
	#tag Method, Flags = &h0
		Sub AddHeight(rect As RectControl, ratio As Double = .5)
		  HeightRect.Add rect
		  RatioHeight.Add ratio
		  OriginalHeight.Add rect.Height
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLeft(rect As RectControl, ratio As Double = .5)
		  LeftRect.Add rect
		  RatioLeft.Add ratio
		  OriginalLeft.Add rect.Left
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLeftTop(rect As RectControl, leftRatio As Double = .5, topRatio As Double = .5)
		  AddLeft rect, leftRatio
		  AddTop rect, topRatio
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLeftTopWidthHeight(rect As RectControl, leftRatio As Double = .5, topRatio As Double = .5, widthRatio As Double = .5, heightRatio As Double = .5)
		  AddLeft rect, leftRatio
		  AddTop rect, topRatio
		  AddWidth rect, widthRatio
		  AddHeight rect, heightRatio
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLeftWidth(rect As RectControl, leftRatio As Double = .5, widthRatio As Double = .5)
		  AddLeft rect, leftRatio
		  AddWidth rect, widthRatio
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddTop(rect As RectControl, ratio As Double = .5)
		  TopRect.Add rect
		  RatioTop.Add ratio
		  OriginalTop.Add rect.Top
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddTopHeight(rect As RectControl, topRatio As Double = .5, heightRatio As Double = .5)
		  AddTop rect, topRatio
		  AddHeight rect, heightRatio
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddWidth(rect As RectControl, ratio As Double = .5)
		  WidthRect.Add rect
		  RatioWidth.Add ratio
		  OriginalWidth.Add rect.Width
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(parent As Window)
		  Me.Parent = parent
		  OriginalWindowWidth = parent.Width
		  OriginalWindowHeight = parent.Height
		  
		  LeftRect = New Collection
		  TopRect = New Collection
		  WidthRect = New Collection
		  HeightRect = New Collection
		  
		  OriginalLeft = New Collection
		  OriginalTop = New Collection
		  OriginalWidth = New Collection
		  OriginalHeight = New Collection
		  
		  RatioLeft = New Collection
		  RatioTop = New Collection
		  RatioWidth = New Collection
		  RatioHeight = New Collection
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Resize()
		  Dim i As Integer
		  Dim rect As RectControl
		  Dim origRect As Integer
		  'canSongStyle.Left = 365 + (Width-750)/2
		  
		  For i = 1 To LeftRect.Count
		    rect = LeftRect.Item(i)
		    origRect = OriginalLeft.Item(i).IntegerValue
		    rect.Left = origRect + _
		    (Parent.Width-OriginalWindowWidth)*RatioLeft.Item(i).DoubleValue
		  Next i
		  
		  For i = 1 To TopRect.Count
		    rect = TopRect.Item(i)
		    origRect = OriginalTop.Item(i).IntegerValue
		    rect.Top = origRect + _
		    (Parent.Height-OriginalWindowHeight)*RatioTop.Item(i).DoubleValue
		  Next i
		  
		  For i = 1 To WidthRect.Count
		    rect = WidthRect.Item(i)
		    origRect = OriginalWidth.Item(i).IntegerValue
		    rect.Width = origRect + _
		    (Parent.Width-OriginalWindowWidth)*RatioWidth.Item(i).DoubleValue
		  Next i
		  
		  For i = 1 To HeightRect.Count
		    rect = HeightRect.Item(i)
		    origRect = OriginalHeight.Item(i).IntegerValue
		    rect.Height = origRect + _
		    (Parent.Height-OriginalWindowHeight)*RatioHeight.Item(i).DoubleValue
		  Next i
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected HeightRect As Collection
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LeftRect As Collection
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected OriginalHeight As Collection
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected OriginalLeft As Collection
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected OriginalTop As Collection
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected OriginalWidth As Collection
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected OriginalWindowHeight As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected OriginalWindowWidth As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Parent As Window
	#tag EndProperty

	#tag Property, Flags = &h0
		RatioHeight As Collection
	#tag EndProperty

	#tag Property, Flags = &h0
		RatioLeft As Collection
	#tag EndProperty

	#tag Property, Flags = &h0
		RatioTop As Collection
	#tag EndProperty

	#tag Property, Flags = &h0
		RatioWidth As Collection
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected TopRect As Collection
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected WidthRect As Collection
	#tag EndProperty


End Class
#tag EndClass
