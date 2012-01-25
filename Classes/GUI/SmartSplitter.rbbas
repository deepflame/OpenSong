#tag Class
Protected Class SmartSplitter
Inherits Canvas
	#tag Event
		Sub Close()
		  ' dispose of controls before closing splitter for a cleaner close
		  
		  unAttachAllControls
		  
		  #if enableDebugCanvasCode then
		    debugCanvas = nil
		  #endif
		  
		  Close  ' call sub's Close Event
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		  if conceal then return false
		  
		  assignLimits
		  
		  mouseDownTriggered = true
		  mouseDownX = X
		  mouseDownY = Y
		  
		  positionAtMouseDown = top
		  if isVertical then positionAtMouseDown = left
		  
		  refreshDebugCanvas
		  
		  MouseDown(X, Y)  ' call sub's MouseDown Event (minus the boolean)
		  return true
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  
		  'assignLimits
		  
		  if isVertical then
		    moveDistance X - mouseDownX
		  else
		    moveDistance Y - mouseDownY
		  end if
		  
		  #if enableDebugCanvasCode then
		    if debugCanvas <> nil then debugCanvas.markSplitter me, minLimit, maxLimit, isVertical
		  #endif
		  
		  MouseDrag X, Y  ' call sub's MouseDrag Event
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  assignCursor
		  
		  MouseEnter  ' call sub's MouseEnter Event
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  dim i, d as integer
		  
		  if DisableLiveDrag then
		    d = position - positionAtMouseDown
		    adjustAttachedControls d
		    Moved d
		  end if
		  
		  mouseDownTriggered = false
		  
		  if DisableLiveDrag then window.refresh true
		  
		  refreshDebugCanvas
		  
		  MouseUp X, Y  ' call sub's MouseUp Event
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  initializeSmartSplitter  ' this method calls sub's Open Event
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics)
		  drawHandle
		  
		  Paint g  ' call sub's Paint Event
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub adjustAttachedControls(d as integer, fromBehave as boolean = false)
		  dim i, pos, size as integer
		  dim s as string
		  dim vis as boolean
		  
		  for i = 0 to ubound(attachedControl)
		  
		    if attachedControl(i) <> nil then
		  
		          if isVertical then
		        pos = attachedControl(i).left
		        size = attachedControl(i).width
		        if attachedControlBehind(i) then  ' it is on the left
		          if attachedControlShouldCenter(i) then
		            pos = minLimit + width/2 + (left - minLimit)/2 - attachedControl(i).width/2
		          else
		            if attachedControlShouldMove(i) then pos = pos + d
		            if attachedControlShouldResize(i) then size = size + d
		            end if
		        else  ' it is on the right
		          if attachedControlShouldCenter(i) then
		            pos = left + width + (maxLimit - left - width)/2 - attachedControl(i).width/2
		          else
		            if attachedControlShouldMove(i) then pos = pos + d
		            if attachedControlShouldResize(i) then size = size - d
		            end if
		          end if
		        #pragma disableBackgroundTasks
		        if size < 1 and attachedControl(i).visible then attachedControl(i).visible = false
		        if attachedControl(i).width <> size then attachedControl(i).width = size
		        if attachedControl(i).left <> pos then attachedControl(i).left = pos
		      else  ' is horizontal
		        pos = attachedControl(i).top
		        size = attachedControl(i).height
		        if attachedControlBehind(i) then  ' it is above
		          if attachedControlShouldCenter(i) then
		            pos = minLimit + height/2 + (top - minLimit)/2 - attachedControl(i).height/2
		          else
		            if attachedControlShouldMove(i) then pos = pos + d
		            if attachedControlShouldResize(i) then size = size + d
		        end if
		        else  ' it is below
		          if attachedControlShouldCenter(i) then
		            pos = top + height + (maxLimit - top - height)/2 - attachedControl(i).height/2
		          else
		            if attachedControlShouldMove(i) then pos = pos + d
		            if attachedControlShouldResize(i) then size = size - d
		      end if
		    end if
		        #pragma disableBackgroundTasks
		        if size < 1 and attachedControl(i).visible then attachedControl(i).visible = false
		        if attachedControl(i).height <> size then attachedControl(i).height = size
		        if attachedControl(i).top <> pos then attachedControl(i).top = pos
		      end if
		      
		      
		      vis = (size >= attachedControlMinSizeVisible(i))
		      
		      if size < 1 then vis = false   ' hide control if it has a negative or 0 width or height to avoid display glitches
		      
		      ' hide control if this splitter is overlapping or on the wrong side
		      if (not attachedControlShouldMove(i) and not attachedControlShouldResize(i)) then
		        if isVertical then
		          if attachedControlBehind(i) then  ' it should be on the left
		            if left+1 < attachedControl(i).left+attachedControl(i).width then vis = false
		          else  ' it should be on the right
		            if left+width-1 > attachedControl(i).left then vis = false
		          end if
		        else  ' is horizontal
		          if attachedControlBehind(i) then  ' it should be above
		            if top+2 < attachedControl(i).top+attachedControl(i).height then vis = false
		          else  ' it should be below
		            if top+height-2 > attachedControl(i).top then vis = false
		          end if
		        end if
		      end if
		      
		      
		      ' hide controls that are outside of their parent control
		      if not attachedControl(i) isA smartSplitter and attachedControl(i).parent <> nil then   ' (nil if parent is window)
		        if attachedControl(i).left < rectControl(attachedControl(i).parent).left or attachedControl(i).left+attachedControl(i).width > rectControl(attachedControl(i).parent).left+rectControl(attachedControl(i).parent).width then vis = false
		        if attachedControl(i).top < rectControl(attachedControl(i).parent).top or attachedControl(i).top+attachedControl(i).height > rectControl(attachedControl(i).parent).top+rectControl(attachedControl(i).parent).height then vis = false
		      end if
		      
		      if vis then
		        if not attachedControl(i).visible and attachedControlNormallyVisible(i) then attachedControl(i).visible = true
		      else
		        if attachedControl(i).visible then attachedControl(i).visible = false
		      end if
		      
		      #if enableDebugCanvasCode then
		        if debugCanvas <> nil then debugCanvas.markControl attachedControl(i)
		      #endif
		      
		    end if 'attachedControl(i) <> nil
		    
		  next
		  
		  if targetWin32 and not disableLiveDrag and not debug then refresh
		  
		  ' now tell any attached smartSplitters with same orientation to behave so they will stay snapped
		  for i = 0 to ubound(attachedControl)
		    if attachedControl(i) isA smartSplitter and not fromBehave then
		      if isVertical = smartSplitter(attachedControl(i)).isVertical then smartSplitter(attachedControl(i)).behave
		    end if
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub assignCursor()
		  
		  if conceal or not enabled then
		    mouseCursor = nil
		  else
		    if isVertical then
		      #if RBVersion > 6 then
		        mouseCursor = System.Cursors.SplitterEastWest
		      #else
		        #if targetWin32 then
		          mouseCursor = cursorHorizontalAdjustWin32
		        #else
		          mouseCursor = cursorHorizontalAdjust
		        #endif
		      #endif
		      'For ERROR - cursor property does not exist:
		      '   To use with REALbasic 5.x, cursor files will need to be imported into this project.
		      '   One way to accomplish this in REALbasic 5.x is to drag the "SmartSplitter" folder
		      '   out of the example project "SmartSplitter_Tester.rb" project window.   Then drag
		      '   the folder onto the project window of this project.
		      '
		      '   Another way is to import the cursors contained in the compressed file,
		      '   "Cursors for REALbasic 5.x.sit", included in the original distribution folder.
		      '   Once the files are uncompressed, they can be dragged into this project.
		      '   NOTE: These cursors are contained in the Macintosh resource fork of each file -
		      '             so this might only be possible using Mac OS.
		    else
		      #if RBVersion > 6 then
		        mouseCursor = System.Cursors.SplitterNorthSouth
		      #else
		        #if targetWin32 then
		          mouseCursor = cursorVerticalAdjustWin32
		        #else
		          mouseCursor = cursorVerticalAdjust
		        #endif
		      #endif
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub assignLimits()
		  
		  if minLimit = 9999 then minLimit = 0
		  
		  
		  if isVertical then
		    
		    if minAttachedControl <> nil then
		      proportionMin = minAttachedControl.left - width
		      if not minLimitPropSet then minLimit = proportionMin
		    end if
		    
		    if maxAttachedControl <> nil then
		      proportionMax = maxAttachedControl.left + maxAttachedControl.width
		      if not maxLimitPropSet then maxLimit = proportionMax
		    else
		      proportionMax = maxLimit + window.width - windowSizeLast
		      if not maxLimitPropSet then maxLimit = proportionMax
		    end if
		    windowSizeLast = window.width
		    
		  else
		    
		    if minAttachedControl <> nil then
		      proportionMin = minAttachedControl.top - height
		      if not minLimitPropSet then minLimit = proportionMin
		    end if
		    
		    if maxAttachedControl <> nil then
		      proportionMax = maxAttachedControl.top + maxAttachedControl.height
		      if not maxLimitPropSet then maxLimit = proportionMax
		    else
		      proportionMax = maxLimit + window.height - windowSizeLast
		      if not maxLimitPropSet then maxLimit = proportionMax
		    end if
		    windowSizeLast = window.height
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub attach(c as rectControl)
		  ' Attaches a control to the splitter. If this is done in the SmartSplitter's
		  ' Open method, then attachNearbyControls is not automatically called.
		  dim i, edge as integer
		  dim behind, move, resize, embedded as boolean
		  
		  initializeSmartSplitter
		  
		  edge = 5   ' how close a control needs to be for it to be set to resize when appropriate
		  
		  if c = nil then return
		  
		  if c = self then return  ' never attach self  -  things would get very ugly
		  
		  if c isA line then return
		  
		  ' check if c is already attached or is embedded in a control that is already attached
		  for i = 0 to ubound(attachedControl)
		    if c.parent = attachedControl(i) then embedded = true  ' control being attached is embedded in another attached Control
		    if c = attachedControl(i) then
		      if showWarningsDialogs then msgBox "The control '" + c.name + "' is already attached to smartSplitter '" + name + "'.   This attach request will be ignored."
		      return
		    end if
		  next
		  
		  'if embedded = true then
		  'for i = 0 to ubound(attachedControl)
		  'if rectControl(c.parent).parent = attachedControl(i) then embedded = false  ' control being attached is embedded in another attached Control
		  'next
		  'end if
		  
		  attachedControl.append c
		  attachedControlNormallyVisible.append c.visible
		  attachedControlShouldCenter.append false
		  attachedControlMinSizeVisible.append suggestMinSizeControlShouldBeVisible(c)
		  
		  
		  if isVertical then
		    attachedControlSize.append c.width
		    if c.left < left then  ' control is to the left
		      behind = true
		      if embedded then
		        ' if right side same as parent then resize (i.e. popupMenu in a pagePanel)
		        if c.lockLeft and RBVersion<6 or abs(rectControl(c.parent).left + rectControl(c.parent).width - c.left - c.width) < edge then
		          resize = suggestWhetherControlShouldResize(c)
		        end if
		      else
		        resize = suggestWhetherControlShouldResize(c)
		      end if
		      SetMinAttachedControl c, true
		    else ' assume it is to the right
		      if embedded then
		        if c.lockRight and RBVersion<6 then resize = suggestWhetherControlShouldResize(c)
		      else
		        resize = suggestWhetherControlShouldResize(c)
		        move = true
		      end if
		      SetMaxAttachedControl c, true
		    end if
		  else
		    attachedControlSize.append c.height
		    if c.top < top then  ' control is above
		      behind = true
		      if embedded then
		        if c.lockTop and RBVersion<6 or abs(rectControl(c.parent).top + rectControl(c.parent).height - c.top - c.height) < edge then
		          resize = suggestWhetherControlShouldResize(c)
		        end if
		      else
		        resize = suggestWhetherControlShouldResize(c)
		      end if
		      SetMinAttachedControl c, true
		    else ' assume it is below
		      if embedded then
		        if c.lockBottom and RBVersion<6 then resize = suggestWhetherControlShouldResize(c)
		      else
		        resize = suggestWhetherControlShouldResize(c)
		        move = true
		      end if
		      SetMaxAttachedControl c, true
		    end if
		  end if
		  
		  attachedControlBehind.append behind
		  attachedControlShouldMove.append move
		  attachedControlShouldResize.append resize
		  
		  
		  '  raise offsetSnapTo for larger controls
		  i = suggestOffsetSizeForControl(c)
		  if behind then
		    if not minLimitOffsetPropSet then minLimitOffset = max(minLimitOffset,i)
		  else
		    if not maxLimitOffsetPropSet then maxLimitOffset = max(maxLimitOffset,i)
		  end if
		  
		  
		  if not doNotAttachEmbeddedControls then   ' recursively attach embedded controls
		    if controlCommonlyHasEmbeddedControls(c) then
		      for i = 0 to window.controlCount-1  ' attach all controls inside this control
		        if window.control(i) isA rectControl then
		          if rectControl(window.control(i)).parent = c then attach rectControl(window.control(i))
		        end if
		      next
		    end if
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub attachNearbyControls()
		  ' Attaches controls with edges within 5 pixels of the edges of the splitter.
		  ' Embedded controls will be recursively added unless you set doNotAttachEmbeddedControls = True.
		  dim i, edge as integer
		  dim okToAttach as boolean
		  dim c as rectControl
		  
		  initializeSmartSplitter
		  
		  edge = 5   ' how close a control needs to be for it to auto-attach
		  
		  for i = 0 to window.controlCount - 1
		    if window.control(i) isA rectControl then
		      c = rectControl(window.control(i))
		      if parent = c.parent then
		        okToAttach = true
		        if parent isA tabPanel and tabPanelIndex <> c.tabPanelIndex then okToAttach = false
		        if parent isA pagePanel and tabPanelIndex <> c.tabPanelIndex then okToAttach = false
		        
		        if okToAttach then
		          if isVertical then
		            if (c.top > top-edge and c.top < top+height+edge) or (c.top+c.height > top-edge and c.top+c.height < top+height+edge) or (top > c.top-edge and top+height < c.top+c.height+edge) then
		              if abs(left - c.left - c.width) < edge or abs(left + width - c.left) < edge then attach rectControl(window.control(i))
		            end if
		          else
		            if (c.left > left-edge and c.left < left+width+edge) or (c.left+c.width > left-edge and c.left+c.width < left+width+edge) or (left > c.left-edge and left+width < c.left+c.width+edge) then
		              if abs(top - c.top - c.height) < edge or abs(top + height - c.top) < edge then attach rectControl(window.control(i))
		            end if
		          end if
		        end if
		      end if
		    end if
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub behave()
		  ' Call the behave method each time the parent window or control is resized.
		  ' The behave method keeps the SmartSplitter locked to its MinLimit and MaxLimit
		  ' if it was previously there and adjusts its proportions if stayProportional is true.
		  
		  initializeSmartSplitter
		  
		  assignLimits
		  
		  moveDistance 0, true
		  
		  refreshDebugCanvas false
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function controlCommonlyHasEmbeddedControls(c as rectControl) As Boolean
		  
		  if c isA tabPanel or c isA pagePanel or c isA groupBox then return true
		  
		  if c isA canvas or c isA rectangle then return true
		  
		  if c isA editField or c isA listBox then return true
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawBar(x as integer, y as integer)
		  dim L as integer
		  dim light, medium, dark as color
		  
		  #pragma disableBackgroundTasks
		  
		  L = 5
		  if handleLarge then L = 9
		  
		  if active and enabled or not initializedSmartSplitter then
		    light = colorLight
		    medium = colorMedium
		    dark = colorDark
		  else
		    light = colorLightDisabled
		    medium = colorMediumDisabled
		    dark = colorDarkDisabled
		  end if
		  
		  if isVertical then
		    
		    if handleLarge then
		      graphics.foreColor = light
		      graphics.DrawLine(x,y-L,x,y+L)
		      graphics.foreColor = medium
		      graphics.DrawLine(x-1,y-L,x-1,y+L)  ' darker line 1 pixel to the left
		      graphics.DrawLine(x-1,y-L,x,y-L)  ' nubs at ends of handle
		      graphics.DrawLine(x-1,y+L,x,y+L)
		    else
		      
		      graphics.foreColor = dark
		      graphics.DrawLine(x,y-L,x,y+L)
		    end if
		    
		  else  'is horizontal
		    
		    if handleLarge then
		      graphics.foreColor = light
		      graphics.DrawLine(x-L,y,x+L,y)
		      graphics.foreColor = medium
		      graphics.DrawLine(x-L,y-1,x+L,y-1)  ' darker line 1 pixel above
		      graphics.DrawLine(x-L,y-1,x-L,y)  ' nubs at ends of handle
		      graphics.DrawLine(x+L,y-1,x+L,y)
		    else
		      graphics.foreColor = dark
		      graphics.DrawLine(x-L,y,x+L,y)
		    end if
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawDimple(x as integer, y as integer)
		  dim i, j as integer
		  dim v as double
		  dim c as color
		  
		  #pragma disableBackgroundTasks
		  graphics.useOldRenderer = true
		  
		  if handleLarge then
		    
		    if active and enabled or not initializedSmartSplitter then
		      
		      for j = 1 to 5
		        for i = 1 to 5
		          if dimplePixelValue(i,j) >= 0 then
		            graphics.foreColor = hsv(0,0,dimplePixelValue(i,j))
		            graphics.drawLine(x-3+i, y-3+j, x-3+i, y-3+j)  ' used drawLine because pixel is unstable when outside range of g
		          end if
		        next
		      next
		      
		    else
		      
		      for j = 1 to 5
		        for i = 1 to 5
		          if dimplePixelValueDisabled(i,j) >= 0 then
		            graphics.foreColor = hsv(0,0,dimplePixelValueDisabled(i,j))
		            graphics.drawLine(x-3+i, y-3+j, x-3+i, y-3+j)
		          end if
		        next
		      next
		      
		    end if
		    
		  else  ' small handle
		    
		    if not active and enabled or not initializedSmartSplitter then v = 0.2
		    
		    if backgroundDark then   ' darken dimples
		      graphics.foreColor = hsv(0,0,.68+v)
		    else
		      graphics.foreColor = hsv(0,0,.80+v)
		    end if
		    graphics.fillRect(x-1, y-1, 3, 3)
		    
		    graphics.foreColor = hsv(0,0,.44+v)
		    graphics.drawLine(x-1, y, x, y-1)
		    graphics.foreColor = hsv(0,0,.6+v)
		    graphics.drawLine(x, y+1, x+1, y)
		    graphics.foreColor = hsv(0,0,.3+v)
		    graphics.drawLine(x, y, x, y)
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawHandle()
		  dim x, y, n as integer
		  dim spacing as double
		  
		  if conceal then return
		  
		  x = width / 2
		  y = height / 2
		  
		  n = 0
		  if top < 0 then n = top
		  if DisableLiveDrag and mouseDownTriggered then
		    graphics.foreColor = colorMedium
		    graphics.clearRect 0+1,n+1,width-2,height-n-2
		    graphics.drawRect 0,n,width,height-n
		  else
		    'if not targetMacOS then graphics.clearRect 0,n,width,height-n
		  end if
		  
		  if handleDimple then
		    
		    spacing = 3
		    if handleLarge then spacing = 5
		    
		    for n = spacing-handleCount*spacing to handleCount*spacing step spacing*2
		    if isVertical then
		        drawDimple x, y-n
		      else
		        drawDimple x-n, y
		      end if
		    next
		    
		    else
		    
		    spacing = 1
		    if handleLarge then spacing = 1.5
		    
		    for n = spacing-handleCount*spacing to handleCount*spacing step spacing*2
		      if isVertical then
		        drawBar x+n, y
		      else
		        drawBar x, y+n
		      end if
		    next
		    
		    end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub initializeSmartSplitter()
		  dim i, j, k as integer
		  dim x as double
		  dim s as string     ' 5 x 5 matrix of grey value 0-100;  negative for clear
		  
		  if initializedSmartSplitter or initializingSmartSplitter then return
		  initializingSmartSplitter = true
		  
		  isVertical = (height > width)
		  
		  maxLimitPropSet = (maxLimit <> 0)
		  minLimitPropSet = (minLimit <> 0)
		  maxLimitOffsetPropSet = (maxLimitOffset <> 0)
		  minLimitOffsetPropSet = (minLimitOffset <> 0)
		  if debug then setDebug true
		  if swapOrientation then isVertical = not isVertical
		  
		  if isVertical then
		    positionAtOpen = left
		    windowSizeAtOpen = window.width
		  else
		    positionAtOpen = top
		    windowSizeAtOpen = window.height
		  end if
		  windowSizeLast = windowSizeAtOpen
		  
		  
		  useFocusRing = false
		  
		  showWarningsDialogs = debugBuild
		  
		  maxLimitOffset = max(0,maxLimitOffset)
		  minLimitOffset = max(0,minLimitOffset)
		  
		  atMaxLimit = false
		  atMinLimit = false
		  doNotAttachEmbeddedControls = false
		  if not minLimitPropSet then minLimit = 9999
		  
		  if targetCarbon then
		    backgroundDark = (window.frame = 9 and not parent isA tabPanel)   ' metal window but not inside tab panel
		  else
		    backgroundDark = true   ' PPC, Win32, & Linux windows are darker
		  end if
		  
		  colorLight = hsv(0,0,.75)
		  colorLightDisabled = hsv(0,0,.87)
		  colorMedium = hsv(0,0,.62)
		  colorMediumDisabled = hsv(0,0,.82)
		  colorDark = hsv(0,0,.55)
		  colorDarkDisabled = hsv(0,0,.70)
		  
		  if backgroundDark then  ' darken bars
		    colorLight = hsv(0,0,.58)
		    colorLightDisabled = hsv(0,0,.63)
		    colorMedium = hsv(0,0,.50)
		    colorMediumDisabled = hsv(0,0,.55)
		    colorDark = hsv(0,0,.42)
		    colorDarkDisabled = hsv(0,0,.50)
		  end if
		  
		  assignCursor
		  
		  if isVertical then
		    if not maxLimitPropSet then maxLimit = window.width - width
		  else
		    if not maxLimitPropSet then maxLimit = window.height - height
		  end if
		  
		  setHandleType HandleType
		  'if targetWin32 then setHandleType 4   ' always set Win32 to large dimple
		  
		  '------------- set dimple pixel values
		  x = 1
		  if not backgroundDark then x = 1.1   ' lighten dimples
		  s =      "-1,49, 9,48,-1,"
		  s = s + "48, 2,22,29,56,"
		  s = s + "11,37,64,75,65,"
		  s = s + "57,64,100,100,83,"
		  s = s + "-1,75,96,84,-1"
		  for j = 1 to 5
		    for i = 1 to 5
		      k = k + 1
		      dimplePixelValue(i,j) = val(nthField(s,",",k)) / 100 * x
		    next
		  next
		  s =      "-1,62,42,62,-1,"
		  s = s + "61,38,48,51,65,"
		  s = s + "44,57,71,76,72,"
		  s = s + "67,70,88,89,80,"
		  s = s + "-1,77,87,81,-1"
		  k = 0
		  for j = 1 to 5
		    for i = 1 to 5
		      k = k + 1
		      dimplePixelValueDisabled(i,j) = val(nthField(s,",",k)) / 100 * x
		    next
		  next
		  
		  unAttachAllControls
		  
		  Open  ' call sub's Open Event
		  
		  if ubound(attachedControl) < 0 then attachNearbyControls
		  
		  assignLimits
		  
		  proportionValue = (top - proportionMin)/(proportionMax - proportionMin)
		  if isVertical then proportionValue = (left - proportionMin)/(proportionMax - proportionMin)
		  
		  proportionAtOpen = proportionValue
		  
		  initializedSmartSplitter = true
		  initializingSmartSplitter = false
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub moveDistance(d as integer, fromBehave as boolean = false)
		  ' Moves splitter the given distance.
		  ' behave = true will keep splitter at limits if previously there
		  dim p as integer
		  
		  initializeSmartSplitter
		  
		  if minLimit = 9999 then minLimit = 0
		  
		  p = top
		  if isVertical then p = left
		  
		  'if liveDrag or not behave then
		  
		  if fromBehave and stayProportional then d = proportionMin + (proportionMax - proportionMin)*proportionValue - p
		  
		  if (p + d < minLimit + minLimitOffset/2 or (atMinLimit and fromBehave)) and not StopAtMinOffset then
		    atMinLimit = true
		    d = minLimit - p   ' snap to minLimit
		  else
		    atMinLimit = false
		    if p + d < minLimit + minLimitOffset then d = minLimit + minLimitOffset - p   ' catch on snapToMinLimitOffset
		  end if
		  
		  if (p + d > maxLimit - maxLimitOffset/2 or (atMaxLimit and fromBehave)) and not StopAtMaxOffset then
		    atMaxLimit = true
		    d = maxLimit - p   ' snap to maxLimit
		  else
		    atMaxLimit = false
		    if p + d > maxLimit - maxLimitOffset then d = maxLimit - maxLimitOffset - p   ' catch on snapToMaxLimitOffset
		  end if
		  
		  if p + d < minLimit then d = minLimit - p   ' no less than minLimit
		  if p + d > maxLimit then d = maxLimit - p   ' no higher than maxLimit
		  
		  'end if
		  
		  proportionValue = (p - proportionMin + d)/(proportionMax - proportionMin)
		  proportionValue = max(0, proportionValue)
		  proportionValue = min(1, proportionValue)
		  
		  if d <> 0 or fromBehave then
		    
		    if isVertical then
		      left = left + d
		    else
		      top = top + d
		    end if
		    
		    #if enableDebugCanvasCode then
		      if mouseDownTriggered and debug then debugCanvas.clearP
		    #endif
		    
		    if DisableLiveDrag then
		      
		      if fromBehave then adjustAttachedControls d, fromBehave
		      
		    else
		      
		      adjustAttachedControls d, fromBehave
		      
		      Moved d
		      
		    end if
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function position() As integer
		  
		  initializeSmartSplitter
		    
		      if isVertical then
		    return left
		          else
		    return top
		          end if
		      
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function proportion() As double
		  initializeSmartSplitter
		  return proportionValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub refreshDebugCanvas(clearFirst as boolean = true)
		  
		  #if enableDebugCanvasCode then
		    
		    if debugCanvas <> nil then
		      if clearFirst then debugCanvas.clearP
		      debugCanvas.markSplitter me, minLimit, maxLimit, isVertical
		      debugCanvas.visible = false
		      debugCanvas.visible = true
		    end if
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub resetPosition()
		  ' Moves splitter to its original position at creation.
		  
		  initializeSmartSplitter
		  
		  if stayProportional then
		    setProportion proportionAtOpen
		  else
		    if isVertical then
		      if lockRight then
		        setPosition positionAtOpen + window.width - windowSizeAtOpen
		    else
		        setPosition positionAtOpen
		    end if
		  else
		      if lockBottom then
		        setPosition positionAtOpen + window.height - windowSizeAtOpen
		      else
		        setPosition positionAtOpen
		  end if
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setAttachedControlMinSizeVisible(c as rectControl, x as integer)
		  ' setting to < 0 will have no effect since negative sized controls are
		  ' hidden automatically in adjustAttachedControls
		  dim i as integer
		  
		  for i = 0 to ubound(attachedControl)
		    if c = attachedControl(i) then
		      attachedControlMinSizeVisible(i) = x
		      return
		    end if
		  next
		  
		  warningForControlNotAttached c, "setAttachedControlMinSizeVisible"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setAttachedControlNormallyVisible(c as rectControl, b as boolean)
		  ' Sets if control should normally be visible.
		  dim i as integer
		  
		  for i = 0 to ubound(attachedControl)
		    if c = attachedControl(i) then
		      attachedControlNormallyVisible(i) = b
		      return
		    end if
		  next
		  
		  warningForControlNotAttached c, "setAttachedControlNormallyVisible"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setAttachedControlShouldCenter(c as rectControl, b as boolean)
		  ' Sets if control should stay centered between min/max and splitter.
		  ' Sets attachedControlShouldResize to False
		  dim i as integer
		  
		  for i = 0 to ubound(attachedControl)
		    if c = attachedControl(i) then
		      attachedControlShouldCenter(i) = b
		      if b then attachedControlShouldResize(i) = false
		      assignLimits
		      adjustAttachedControls 0
		      return
		    end if
		  next
		  
		  warningForControlNotAttached c, "setAttachedControlShouldCenter"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setAttachedControlShouldMove(c as rectControl, b as boolean)
		  ' Sets if control should move with the splitter.
		  dim i as integer
		  
		    for i = 0 to ubound(attachedControl)
		      if c = attachedControl(i) then
		      attachedControlShouldMove(i) = b
		        return
		      end if
		    next
		    
		  warningForControlNotAttached c, "setAttachedControlShouldMove"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setAttachedControlShouldResize(c as rectControl, b as boolean)
		  ' Sets if control should resize with the splitter.
		  ' Sets attachedControlShouldCenter to False
		  dim i as integer
		  
		  for i = 0 to ubound(attachedControl)
		    if c = attachedControl(i) then
		      attachedControlShouldResize(i) = b
		      if b then attachedControlShouldCenter(i) = false
		      return
		    end if
		  next
		  
		  warningForControlNotAttached c, "setAttachedControlShouldResize"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setConceal(b as boolean)
		  ' When set true, the splitter will not show its handle or mouseCursor
		  ' and will ignore mouseDowns. (Move methods still work)
		  
		  initializeSmartSplitter
		  conceal = b
		  refresh
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setDebug(b as boolean)
		  ' When set true, additional information about the splitter and attached controls will be
		  ' drawn to the CanvasSmartSplitterDebugger. (Requires that a canvas of
		  ' class CanvasSmartSplitterDebugger be somewhere in the window. It will
		  ' resize to the window. It should have top ControlOrder so as to not be
		  ' hidden by other controls)
		  
		  ' Note that debugCanvas is always nil unless b=True and a CanvasSmartSplitterDebugger
		  ' is found.   So no extra memory is consumed.
		  
		  ' If you wish to get rid of CanvasSmartSplitterDebugger completely, change the constant
		  ' "enableDebugCanvasCode" within this class from "True" to "False" and delete the
		  ' "debugCanvas" Property.
		  
		  #if enableDebugCanvasCode then
		    
		    dim i as integer
		    
		    initializeSmartSplitter
		    
		    debug = b
		    
		    if b then   'look for a CanvasSmartSplitterDebugger class in the window
		      for i = 0 to window.controlCount-1
		        if window.control(i) isA CanvasSmartSplitterDebugger then
		          debugCanvas = CanvasSmartSplitterDebugger(window.control(i))   '  connect to it for debugging purposes
		          debugCanvas.debug = true
		          exit
		        end if
		      next
		      if debugCanvas = nil then
		        msgBox "SmartSplitter '"+name+"' needs a CanvasSmartSplitterDebugger to be present in the window for debug mode to work."
		        debug = false
		      end if
		    else
		      if debugCanvas <> nil then
		        debugCanvas.debug = false
		        refreshDebugCanvas
		      end if
		      debugCanvas = nil   '  delete canvas
		    end if
		    
		    refreshDebugCanvas
		    
		  #else
		    
		    debug = false
		    if b then msgBox "SmartSplitter '"+name+"' enableDebugCanvasCode is set to False so it cannot connect to CanvasSmartSplitterDebugger."
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setHandleType(x as integer)
		  ' Sets type of handle to be painted.
		  ' -1 = No Handle; 0 = Default Handle;
		  '  1 = Small Bar Handle;
		  '  2 = Large Bar Handle;
		  '  3 = Small Dimple Handle;
		  '  4 = Large Dimple Handle
		  
		  initializeSmartSplitter
		  
		  select case x
		    
		  case 0   ' auto-set
		    
		    handleDimple = (window.frame = 9 and not parent isA tabPanel)   ' metal window but not inside tab panel
		    handleLarge = false
		    
		    if isVertical then
		      if handleDimple then
		        handleCount = 3
		        if width > 5 and height > 20 then
		          handleLarge = true
		          handleCount = 1
		        end if
		      else
		        handleCount = 3
		        if width > 12 and height > 120 then
		          handleLarge = true
		          handleCount = 2
		        else
		          if width < 10 then handleCount = 2
		        end if
		      end if
		    else
		      if handleDimple then
		        handleCount = 3
		        if height > 5 and width > 20 then
		          handleLarge = true
		          handleCount = 1
		        end if
		      else
		        handleCount = 3
		        if height > 12 and width > 120 then
		          handleLarge = true
		          handleCount = 2
		        else
		          if height < 10 then handleCount = 2
		        end if
		      end if
		    end if
		    
		  case 1   ' Small Bar
		    handleDimple = false
		    handleLarge = false
		    handleCount = 3
		  case 2   ' Large Bar
		    handleDimple = false
		    handleLarge = true
		    handleCount = 2
		  case 3   ' Small Dimple
		    handleDimple = true
		    handleLarge = false
		    handleCount = 3
		  case 4   ' Large Dimple
		    handleDimple = true
		    handleLarge = true
		    handleCount = 1
		  else   ' no handle
		    handleCount = 0
		  end select
		  
		  refresh
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setMaxAttachedControl(c as rectControl, onlyIfBetterThanCurrent as boolean = false)
		  ' Sets the maximum the splitter can be moved to always be just to the left or
		  ' above the passed control. As controls are attached, the MinAttachedControl
		  ' and MaxAttachedControl furthest from the splitter is selected.
		  ' (This control is not required to be an attached control, but it would be strange if it weren't)
		  
		  initializeSmartSplitter
		  
		  if onlyIfBetterThanCurrent then
		  
		    if maxAttachedControl = nil then maxAttachedControl = c
		  
		  if isVertical then
		      if c.left+c.width > maxAttachedControl.left+maxAttachedControl.width then maxAttachedControl = c
		    else
		      if c.top+c.height > maxAttachedControl.top+maxAttachedControl.height then maxAttachedControl = c
		    end if
		    
		    else
		    maxAttachedControl = c
		    end if
		    
		  refreshDebugCanvas
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setMaxLimit(x as integer)
		  ' Sets the maximum the splitter can be moved. This limit will adjust with
		  ' window resize. If wish it to stay fixed, set it in the IDE "Properties" window.
		  
		  initializeSmartSplitter
		  maxLimit = x
		  maxAttachedControl = nil
		  refreshDebugCanvas
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setMaxLimitOffset(x as integer)
		  ' Sets the offset distance from the MaxLimit that the splitter will stop
		  ' at before snapping to the MaxLimit. Send <= 0 for no offset snap.
		  
		  initializeSmartSplitter
		  maxLimitOffset = max(x,0)
		  refreshDebugCanvas
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setMaxLimitOffset(c as rectControl)
		    
		  initializeSmartSplitter
		  assignLimits
		    
		      if isVertical then
		    maxLimitOffset = maxLimit - c.left + width
		      else
		    maxLimitOffset = maxLimit - c.top + height
		      end if
		    
		  refreshDebugCanvas
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setMinAttachedControl(c as rectControl, onlyIfBetterThanCurrent as boolean = false)
		  ' Sets the maximum the splitter can be moved to always be just to the right or
		  ' below the passed control. As controls are attached, the MinAttachedControl
		  ' and MaxAttachedControl furthest from the splitter is selected.
		  ' (This control is not required to be an attached control, but it would be strange if it weren't)
		    
		  initializeSmartSplitter
		  
		  if onlyIfBetterThanCurrent then
		    
		    if minAttachedControl = nil then minAttachedControl = c
		    
		      if isVertical then
		      if c.left < minAttachedControl.left then minAttachedControl = c
		      else
		      if c.top < minAttachedControl.top then minAttachedControl = c
		      end if
		    
		  else
		    minAttachedControl = c
		  end if
		  
		  refreshDebugCanvas
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setMinLimit(x as integer)
		  ' Sets the minimum the splitter can be moved.
		  
		  initializeSmartSplitter
		  minLimit = x
		  minAttachedControl = nil
		  refreshDebugCanvas
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setMinLimitOffset(x as integer)
		  ' Sets the offset distance from the MinLimit that the splitter will stop
		  ' at before snapping to the MinLimit. Send <= 0 for no offset snap.
		    
		  initializeSmartSplitter
		  minLimitOffset = max(x,0)
		  refreshDebugCanvas
		      
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setMinLimitOffset(c as rectControl)
		      
		  initializeSmartSplitter
		  assignLimits
		  
		  if isVertical then
		    minLimitOffset = c.left + c.width - minLimit
		    else
		    minLimitOffset = c.top + c.height - minLimit
		          end if
		      
		  refreshDebugCanvas
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setPosition(p as integer)
		  ' Moves splitter to the given position. (From parent window Left or Top)
		  dim x as integer
		    
		  initializeSmartSplitter
		    
		  if warningIfNonAttached("setPosition") then return
		  
		  x = position
		  
		  if isVertical then
		    moveDistance p - left
		    else
		    moveDistance p - top
		    end if
		    
		  if DisableLiveDrag then adjustAttachedControls position-x, true
		    
		  refreshDebugCanvas
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setProportion(x as variant)
		  ' Moves splitter to the given proportional position. (0 ≤ x ≤ 1)
		  dim s as string
		  dim b as boolean
		  
		  initializeSmartSplitter
		  
		  if warningIfNonAttached("setProportion") then return
		  
		  if showWarningsDialogs and varType(x) <> 5 and x <> 0 and x <> 1 then
		    s = "The value type passed to the SmartSplitter '"+name+"' method 'setProportion' is not a single or double."
		    s = s + endOfLine + endOfLine
		    s = s + "Proportion must be referenced as a single or double - double is preferred as that is how it is referenced internally."
		    msgBox s
		      return
		    end if
		  
		  proportionValue = x
		  
		  atMinLimit = false
		  atMaxLimit = false
		  
		  b = stayProportional
		  stayProportional = true
		  
		  behave
		  
		  stayProportional = b
		  
		  refreshDebugCanvas
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function suggestMinSizeControlShouldBeVisible(c as rectControl) As Integer
		  ' Sets minimum size that control should remain visible.
		  ' Setting to < 0 will have no effect since controls with a negative width
		  ' or height are hidden automatically anyway to avoid display glitches.
		  
		  if c isA ListBox then return 20
		  if isVertical and (c isA checkBox or c isA radioButton) then return 18
		  if isVertical and c isA EditField then return 20
		  if isVertical and c isA PopupMenu then return 18
		  if c isA GroupBox or c isA PagePanel or c isA TabPanel then return 28
		  
		  'if c isA SpriteSurface then return 20
		  
		  'if c isA Rb3DSpace then return 20  'may require Quesa.dll on win32
		  
		  'if c isA MoviePlayer then return 20  'may require QuickTime be installed
		  
		  return 2
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function suggestOffsetSizeForControl(c as rectControl) As Integer
		  
		  if c isA TabPanel then return 140
		  
		  if c isA GroupBox or c isA PagePanel then return 100
		  
		  if c isA ListBox then
		    if isVertical then return 86
		    if ListBox(c).scrollBarHorizontal then return 66
		  end if
		  
		  if c isA EditField then
		  if isVertical then
		      if EditField(c).scrollBarVertical then return 80
		      return 60
		  end if
		    if EditField(c).multiLine and EditField(c).scrollBarHorizontal then return 46
		  end if
		  
		  if isVertical and (c isA checkBox or c isA radioButton) then return 60
		  
		  if isVertical and (c isA PopupMenu or c isA Label) then return 40
		  
		  return 30
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function suggestWhetherControlShouldResize(c as rectControl) As Boolean
		  
		  if c isA smartSplitter then
		    if isVertical = (smartSplitter(c).height > smartSplitter(c).width) then return false 'height > width should mean it isVertical
		  end if
		  
		  if isVertical then
		    if c.lockLeft and c.lockRight then return true
		  else
		    if c.lockTop and c.lockBottom then return true
		  end if
		  
		  if c isA Separator or c isA Rectangle or c isA Placard then return true
		  if c isA ImageWell or c isA Canvas or c isA ListBox then return true
		  
		  if c isA EditField then
		    if isVertical or editField(c).multiLine then return true
		  end if
		  
		  if c isA Label then
		    if not isVertical and Label(c).multiLine then return true
		  end if
		  
		  if isVertical and c isA PopupMenu then return true
		  
		  if c isA GroupBox or c isA PagePanel or c isA TabPanel then return true
		  
		  'if c isA SpriteSurface  then return true
		  
		  'if c isA Rb3DSpace then return true  'may require Quesa.dll on win32
		  
		  'if c isA MoviePlayer then return true  'may require QuickTime be installed
		  
		  return false
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub unAttach(c as rectControl, recursiveCall as boolean = false)
		  ' Unattaches an attached control.
		  ' also unAttaches embedded controls in c
		  dim i as integer
		  
		  if c <> nil then
		    
		    for i = 0 to ubound(attachedControl)
		      if c = attachedControl(i) then
		        attachedControl.Remove i
		        attachedControlBehind.Remove i
		        attachedControlMinSizeVisible.Remove i
		        attachedControlNormallyVisible.Remove i
		        attachedControlShouldCenter.Remove i
		        attachedControlShouldMove.Remove i
		        attachedControlShouldResize.Remove i
		        attachedControlSize.Remove i
		        if controlCommonlyHasEmbeddedControls(c) then
		          for i = 0 to window.controlCount-1  ' unAttach all controls inside this control
		            if rectControl(window.control(i)).parent = c then unAttach rectControl(window.control(i)), true
		    next
		        end if
		        return
		      end if
		  next
		  
		  end if
		  
		  
		  if not recursiveCall then warningForControlNotAttached c, "unAttach"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub unAttachAllControls()
		  ' Unattaches all attached controls.
		  dim i as integer
		  
		  for i = 0 to ubound(attachedControl)
		    attachedControl(i) = nil
		  next
		  
		  redim attachedControl(-1)
		  redim attachedControlBehind(-1)
		  redim attachedControlMinSizeVisible(-1)
		  redim attachedControlNormallyVisible(-1)
		  redim attachedControlShouldCenter(-1)
		  redim attachedControlShouldMove(-1)
		  redim attachedControlShouldResize(-1)
		  redim attachedControlSize(-1)
		  
		  minAttachedControl = nil
		  maxAttachedControl = nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub warningForControlNotAttached(c as rectControl, methodName as string)
		  dim s as string
		  
		  if not showWarningsDialogs then return
		  
		  if c = nil then
		    s = "The control passed to the SmartSplitter '"+name+"' method '"+methodName+"' is NIL."
		    s = s + endOfLine + endOfLine
		    s = s + "Don't go calling this method with nonexistent controls!"
		    msgBox s
		  else
		    s = "The control '"+c.name+"' passed to the SmartSplitter '"+name+"' method '"+methodName+"' has not been attached."
		    s = s + endOfLine + endOfLine
		    s = s + "Control must be attached BEFORE calling this method."
		    msgBox s
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function warningIfNonAttached(methodName as string) As Boolean
		  dim s as string
		  
		  if ubound(attachedControl) < 0 then
		    if showWarningsDialogs then
		      s = "SmartSplitter '"+name+"' method '"+methodName+"' WARNING:"
		      s = s + endOfLine + endOfLine
		      s = s + "All controls should be attached BEFORE calling this method.   Call will be ignored."
		      msgBox s
		    end if
		    return true
		  end if
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseDown(X as Integer, Y as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseDrag(X as Integer, Y as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseEnter()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseUp(X as Integer, Y as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Moved(Distance as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Paint(g as Graphics)
	#tag EndHook


	#tag Note, Name = How much is it ?
		
		The SmartSplitter class is provided free for all to use. However, I do maintain ownership of SmartSplitter. 
		You are free to redistribute the source code as long as this documentation goes with it.
		
		There is no need to credit me in your program for using SmartSplitter unless you just want to.
		
		If you use SmartSplitter in a project that generates actual profit (unlike any of mine;) or in a project for 
		your work, you may feel compelled to offer compensation for the benefit it provided. Any monetary gift 
		of thanks would be appreciated and would encourage continued development and support of 
		SmartSplitter. To donate, go to http://www.harryhooie.com/donate/.
	#tag EndNote

	#tag Note, Name = Revision History
		
		Version 1.3.2
		• ClearRect removed from paint routine to fix background color under Windows XP
		• Splitters set to StayProportional are now proportional to attached control extents rather than from min/maxLimits
		--- Thanks to Tomas Camin for letting me know about this ---
		• Fixed CanvasSmartSplitterDebugger so that it now works in Mac OS X using RB2005 and later
		• Masking CanvasSmartSplitterDebugger so that it looks better
		• Fixed initialization issue happening splitter is referenced before Open Event
		
		Version 1.3.1
		• Uses REALbasic built in cursors in RB2005 and later
		• Constant enableDebugCanvasCode can be changed to false (in IDE only) to completely skip all 
		   debug code so that CanvasSmartSplitterDebugger will no longer be required in your project
		
		Version 1.3
		• Fixed control smarts to handle embeded control resize change in REALbasic 2005
		• Added logic to handle invisible attached controls
		   (Use new subroutine setAttachedControlNormallyVisible to alert SmartSplitter if an attached control changes visibility)
		    --- Thanks to Steve Roy for alerting me to this problem ---
		• Using DisableLiveDrag looks MUCH better
		• Fixed a Win32 "expanding" handle refresh problem
		
		Version 1.2.2
		 • Changed main for-next loop in attachNearbyControls to loop to window.controlCount-1 - fixes a possible future OutOfBoundsException
		
		Version 1.2.1
		 • When scanning for embedded controls only RectControls are attached - fixes a IllegalCastException
		 • Line controls are no longer attached - they are ignored since they don't work like other RectControls
		    --- Thanks to Massimo Valle for alerting me to both these bugs ---
		
		Version 1.2
		 •  Set graphics.useOldRenderer = true in drawDimple method so that the dimples would be visible in Panther metal windows
		 •  Added alternate more-Windows-looking cursors for win32 compiles
		 •  Added EditField logic in suggestOffsetSizeForControl to take into account visibility of scrollbars
		
		Version 1.1
		 •  Darkened handle when on metal windows (but not inside tab panel)
		 •  Proportion limited to between 0.0 and 1.0
		 •  Commented out code checking if rectControl isA Rb3DSpace/MoviePlayer in suggestMinSizeControlShouldBeVisible and suggestWhetherControlShouldResize since this was requiring Quesa.dll/QuickTime on win32
		 •  Added unAttach method for controls (why not?)
		
		
		If you make any code improvements, you are welcome to send them to me at 
		smartsplitter@harryhooie.com, and I will try to incorporate them in the next update so that everyone 
		using SmartSplitter can benefit. I am particularly interested in a Win32 declare to draw a line/rect/region 
		(but not a drag-region) to lessen the flickering - so if anyone has a declare routine coded up...
	#tag EndNote

	#tag Note, Name = Using SmartSplitter
		
		First add the SmartSplitter class to your project by dragging the "SmartSplitter" folder into 
		your project window.
		
		To add a SmartSplitter to one of your project windows, add a canvas to the window and 
		change the canvas's Super property from "Canvas" to "SmartSplitter". (or drag the 
		SmartSplitter class from Project Controls onto the window)    Now resize it so that it 
		covers the area between the controls you wish to be adjustable.
		
		If the splitter's height is greater than its width, it will act as a vertical splitter and look for 
		controls to the left and right. Otherwise it will act as a horizontal splitter looking for 
		controls above and below. Controls with edges within 5 pixels of the edges of the splitter 
		will automatically attach unless you command otherwise.
		
		All controls you wish to adjust with the splitter should be position locked as they would 
		need to be to resize correctly with their container window - even if the window is not 
		going to be resizable.
		
		
		*** Behave
		
		If your window is to be resizable, a call to each SmartSplitter's behave method needs to be 
		added to the parent window's Resized event (or to the Resizing event if the window 
		is set to LiveResize):
		
		Sub Resized()
		  SmartSplitter1.behave 
		  SmartSplitter2.behave
		End Sub
		
		... and ...
		
		Sub Resizing()
		  SmartSplitter1.behave 
		  SmartSplitter2.behave
		End Sub
		
		
		The behave method keeps the SmartSplitter locked to its MinLimit and MaxLimit if it was 
		previously locked and adjusts its proportions if StayProportional is selected (see Setting 
		SmartSplitter properties) was set to true.
	#tag EndNote


	#tag Property, Flags = &h21
		Private atMaxLimit As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private atMinLimit As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private attachedControl(-1) As rectControl
	#tag EndProperty

	#tag Property, Flags = &h21
		Private attachedControlBehind(-1) As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private attachedControlMinSizeVisible(-1) As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private attachedControlNormallyVisible(-1) As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private attachedControlShouldCenter(-1) As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private attachedControlShouldMove(-1) As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private attachedControlShouldResize(-1) As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private attachedControlSize(-1) As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private backgroundDark As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private colorDark As color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private colorDarkDisabled As color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private colorLight As color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private colorLightDisabled As color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private colorMedium As color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private colorMediumDisabled As color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private conceal As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Debug As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private debugCanvas As CanvasSmartSplitterDebugger
	#tag EndProperty

	#tag Property, Flags = &h21
		Private dimplePixelValue(5,5) As double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private dimplePixelValueDisabled(5,5) As double
	#tag EndProperty

	#tag Property, Flags = &h0
		DisableLiveDrag As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		doNotAttachEmbeddedControls As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		handleCount As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		handleDimple As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		handleLarge As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private HandleType As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private initializedSmartSplitter As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private initializingSmartSplitter As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private isVertical As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private maxAttachedControl As rectControl
	#tag EndProperty

	#tag Property, Flags = &h0
		MaxLimit As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MaxLimitOffset As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private maxLimitOffsetPropSet As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private maxLimitPropSet As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private minAttachedControl As rectControl
	#tag EndProperty

	#tag Property, Flags = &h0
		MinLimit As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MinLimitOffset As integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected minLimitOffsetPropSet As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected minLimitPropSet As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mouseDownTriggered As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mouseDownX As integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mouseDownY As integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected positionAtMouseDown As integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected positionAtOpen As integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected proportionAtOpen As double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private proportionMax As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private proportionMin As integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected proportionValue As double
	#tag EndProperty

	#tag Property, Flags = &h0
		showWarningsDialogs As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		StayProportional As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		StopAtMaxOffset As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		StopAtMinOffset As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SwapOrientation As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected windowSizeAtOpen As integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected windowSizeLast As integer
	#tag EndProperty


	#tag Constant, Name = enableDebugCanvasCode, Type = Boolean, Dynamic = False, Default = \"True", Scope = Private
	#tag EndConstant

	#tag Constant, Name = SmartSplitter_Version, Type = Double, Dynamic = False, Default = \"1.32", Scope = Public
	#tag EndConstant


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
			Name="DisableLiveDrag"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="doNotAttachEmbeddedControls"
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
			Name="handleCount"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="handleDimple"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="handleLarge"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
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
			Name="MaxLimit"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxLimitOffset"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinLimit"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinLimitOffset"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			InheritedFrom="Canvas"
		#tag EndViewProperty
		#tag ViewProperty
			Name="showWarningsDialogs"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StayProportional"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StopAtMaxOffset"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StopAtMinOffset"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
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
