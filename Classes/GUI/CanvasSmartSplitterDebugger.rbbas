#tag Class
Protected Class CanvasSmartSplitterDebugger
Inherits Canvas
	#tag Event
		Sub Open()
		  dim w, h as integer
		  
		  lockLeft = true
		  lockTop = true
		  lockRight = true
		  lockBottom = true
		  left = 0
		  top = 0
		  width = window.width
		  height = window.height
		  
		  boxHeight = 11
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics)
		  dim w, h as integer
		  
		  w = maxXdrawn-minXdrawn
		  h = maxYdrawn-minYdrawn
		  if debug and p <> nil then g.drawPicture p,minXdrawn,minYdrawn,w,h,minXdrawn,minYdrawn,w,h
		  
		  if lastWidth <> width or lastHeight <> height then clearP
		  
		  lastWidth = width
		  lastHeight = height
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub clearP()
		  
		  if createP then return  ' p still nil
		  
		  p.graphics.clearRect 0,0,width,height
		  
		  p.mask.graphics.foreColor = &cFFFFFF
		  p.mask.graphics.fillRect 0,0,width,height
		  
		  minXdrawn = width
		  minYdrawn = height
		  maxXdrawn = 0
		  maxYdrawn = 0
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function createP() As Boolean
		  
		  if debug and p = nil then
		    if targetMacOS or targetWin32 then
		      if targetPPC then
		        p = newPicture(1024,768,16)   '  limit canvas so Mac OS 9 won't crash
		      else
		        p = newPicture(screen(0).width,screen(0).height,screen(0).depth)
		      end if
		    else
		      p = newPicture(1024,768,screen(0).depth)   '  limit canvas so Linux won't crash
		    end if
		  
		    if p = nil then
		      if not alreadyWarned then
		        alreadyWarned = true
		        msgbox "CanvasSmartSplitterDebugger can not be initialized.   Not enough available memory."
		      end if
		    else
		      p.graphics.penWidth = 2
		      p.graphics.penHeight = 2
		      p.graphics.textFont = "Geneva"
		      p.graphics.textSize = 9
		      p.graphics.bold = true
		      if targetMacOS or targetWin32 then p.transparent = 1
		    end if
		  end if
		  
		  return (p = nil)   ' return true if p = nil
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawBox(c as rectControl)
		  
		  drawRect c.left,c.top,c.width,c.height
		  
		  if not c.visible then drawX c
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawBoxedString(s as string, x as integer, y as integer, justification as integer = 0)
		  dim boxWidth as integer
		  dim originalColor as color
		  
		  boxWidth = p.graphics.stringWidth(s)+2
		  
		  if justification = 1 then x = x - boxWidth/2  'center justified
		  if justification = 2 then x = x - boxWidth     'right justified
		  
		  p.graphics.fillRect x, y, boxWidth, boxHeight
		  p.mask.graphics.foreColor = &c222222
		  p.mask.graphics.fillRect x, y, boxWidth, boxHeight
		  
		  originalColor = p.graphics.foreColor
		  p.graphics.foreColor = hsv(0,0,0.94)
		  p.graphics.drawString s, x + 1, y + 9
		  p.graphics.foreColor = originalColor
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawLine(x1 as integer, y1 as integer, x2 as integer, y2 as integer)
		  
		  p.graphics.drawLine x1, y1, x2, y2
		  p.mask.graphics.foreColor = &c444444
		  p.mask.graphics.drawLine x1, y1, x2, y2
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawRect(x as integer, y as integer, w as integer, h as integer)
		  
		  p.graphics.drawRect x, y, w, h
		  p.mask.graphics.foreColor = &c444444
		  p.mask.graphics.drawRect x, y, w, h
		  
		  minXdrawn = min(minXdrawn,x)
		  minYdrawn = min(minYdrawn,y)
		  maxXdrawn = max(maxXdrawn,x+w)
		  maxYdrawn = max(maxYdrawn,y+h)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawX(c as rectControl)
		  
		  drawLine c.left,c.top,c.left+c.width-2,c.top+c.height-2
		  drawLine c.left,c.top+c.height-2,c.left+c.width-2,c.top
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub markControl(c as rectControl)
		  
		  if p = nil then return
		  
		  p.graphics.foreColor = rgb(200,0,0)
		  
		  drawBox c
		  
		  'drawBoxedString str(c.width)+"x"+str(c.height), c.left+c.width/2, c.top+c.height/2-boxHeight/2, 1
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub markSplitter(c as SmartSplitter, minLimit as integer, maxLimit as integer, isVertical as boolean)
		  dim maxOffsetPos, minOffsetPos as integer
		  
		  if p = nil then return
		  
		  p.graphics.foreColor = rgb(0,150,0)
		  
		  drawBox c
		  
		  
		  if isVertical then
		    
		    p.graphics.foreColor = rgb(0,0,150)
		    minOffsetPos = minLimit+c.minLimitOffset
		    drawLine minOffsetPos,c.top,minOffsetPos,c.top+c.height-2
		    drawBoxedString "minLOffset="+str(c.minLimitOffset), minOffsetPos, c.top+c.height/2-boxHeight, 0
		    
		    maxOffsetPos = maxLimit-c.maxLimitOffset
		    drawLine maxOffsetPos,c.top,maxOffsetPos,c.top+c.height-2
		    drawBoxedString "maxLOffset="+str(c.maxLimitOffset), maxOffsetPos, c.top+c.height/2, 2
		    
		    p.graphics.foreColor = rgb(0,150,0)
		    drawRect minLimit,c.top,maxLimit-minLimit,c.height
		    drawLine minLimit+20,c.top,maxLimit-22,c.top+c.height-2
		    
		    drawBoxedString "minLimit="+str(minLimit), minLimit, c.top
		    drawBoxedString "maxLimit="+str(maxLimit), maxLimit, c.top+c.height-boxHeight, 2
		    
		      else
		    
		    p.graphics.foreColor = rgb(0,0,150)
		    minOffsetPos = minLimit+c.minLimitOffset
		    drawLine c.left,minOffsetPos,c.left+c.width-2,minOffsetPos
		    drawBoxedString "minLOffset="+str(c.minLimitOffset), c.left+c.width/2, minOffsetPos, 1
		    
		    maxOffsetPos = maxLimit-c.maxLimitOffset
		    drawLine c.left,maxOffsetPos,c.left+c.width-2,maxOffsetPos
		    drawBoxedString "maxLOffset="+str(c.maxLimitOffset), c.left+c.width/2, maxOffsetPos-boxHeight+2, 1
		    
		    p.graphics.foreColor = rgb(0,150,0)
		    drawRect c.left,minLimit,c.width,maxLimit-minLimit
		    drawLine c.left+20,minLimit,c.left+c.width-22,maxLimit-2
		    
		    drawBoxedString "minLimit="+str(minLimit), c.left, minLimit
		    drawBoxedString "maxLimit="+str(maxLimit), c.left+c.width, maxLimit-boxHeight, 2
		    
		      end if
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private alreadyWarned As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private boxHeight As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		debug As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastHeight As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastWidth As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private maxXdrawn As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private maxYdrawn As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private minXdrawn As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private minYdrawn As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private p As picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private windowNotResizing As boolean
	#tag EndProperty


	#tag ViewBehavior
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
			Name="AutoDeactivate"
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
			Name="debug"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
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
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
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
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="InitialParent"
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
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
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
			Name="LockRight"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
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
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
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
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			InheritedFrom="Canvas"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
