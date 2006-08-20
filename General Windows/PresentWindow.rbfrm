#tag Window
Begin Window PresentWindow
   Placement       =   0
   Width           =   300
   Height          =   300
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   3
   Composite       =   "False"
   HasBackColor    =   "True"
   BackColor       =   0
   Backdrop        =   0
   Title           =   "Presentation"
   Visible         =   "True"
   FullScreen      =   "False"
   MenuBarVisible  =   "False"
   CloseButton     =   "False"
   Resizeable      =   "False"
   LiveResize      =   "False"
   MaximizeButton  =   "False"
   MinimizeButton  =   "True"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   0
   Begin Canvas cnvSlide
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   -1
      Top             =   -1
      Width           =   302
      Height          =   302
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "True"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      BehaviorIndex   =   0
      Begin Timer timerAdvance
         Index           =   -2147483648
         ControlOrder    =   1
         Left            =   248
         Top             =   248
         Mode            =   0
         Period          =   10000
         TabPanelIndex   =   0
         BehaviorIndex   =   1
      End
      Begin Timer timerTransition
         Index           =   -2147483648
         ControlOrder    =   2
         Left            =   204
         Top             =   248
         Mode            =   0
         Period          =   125
         TabPanelIndex   =   0
         BehaviorIndex   =   2
      End
   End
End
#tag EndWindow

#tag WindowCode
#tag Event
	Sub Close()
	  MainWindow.Status_Presentation = False
	  If HelperActive Then PresentHelperWindow.Close
	  timerAdvance.Enabled = False
	  MainWindow.Show
	  MainWindow.SetFocus
	  
	End Sub
#tag EndEvent

#tag Event
	Function KeyDown(Key As String) As Boolean
	  Return KeyDownX(Key)
	End Function
#tag EndEvent

#tag Event
	Function MouseDown(X As Integer, Y As Integer) As Boolean
	  If IsCMMClick Then
	    Return KeyDownX(Chr(30))
	  Else
	    Return KeyDownX(Chr(31))
	  End If
	End Function
#tag EndEvent

#tag Event
	Sub Moved()
	  App.DebugWriter.Write("PresentWindow.Moved")
	  cnvSlide.SetFocus
	End Sub
#tag EndEvent

#tag Event
	Sub Open()
	  //++EMP 09/04
	  // Rewritten to get transition speed characteristics from presentation preferences
	  //
	  App.DebugWriter.Write("PresentWindow.Open: Enter")
	  Dim time As Integer
	  time = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "style/@transition_time", False)
	  If time = 0 Then Time = 100 'Set a reasonable default
	  TransitionFrames = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "style/@transition_frames", False)
	  If TransitionFrames = 0 Then TransitionFrames= 5 'again, reasonable default
	  timerTransition.Period = time / TransitionFrames
	  //--
	  Mode = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "style/@initial_mode")
	  If Len(Mode) <> 1 Then Mode = "N"
	  doTransition = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@transition")
	  App.DebugWriter.Write("PresentWindow.Open: Exit")
	End Sub
#tag EndEvent


#tag Method, Flags = &h1
	Protected Sub DrawAlert(g As Graphics, alert As String)
	  Dim RealSize, Margin, Border As Integer
	  Dim alertFont As FontFace
	  
	  alertFont = SmartML.GetValueF(App.MyPresentSettings.DocumentElement, "alert")
	  RealSize = alertFont.Size * g.Width / 500
	  Margin = RealSize / 10
	  
	  alertFont.OntoGraphics g
	  
	  g.TextSize = RealSize
	  alertFont.Size = RealSize
	  
	  Dim align, valign As String
	  valign = Lowercase(SmartML.GetValue(App.MyPresentSettings.DocumentElement, "alert/@valign"))
	  align = Lowercase(SmartML.GetValue(App.MyPresentSettings.DocumentElement, "alert/@align"))
	  Border = CalcBorderSize(g)
	  GraphicsX.DrawFontString g, alert, Border*3, Border, _
	  alertFont, cnvSlide.Width-Border*6, align, cnvSlide.Height-Border*7, valign
	End Sub
#tag EndMethod

#tag Method, Flags = &h1
	Protected Function FindKey(key As String, XCurSlide As XmlNode, CurSlide As Integer, byRef XNewSlide As XmlNode, byRef NewSlide As Integer) As Boolean
	  '
	  ' Function to help reduce amount of code in KeyDownX by implementing the common aspects of looking for
	  ' a specific item (chorus, bridge, verse) in a Set's Section
	  'Assumes ?? (...a lot -- EMP 6/20/05 :^O )
	  '
	  'XNewSlide and NewSlide will always point to a valid slide unless their Current equivalents passed in garbage
	  '
	  ' EMP 09/04-10/04
	  
	  Dim startSlide as integer 'Where the search started from
	  Dim XstartSlide as XMLnode 'Same, but XML for the slide
	  Dim bFound as Boolean 'Search successful? (Loop control)
	  Dim bBumped As Boolean = False // Indicates if XCurSlide
	  Dim temp as String
	  Dim ppName as String
	  Dim SearchType as Integer
	  Const SEARCH_ANYVERSE = 1
	  Const SEARCH_SPECIFICVERSE = 2
	  Const SEARCH_OTHER = 3
	  
	  if (lowercase(key) = "v") Then
	    SearchType = SEARCH_ANYVERSE
	  elseif IsNumeric(key) then 'Verse can be  either a V or digit
	    SearchType = SEARCH_SPECIFICVERSE
	  else
	    SearchType = SEARCH_OTHER
	  end if
	  
	  ppName = SmartML.GetValue(XcurrentSlide.Parent.Parent, "@name", False) 'EMP debug 10/1 -- RB  debug crashed with old IF statement below
	  xNewSlide = xCurrentSlide
	  NewSlide = CurrentSlide
	  If ppName = "" Then 'If we're on a blank, go forward one 'EMP debug 10/1
	    xNewSlide = SetML.GetNextSlide(XCurrentSlide)
	    NewSlide = CurrentSlide + 1
	    If xNewSlide = Nil Then ' We're at the end of the set
	      NewSlide = CurSlide 'point to where we started from
	      XNewSlide = XCurSlide
	      Return False 'Couldn't find it
	    End If
	  End If
	  'Mark where we are starting EMP 10/1
	  startSlide = NewSlide
	  xStartSlide = XNewSlide
	  
	  If ppName <> "" Then 'Always go forward to start searching IF the current slide upon entry to this routine wasn't a blank
	    if xNewSlide.NextSibling <> Nil then 'always start on the next slide if possible
	      xNewSlide = xNewSlide.NextSibling
	      newslide = newslide + 1
	    else ' End of song, go back to the beginning to start the search EMP 10/3
	      While xNewSlide.PreviousSibling <> Nil
	        xNewSlide = XNewSlide.PreviousSibling
	        newSlide = newSlide - 1
	      wend
	    end if
	  End If
	  
	  ' Test until we hit a match or the starting slide again
	  
	  bFound = False
	  While not bFound
	    Select Case SearchType
	    Case SEARCH_OTHER
	      If Lowercase(Left(SmartML.GetValue(xNewSlide, "@id", False), len(key))) = key Then
	        bFound = True 'break the loop EMP 9/28
	      end if
	    Case SEARCH_SPECIFICVERSE
	      temp = SmartML.GetValue(xNewSlide, "@id", False)
	      If (Lowercase(temp) = "v" + Key) Or temp = Key Then
	        bFound = True
	      end if
	    Case SEARCH_ANYVERSE
	      temp = SmartML.GetValue(xNewSlide, "@id", False)
	      if (Lowercase(Left(temp,1)) = "v") Or IsNumeric(temp) Then
	        bFound = True
	      End If
	    end select
	    
	    if not bFound then 'Still not a match
	      '
	      'Make two checks:
	      ' 1. See if we've gone all around the song (startSlide is current)
	      ' 2. See if we're at the end so we can rewind and start from the beginning
	      '
	      if xNewSlide.NextSibling = Nil then 'At end of song.  Be kind: rewind.
	        'While loop looks before it leaps to cover corner case of single slide song  EMP 10/1/04
	        While xNewSlide.PreviousSibling <> Nil
	          xNewSlide = XNewSlide.PreviousSibling
	          newSlide = newSlide - 1
	        Wend 'Backup Loop
	      else 'Move forward to next slide
	        xnewSlide = xNewSlide.NextSibling
	        newslide = newslide + 1
	      end if 'xNewSlide.NextSibling = Nil !!! End of changes EMP 9/28
	      if newSlide = startSlide then '
	        'Didn't find a match EMP 10/1
	        newSlide = CurSlide
	        xNewSlide = xStartSlide
	        return false
	      end if
	    End If 'chorus?
	  Wend '!bFound
	  
	  ' If control comes here, match was found and it's in the "new" variables
	  xCurrentSlide = xNewSlide
	  CurrentSlide = newSlide
	  
	  Return True
	End Function
#tag EndMethod

#tag Method, Flags = &h0
	Function GetStyle(Key As String) As SlideStyle
	  //++EMP
	  // September 2005
	  // Returns the SlideStyle referenced by the key
	  //
	  Return StyleDict.Value(Key)
	  //--EMP
	End Function
#tag EndMethod

#tag Method, Flags = &h0
	Function KeyDownX(Key As String) As Boolean
	  '
	  ' This routine was originally where all the code to decode a keystroke was kept
	  '
	  ' What I'd like to do is use this to decode keypresses and then pass a function code on
	  ' to PerformAction.  That way, it starts separating the function to be performed from
	  ' the keystrokes used, allowing us to (a) call PerformAction from elsewhere with
	  ' a command code, and (b) support keyboard remapping through this routine.
	  
	  ' TODO: Put the commands into the Language file and load it from there
	  ' TODO: Find all the places KeyDownX is called and redirect the call to PerformAction with the proper command
	  ' TODO: (this implies that the PerformAction actioncode constants are defined Public
	  '
	  ' EMP, 1/19/05 ff
	  '
	  ' Temporarily just do the regular function until the code is fleshed out
	  '
	  Const ASC_KEY_SPACE = 32
	  Const ASC_KEY_LEFT = 28
	  Const ASC_KEY_RIGHT = 29
	  Const ASC_KEY_UP = 30
	  Const ASC_KEY_DOWN = 31
	  Const ASC_KEY_PGDN=12
	  Const ASC_KEY_PGUP =11
	  Const ASC_KEY_HOME=1
	  Const ASC_KEY_END=4
	  
	  Dim DontCare As Boolean
	  Dim Command As Integer
	  
	  Command = AscB(Lowercase(Key))
	  
	  Select Case Command
	  Case ASC_KEY_SPACE
	    Command = ACTION_NEXT_SLIDE
	  End Select
	  
	  DontCare = PerformAction(Command)
	  Return DontCare
	End Function
#tag EndMethod

#tag Method, Flags = &h1
	Protected Function PerformAction(Action As Integer) As Boolean
	  '
	  ' ***EMP 6/20/05***
	  ' PerformAction was originally all in the KeyDownX routine.
	  '
	  ' Since the most requested feature on SourceForge is the ability to change
	  ' the keyboard assignments, my concept is KeyDownX will convert a keypress
	  ' to an OpenSong internal command code, then pass that to PerformAction.
	  ' This also puts a more logical face on modules other than the keyboard
	  ' handler using this code to modify something happening on the screen.
	  '
	  ' That break is still being defined, so for the moment we'll just pretend
	  ' that the keycodes are the same as the command codes, and equate the
	  ' old Key variable to the new Action command code until this is more
	  ' fully fleshed out.
	  '
	  ' There have been so many changes in this method between 9/20/04 and
	  ' this writing that a line-by-line comparison with the 0.9.9 KeyDownX method
	  ' would be needed to figure out where I've changed Sean's code...some
	  ' has been notated, some not as I experimented and squashed my own bugs.
	  ' ***EMP 6/20/05***
	  '
	  'MsgBox Str(Action) 'Debug statement
	  
	  Dim temp, oldName As String
	  Dim i , j, newSlide, OldSlide As Integer 'OldSlide stores current position (EMP 6/20/05)
	  dim startSlide as integer 'EMP 9/28/04
	  Dim f As FolderItem
	  Dim s As XmlDocument
	  Dim xNewSlide, newGroup, xtemp, xOldSlide As XmlNode 'xOldSlide pairs with OldSlide above
	  Dim leave as integer
	  Dim xStartSlide as XmlNode 'EMP 9/28/04
	  Dim bFound as boolean 'EMP 9/28/04
	  'Static prevMode as string 'EMP 9/28/04
	  Dim ppName As String 'EMP debug 10/1/04
	  Dim newName, newType, oldType As String 'EMP 15 Jan 2006 to support movement by section
	  ' Verification message for exit EMP 1/18/05
	  Dim messagebox as New MessageDialog
	  Dim msgboxbutton as New MessageDialogButton
	  
	  'Constants added for clarity EMP 9/30/04
	  Const ASC_KEY_LEFT = 28
	  Const ASC_KEY_RIGHT = 29
	  Const ASC_KEY_UP = 30
	  Const ASC_KEY_DOWN = 31
	  Const ASC_KEY_PGDN=12
	  Const ASC_KEY_PGUP =11
	  Const ASC_KEY_HOME=1
	  Const ASC_KEY_END=4
	  Const ASC_KEY_BACKSPACE = 8
	  Const KEY_PGDN=&h79
	  Const KEY_PGUP=&h74
	  Const KEY_RIGHT=&h7c
	  Const KEY_LEFT=&h7b
	  Const KEY_UP=&h7e
	  Const KEY_DOWN=&h7d
	  '
	  'Temporary hack until the command arguments are fixed (see comments at top of method...EMP)
	  '
	  Dim Key As String
	  Key = ChrB(Action)
	  
	  '
	  '  NEXT SLIDE
	  '
	  If Keyboard.AsyncKeyDown(KEY_DOWN) Or _
	    Action = ASC_KEY_DOWN Or _
	    Action = ACTION_NEXT_SLIDE Then
	    xNewSlide = SetML.GetNextSlide(XCurrentSlide)
	    If xNewSlide <> Nil Then
	      currentSlide = currentSlide + 1
	      XCurrentSlide = xNewSlide
	      If HelperActive Then
	        PresentHelperWindow.ScrollTo currentSlide
	      Else
	        ResetPaint XCurrentSlide
	      End If
	      Return True
	    End If
	    Return False
	    
	    '
	    ' PREVIOUS SLIDE
	    '
	  ElseIf Keyboard.AsyncKeyDown(KEY_UP)  Or _
	    Action = ASC_KEY_UP Then
	    xNewSlide = SetML.GetPrevSlide(XCurrentSlide)
	    If xNewSlide <> Nil Then
	      currentSlide = currentSlide - 1
	      xCurrentSlide = xNewSlide
	      If HelperActive Then
	        PresentHelperWindow.ScrollTo currentSlide
	      Else
	        ResetPaint XCurrentSlide
	      End If
	      Return True
	    End If
	    Return False
	    
	    '
	    ' FIRST SLIDE in presentation
	    '
	  ElseIf Action = ASC_KEY_HOME Then
	    CurrentSlide = 1
	    XCurrentSlide = SetML.GetSlide(CurrentSet, 1)
	    
	    If HelperActive Then
	      PresentHelperWindow.ScrollTo currentSlide
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    '
	    ' LAST SLIDE in presentation
	    '
	  ElseIf Action = ASC_KEY_END Then
	    xNewSlide = xCurrentSlide
	    newSlide = CurrentSlide
	    Do Until xNewSlide = Nil
	      xCurrentSlide = xNewSlide
	      CurrentSlide = newSlide
	      xNewSlide = SetML.GetNextSlide(xCurrentSlide)
	      newSlide = newSlide + 1
	    Loop
	    
	    If HelperActive Then
	      PresentHelperWindow.ScrollTo currentSlide
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    '
	    ' NEXT SECTION
	    '
	  ElseIf (Keyboard.AsyncKeyDown(KEY_RIGHT) Or Action = ASC_KEY_RIGHT) Then
	    //++EMP, 15 Jan 2006
	    // Updated to recognize new section type "blank" for program-generated blank slides
	    //
	    oldName = SmartML.GetValue(XCurrentSlide.Parent.Parent, "@name", True) 'What is the section name?
	    oldType = SmartML.GetValue(XCurrentSlide.Parent.Parent, "@type", True) 'And its type?
	    newSlide = CurrentSlide + 1 'move forward a slide
	    xNewSlide = SetML.GetNextSlide(XCurrentSlide) 'keep slide number and XML in step with each other
	    If xNewSlide = Nil Then // at end of presentation, just return
	      Return True
	    End If
	    newName = SmartML.GetValue(xNewSlide.Parent.Parent, "@name", True)
	    newType = SmartML.GetValue(xNewSlide.Parent.Parent, "@type", True)
	    
	    ' Check to see if we started on a blank slide, if so, use the section name from the slide we just moved to
	    '++JRC: Or if this is a custom slide without a name
	    If xNewSlide <> Nil and oldType = "blank" Then
	      'If oldName = "" And xNewSlide <> Nil And SmartML.GetValue(XCurrentSlide.Parent.Parent, "@type", True) <> "custom" Then
	      oldName = SmartML.GetValue(xNewSlide.Parent.Parent, "@name", True)
	    end if
	    '--
	    
	    ' Keep moving forward until the section name changes
	    While xNewSlide <> Nil And newName = oldName And newType <> "blank"
	      XCurrentSlide = xNewSlide
	      CurrentSlide = newSlide
	      newSlide = newSlide + 1
	      xNewSlide = SetML.GetNextSlide(XCurrentSlide)
	      If xNewSlide <> Nil Then
	        newName = SmartML.GetValue(xNewSlide.Parent.Parent, "@name", True)
	        newType = SmartML.GetValue(xNewSlide.Parent.Parent, "@type", True)
	      End If
	    Wend
	    
	    // If the slide pointed to by newSlide exists (in other words, we're not at the end)
	    // then we move to it.
	    //
	    If xNewSlide <> Nil Then
	      XCurrentSlide = xNewSlide
	      CurrentSlide = newSlide
	    End If
	    //--EMP, 15 Jan 06
	    
	    If HelperActive Then
	      PresentHelperWindow.ScrollTo currentSlide
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    '
	    ' PREVIOUS SECTION
	    '
	  ElseIf Keyboard.AsyncKeyDown(KEY_LEFT) Or Action = ASC_KEY_LEFT _
	    Or Action = ASC_KEY_BACKSPACE _
	    Or Action = ACTION_FIRST_SLIDE_OF_SECTION Then 'special code 126 comes from inside the program instead of keyboard
	    If CurrentSlide = 1 Then Return False ' Can't go back any further
	    newSlide = CurrentSlide - 1 '  "New" is back one
	    xNewSlide = SetML.GetPrevSlide(XCurrentSlide) ' xNew matches newSlide
	    oldName = SmartML.GetValue(XCurrentSlide.Parent.Parent, "@name", True) 'Get name of current section
	    
	    //++EMP, 15 Jan 06
	    // Two options for finding the start of the section:
	    // 1. If blanks are being used, just look type="blank" as we count back
	    // 2. No blanks: look for name change
	    //
	    'keep backing up until the name changes (well, it really becomes Nil)
	    
	    newName = SmartML.GetValue(xNewSlide.Parent.Parent, "@name", True) //++
	    newType = SmartML.GetValue(xNewSlide.Parent.Parent, "@type", True) //++
	    
	    // Before starting the loop, check to see if the current slide was the first one
	    // of a section.  If so, update the pointers to the current slide.  That means
	    // the first time through the loop both current and next are the same.
	    If newName <> oldName Then
	      oldName = newName
	      oldType = newType
	      XCurrentSlide = xNewSlide
	      CurrentSlide = newSlide
	    End If
	    
	    While xNewSlide <> Nil And (newName = oldName And newType <> "blank") //++
	      XCurrentSlide = xNewSlide
	      CurrentSlide = newSlide
	      newSlide = newSlide - 1
	      xNewSlide = SetML.GetPrevSlide(XCurrentSlide)
	      If xNewSlide <> Nil Then //++
	        newName = SmartML.GetValue(xNewSlide.Parent.Parent, "@name", True) //++
	        newType = SmartML.GetValue(xNewSlide.Parent.Parent, "@type", True) //++
	      End If //++
	    Wend
	    
	    //
	    // At this point, XCurrentSlide is the first slide of a section.
	    // xNewSlide will either be Nil or have type="blank"
	    // If blank, make it the current slide if the command is ACTION_START_OF_SECTION
	    // Otherwise, stay on the first slide of the section
	    //
	    
	    If xNewSlide <> Nil Then ' See if this is a blank
	      '++JRC: If this is a custom slide without a name, ignore
	      'If SmartML.GetValue(xNewSlide.Parent.Parent, "@name", True) = ""_
	      'And SmartML.GetValue(XCurrentSlide.Parent.Parent, "@type", True) <> "custom"_
	      'And Not (Action = ASC_KEY_BACKSPACE  Or Action = ACTION_FIRST_SLIDE_OF_SECTION) Then 'Stay on first slide if BS or special code instead of the separating blank slide
	      If newType = "blank" _
	        And Not (Action = ASC_KEY_BACKSPACE Or Action = ACTION_FIRST_SLIDE_OF_SECTION) Then
	        XCurrentSlide = xNewSlide
	        CurrentSlide = newSlide
	      End If
	      '--
	    End If
	    If HelperActive Then
	      PresentHelperWindow.ScrollTo currentSlide
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    //--EMP, 15 Jan 06
	    
	    '
	    ' Jump to Chorus
	    '
	  ElseIf Lowercase(Key) = "c" Or Key = "`" Then ' c = Chorus
	    if not FindKey("c", XNewSlide, NewSlide, XNewSlide, NewSlide) then
	      Return False 'don''t change anything
	    end if
	    
	    If HelperActive Then
	      PresentHelperWindow.ScrollTo currentSlide
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    '
	    ' Jump to  Bridge
	    '
	  ElseIf Lowercase(Key) = "b" Then ' b = Bridge
	    if not FindKey("b", XNewSlide, NewSlide, XNewSlide, NewSlide) then
	      Return False 'don''t change anything
	    end if
	    
	    If HelperActive Then
	      PresentHelperWindow.ScrollTo currentSlide
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    '
	    ' Jump to PreChorus
	    '
	  ElseIf Lowercase(Key) = "p" Then ' p = Pre-chorus
	    if not FindKey("p", XNewSlide, NewSlide, XNewSlide, NewSlide) then
	      Return False 'don''t change anything
	    end if
	    
	    If HelperActive Then
	      PresentHelperWindow.ScrollTo currentSlide
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    '
	    ' Jump to tag
	    '
	  ElseIf Lowercase(Key) = "t" Then ' t = Tag
	    if not FindKey("t", XNewSlide, NewSlide, XNewSlide, NewSlide) then
	      Return False 'don''t change anything
	    end if
	    
	    If HelperActive Then
	      PresentHelperWindow.ScrollTo currentSlide
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    '
	    ' Jump to Verse "N"
	    '
	  ElseIf lowercase(key) = "v" or isNumeric(key) Then ' n = Verse
	    if FindKey(key,  xCurrentSlide, CurrentSlide, xNewSlide, NewSlide) Then
	      xCurrentSlide = xNewSlide
	      CurrentSlide = NewSlide
	    Else
	      Return False
	    End If
	    
	    If HelperActive Then
	      PresentHelperWindow.ScrollTo currentSlide
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    '
	    ' Close Presentation
	    '
	  ElseIf Keyboard.AsyncKeyDown(&h35) Or Action = 27 Then ' Escape
	    '++JRC: made the prompt optional
	    if SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@exit_prompt") then
	      If InputBox.Ask(App.T.Translate("presentation_helper/exit/@caption")) Then
	        Close
	      End If
	    else
	      Close
	    end if
	    
	    return true
	    '--End
	    '
	    ' Black screen (can't be "B" since that's the hotkey for "Bridge" :-(
	    '
	  ElseIf Lowercase(Key) = "k"  Then
	    'Great idea :)
	    ' Now it's a toggle EMP 9/28
	    if Mode <> "B" then
	      Mode = "B"
	    else
	      Mode = "N"
	    end if
	    'End of toggle EMP 9/28
	    'Mode = "B"
	    If HelperActive Then
	      PresentHelperWindow.SetMode Mode
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    '
	    ' White Screen
	    '
	  ElseIf Lowercase(Key) = "w" Then
	    'Great idea :)
	    ' Now it's a toggle EMP 9/28
	    if Mode <> "W" then
	      Mode = "W"
	    else
	      Mode = "N"
	    end if
	    'End of toggle EMP 9/28
	    'Mode = "W"
	    If HelperActive Then
	      PresentHelperWindow.SetMode Mode
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    '
	    ' Hide Slide (leaves background up)
	    '
	  ElseIf Lowercase(Key) = "h" Then
	    'Great idea :)
	    ' Now it's a toggle EMP 9/28
	    if Mode <> "H" then
	      Mode = "H"
	    else
	      Mode = "N"
	    end if
	    'End of toggle EMP 9/28
	    'Mode = "H"
	    If HelperActive Then
	      PresentHelperWindow.SetMode Mode
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    '
	    ' Put up the LOGO
	    '
	  ElseIf Lowercase(Key) = "l" Then
	    if Mode <> "L" Then
	      Mode = "L"
	    else
	      Mode = "N"
	    end if
	    'End of toggle EMP 9/28
	    'Mode = "L"
	    If HelperActive Then
	      PresentHelperWindow.SetMode Mode
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    '
	    ' Freeze display screen
	    '
	  ElseIf Lowercase(Key) = "f" Then
	    ' Now it's a toggle EMP 9/28
	    if Mode <> "F" then
	      Mode = "F"
	    else
	      Mode = "N"
	    end if
	    'End of toggle EMP 9/28
	    'Mode = "F"  'Old Code EMP 9/28
	    If HelperActive Then
	      PresentHelperWindow.SetMode Mode
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    '
	    '  Normal Screen (less important now that the modes are toggles)
	    '  It's a trump -- disables any other mode
	    '
	  ElseIf Lowercase(Key) = "n" Then
	    Mode = "N"
	    If HelperActive Then
	      PresentHelperWindow.SetMode Mode
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    '
	    ' Put up an ALERT
	    '
	  ElseIf Lowercase(Key) = "a" Then
	    AlertText = InputBox.Input(App.T.Translate("presentation_helper/actions/alert") + ":", "")
	    If HelperActive Then
	      ResetPaint XCurrentSlide
	      PresentHelperWindow.Refresh False
	    Else
	      ResetPaint XCurrentSlide
	    End If
	    Return True
	    
	    '
	    ' SCRIPTURE
	    '
	  ElseIf Lowercase(Key) = "s" Then
	    ' Get a reference
	    newGroup = SmartML.InsertAfter(XCurrentSlide.Parent.Parent, "slide_group")
	    temp = Mode
	    If ScripturePickerWindow.Popup(newGroup, True) Then
	      App.MouseCursor = WatchCursor
	      
	      ' --- Move to where we need to be ---
	      temp = SmartML.GetValue(newGroup, "@name")
	      Do Until SmartML.GetValue(XCurrentSlide.Parent.Parent, "@name") = temp
	        currentSlide = currentSlide + 1
	        XCurrentSlide = SetML.GetSlide(CurrentSet, currentSlide)
	      Loop
	      
	      If HelperActive Then
	        xNewSlide = SmartML.GetNode(newGroup, "slides").FirstChild
	        i = 0
	        While xNewSlide <> Nil
	          PresentHelperWindow.InsertItem xNewSlide, currentSlide + i - 1
	          xNewSlide = xNewSlide.NextSibling
	          i = i + 1
	        Wend
	      End If
	      
	      ' Insert blank slides if needed
	      If SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@blanks") Then
	        newSlide = CurrentSlide
	        xNewSlide = XCurrentSlide
	        If XCurrentSlide.Parent.Parent.NextSibling = Nil Or SmartML.GetValue(XCurrentSlide.Parent.Parent.NextSibling, "@name") <> "" Then
	          xNewSlide = SmartML.InsertAfter(XCurrentSlide.Parent.Parent, "slide_group")
	          xNewSlide = SmartML.GetNode(xNewSlide, "slides/slide", True)
	          SmartML.SetValue xNewSlide.Parent.Parent, "@type", "song"
	          SmartML.SetValue xNewSlide, "body", ""
	          If HelperActive Then PresentHelperWindow.InsertItem xNewSlide, currentSlide + XCurrentSlide.Parent.ChildCount - 1
	        End If
	        If XCurrentSlide.Parent.Parent.PreviousSibling = Nil Or SmartML.GetValue(XCurrentSlide.Parent.Parent.PreviousSibling, "@name") <> "" Then
	          xNewSlide = SmartML.InsertBefore(XCurrentSlide.Parent.Parent, "slide_group")
	          xNewSlide = SmartML.GetNode(xNewSlide, "slides/slide", True)
	          SmartML.SetValue xNewSlide.Parent.Parent, "@type", "song"
	          SmartML.SetValue xNewSlide, "body", ""
	          If HelperActive Then PresentHelperWindow.InsertItem xNewSlide, currentSlide - 1
	          CurrentSlide = CurrentSlide + 1
	          XCurrentSlide = xNewSlide
	        End If
	      End If
	      
	      If HelperActive Then
	        App.MouseCursor = Nil
	        PresentHelperWindow.ScrollTo currentSlide
	      Else
	        App.MouseCursor = Nil
	        ResetPaint XCurrentSlide
	      End If
	      Return True
	    Else
	      ' user closed the window; the first part of this if will never happen when the scripture chooser is running live; maybe we'll find a way to enable it again.
	      newGroup.Parent.RemoveChild newGroup
	      Mode = temp
	      If HelperActive Then
	        PresentHelperWindow.SetMode Mode
	      Else
	        ResetPaint XCurrentSlide
	      End If
	      Return True
	    End If
	    
	    '
	    ' Add SONG
	    '
	  ElseIf Lowercase(Key) = "q" Then
	    '
	    ' Added code to remember current position so song can be inserted without changing
	    ' what's up on the screen (allows operator to cue next song in a highly dynamic,
	    ' Spirit-lead P&W service before the previous song is finished).
	    '
	    ' TODO: Parameterize this behavior -- add checkbox or radiobuttons to the
	    ' add song dialog box.
	    '
	    ' EMP 6/20/05
	    '
	    xOldSlide = XCurrentSlide
	    OldSlide = CurrentSlide
	    
	    ' Get a reference
	    newGroup = SmartML.InsertAfter(XCurrentSlide.Parent.Parent, "slide_group")
	    f = SongPickerWindow.Popup
	    If f <> Nil Then
	      App.MouseCursor = WatchCursor
	      
	      s = SmartML.XDocFromFile(f)
	      SongML.ToSetML s.DocumentElement
	      If SmartML.GetNode(s.DocumentElement, "slides").ChildCount < 1 Then
	        App.MouseCursor = Nil
	        InputBox.Message App.T.Translate("errors/empty_group", SmartML.GetValue(s.DocumentElement, "@name", True))
	        newGroup.Parent.RemoveChild newGroup
	        Return False
	      End If
	      
	      newGroup = SmartML.ReplaceWithImportNode(newGroup, s.DocumentElement)
	      
	      ' --- Move to where we need to be ---
	      temp = SmartML.GetValue(newGroup, "@name")
	      Do Until SmartML.GetValue(XCurrentSlide.Parent.Parent, "@name") = temp
	        currentSlide = currentSlide + 1
	        XCurrentSlide = SetML.GetSlide(CurrentSet, currentSlide)
	      Loop
	      
	      If HelperActive Then
	        xNewSlide = SmartML.GetNode(newGroup, "slides").FirstChild
	        i = 0
	        While xNewSlide <> Nil
	          PresentHelperWindow.InsertItem xNewSlide, currentSlide + i - 1
	          xNewSlide = xNewSlide.NextSibling
	          i = i + 1
	        Wend
	      End If
	      
	      ' Insert blank slides if needed
	      If SmartML.GetValue(App.MyPresentSettings.DocumentElement, "style/@blanks") <> "never" Then
	        newSlide = CurrentSlide
	        xNewSlide = XCurrentSlide
	        If XCurrentSlide.Parent.Parent.NextSibling = Nil Or SmartML.GetValue(XCurrentSlide.Parent.Parent.NextSibling, "@name") <> "" Then
	          xNewSlide = SmartML.InsertAfter(XCurrentSlide.Parent.Parent, "slide_group")
	          xNewSlide = SmartML.GetNode(xNewSlide, "slides/slide", True)
	          SmartML.SetValue xNewSlide.Parent.Parent, "@type", "song"
	          SmartML.SetValue xNewSlide, "body", ""
	          If HelperActive Then PresentHelperWindow.InsertItem xNewSlide, currentSlide + XCurrentSlide.Parent.ChildCount - 1
	        End If
	        If XCurrentSlide.Parent.Parent.PreviousSibling = Nil Or SmartML.GetValue(XCurrentSlide.Parent.Parent.PreviousSibling, "@name") <> "" Then
	          xNewSlide = SmartML.InsertBefore(XCurrentSlide.Parent.Parent, "slide_group")
	          xNewSlide = SmartML.GetNode(xNewSlide, "slides/slide", True)
	          SmartML.SetValue xNewSlide.Parent.Parent, "@type", "song"
	          SmartML.SetValue xNewSlide, "body", ""
	          If HelperActive Then PresentHelperWindow.InsertItem xNewSlide, currentSlide - 1
	          CurrentSlide = CurrentSlide + 1
	          XCurrentSlide = xNewSlide
	        End If
	      End If
	      
	      ' Added to move back to original position (see EMP 6/20/05 comments above).
	      '
	      XCurrentSlide = xOldSlide
	      CurrentSlide  = OldSlide
	      
	      '
	      If HelperActive Then
	        App.MouseCursor = Nil
	        PresentHelperWindow.ScrollTo currentSlide
	      Else
	        App.MouseCursor = Nil
	        ResetPaint XCurrentSlide
	      End If
	      Return True
	    Else
	      ' must have cancelled the picker window
	      newGroup.Parent.RemoveChild newGroup
	      Return False
	    End If
	    
	  ElseIf Lowercase(Key) = "m" Then
	    If HelperActive Then
	      PresentHelperWindow.SwapFullScreen
	      Return True
	    Else
	      Return False
	    End If
	  Else
	    Return False
	  End If
	  
	  //++EMP 15 Jan 2006
	  // Add a generic exception handler in an attempt to keep from bailing out
	  // TODO: This needs to log somewhere and notify the operator after the presentation is done.
	  //
	Exception ex
	  // Do something here later.  For now, validate that XCurrentSlide isn't Nil and
	  // return to the caller.
	  //
	  If XCurrentSlide = Nil Then
	    // Sorry, the only possible valid action is to go back to the first slide, otherwise
	    // how do you keep XCurrentSlide and CurrentSlide in sync?
	    // (perhaps look at xNewSlide to get close to the original location?)
	    CurrentSlide = 1
	    XCurrentSlide = SetML.GetSlide(CurrentSet, 1)
	  End If
	  // Put up wherever we're at now (and pray!)
	  If HelperActive Then
	    PresentHelperWindow.SetMode Mode
	  Else
	    ResetPaint XCurrentSlide
	  End If
	  
	  Return False // Show that it failed
	  //--EMP 15 Jan 06
	End Function
#tag EndMethod

#tag Method, Flags = &h0
	Sub Present(setDoc As XmlDocument, PresentMode As Integer)
	  Dim i, j As Integer
	  Dim slide_groups, slide_group, slide As XmlNode
	  Dim s As String
	  //++EMP
	  // September 2005
	  // Since the changes to pull the style information out of the XML
	  // will modify it, make a local copy now instead of just assigning
	  // the property...see below for the copy routine
	  
	  'CurrentSet = setDoc
	  //--EMP
	  Dim presentScreen, controlScreen As Integer
	  Dim insertBlanks As Boolean
	  
	  App.MouseCursor = WatchCursor
	  //++EMP
	  Dim tempSet As XmlNode
	  Dim StyleNodes As XmlNodeList
	  Dim StyleNode As XmlNode
	  Dim NewStyleNode As XmlNode
	  Dim tempSlideStyle As SlideStyle
	  
	  // Copy the set to a working copy we can change
	  CurrentSet = New XmlDocument
	  CurrentSet.AppendChild CurrentSet.ImportNode(setDoc.FirstChild, CopyAllChildren)
	  
	  StyleDict = New Dictionary
	  //--EMP
	  insertBlanks = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@blanks")
	  
	  slide_groups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
	  slide_group = slide_groups.FirstChild
	  
	  While slide_group <> Nil
	    If insertBlanks And _
	      SmartML.GetValue(slide_group, "@name") <> SmartML.GetValue(slide_group.PreviousSibling, "@name") And _
	      SmartML.GetValue(slide_group, "@type") <> "style"  Then 'And _
	      'slide_group.PreviousSibling <> Nil Then
	      
	      slide_group = SmartML.InsertBefore(slide_group, "slide_group")
	      //++EMP, 15 Jan 2006
	      // Change the type of a blank slide from "song" to "blank"
	      // Makes moving to a blank much easier in PerformAction
	      //
	      'SmartML.SetValue slide_group, "@type", "song"
	      SmartML.SetValue slide_group, "@type", "blank"
	      SmartML.SetValue slide_group, "slides/slide/body", ""
	      slide_group = slide_group.NextSibling
	      
	      If slide_group.NextSibling = Nil Then ' if we are on the last slide item/group, lets go ahead and add the last blank while we're here.
	        slide_group = SmartML.InsertAfter(slide_group, "slide_group")
	        'SmartML.SetValue slide_group, "@type", "song"
	        SmartML.SetValue slide_group, "@type", "blank"
	        SmartML.SetValue slide_group, "slides/slide/body", ""
	      End If
	      //--
	    End If ' for inserting blanks
	    
	    ' Make sure every slide has a body
	    If SmartML.GetValue(slide_group, "@type") <> "style" And _
	      SmartML.GetNode(slide_group, "slides", True).ChildCount < 1 Then _
	      SmartML.SetValue slide_group, "slides/slide/body", ""
	      //++EMP
	      // If the current group has a style, add it to the style objects dictionary
	      // N.B.: This WILL break if slide-level styles are ever implemented
	      // Under RB 5.5.5 I tried to do this outside this While with
	      // StyleNodes = CurrentSet.Xql("//style") to get them all regardless of depth
	      // but RB kept throwing an "assertion failed" error both with the debug
	      // and production builds.
	      // With the current (V1.0) design, this is a little more efficient anyway
	      // since we don't keep reparsing the set's XML.
	      
	      StyleNode = SmartML.GetNode(slide_group, "style", False)
	      If StyleNode <> Nil Then
	        tempSlideStyle = New SlideStyle(StyleNode)
	        // We'll just use the dictionary index as the key; this makes it unique if unimaginative
	        StyleDict.Value(str(StyleDict.Count)) = tempSlideStyle
	        StyleNode.SetAttribute "index", Str(StyleDict.Count - 1)
	        // Going for broke here: Replace the style node with a new one that just has the index...
	        NewStyleNode = CurrentSet.CreateElement("style")
	        NewStyleNode.SetAttribute "index", Str(StyleDict.Count - 1)
	        StyleNode = SmartML.ReplaceWithImportNode(StyleNode, NewStyleNode)
	      End If
	      //--EMP
	      slide_group = slide_group.NextSibling
	  Wend
	  
	  //++EMP
	  // Now handle  the default styles...
	  
	  StyleNode = SmartML.GetNode(App.MyPresentSettings.DocumentElement, "scripture_style")
	  tempSlideStyle = New SlideStyle(StyleNode)
	  StyleDict.Value("scripture_style") = tempSlideStyle
	  SmartML.SetValue App.MyPresentSettings.DocumentElement, "scripture_style/@index", "scripture_style"
	  StyleNode = SmartML.GetNode(App.MyPresentSettings.DocumentElement, "default_style")
	  tempSlideStyle = New SlideStyle(StyleNode)
	  StyleDict.Value("default_style") = tempSlideStyle
	  SmartML.SetValue App.MyPresentSettings.DocumentElement, "default_style/@index", "default_style"
	  //--
	  
	  CurrentSlide = 1
	  XCurrentSlide = SetML.GetSlide(CurrentSet, 1)
	  
	  presentScreen = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@present") - 1
	  controlScreen = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control") - 1
	  If presentScreen < 0 Or presentScreen > ScreenCount - 1 Then presentScreen = 0
	  If controlScreen < 0 Or controlScreen > ScreenCount -1 Then controlScreen = 0
	  
	  App.DebugWriter.Write "PresentWindow.Present: presentScreen, controlScreen = " + str(presentScreen) + ", " + str(controlScreen)
	  App.DebugWriter.Write Chr(9) + "ScreenCount = " + str(ScreenCount)
	  For i = 0 to ScreenCount - 1
	    App.DebugWriter.Write Chr(9) + "Screen(" + str(i) + "): Top, Left, Height, Width = " + _
	    StringUtils.Sprintf("%d, %d, %d, %d", Screen(i).Top, Screen(i).Left, Screen(i).Height, Screen(i).Width)
	  Next i
	  
	  If PresentMode = MODE_SINGLE_SCREEN Then ' Single Screen
	    presentScreen = controlScreen
	    HelperActive = False
	    MenuBarVisible = False
	    Top = Screen(presentScreen).Top
	    Left = Screen(presentScreen).Left
	    Width = Screen(presentScreen).Width
	    Height = Screen(presentScreen).Height
	    FullScreen = True
	    
	  ElseIf PresentMode = MODE_PREVIEW Then ' Split Screen
	    HelperActive = True
	    MenuBarVisible = True
	    presentScreen = controlScreen
	    Top = Screen(presentScreen).AvailableTop + 10
	    Left = Screen(presentScreen).AvailableLeft + 10
	    Width = Screen(presentScreen).AvailableWidth - PresentHelperWindow.Width - 30
	    Height = Width * Screen(presentScreen).AvailableHeight / Screen(presentScreen).Width ' Screen(presentScreen).Height - PresentHelperWindow.Height - 30
	    
	    PresentHelperWindow.Left = Screen(presentScreen).AvailableLeft + Screen(presentScreen).Width - PresentHelperWindow.Width - 10
	    PresentHelperWindow.Top = Screen(presentScreen).AvailableTop + Screen(presentScreen).Height - PresentHelperWindow.Height - 40
	    
	  ElseIf PresentMode = MODE_DUAL_SCREEN Then ' Multiple Screens
	    HelperActive = True
	    Top = Screen(presentScreen).Top
	    Left = Screen(presentScreen).Left
	    Width = Screen(presentScreen).Width
	    Height = Screen(presentScreen).Height
	    FullScreen = True
	    MenuBarVisible = (presentScreen > 0) // Only show the menu bar if we're presenting on a secondary screen
	    PresentHelperWindow.Left = Screen(controlScreen).Left + (Screen(controlScreen).Width - PresentHelperWindow.Width) / 2
	    PresentHelperWindow.Top = Screen(controlScreen).Top + (Screen(controlScreen).Height - PresentHelperWindow.Height) / 2
	  ElseIf PresentMode = MODE_LINUX_DUAL_SCREEN Then ' Linux Xinerama Screen
	    HelperActive = True
	    presentScreen = controlScreen
	    Top = Screen(presentScreen).Top
	    Left = Screen(presentScreen).Left + (Screen(presentScreen).Width / 2)
	    Width = Screen(presentScreen).Width / 2
	    Height = Screen(presentScreen).Height
	    
	    
	    PresentHelperWindow.Left = Screen(presentScreen).Left + (Screen(presentScreen).Width /2)  - PresentHelperWindow.Width - 10
	    PresentHelperWindow.Top = Screen(presentScreen).Top + Screen(presentScreen).Height - PresentHelperWindow.Height - 40
	  End If
	  
	  If HelperActive And Width < 320 Then
	    CurrentPicture = NewPicture(320, 240, 32)
	    LastPicture = NewPicture(320, 240, 32)
	    PreviewPicture = NewPicture(320, 240, 32)
	  Else
	    CurrentPicture = NewPicture(Width, Height, 32)
	    LastPicture = NewPicture(Width, Height, 32)
	    PreviewPicture = NewPicture(Width, Height, 32)
	  End If
	  CurrentPicture.Graphics.ForeColor = RGB(0,0,0)
	  CurrentPicture.Graphics.FillRect(0, 0, CurrentPicture.Width, CurrentPicture.Height)
	  
	  Dim tmpPic As Picture
	  tmpPic = SmartML.GetValueP(App.MyPresentSettings.DocumentElement, "logo")
	  
	  If tmpPic <> Nil Then
	    LogoCache = NewPicture(tmpPic.Width, tmpPic.Height, 32)
	    LogoCache.Graphics.DrawPicture tmpPic, 0, 0
	    LogoCache.Mask.Graphics.DrawPicture SmartML.GetValueP(App.MyPresentSettings.DocumentElement, "logo_mask"), 0, 0
	  End If
	  
	  
	  'Show
	  If HelperActive Then
	    i = 1
	    slide = SetML.GetSlide(CurrentSet, i)
	    While slide <> Nil
	      PresentHelperWindow.InsertItem slide, i
	      i = i + 1
	      slide = SetML.GetNextSlide(slide)
	    Wend
	    PresentHelperWindow.lst_all_slides.ListIndex = 0
	    PresentHelperWindow.SetMode Me.Mode, False
	    PresentHelperWindow.lst_all_slides.SetFocus
	    Me.Show 'Important for SongMode, will otherwise steal Focus from Helper afterwards
	    PresentHelperWindow.SetFocus
	  Else
	    ResetPaint XCurrentSlide
	    Me.SetFocus 'Important for Key handling
	  End If
	  
	  'TODO: Allow the user to use a custom image for the cursor, the trick will be in
	  'drawing the image without destroying the background
	  
	  Dim temp As String
	  temp = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "style/@mouse_cursor")
	  Select Case temp
	  Case "arrow"
	    Self.MouseCursor = ArrowCursor
	  Case "cross"
	    Self.MouseCursor = cross
	  Case "hidden"
	    Self.MouseCursor = hidden
	  Case "hourglass"
	    Self.MouseCursor = WatchCursor
	  Case "ibeam"
	    Self.MouseCursor = IBeamCursor
	  Else
	    Self.MouseCursor = hidden
	  End Select
	  
	End Sub
#tag EndMethod

#tag Method, Flags = &h0
	Sub ResetPaint(slide As XmlNode)
	  Dim xStyle As XmlNode
	  Dim w, h As Integer
	  
	  'App.DebugWriter.Write("PresentWindow.ResetPaint: Enter")
	  ' Remember the current (old) slide for the transition
	  LastPicture.Graphics.DrawPicture CurrentPicture, 0, 0
	  'LastPicture = LastPicture.CXG_Composite(CurrentPicture, 1.0, 0, 0)
	  
	  ' === Draw the slide to the PreviewPicture ===
	  
	  Profiler.BeginProfilerEntry "PresentWindow::ResetPaint::PreviewPicture"
	  ' -- Old way -- (value not passed)
	  'xStyle = SetML.GetStyle(XCurrentSlide)
	  'SetML.DrawSlide PreviewPicture.Graphics, XCurrentSlide, xStyle
	  ' -- New way --
	  xStyle = SetML.GetStyle(slide)
	  SetML.DrawSlide PreviewPicture.Graphics, slide, xStyle
	  
	  Profiler.EndProfilerEntry'
	  
	  ' === Setup CurrentPicture based on Mode ===
	  Profiler.BeginProfilerEntry "PresentWindow::ResetPaint::CurrentPicture"
	  If Mode = "B" Then
	    CurrentPicture.Graphics.ForeColor = RGB(0,0,0)
	    CurrentPicture.Graphics.FillRect 0, 0, CurrentPicture.Graphics.Width, CurrentPicture.Graphics.Height
	  ElseIf Mode = "W" Then
	    CurrentPicture.Graphics.ForeColor = RGB(255,255,255)
	    CurrentPicture.Graphics.FillRect 0, 0, CurrentPicture.Graphics.Width, CurrentPicture.Graphics.Height
	  ElseIf Mode = "H" Or Mode = "L" Then
	    SetML.DrawSlide CurrentPicture.Graphics, Nil, xStyle
	    
	    If Mode = "L" Then
	      If LogoCache <> Nil Then
	        If LogoCache.Height > CurrentPicture.Height Then
	          ' Logos only shrink if needed; they will not stretch out
	          h = CurrentPicture.Height
	          w = (CurrentPicture.Height/LogoCache.Height) * LogoCache.Width
	        Else
	          h = LogoCache.Height
	          w = LogoCache.Width
	        End If
	        CurrentPicture.Graphics.DrawPicture LogoCache, (CurrentPicture.Width-w)/2, (CurrentPicture.Height-h)/2, w, h, 0, 0, LogoCache.Width, LogoCache.Height
	      End If
	    End If
	  ElseIf Mode = "F" Then
	    ' Freeze: no changes to CurrentPicture
	  Else ' Probably normal mode
	    CurrentPicture.Graphics.DrawPicture PreviewPicture, 0, 0
	    'CurrentPicture = CurrentPicture.CXG_Composite(PreviewPicture, 1.0, 0, 0)
	  End If
	  Profiler.EndProfilerEntry
	  
	  ' === Add the Alert ===
	  If Len(AlertText) > 0 Then
	    DrawAlert CurrentPicture.Graphics, AlertText
	    DrawAlert PreviewPicture.Graphics, AlertText
	  End If
	  ' === Check for auto-advance ===
	  If SmartML.GetValueN(XCurrentSlide.Parent.Parent, "@seconds", True) > 0 Then
	    timerAdvance.Mode = 1
	    timerAdvance.Period = SmartML.GetValueN(XCurrentSlide.Parent.Parent, "@seconds", True) * 1000
	    timerAdvance.Reset
	    timerAdvance.Enabled = True
	  Else
	    timerAdvance.Enabled = False
	  End If
	  
	  ' === Start the transition ===
	  If doTransition Then
	    TransitionFrame = 1
	    timerTransition.Mode = 2
	    timerTransition.Reset
	    timerTransition.Enabled = True
	  End If
	  
	  cnvSlide.Refresh False
	  'App.DebugWriter.Write("PresentWindow.ResetPaint: Exit")
	End Sub
#tag EndMethod


#tag Note, Name = Key Codes
	  Map(kTab) = New Key("TAB", &h30)
	  Map(kSpace) = New Key("SPACE", &h31)
	  Map(kTilde) = New Key("`", &h32)
	  Map(kBackspace) = New Key("BACKSPACE", &h33)
	  Map(kEscape) = New Key("ESCAPE", &h35)
	  Map(kCommand) = New Key("COMMAND", &h37)
	  Map(kLShift) = New Key("LSHIFT", &h38)
	  Map(kCapslock) = New Key("CAPSLOCK", &h39)
	  Map(kLOption) = New Key("LOPTION", &h3a)
	  Map(kLControl) = New Key("LCONTROL", &h3b)
	  Map(kRShift) = New Key("RSHIFT", &h3c)
	  Map(kROption) = New Key("ROPTION", &h3d)
	  Map(kRControl) = New Key("RCONTROL", &h3e)
	  Map(kPadPeriod) = New Key("PAD_PERIOD", &h41)
	  Map(kPadAsterisk) = New Key("PAD_ASTERISK", &h43)
	  Map(kPadPlus) = New Key("PAD_PLUS", &h45)
	  Map(kPadClear) = New Key("PAD_CLEAR", &h47)' AKA NumLock
	  Map(kPadEnter) = New Key("PAD_ENTER", &h4c)
	  Map(kPadSlash) = New Key("PAD_SLASH", &h4b)
	  Map(kPadMinus) = New Key("PAD_MINUS", &h4e)
	  Map(kPadEquals) = New Key("PAD_EQUALS", &h51)
	  Map(kPad0) = New Key("PAD_0", &h52)
	  Map(kPad1) = New Key("PAD_1", &h53)
	  Map(kPad2) = New Key("PAD_2", &h54)
	  Map(kPad3) = New Key("PAD_3", &h55)
	  Map(kPad4) = New Key("PAD_4", &h56)
	  Map(kPad5) = New Key("PAD_5", &h57)
	  Map(kPad6) = New Key("PAD_6", &h58)
	  Map(kPad7) = New Key("PAD_7", &h59)
	  Map(kPad8) = New Key("PAD_8", &h5b)
	  Map(kPad9) = New Key("PAD_9", &h5c)
	  Map(kF5) = New Key("F5", &h60)
	  Map(kF6) = New Key("F6", &h61)
	  Map(kF7) = New Key("F7", &h62)
	  Map(kF3) = New Key("F3", &h63)
	  Map(kF8) = New Key("F8", &h64)
	  Map(kF9) = New Key("F9", &h65)
	  Map(kF11) = New Key("F11", &h67)
	  Map(kF13) = New Key("F13", &h69)' AKA PrintScreen
	  Map(kF14) = New Key("F14", &h6b)' AKA ScreenLock
	  Map(kF10) = New Key("F10", &h6d)
	  Map(kF12) = New Key("F12", &h6f)
	  Map(kF15) = New Key("F15", &h71)' AKA Pause
	  Map(kHelp) = New Key("HELP", &h72)' AKA Insert
	  Map(kHome) = New Key("HOME", &h73)
	  Map(kPageUp) = New Key("PAGEUP", &h74)
	  Map(kDelete) = New Key("DELETE", &h75)
	  Map(kF4) = New Key("F4", &h76)
	  Map(kEnd) = New Key("END", &h77)
	  Map(kF2) = New Key("F2", &h78)
	  Map(kPageDown) = New Key("PAGEDOWN", &h79)
	  Map(kF1) = New Key("F1", &h7a)
	  Map(kLeft) = New Key("LEFT", &h7b)
	  Map(kRight) = New Key("RIGHT", &h7c)
	  Map(kDown) = New Key("DOWN", &h7d)
	  Map(kUp) = New Key("UP", &h7e)
#tag EndNote


#tag Property, Flags = &h0
	AlertText As String
#tag EndProperty

#tag Property, Flags = &h0
	CurrentPicture As Picture
#tag EndProperty

#tag Property, Flags = &h0
	CurrentSet As XmlDocument
#tag EndProperty

#tag Property, Flags = &h0
	CurrentSlide As Integer
#tag EndProperty

#tag Property, Flags = &h1
	Protected doTransition As Boolean
#tag EndProperty

#tag Property, Flags = &h0
	HelperActive As Boolean
#tag EndProperty

#tag Property, Flags = &h0
	LastPicture As Picture
#tag EndProperty

#tag Property, Flags = &h0
	LogoCache As Picture
#tag EndProperty

#tag Property, Flags = &h0
	Mode As String
#tag EndProperty

#tag Property, Flags = &h0
	PreviewPicture As Picture
#tag EndProperty

#tag Property, Flags = &h1
	Protected StyleDict As Dictionary
#tag EndProperty

#tag Property, Flags = &h0
	TransitionFrame As Integer
#tag EndProperty

#tag Property, Flags = &h1
	Protected TransitionFrames As Integer
#tag EndProperty

#tag Property, Flags = &h0
	XCurrentSlide As XmlNode
#tag EndProperty


#tag Constant, Name = ACTION_BLACK, Type = Integer, Dynamic = False, Default = \"1013", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_BRIDGE, Type = Integer, Dynamic = False, Default = \"1008", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_CHORUS, Type = Integer, Dynamic = False, Default = \"1009", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_EXIT, Type = Integer, Dynamic = False, Default = \"1018", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_EXIT_NOPROMPT, Type = Integer, Dynamic = False, Default = \"1020", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_EXIT_PROMPT, Type = Integer, Dynamic = False, Default = \"1019", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_FIRST_SLIDE, Type = Integer, Dynamic = False, Default = \"1003", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_FIRST_SLIDE_OF_SECTION, Type = Integer, Dynamic = False, Default = \"126", Scope = Protected
#tag EndConstant

#tag Constant, Name = ACTION_FREEZE, Type = Integer, Dynamic = False, Default = \"1014", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_HIDE, Type = Integer, Dynamic = False, Default = \"1017", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_LAST_SLIDE, Type = Integer, Dynamic = False, Default = \"1004", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_LOGO, Type = Integer, Dynamic = False, Default = \"1016", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_NEXT_SECTION, Type = Integer, Dynamic = False, Default = \"1005", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_NEXT_SLIDE, Type = Integer, Dynamic = False, Default = \"1001", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_NORMAL, Type = Integer, Dynamic = False, Default = \"1012", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_PRECHORUS, Type = Integer, Dynamic = False, Default = \"1010", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_PREV_SECTION, Type = Integer, Dynamic = False, Default = \"1006", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_PREV_SLIDE, Type = Integer, Dynamic = False, Default = \"1002", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_TAG, Type = Integer, Dynamic = False, Default = \"1011", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_VERSE, Type = Integer, Dynamic = False, Default = \"1007", Scope = Public
#tag EndConstant

#tag Constant, Name = ACTION_WHITE, Type = Double, Dynamic = False, Default = \"1014", Scope = Public
#tag EndConstant

#tag Constant, Name = ControlKey, Type = Integer, Dynamic = False, Default = \"&h1000", Scope = Protected
#tag EndConstant

#tag Constant, Name = CopyAllChildren, Type = Boolean, Dynamic = False, Default = \"True", Scope = Protected
#tag EndConstant

#tag Constant, Name = MODE_DUAL_SCREEN, Type = Double, Dynamic = False, Default = \"2", Scope = Public
#tag EndConstant

#tag Constant, Name = MODE_LINUX_DUAL_SCREEN, Type = Double, Dynamic = False, Default = \"4", Scope = Public
#tag EndConstant

#tag Constant, Name = MODE_PREVIEW, Type = Double, Dynamic = False, Default = \"3", Scope = Public
#tag EndConstant

#tag Constant, Name = MODE_SINGLE_SCREEN, Type = Double, Dynamic = False, Default = \"1", Scope = Public
#tag EndConstant

#tag Constant, Name = OptionKey, Type = Integer, Dynamic = False, Default = \"&h10000", Scope = Protected
#tag EndConstant

#tag Constant, Name = ShiftKey, Type = Integer, Dynamic = False, Default = \"&h100", Scope = Protected
#tag EndConstant


#tag EndWindowCode

#tag Events cnvSlide
#tag Event
	Function KeyDown(Key As String) As Boolean
	  Return KeyDownX(Key)
	End Function
#tag EndEvent
#tag Event
	Sub Paint(g As Graphics)
	  '#if DebugBuild then
	  'App.DebugWriter.Write("PresentWindow.cnvSlide.Paint: Enter")
	  '#endif
	  If doTransition Then
	    Profiler.BeginProfilerEntry "PresentWindow::Repaint Timer::Blit"
	    
	    Dim transparency As Integer = 255 * (TransitionFrames-TransitionFrame) / TransitionFrames
	    
	    ' update alpha mask of new (current) picture
	    CurrentPicture.Mask.Graphics.ForeColor = rgb(transparency, transparency, transparency)
	    CurrentPicture.Mask.Graphics.FillRect(0, 0, CurrentPicture.Mask.Graphics.Width, CurrentPicture.Mask.Graphics.Height)
	    
	    ' Blend new picture over the last picture
	    LastPicture.Graphics.DrawPicture CurrentPicture, 0, 0
	    
	    g.DrawPicture LastPicture, 0, 0, g.Width, g.Height, 0, 0, LastPicture.Width, LastPicture.Height
	    
	    Profiler.EndProfilerEntry
	  Else
	    g.DrawPicture CurrentPicture, 0, 0, g.Width, g.Height, 0, 0, LastPicture.Width, LastPicture.Height
	  End If
	  '#if DebugBuild Then
	  'App.DebugWriter.Write("PresentWindow.cnvSlide.Paint: Exit")
	  '#endif
	  
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events timerAdvance
#tag Event
	Sub Action()
	  Dim dontcare As Boolean
	  Dim xNewSlide As XmlNode
	  Dim NewSlide As Integer
	  
	  If XCurrentSlide.NextSibling = Nil And SmartML.GetValueB(XCurrentSlide.Parent.Parent, "@loop") Then
	    dontcare = PerformAction(ACTION_FIRST_SLIDE_OF_SECTION)
	  Else
	    dontcare = PerformAction(ACTION_NEXT_SLIDE)
	  End If
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events timerTransition
#tag Event
	Sub Action()
	  If TransitionFrame >= TransitionFrames Then
	    Me.Enabled = False
	    Me.Reset
	  Else
	    TransitionFrame = TransitionFrame + 1
	  End If
	  
	  cnvSlide.Refresh False
	End Sub
#tag EndEvent
#tag EndEvents
