#tag Window
Begin Window PresentWindow Implements ScriptureReceiver
   BackColor       =   0
   Backdrop        =   0
   CloseButton     =   False
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   True
   Height          =   300
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   1104
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   False
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "Presentation"
   Visible         =   False
   Width           =   300
   Begin Canvas cnvSlide
      AcceptFocus     =   True
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   True
      Enabled         =   True
      EraseBackground =   True
      Height          =   300
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      UseFocusRing    =   False
      Visible         =   True
      Width           =   300
      Begin Timer timerAdvance
         Enabled         =   True
         Height          =   32
         Index           =   -2147483648
         InitialParent   =   "cnvSlide"
         Left            =   249
         LockedInPosition=   False
         Mode            =   0
         Period          =   10000
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   249
         Visible         =   True
         Width           =   32
      End
      Begin Timer timerTransition
         Enabled         =   True
         Height          =   32
         Index           =   -2147483648
         InitialParent   =   "cnvSlide"
         Left            =   205
         LockedInPosition=   False
         Mode            =   0
         Period          =   125
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   249
         Visible         =   True
         Width           =   32
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  App.DebugWriter.Write "PresentWindow.Activate: Enter"
		  
		  If Globals.Status_Presentation Then
		    If HelperActive Then
		      If PresentHelperWindow.IsCollapsed Then
		        App.RestoreWindow(PresentHelperWindow)
		      Else
		        PresentHelperWindow.SetFocus
		      End If
		    Else
		      If Not SetML.IsExternal(XCurrentSlide) Then
		        If PresentWindow.IsCollapsed Then
		          App.RestoreWindow(PresentWindow)
		        End If
		        App.SetForeground(PresentWindow)
		        PresentWindow.SetFocus
		      End If
		    End If
		    Me.MenuBarVisible = (Not Me.FullScreen) Or (PresentScreen <> 0) // Make assumption that screen 0 has the menu; not always true
		    Me.SetFocus
		  End If
		  
		  App.DebugWriter.Write "PresentWindow.Activate: Exit"
		End Sub
	#tag EndEvent

	#tag Event
		Sub Close()
		  'MainWindow.Status_Presentation = False
		  'MainWindow.Show
		  'MainWindow.SetFocus
		  
		  Call ResetPaint(Nil) 'This will cleanup external slide stuff
		  
		  App.MouseCursor = Nil
		  MainWindow.Status_Presentation = False
		  Globals.Status_Presentation = False
		  If HelperActive Then PresentHelperWindow.Close
		  timerAdvance.Enabled = False
		  
		  '++JRC Prevent resizing MainWindow
		  'MainWindow.Show
		  #If Not TargetMacOS
		    App.RestoreWindow(MainWindow)
		  #endif
		  App.SetForeground(MainWindow)
		  '--
		  '++JRC
		  MainWindow.AddPresentedSongsToLog
		  
		  MainWindow.SetFocus
		End Sub
	#tag EndEvent

	#tag Event
		Sub Deactivate()
		  App.DebugWriter.Write("PresentWindow.Deactivate: Enter")
		  
		  App.DebugWriter.Write("PresentWindow.Deactivate: Enter")
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Dim status As Boolean
		  
		  status = KeyDownX(Key)
		  
		  Return status
		End Function
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If IsContextualClick Then
		    Return KeyDownX(Chr(30))
		  Else
		    Return KeyDownX(Chr(31))
		  End If
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  AppCursor = App.MouseCursor
		  App.MouseCursor = PresentCursor
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  App.MouseCursor = AppCursor
		End Sub
	#tag EndEvent

	#tag Event
		Sub Moved()
		  App.DebugWriter.Write("PresentWindow.Moved")
		  cnvSlide.SetFocus
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  #If TargetLinux
		    Soft Declare Sub gtk_window_set_decorated Lib "libgtk-x11-2.0.so" (gtkwindow As Integer, decorated As Boolean)
		  #EndIf
		  
		  //++EMP 09/04
		  // Rewritten to get transition speed characteristics from presentation preferences
		  //
		  App.DebugWriter.Write("PresentWindow.Open: Enter")
		  Dim time As Integer
		  
		  '++JRC
		  numBlanks = 0
		  numStyles = 0
		  '--
		  time = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "style/@transition_time", False)
		  If time = 0 Then Time = 100 'Set a reasonable default
		  TransitionFrames = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "style/@transition_frames", False)
		  If TransitionFrames = 0 Then TransitionFrames= 5 'again, reasonable default
		  timerTransition.Period = time / TransitionFrames
		  //--
		  Mode = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "style/@initial_mode")
		  If Len(Mode) <> 1 Then Mode = "N"
		  doTransition = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@transition")
		  curslideTransition = SlideTransitionEnum.NoTransition
		  m_Snapshots = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "snapshot/@enable", False, False)
		  
		  #If TargetLinux
		    Try
		      gtk_window_set_decorated( self.handle, False )
		    Catch
		      'This could fail if libgtk cannot be loaded
		    End Try
		  #EndIf
		  
		  m_videolanController = New VideolanController 'Initialise shell control for videolan
		  m_AppLaunchShell = New Shell 'Initialise shell control for external applications
		  
		  App.DebugWriter.Write("PresentWindow.Open: Exit")
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Function DoClosePresentation() As Boolean
		  Dim messagebox As New MessageDialog
		  Dim msgboxbutton As MessageDialogButton
		  Dim bFound As Boolean
		  //++
		  // Check for an open dialog box and ignore if one is found (Bug 1693567)
		  // Only windows that can remain open when a presentation closes are the MainWindow
		  // or the two Present windows.  Assume anything else is a dialog that should block closing.
		  //--
		  bFound = False
		  For i As Integer = 0 To WindowCount - 1
		    If Not (Window(i) IsA MainWindow Or _
		      Window(i) IsA PresentWindow Or _
		      Window(i) IsA PresentHelperWindow) Then
		      bFound = True
		    End If
		  Next
		  If bFound Then Return True
		  '++JRC: made the prompt optional
		  if SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@exit_prompt") then
		    If PresentationMode = MODE_SINGLE_SCREEN Then // Use operating system message box
		      messagebox.Message = App.T.Translate("presentation_helper/exit/@caption")
		      messagebox.Title = "OpenSong"
		      messagebox.ActionButton.Default = True
		      messagebox.CancelButton.Visible = True
		      messagebox.CancelButton.Cancel = True
		      msgboxbutton = messagebox.ShowModal
		      If msgboxbutton = messagebox.ActionButton Then
		        Close
		      End If
		    Else // Use the OpenSong one so it ends up on the right screen
		      If InputBox.Ask(App.T.Translate("presentation_helper/exit/@caption")) Then
		        Close
		      End If
		    End If
		  else // No prompt before exit
		    Close
		  end if
		  
		  return true
		  '--End
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DoPickScripture() As Boolean
		  App.DebugWriter.Write "PresentWindow.DoPickScripture: Enter", 4
		  
		  Dim w As ScripturePickerWindow
		  
		  Dim c As ScripturePickerController
		  
		  c = New ScripturePickerController
		  c.registerScriptureReceiver Self
		  
		  w = New ScripturePickerWindow(c, True)
		  savedMode = Mode
		  w.Live = True
		  w.ShowModal
		  w = Nil
		  c.unregisterScriptureReceiver Self
		  c = Nil
		  Mode = savedMode
		  ResetPaint XCurrentSlide
		  App.DebugWriter.Write "PresentWindow.DoPickScripture: Exit", 4
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DoPickSong() As Boolean
		  Dim newGroup As XmlNode
		  Dim s As XmlDocument
		  Dim f As FolderItem
		  Dim xOldSlide As XmlNode
		  Dim xNewSlide As XmlNode
		  Dim oldSlide As Integer
		  Dim newSlide As Integer
		  Dim i As Integer
		  Dim presentation As String
		  
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
		  
		  f = SongPickerWindow.Popup(presentation)
		  If f <> Nil Then
		    App.MouseCursor = System.Cursors.Wait
		    
		    s = SmartML.XDocFromFile(f)
		    
		    '++JRC get song info for logging
		    'Don't log in preview mode
		    NumberOfItems = NumberOfItems + 1
		    
		    If  App.MainPreferences.GetValueB(App.kActivityLog, True) And Globals.SongActivityLog <> Nil And PresentationMode <> MODE_PREVIEW And Globals.AddToLog Then
		      ActLog.Append(New LogEntry(Globals.SongActivityLog))
		      Dim d As New Date
		      
		      i = UBound(ActLog)
		      ActLog(i).Title = SmartML.GetValue(s.DocumentElement, "title", True)
		      ActLog(i).Author = SmartML.GetValue(s.DocumentElement, "author", True)
		      ActLog(i).CCLISongNumber = SmartML.GetValue(s.DocumentElement, "ccli", True)  //The song's CCLI number
		      ActLog(i).SongFileName =  f.Parent.Name + "/" +  f.Name 'Should we use AbsolutePath?
		      ActLog(i).DateAndTime = d
		      ActLog(i).HasChords =ActLog(i).CheckLyricsForChords( SmartML.GetValue(s.DocumentElement, "lyrics", True))
		      ActLog(i).Presented = True
		      ActLog(i).SetItemNumber = NumberOfItems  'Assign an index to this song
		      ActLog(i).Displayed = false 'Set this to true if user displays this song
		      
		    Else
		      
		    End If
		    '--
		    
		    If presentation <> "" Then 'Override the song's default presentation
		      SmartML.SetValue(s.DocumentElement, "presentation", presentation)
		    End If
		    
		    SongML.ToSetML s.DocumentElement
		    If SmartML.GetNode(s.DocumentElement, "slides").ChildCount < 1 Then
		      App.MouseCursor = Nil
		      InputBox.Message App.T.Translate("errors/empty_group", SmartML.GetValue(s.DocumentElement, "@name", True))
		      newGroup.Parent.RemoveChild newGroup
		      Return False
		    End If
		    
		    newGroup = SmartML.ReplaceWithImportNode(newGroup, s.DocumentElement)
		    '++JRC
		    SmartML.SetValueN(newgroup, "@ItemNumber", NumberOfItems)
		    SmartML.SetValueB(newgroup, "@LiveInsertion", True)
		    
		    ' --- Move to where we need to be ---
		    Do Until SmartML.GetValueN(XCurrentSlide.Parent.Parent, "@ItemNumber") = NumberOfItems
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
		        SmartML.SetValue xNewSlide.Parent.Parent, "@type", "blank"
		        SmartML.SetValue xNewSlide, "body", ""
		        If HelperActive Then PresentHelperWindow.InsertItem xNewSlide, currentSlide + XCurrentSlide.Parent.ChildCount - 1
		      End If
		      If XCurrentSlide.Parent.Parent.PreviousSibling = Nil Or SmartML.GetValue(XCurrentSlide.Parent.Parent.PreviousSibling, "@name") <> "" Then
		        xNewSlide = SmartML.InsertBefore(XCurrentSlide.Parent.Parent, "slide_group")
		        xNewSlide = SmartML.GetNode(xNewSlide, "slides/slide", True)
		        SmartML.SetValue xNewSlide.Parent.Parent, "@type", "blank"
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
		    
		  Else
		    ' must have cancelled the picker window
		    newGroup.Parent.RemoveChild newGroup
		  End If
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DoSwapFullScreen() As Boolean
		  If HelperActive Then
		    PresentHelperWindow.SwapFullScreen
		    Return True
		  Else
		    Return False
		  End If
		  
		End Function
	#tag EndMethod

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
		  Call GraphicsX.DrawFontString(g, alert, Border*3, Border, _
		  alertFont, cnvSlide.Width-Border*6, align, cnvSlide.Height-Border*7, valign)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ExportSnapshot(image As Picture, slide As XmlNode, style As XmlNode)
		  Dim snapshot_filename As String = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "snapshot/filename", False)
		  Dim export_live_insertions As Boolean = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "snapshot/@export_live_insertions", False, True)
		  Dim export_metadata As Boolean = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "snapshot/@export_metadata", False, True)
		  
		  If SmartML.GetValue(slide.Parent.Parent, "@type") = "blank" Then
		    'Blank slides will not be exported as snapshot
		    Return
		  End If
		  
		  If Not export_live_insertions Then
		    'Check if the current slide is flagged that is has been added during a live set
		    If SmartML.GetValueB(slide.Parent.Parent, "@LiveInsertion", False, False) Then
		      Return
		    End If
		  End If
		  
		  Dim d As New Date
		  Dim re As New RegEx
		  Dim start As Integer=0
		  re.SearchPattern = "(%[dhimnNPsSTVy]{1})"
		  re.Options.CaseSensitive = True
		  
		  Dim match As RegExMatch = re.Search(snapshot_filename)
		  While match <> Nil
		    Select Case Asc(Mid(match.SubExpressionString(1), 2, 1))
		    Case Asc("d")
		      'The day of the current month (01-31)
		      Dim sd As String = Str(d.Day)
		      If sd.Len() = 1 Then sd = "0" + sd
		      snapshot_filename = ReplaceAllB(snapshot_filename, "%d", sd)
		    Case Asc("h")
		      'The hour from the current time of day in 24-hour format (00-23)
		      Dim sh As String = Str(d.Hour)
		      If sh.Len() = 1 Then sh = "0" + sh
		      snapshot_filename = ReplaceAllB(snapshot_filename, "%h", sh)
		    Case Asc("i")
		      'The minutes from the current time (00-59)
		      Dim si As String = Str(d.Minute)
		      If si.Len() = 1 Then si = "0" + si
		      snapshot_filename = ReplaceAllB(snapshot_filename, "%i", si)
		    Case Asc("m")
		      'The current month (01-12)
		      Dim sm As String = Str(d.Month)
		      If sm.Len() = 1 Then sm = "0" + sm
		      snapshot_filename = ReplaceAllB(snapshot_filename, "%m", sm)
		    Case Asc("n")
		      'The number of the slide in the current set (with leading zeroes)
		      Dim sn As String = Str(SmartML.GetValueN(slide.Parent.Parent, "@ItemNumber"))
		      If sn.Len() = 1 Then sn = "0" + sn
		      If sn.Len() = 2 Then sn = "0" + sn
		      snapshot_filename = ReplaceAllB(snapshot_filename, "%n", sn)
		    Case Asc("N")
		      'The name of the current slide
		      Dim sN As String = SmartML.GetValue(slide.Parent.Parent, "@name")
		      snapshot_filename = ReplaceAllB(snapshot_filename, "%N", sN)
		    Case Asc("P")
		      'The name of the current slide
		      Dim sP As String = Str(CurrentSlide)
		      If sP.Len() = 1 Then sP = "0" + sP
		      If sP.Len() = 2 Then sP = "0" + sP
		      snapshot_filename = ReplaceAllB(snapshot_filename, "%P", sP)
		    Case Asc("s")
		      'The seconds from the current time (00-59)
		      Dim ss As String = Str(d.Second)
		      If ss.Len() = 1 Then ss = "0" + ss
		      snapshot_filename = ReplaceAllB(snapshot_filename, "%s", ss)
		    Case Asc("S")
		      'The name of the current set
		      Dim sS As String = SmartML.GetValue(slide.Parent.Parent.Parent.Parent, "@name")
		      snapshot_filename = ReplaceAllB(snapshot_filename, "%S", sS)
		    Case Asc("T")
		      'The title of the current set
		      Dim sT As String = SmartML.GetValue(slide.Parent.Parent, "title")
		      snapshot_filename = ReplaceAllB(snapshot_filename, "%T", sT)
		    Case Asc("V")
		      'The title of the current set
		      Dim sV As String = SmartML.GetValue(slide, "@id", False)
		      snapshot_filename = ReplaceAllB(snapshot_filename, "%V", sV)
		    Case Asc("y")
		      'The current year (4 digits)
		      Dim sy As String = Str(d.Year)
		      If sy.Len() = 1 Then sy = "0" + sy
		      snapshot_filename = ReplaceAllB(snapshot_filename, "%y", sy)
		    Case Else
		      start = match.SubExpressionStartB(1)+2
		    End Select
		    
		    match = re.Search(snapshot_filename, start)
		  Wend
		  
		  If snapshot_filename.EndsWith( ".jpg" ) Then
		    snapshot_filename = Left(snapshot_filename, snapshot_filename.Len()-4)
		  End If
		  
		  If IsNull(GetFolderItem(snapshot_filename + ".jpg")) Then
		    Dim base_folder As FolderItem = Nil
		    Dim folder_element As String
		    Dim folder_elements() As String = Split(ReplaceAll(snapshot_filename, "\", "/"), "/")
		    Call folder_elements.Pop() 'Remove the filename part
		    
		    For Each folder_element in folder_elements
		      If IsNull(base_folder) Then
		        base_folder = GetFolderItem(folder_element)
		      Else
		        base_folder = base_folder.Child(folder_element)
		        If Not base_folder.Exists() Then
		          base_folder.CreateAsFolder()
		        End If
		      End If
		    Next
		  End If
		  
		  Dim imageFileName As FolderItem = GetFolderItem(snapshot_filename + ".jpg")
		  Dim metaFileName As FolderItem = GetFolderItem(snapshot_filename + ".xml")
		  
		  If Not IsNull(imageFileName) Then
		    Try
		      '++JRC Comented out second parameter for compatibilty with RB 2010r3
		      image.Save(ImageFileName, 151) ' , 85)
		      
		      If export_metadata And Not IsNull(metaFileName) then
		        Dim metaDoc As New XmlDocument
		        Dim metaSlide As XmlElement = metaDoc.CreateElement("slide")
		        metaDoc.DocumentElement.AppendChild(metaSlide)
		        SmartML.CloneChildren(slide.Parent.Parent, metaSlide)
		        SmartML.CloneAttributes(slide.Parent.Parent, metaSlide)
		        
		        metaDoc.DocumentElement.RemoveChild(SmartML.GetNode(metaSlide, "slides", True))
		        metaDoc.DocumentElement.AppendChild metaDoc.ImportNode(slide, True)
		        
		        metaDoc.DocumentElement.RemoveChild(SmartML.GetNode(metaSlide, "style", True))
		        metaDoc.DocumentElement.AppendChild metaDoc.ImportNode(style, True)
		        
		        Call SmartML.XDocToFile(metaDoc, metaFileName)
		      End If
		    Catch err
		      'Snapshot will not be saved...
		    End Try
		  End If
		  
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

	#tag Method, Flags = &h1
		Protected Function GoBridge() As Boolean
		  Dim xNewSlide As XmlNode
		  Dim newSlide As Integer
		  
		  If Not FindKey("b", xNewSlide, newSlide, xNewSlide, newSlide) then
		    Return False 'don''t change anything
		  end if
		  
		  If HelperActive Then
		    PresentHelperWindow.ScrollTo currentSlide
		  Else
		    ResetPaint XCurrentSlide
		  End If
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GoChorus() As Boolean
		  Dim xNewSlide As XmlNode
		  Dim newSlide As Integer
		  
		  If Not FindKey("c", xNewSlide, newSlide, xNewSlide, newSlide) then
		    Return False 'don''t change anything
		  End If
		  
		  If HelperActive Then
		    PresentHelperWindow.ScrollTo currentSlide
		  Else
		    ResetPaint XCurrentSlide
		  End If
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GoFirstSlide(Update As Boolean = True) As Boolean
		  CurrentSlide = 1
		  XCurrentSlide = SetML.GetSlide(CurrentSet, 1)
		  
		  If Update Then
		    If HelperActive Then
		      PresentHelperWindow.ScrollTo currentSlide
		    Else
		      ResetPaint XCurrentSlide
		    End If
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GoLastSlide() As Boolean
		  Dim xNewSlide As XmlNode
		  Dim newSlide As Integer
		  
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
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GoNextSection(Update As Boolean = True) As Boolean
		  Dim xNewSlide As XmlNode
		  Dim newSlide As Integer
		  Dim oldName As String
		  Dim oldType As String
		  Dim newName As String
		  Dim newType As String
		  Dim prevIsStyleChange As Boolean = False
		  
		  //++EMP, 15 Jan 2006
		  // Updated to recognize new section type "blank" for program-generated blank slides
		  //++JRC, 2 Apr 2009
		  //Updated to allow the option of moving to the next section without updating the screen
		  //
		  
		  xNewSlide = SetML.GetNextSlide(XCurrentSlide)
		  If xNewSlide = Nil Then // at end of presentation, just return
		    Return False
		  End If
		  
		  oldName = SmartML.GetValue(XCurrentSlide.Parent.Parent, "@name", True) 'What is the section name?
		  oldType = SmartML.GetValue(XCurrentSlide.Parent.Parent, "@type", True) 'And its type?
		  ' Check to see if we started on a blank slide, if so, use the section name from the slide we just moved to
		  '++JRC: Or if this is a custom slide without a name
		  If xNewSlide <> Nil and oldType = "blank" Then
		    'If oldName = "" And xNewSlide <> Nil And SmartML.GetValue(XCurrentSlide.Parent.Parent, "@type", True) <> "custom" Then
		    oldName = SmartML.GetValue(xNewSlide.Parent.Parent, "@name", True)
		  end if
		  '--
		  newType = ""
		  newName = oldName
		  
		  xNewSlide = xCurrentSlide
		  newSlide = CurrentSlide
		  
		  ' Keep moving forward until the section name changes
		  While xNewSlide <> Nil And newName = oldName And newType <> "blank" And prevIsStyleChange = False
		    newSlide = newSlide + 1
		    xNewSlide = SetML.GetNextSlide(xNewSlide)
		    
		    If xNewSlide <> Nil Then
		      //++V, 31-05-2010
		      // Two slide(group)s with a stylechange slide in between need to be considered a seperate section
		      // Not only is that more logical (probably), but it also facilitaties display of the correct slide
		      // when PresentWindow.Present is called with 'Item > 2' AND the item in question is preceded
		      // by a stylechange slide and a similarly named other slide
		      If xNewSlide.PreviousSibling Is Nil Then
		        Dim xPrevSlideGroup As XmlNode = xNewSlide.Parent.Parent.PreviousSibling
		        If xPrevSlideGroup <> Nil Then
		          prevIsStyleChange = (SmartML.GetValue(xPrevSlideGroup, "@type", False) = "style")
		        End If
		      End If
		      
		      newType = SmartML.GetValue(xNewSlide.Parent.Parent, "@type", True)
		      newName = SmartML.GetValue(xNewSlide.Parent.Parent, "@name", True)
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
		  
		  '++JRC
		  If Update Then
		    If HelperActive Then
		      PresentHelperWindow.ScrollTo currentSlide
		    Else
		      ResetPaint XCurrentSlide
		    End If
		  End If
		  '--
		  
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GoNextSlide() As Boolean
		  Dim xNewSlide As XmlNode
		  
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
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GoPreChorus() As Boolean
		  Dim xNewSlide As XmlNode
		  Dim newSlide As Integer
		  
		  if not FindKey("p", XNewSlide, NewSlide, XNewSlide, NewSlide) then
		    Return False 'don''t change anything
		  end if
		  
		  If HelperActive Then
		    PresentHelperWindow.ScrollTo currentSlide
		  Else
		    ResetPaint XCurrentSlide
		  End If
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GoPreviousSection(Action As Integer) As Boolean
		  Const ASC_KEY_BACKSPACE = 8
		  
		  Dim newSlide As Integer
		  Dim xNewSlide As XmlNode
		  Dim oldName As String
		  Dim oldType As String
		  Dim newName As String
		  Dim newType As String
		  Dim nextIsStyleChange As Boolean = False
		  
		  If CurrentSlide = 1 Then Return False ' Can't go back any further
		  
		  newSlide = CurrentSlide - 1 '  "New" is back one
		  xNewSlide = SetML.GetPrevSlide(XCurrentSlide)
		  If xNewSlide = Nil Then // at beginning of presentation, just return
		    Return False
		  End If
		  
		  oldName = SmartML.GetValue(XCurrentSlide.Parent.Parent, "@name", True) 'What is the section name?
		  oldType = SmartML.GetValue(XCurrentSlide.Parent.Parent, "@type", True) 'And its type?
		  If xNewSlide <> Nil and oldType = "blank" Then
		    oldName = SmartML.GetValue(xNewSlide.Parent.Parent, "@name", True)
		  end if
		  
		  //++EMP, 15 Jan 06
		  // Two options for finding the start of the section:
		  // 1. If blanks are being used, just look type="blank" as we count back
		  // 2. No blanks: look for name change
		  //
		  'keep backing up until the name changes (well, it really becomes Nil)
		  newType = SmartML.GetValue(xNewSlide.Parent.Parent, "@type", True)
		  newName = SmartML.GetValue(xNewSlide.Parent.Parent, "@name", True)
		  
		  // Before starting the loop, check to see if the current slide was the first one
		  // of a section.  If so, update the pointers to the current slide.  That means
		  // the first time through the loop both current and next are the same.
		  If newName <> oldName Then
		    oldName = newName
		    oldType = newType
		    XCurrentSlide = xNewSlide
		    CurrentSlide = newSlide
		  End If
		  'newName = oldName
		  'newType = ""
		  
		  While xNewSlide <> Nil And newName = oldName And newType <> "blank"
		    XCurrentSlide = xNewSlide
		    CurrentSlide = newSlide
		    
		    newSlide = CurrentSlide - 1
		    xNewSlide = SetML.GetPrevSlide(XCurrentSlide)
		    
		    If xNewSlide <> Nil Then
		      //++V, 31-05-2010
		      // See the explanation in GoNextSection; this is equal, just the other way around
		      If xNewSlide.NextSibling = Nil Then
		        Dim xNextSlideGroup As XmlNode = xNewSlide.Parent.Parent.NextSibling
		        If xNextSlideGroup <> Nil Then
		          nextIsStyleChange = (SmartML.GetValue(xNextSlideGroup, "@type", False) = "style")
		        End If
		      End
		      
		      If nextIsStyleChange Then
		        xNewSlide = Nil
		      Else
		        newName = SmartML.GetValue(xNewSlide.Parent.Parent, "@name", True) //++
		        newType = SmartML.GetValue(xNewSlide.Parent.Parent, "@type", True) //++
		      End If
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
		    PresentHelperWindow.ScrollTo CurrentSlide
		  Else
		    ResetPaint XCurrentSlide
		  End If
		  Return True
		  
		  //--EMP, 15 Jan 06
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GoPreviousSlide() As Boolean
		  Dim xNewSlide As XmlNode
		  
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
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GoSetItem(Item As Integer) As Boolean
		  '++JRC, 2 Apr 2009
		  'This function will advance the presentation to the set item indicated by Item
		  Dim Result As Boolean = True
		  
		  If Item < 0 Then
		    Result = False
		  Else
		    If Item > 0 Then
		      
		      Dim xNewSlide As XmlNode = XCurrentSlide
		      Dim newSlide As Integer = CurrentSlide
		      
		      Dim newItem As Integer = Item - numStyles
		      Dim newSlideItemNumber As Integer = 0
		      Do
		        newSlide = newSlide + 1
		        xNewSlide = SetML.GetNextSlide(xNewSlide)
		        
		        If xNewSlide <> Nil Then
		          newSlideItemNumber = SmartML.GetValueN(xNewSlide.Parent.Parent, "@ItemNumber", False)
		        Else
		          Exit Do
		        End If
		        
		      Loop Until newItem < newSlideItemNumber
		      
		      If xNewSlide <> Nil Then
		        CurrentSlide = newSlide
		        xCurrentSlide = xNewSlide
		      End If
		      
		    End If
		    
		    If HelperActive Then
		      PresentHelperWindow.ScrollTo CurrentSlide
		    Else
		      ResetPaint XCurrentSlide
		    End If
		  End If
		  
		  Return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GoSong(number As Integer) As Boolean
		  'RealBasic: The Definitive Guide
		  'http://books.google.com/books?id=1NfFvedzfggC&lpg=PA593&ots=vXNPwnD8nD&dq=realbasic%20keycode%20keyboard%20layout&pg=PA460#v=onepage&q&f=false
		  Dim newSlide As Integer = 1
		  Dim songSlide As Integer = 0
		  Dim songName As String = ""
		  Dim songItemNr As Integer = -1
		  Dim xNewSlide As XmlNode = SetML.GetSlide(CurrentSet, 1)
		  
		  While songSlide < number And xNewSlide <> Nil
		    
		    If SmartML.GetValue(xNewSlide.Parent.Parent, "@type") = "song" Then
		      If songName <> SmartML.GetValue(xNewSlide.Parent.Parent, "@name") Or _
		        SongItemNr <> SmartML.GetValueN(xNewSlide.Parent.Parent, "@ItemNumber") Then
		        songSlide = songSlide + 1
		        songName = SmartML.GetValue(xNewSlide.Parent.Parent, "@name")
		        SongItemNr = SmartML.GetValueN(xNewSlide.Parent.Parent, "@ItemNumber")
		      End If
		    End If
		    
		    If songSlide < number Then
		      xNewSlide = SetML.GetNextSlide(xNewSlide)
		      If xNewSlide <> Nil Then
		        newSlide = newSlide + 1
		      End If
		    End If
		  Wend
		  
		  If songSlide = number Then
		    CurrentSlide = newSlide
		    XCurrentSlide = xNewSlide
		    
		    If HelperActive Then
		      PresentHelperWindow.ScrollTo currentSlide
		    Else
		      ResetPaint XCurrentSlide
		    End If
		    
		  End If
		  
		  Return songSlide = number
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GoTag() As Boolean
		  Dim xNewSlide As XmlNode
		  Dim newSlide As Integer
		  
		  if not FindKey("t", XNewSlide, NewSlide, XNewSlide, NewSlide) then
		    Return False 'don''t change anything
		  end if
		  
		  If HelperActive Then
		    PresentHelperWindow.ScrollTo currentSlide
		  Else
		    ResetPaint XCurrentSlide
		  End If
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GoVerse(Key As String) As Boolean
		  Dim xNewSlide As XmlNode
		  Dim newSlide As Integer
		  
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
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub InsertBlanksIntoSet(ByRef Set As XmlDocument, ByRef Item As Integer)
		  Dim slide_group As XmlNode
		  Dim slide_groups As XmlNode
		  Dim i As Integer
		  Dim insertBlanks As Boolean
		  
		  insertBlanks = SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@blanks")
		  slide_groups = SmartML.GetNode(Set.DocumentElement, "slide_groups")
		  If slide_groups <> Nil Then
		    slide_group = slide_groups.FirstChild
		  Else
		    Return
		  End If
		  
		  i = 0
		  While slide_group <> Nil
		    
		    If insertBlanks Then
		      '++JRC Fix corner case where the first item in a set is a style type, which causes two blank items at the beginning of a set
		      If SmartML.GetValue(slide_group, "@name") <> SmartML.GetValue(slide_group.PreviousSibling, "@name") And _
		        SmartML.GetValue(slide_group, "@type") <> "style"  And SmartML.GetValue(slide_group, "@type") <> "blank" Or _
		        slide_group.PreviousSibling = Nil And SmartML.GetValue(slide_group, "@type") <> "style" Then
		        '--
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
		        If i < Item Then
		          numBlanks = numBlanks + 1
		        End If
		      End If
		      
		    End If ' for inserting blanks
		    
		    If SmartML.GetValue(slide_group, "@type") =  "style" And i < Item Then
		      numStyles = numStyles + 1
		    End If
		    
		    i = i + 1
		    slide_group = slide_group.NextSibling
		  Wend
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsClosingExternal() As Boolean
		  Return self._IsClosingExternal
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsSlidechangeExternal() As Boolean
		  Return self._IsSlidechangeExternal
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
		  ' a command code, and (b) support keyboard remapping through this routine.È
		  
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
		  
		  If Asc(Key) = ASC_KEY_PGDN Then Key = Chr(ASC_KEY_DOWN)
		  If Asc(Key) = ASC_KEY_PGUP Then Key = Chr(ASC_KEY_UP)
		  
		  Command = AscB(Lowercase(Key))
		  
		  Select Case Command
		  Case ASC_KEY_SPACE
		    Command = ACTION_NEXT_SLIDE
		  End Select
		  
		  DontCare = PerformAction(Command)
		  Return DontCare
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LiveDisplay(slide As XmlNode)
		  //++
		  // Part of ScriptureReceiver interface
		  // Called to display a verse slide without adding it
		  // to the active set
		  //--
		  Mode = "N"
		  ResetPaint(slide)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function PerformAction(Action As Integer) As Boolean
		  
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
		  Const KEY_ESCAPE = 27
		  
		  '
		  'Temporary hack until the command arguments are fixed
		  '
		  Dim Key As String
		  Key = ChrB(Action)
		  
		  '
		  '  NEXT SLIDE
		  '
		  If Keyboard.AsyncKeyDown(KEY_DOWN) Or _
		    Action = ASC_KEY_DOWN Or _
		    Action = ACTION_NEXT_SLIDE Then
		    Return GoNextSlide
		    '
		    ' PREVIOUS SLIDE
		    '
		  ElseIf Keyboard.AsyncKeyDown(KEY_UP)  Or _
		    Action = ASC_KEY_UP Then
		    Return GoPreviousSlide
		    '
		    ' FIRST SLIDE in presentation
		    '
		  ElseIf Action = ASC_KEY_HOME Then
		    Return GoFirstSlide
		    '
		    ' LAST SLIDE in presentation
		    '
		  ElseIf Action = ASC_KEY_END Then
		    Return GoLastSlide
		    '
		    ' NEXT SECTION
		    '
		  ElseIf (Keyboard.AsyncKeyDown(KEY_RIGHT) Or Action = ASC_KEY_RIGHT) Then
		    Return GoNextSection
		    '
		    ' PREVIOUS SECTION
		    '
		  ElseIf Keyboard.AsyncKeyDown(KEY_LEFT) Or Action = ASC_KEY_LEFT _
		    Or Action = ASC_KEY_BACKSPACE _
		    Or Action = ACTION_FIRST_SLIDE_OF_SECTION Then 'special code 126 comes from inside the program instead of keyboard
		    Return GoPreviousSection(Action)
		    '
		    ' Jump to Chorus
		    '
		  ElseIf Lowercase(Key) = "c" Or Key = "`" Then ' c = Chorus
		    Return GoChorus
		    '
		    ' Jump to  Bridge
		    '
		  ElseIf Lowercase(Key) = "b" Then ' b = Bridge
		    Return GoBridge
		    '
		    ' Jump to PreChorus
		    '
		  ElseIf Lowercase(Key) = "p" Then ' p = Pre-chorus
		    Return GoPreChorus
		    '
		    ' Jump to tag
		    '
		  ElseIf Lowercase(Key) = "t" Then ' t = Tag
		    Return GoTag
		    '
		    ' Jump to Verse "N"
		    '
		  ElseIf lowercase(key) = "v" or isNumeric(key) Then ' n = Verse
		    Return GoVerse(key)
		    '
		    ' Jump to Song "N"
		    '
		  ElseIf KeyBoard.AsyncKeyDown(KEY_F1) Then
		    Return GoSong(1)
		  ElseIf KeyBoard.AsyncKeyDown(KEY_F2) Then
		    Return GoSong(2)
		  ElseIf KeyBoard.AsyncKeyDown(KEY_F3) Then
		    Return GoSong(3)
		  ElseIf KeyBoard.AsyncKeyDown(KEY_F4) Then
		    Return GoSong(4)
		  ElseIf KeyBoard.AsyncKeyDown(KEY_F5) Then
		    Return GoSong(5)
		  ElseIf KeyBoard.AsyncKeyDown(KEY_F6) Then
		    Return GoSong(6)
		  ElseIf KeyBoard.AsyncKeyDown(KEY_F7) Then
		    Return GoSong(7)
		  ElseIf KeyBoard.AsyncKeyDown(KEY_F8) Then
		    Return GoSong(8)
		  ElseIf KeyBoard.AsyncKeyDown(KEY_F9) Then
		    Return GoSong(9)
		  ElseIf KeyBoard.AsyncKeyDown(KEY_F10) Then
		    Return GoSong(10)
		  ElseIf KeyBoard.AsyncKeyDown(KEY_F11) Then
		    Return GoSong(11)
		  ElseIf KeyBoard.AsyncKeyDown(KEY_F12) Then
		    Return GoSong(12)
		  ElseIf KeyBoard.AsyncKeyDown(KEY_F13) Then ' AKA PrintScreen
		    Return GoSong(13)
		  ElseIf KeyBoard.AsyncKeyDown(KEY_F14) Then ' AKA ScreenLock
		    Return GoSong(14)
		  ElseIf KeyBoard.AsyncKeyDown(KEY_F15) Then ' AKA Pause
		    Return GoSong(15)
		    '
		    ' Close Presentation
		    '
		  ElseIf  Action = KEY_ESCAPE Then ' Escape
		    Return DoClosePresentation
		    '
		    ' Black screen (can't be "B" since that's the hotkey for "Bridge" :-(
		    '
		  ElseIf Lowercase(Key) = "k"  Then
		    Return ToggleBlack
		    '
		    ' White Screen
		    '
		  ElseIf Lowercase(Key) = "w" Then
		    Return ToggleWhite
		    '
		    ' Hide Slide (leaves background up)
		    '
		  ElseIf Lowercase(Key) = "h" Then
		    Return ToggleHidden
		    '
		    ' Put up the LOGO
		    '
		  ElseIf Lowercase(Key) = "l" Then
		    Return ToggleLogo
		    '
		    ' Freeze display screen
		    '
		  ElseIf Lowercase(Key) = "f" Then
		    Return ToggleFreeze
		    '
		    '  Normal Screen (less important now that the modes are toggles)
		    '  It's a trump -- disables any other mode
		    '
		  ElseIf Lowercase(Key) = "n" Then
		    Return ShowNormal
		    '
		    ' Put up an ALERT
		    '
		  ElseIf Lowercase(Key) = "a" Then
		    Return ShowAlert
		    '
		    ' SCRIPTURE
		    '
		  ElseIf Lowercase(Key) = "s" Then
		    Return DoPickScripture
		    '
		    ' Add SONG
		    '
		  ElseIf Lowercase(Key) = "q" Then
		    Return DoPickSong
		    
		  ElseIf Lowercase(Key) = "m" Then
		    Return DoSwapFullScreen
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
		Sub Present(setDoc As XmlDocument, PresentMode As Integer, Item As Integer = 0)
		  Dim i As Integer
		  Dim slide_groups, slide_group, slide As XmlNode
		  Dim de As XmlNode // Holds PresentationSettings Document Element
		  Dim tmpPic As Picture
		  Dim availableWidth As Integer 'For screensize calculations adapted to Linux Xinerama in preview dual screen
		  //++EMP
		  // September 2005
		  // Since the changes to pull the style information out of the XML
		  // will modify it, make a local copy now instead of just assigning
		  // the property...see below for the copy routine
		  
		  'CurrentSet = setDoc
		  //++EMP
		  Dim StyleNode As XmlNode
		  Dim NewStyleNode As XmlNode
		  Dim tempSlideStyle As SlideStyle
		  
		  App.MouseCursor = System.Cursors.Wait
		  PresentationMode = PresentMode
		  // Copy the set to a working copy we can change
		  CurrentSet = New XmlDocument
		  CurrentSet.AppendChild CurrentSet.ImportNode(setDoc.FirstChild, CopyAllChildren)
		  '#if DebugBuild
		  'Dim f As FolderItem
		  'f = GetFolderItem("SetDoc.xml")
		  'setDoc.SaveXml f
		  '#endif
		  StyleDict = New Dictionary
		  
		  '++JRC
		  NumberOfItems =Val(setDoc.DocumentElement.GetAttribute("NumberOfItems"))
		  
		  slide_groups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  slide_group = slide_groups.FirstChild
		  'System.DebugLog "Starting While..."
		  While slide_group <> Nil
		    
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
		      '++JRC unnecessary as we will overwrite StyleNode anyway
		      'StyleNode.SetAttribute "index", Str(StyleDict.Count - 1)
		      // Going for broke here: Replace the style node with a new one that just has the index...
		      NewStyleNode = CurrentSet.CreateElement("style")
		      NewStyleNode.SetAttribute "index", Str(StyleDict.Count - 1)
		      StyleNode = SmartML.ReplaceWithImportNode(StyleNode, NewStyleNode)
		    End If
		    //--EMP
		    slide_group = slide_group.NextSibling
		    'System.DebugLog "Next Slide Group"
		    If slide_group <> Nil Then
		      'System.DebugLog "Slide Group is " + smartml.GetValue(slide_group, "@name") + ", a " + SmartML.GetValue(slide_group, "@type")
		    End If
		  Wend
		  
		  'System.DebugLog "Ending While"
		  
		  //++EMP
		  // Now handle  the default styles...
		  'System.DebugLog "Acquire Defaults"
		  de = App.MyPresentSettings.DocumentElement
		  StyleNode = SmartML.GetNode(de, "scripture_style")
		  tempSlideStyle = New SlideStyle(StyleNode)
		  StyleDict.Value("scripture_style") = tempSlideStyle
		  SmartML.SetValue de, "scripture_style/@index", "scripture_style"
		  'System.DebugLog "Completed scripture_style"
		  StyleNode = SmartML.GetNode(de, "default_style")
		  tempSlideStyle = New SlideStyle(StyleNode)
		  StyleDict.Value("default_style") = tempSlideStyle
		  SmartML.SetValue de, "default_style/@index", "default_style"
		  'System.DebugLog "Completed default_style"
		  //--
		  '++JRC
		  InsertBlanksIntoSet(CurrentSet, Item)
		  VerifySlideBodies(CurrentSet)
		  
		  'System.DebugLog "Add blanks and confirm bodies exist"
		  
		  'Dim f1 As FolderItem
		  '#if DebugBuild
		  'f1 = GetFolderItem("CurrentSet.xml")
		  'CurrentSet.SaveXml f1
		  '#endif
		  'System.DebugLog "Dumped CurrentSet"
		  
		  'CurrentSlide = 1
		  'XCurrentSlide = SetML.GetSlide(CurrentSet, 1)
		  
		  'System.DebugLog "Setup monitors"
		  presentScreen = SmartML.GetValueN(de, "monitors/@present") - 1
		  controlScreen = SmartML.GetValueN(de, "monitors/@control") - 1
		  If presentScreen < 0 Or presentScreen > OSScreenCount() - 1 Then presentScreen = 0
		  If controlScreen < 0 Or controlScreen > OSScreenCount() -1 Then controlScreen = 0
		  
		  cnvSlide.Visible = False 'Prevent the canvas to redraw itself for all size changes below
		  'System.DebugLog "Determine correct PresentMode"
		  If PresentMode = MODE_SINGLE_SCREEN Then ' Single Screen
		    presentScreen = controlScreen
		    HelperActive = False
		    MenuBarVisible = False
		    Top = OSScreen(presentScreen).Top
		    Left = OSScreen(presentScreen).Left
		    Width = OSScreen(presentScreen).Width
		    Height = OSScreen(presentScreen).Height
		    FullScreen = True
		    
		  ElseIf PresentMode = MODE_PREVIEW Then ' Split Screen
		    HelperActive = True
		    MenuBarVisible = True
		    presentScreen = controlScreen
		    Top = OSScreen(presentScreen).AvailableTop + 10
		    Left = OSScreen(presentScreen).AvailableLeft + 10
		    availableWidth = OSScreen(presentScreen).AvailableWidth
		    
		    Width = availableWidth - PresentHelperWindow.Width - 30
		    Height = Width * OSScreen(presentScreen).AvailableHeight / availableWidth ' Screen(presentScreen).Height - PresentHelperWindow.Height - 30
		    
		    If SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "monitors/@force_4_3_preview", False, False) Then
		      If Width > Height Then
		        Width = Height * 4/3
		      Else
		        Height = Width * 3/4
		      End If
		    End If
		    
		    PresentHelperWindow.Left = OSScreen(presentScreen).AvailableLeft + availableWidth - PresentHelperWindow.Width - 10
		    PresentHelperWindow.Top = OSScreen(presentScreen).AvailableTop + OSScreen(presentScreen).Height - PresentHelperWindow.Height - 40
		    
		    If Not SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "snapshot/@export_preview", False, False) Then
		      m_Snapshots = False
		    End If
		    
		  ElseIf PresentMode = MODE_DUAL_SCREEN Then ' Multiple Screens
		    HelperActive = True
		    Top = OSScreen(presentScreen).Top
		    Left = OSScreen(presentScreen).Left
		    Width = OSScreen(presentScreen).Width
		    Height = OSScreen(presentScreen).Height
		    FullScreen = True
		    MenuBarVisible = (presentScreen > 0) // Only show the menu bar if we're presenting on a secondary screen
		    PresentHelperWindow.Left = OSScreen(controlScreen).Left + (OSScreen(controlScreen).Width - PresentHelperWindow.Width) / 2
		    PresentHelperWindow.Top = OSScreen(controlScreen).Top + (OSScreen(controlScreen).Height - PresentHelperWindow.Height) / 2
		  End If
		  cnvSlide.Visible = True
		  
		  //++
		  // EMP, September 2006
		  // Move the allocation of pictures before doing anything with
		  // the Helper window.  Depending on how events fired,
		  // Helper could get a Repaint event before everything was
		  // initialized.
		  //--
		  'System.DebugLog "Allocate Picture space"
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
		  LastPicture.Graphics.DrawPicture CurrentPicture, 0, 0
		  PreviewPicture.Graphics.DrawPicture CurrentPicture, 0, 0
		  
		  'System.DebugLog "Get Logo Picture"
		  tmpPic = SmartML.GetValueP(App.MyPresentSettings.DocumentElement, "logo")
		  
		  If tmpPic <> Nil Then
		    LogoCache = NewPicture(tmpPic.Width, tmpPic.Height, 32)
		    LogoCache.Graphics.DrawPicture tmpPic, 0, 0
		    LogoCache.Mask.Graphics.DrawPicture SmartML.GetValueP(App.MyPresentSettings.DocumentElement, "logo_mask"), 0, 0
		  End If
		  
		  'CurrentSlide = 1
		  'XCurrentSlide = SetML.GetSlide(CurrentSet, 1)
		  
		  If HelperActive Then
		    PresentHelperWindow.Show
		    i = 1
		    
		    slide = SetML.GetSlide(CurrentSet, i)
		    'System.DebugLog "PresentWindow.Present: GetSlide 1 returned a " + SmartML.GetValue(slide.Parent.Parent, "@type") +_
		    '" with name '" + SmartML.GetValue(slide.Parent.Parent, "@name") + "'"
		    While slide <> Nil
		      
		      Dim prevIsStyleChange As Boolean = False
		      If slide.PreviousSibling Is Nil Then
		        Dim xPrevSlideGroup As XmlNode = slide.Parent.Parent.PreviousSibling
		        If xPrevSlideGroup <> Nil Then
		          prevIsStyleChange = (SmartML.GetValue(xPrevSlideGroup, "@type", False) = "style")
		        End If
		      End If
		      
		      PresentHelperWindow.InsertItem slide, i, prevIsStyleChange
		      i = i + 1
		      slide = SetML.GetNextSlide(slide)
		      'If slide <> Nil Then _
		      'System.DebugLog "PresentWindow.Present: GetNextSlide for i = " + cstr(i) + " returned a " + SmartML.GetValue(slide.Parent.Parent, "@type") +_
		      '" with name '" + SmartML.GetValue(slide.Parent.Parent, "@name") + "'"
		    Wend
		    'PresentHelperWindow.lst_all_slides.ListIndex = 0
		  End If
		  
		  Call GoFirstSlide(False)
		  Call GoSetItem(Item)
		  
		  'Show
		  App.MouseCursor = Nil
		  #if Not TargetMacOS
		    App.MinimizeWindow(MainWindow)
		  #endif
		  If HelperActive Then
		    PresentHelperWindow.SetMode Me.Mode, False
		    App.RestoreWindow(PresentHelperWindow)
		    PresentHelperWindow.lst_all_slides.SetFocus
		  Else
		    '++JRC Bring PresentWindow to front in Singe Screen Mode
		    App.SetForeground(PresentWindow)
		    '--
		    ResetPaint XCurrentSlide
		  End If
		  
		  Dim temp As String
		  temp = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "style/@mouse_cursor")
		  Select Case temp
		  Case "arrow"
		    Self.MouseCursor = System.Cursors.StandardPointer
		  Case "cross"
		    '#If Not TargetLinux
		    'Self.MouseCursor = cross
		    '#Else
		    Self.MouseCursor = System.Cursors.ArrowAllDirections
		    '#EndIf
		  Case "hidden"
		    Self.MouseCursor = System.Cursors.InvisibleCursor
		  Case "hourglass"
		    Self.MouseCursor = System.Cursors.Wait
		  Case "ibeam"
		    Self.MouseCursor = System.Cursors.IBeam
		  Else
		    Self.MouseCursor = System.Cursors.InvisibleCursor
		  End Select
		  PresentCursor = Self.MouseCursor
		  AppCursor = App.MouseCursor
		  Self.Visible = True
		Catch e
		  RuntimeException(e).message = "In PresentWindow.Present: " + e.Message
		  Raise e
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetPaint(slide As XmlNode)
		  Dim xStyle As XmlNode
		  Dim w, h As Integer
		  Dim advanceNext As Boolean = False
		  
		  If SetML.IsExternal(PreviousSlide) Then
		    'Check if we need to close the running external.
		    Dim bClose As Boolean = False
		    Dim prevAppl As string = SmartML.GetValue(PreviousSlide, "@application", False)
		    Dim prevHost As string = SmartML.GetValue(PreviousSlide, "@host", False)
		    Dim prevFile As String = SmartML.GetValue(PreviousSlide, "@filename", False)
		    
		    If Not SetML.IsExternal(slide) Then
		      bClose = True
		    Else
		      'See if the external in the new slide is equal to the current slide.
		      If SmartML.GetValue(slide.Parent.Parent, "@application", False) <> prevAppl Or _
		        SmartML.GetValue(slide.Parent.Parent, "@host", False) <> prevHost Or _
		        SmartML.GetValue(slide.Parent.Parent, "@filename", False) <> prevFile Then
		        bClose = True
		      End If
		    End If
		    
		    If bClose Then
		      self._IsClosingExternal = True
		      
		      Select Case prevAppl
		      Case "presentation"
		        App.RestoreWindow(PresentWindow)
		        
		        Dim presFile As FolderItem = GetFolderItem( prevFile )
		        If Not IsNull(presFile) Then
		          If presFile.Exists() Then
		            
		            Dim presHost As PresentationHost = PresentationHost.Automatic
		            Select Case prevHost
		            Case "ppt"
		              presHost = PresentationHost.PowerPoint
		            Case "pptview"
		              presHost = PresentationHost.PowerPointViewer
		            Case "impress"
		              presHost = PresentationHost.OpenOffice
		            End Select
		            
		            Dim oExtPres As iPresentation = PresentationFactory.GetOrCreate( presFile.AbsolutePath(), presHost )
		            If Not IsNull( oExtPres ) Then
		              Call oExtPres.EndShow()
		            End If
		          End If
		        End If
		        
		      Case "videolan"
		        m_VideolanController.Stop()
		        
		      Case "launch"
		        If IsNull(slide) And m_AppLaunchShell.IsRunning Then
		          'Close any running external application instance.
		          m_AppLaunchShell.Close()
		        End If
		        
		      End Select
		      
		      self._IsClosingExternal = False
		    End If
		  End If
		  
		  If IsNull( slide ) Then Return
		  
		  If SetML.IsExternal(slide) Then
		    _IsSlidechangeExternal = True
		    
		    If mode = "N" then
		      Select Case SmartML.GetValue(slide.Parent.Parent, "@application", False)
		      Case "presentation"
		        
		        Dim presFile As FolderItem = GetFolderItem( SmartML.GetValue(slide.Parent.Parent, "@filename", False) )
		        If Not IsNull(presFile) Then
		          If presFile.Exists() Then
		            
		            Dim presHost As PresentationHost = PresentationHost.Automatic
		            Select Case SmartML.GetValue(slide.Parent.Parent, "@host", False)
		            Case "ppt"
		              presHost = PresentationHost.PowerPoint
		            Case "pptview"
		              presHost = PresentationHost.PowerPointViewer
		            Case "impress"
		              presHost = PresentationHost.OpenOffice
		            End Select
		            
		            Dim oExtPres As iPresentation = PresentationFactory.GetOrCreate( presFile.AbsolutePath(), presHost )
		            If Not IsNull( oExtPres ) Then
		              
		              Dim presIndex As Integer = SmartML.GetValueN(slide, "@id", False)
		              If presIndex <> oExtPres.CurrentSlide() Then
		                If oExtPres.IsShowing() Then
		                  Call oExtPres.GotoSlide( presIndex )
		                Else
		                  Dim loopPresentation As Boolean = SmartML.GetValueB(slide.Parent.Parent, "@loop_presentation", False)
		                  Call oExtPres.StartShow( loopPresentation )
		                  
		                  'Starting a presentation from a different slide (index) than the default (first), breaks the slide preview synchronisation
		                  'Thefore, the index is set directly after startin, in case it is different from the first slide
		                  'The slideindex of the first slide does not need to be 1 as a first slide can be hidden.
		                  'We thus cannot use the index, but must use the slide structure.
		                  If Not IsNull( slide.PreviousSibling ) Then
		                    Call oExtPres.GotoSlide( presIndex )
		                  End If
		                End If
		              End If
		              
		            End If
		          End If
		        End If
		        
		        Dim sPreviewImage As String = SmartML.GetValue(slide, "preview", False)
		        If sPreviewImage <> "" Then
		          Dim img As StyleImage = New StyleImage()
		          If img.SetImageAsString( sPreviewImage ) Then
		            Dim slidePreview As Picture = img.GetImage()
		            PreviewPicture.Graphics.DrawPicture slidePreview, 0, 0, PreviewPicture.Width, PreviewPicture.Height, 0, 0, slidePreview.Width, slidePreview.Height
		          End If
		        End If
		        
		        App.MinimizeWindow(PresentWindow)
		        
		      Case "videolan"
		        m_VideolanController.Stop()
		        
		        If SmartML.GetValue(slide.Parent.Parent, "@action") = "start" Then
		          Dim params As String = SmartML.GetValue(slide.Parent.Parent, "@videolan_parameters")
		          params = ReplaceAllB(params, "%d", Str(SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control")))
		          If InStr(params, "%s") = 0 Then
		            params = params + " """ + SmartML.GetValue(slide.Parent.Parent, "@filename") + """"
		          Else
		            params = ReplaceAllB(params, "%s", """" + SmartML.GetValue(slide.Parent.Parent, "@filename") + """")
		          End If
		          
		          Call m_VideolanController.Start(params)
		        Else
		          'Case @action = stop is covered by generic application close above
		        End If
		        
		        advanceNext = True
		        
		      Case "launch"
		        Dim launchAppLocation As FolderItem = GetFolderItem(SmartML.GetValue(slide.Parent.Parent, "@app_filename", False))
		        Dim cmd As String = launchAppLocation.AbsolutePath()
		        Dim params As String = SmartML.GetValue(slide.Parent.Parent, "@app_parameters", False)
		        
		        If m_AppLaunchShell.IsRunning Then
		          'Close any running external application instance.
		          m_AppLaunchShell.Close()
		        End If
		        
		        If SmartML.GetValue(slide.Parent.Parent, "@action") = "start" Then
		          If SmartML.GetValueB(slide.Parent.Parent, "@wait_to_finish", False) = True Then
		            m_AppLaunchShell.Mode = 0 'Synchronous
		          Else
		            m_AppLaunchShell.Mode = 1 'Asynchronous
		          End If
		          m_AppLaunchShell.Execute( """" + cmd + """" + " " + params )
		        Else
		          'Case @action = stop is covered by generic application close above
		        End If
		        
		        advanceNext = True
		      End Select
		      
		    End If
		    
		    _IsSlidechangeExternal = False
		  Else
		    
		    If slideType = "song" Then
		      '++JRC
		      SongSetDisplayed(slide)
		    End If
		    
		    'App.DebugWriter.Write("PresentWindow.ResetPaint: Enter", 5)
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
		    curslideTransition = SetML.GetSlideTransition(slide)
		    
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
		      If m_Snapshots Then
		        ExportSnapshot PreviewPicture, slide, xStyle
		      End If
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
		    If (doTransition And (curslideTransition = SlideTransitionEnum.ApplicationDefault)) Or (curslideTransition = SlideTransitionEnum.UseTransition) Then
		      TransitionFrame = 1
		      timerTransition.Mode = 2
		      timerTransition.Reset
		      timerTransition.Enabled = True
		    End If
		    cnvSlide.Refresh False
		  End If
		  
		  'Keep a copy of this slide to be able do a cleanup when a next slide is shown
		  'A 'next' slide is always set in XCurrentSlide before this method is called and can therefore not be used for this purpose
		  PreviousSlide = slide.Parent.Parent.Clone( False )
		  PreviousSlide.AppendChild( slide.Parent.Clone( False ) ).AppendChild( slide.Clone( False ) )
		  
		  'App.DebugWriter.Write("PresentWindow.ResetPaint: Exit", 5)
		  
		  If advanceNext Then
		    Call PerformAction(ACTION_NEXT_SLIDE)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScriptureSelected(scripture As XmlNode)
		  // Part of the ScriptureReceiver interface.
		  Dim newGroup As XmlNode
		  Dim newSetItem As XmlNode
		  Dim tempMode As String
		  Dim temp As String
		  Dim xNewSlide As XmlNode
		  Dim newSlide As Integer
		  Dim i As Integer
		  
		  ' Get a reference
		  newSetItem = SmartML.InsertAfter(XCurrentSlide.Parent.Parent, "slide_group")
		  tempMode = Mode
		  App.MouseCursor = System.Cursors.Wait
		  newGroup = SmartML.ReplaceWithImportNode(newSetItem, scripture)
		  
		  '++JRC
		  NumberOfItems = NumberOfItems + 1
		  SmartML.SetValueN(newgroup, "@ItemNumber", NumberOfItems)
		  SmartML.SetValueB(newgroup, "@LiveInsertion", True)
		  
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
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ShowAlert() As Boolean
		  AlertText = InputBox.Input(App.T.Translate("presentation_helper/actions/alert") + ":", "")
		  If HelperActive Then
		    ResetPaint XCurrentSlide
		    PresentHelperWindow.Refresh False
		  Else
		    ResetPaint XCurrentSlide
		  End If
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ShowNormal() As Boolean
		  Mode = "N"
		  If HelperActive Then
		    PresentHelperWindow.SetMode Mode
		  Else
		    ResetPaint XCurrentSlide
		  End If
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SongSetDisplayed(slide As XmlNode)
		  Dim ItemNumber As Integer
		  
		  If slide = Nil Then Return 'sanity check
		  If SmartML.GetValue(slide.Parent.Parent, "@type", false) <> "song" Then Return
		  
		  'get set item number
		  ItemNumber = SmartML.GetValueN(slide.Parent.Parent, "@ItemNumber", false)
		  
		  'find item in the song activity log array
		  For i as Integer = 1 To UBound(ActLog)
		    If ActLog(i).SetItemNumber = ItemNumber Then ActLog(i).Displayed = true
		  Next i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToggleBlack() As Boolean
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
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToggleFreeze() As Boolean
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
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToggleHidden() As Boolean
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
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToggleLogo() As Boolean
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
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ToggleWhite() As Boolean
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
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub VerifySlideBodies(Set As XmlDocument)
		  ' Make sure every slide has a body
		  Dim slide_groups As XmlNode
		  Dim slide_group As XmlNode
		  
		  slide_groups = SmartML.GetNode(Set.DocumentElement, "slide_groups")
		  If slide_groups <> Nil Then
		    slide_group = slide_groups.FirstChild
		  Else
		    Return
		  End If
		  
		  While slide_group <> Nil
		    If SmartML.GetValue(slide_group, "@type") <> "style" And _
		      SmartML.GetNode(slide_group, "slides", True).ChildCount < 1 Then _
		      SmartML.SetValue slide_group, "slides/slide/body", ""
		      
		      slide_group = slide_group.NextSibling
		  Wend
		  
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

	#tag Property, Flags = &h1
		Protected AppCursor As MouseCursor
	#tag EndProperty

	#tag Property, Flags = &h0
		ControlScreen As Integer
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
		Protected curslideTransition As SlideTransitionEnum
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

	#tag Property, Flags = &h21
		Private m_AppLaunchShell As Shell = Nil
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_Snapshots As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_VideolanController As VideolanController = Nil
	#tag EndProperty

	#tag Property, Flags = &h0
		NumberOfItems As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected numBlanks As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected numStyles As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected PresentationMode As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected PresentCursor As MouseCursor
	#tag EndProperty

	#tag Property, Flags = &h0
		PresentScreen As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PreviewPicture As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private PreviousSlide As XmlNode = Nil
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected savedMode As String
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

	#tag Property, Flags = &h21
		Private _IsClosingExternal As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private _IsSlidechangeExternal As Boolean = False
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

	#tag Constant, Name = ACTION_WHITE, Type = Integer, Dynamic = False, Default = \"1014", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ControlKey, Type = Integer, Dynamic = False, Default = \"&h1000", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = CopyAllChildren, Type = Boolean, Dynamic = False, Default = \"True", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = KEY_F1, Type = Double, Dynamic = False, Default = \"&h7A", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KEY_F10, Type = Double, Dynamic = False, Default = \"&h6D", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KEY_F11, Type = Double, Dynamic = False, Default = \"&h67", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KEY_F12, Type = Double, Dynamic = False, Default = \"&h6F", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KEY_F13, Type = Double, Dynamic = False, Default = \"&h69", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KEY_F14, Type = Double, Dynamic = False, Default = \"&h6B", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KEY_F15, Type = Double, Dynamic = False, Default = \"&h71", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KEY_F2, Type = Double, Dynamic = False, Default = \"&h78", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KEY_F3, Type = Double, Dynamic = False, Default = \"&h63", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KEY_F4, Type = Double, Dynamic = False, Default = \"&h76", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KEY_F5, Type = Double, Dynamic = False, Default = \"&h60", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KEY_F6, Type = Double, Dynamic = False, Default = \"&h61", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KEY_F7, Type = Double, Dynamic = False, Default = \"&h62", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KEY_F8, Type = Double, Dynamic = False, Default = \"&h64", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KEY_F9, Type = Double, Dynamic = False, Default = \"&h65", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MODE_DUAL_SCREEN, Type = Integer, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MODE_PREVIEW, Type = Integer, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MODE_SINGLE_SCREEN, Type = Integer, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = OptionKey, Type = Integer, Dynamic = False, Default = \"&h10000", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ShiftKey, Type = Integer, Dynamic = False, Default = \"&h100", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = Untitled, Type = Double, Dynamic = False, Default = \"&h62", Scope = Protected
	#tag EndConstant


#tag EndWindowCode

#tag Events cnvSlide
	#tag Event
		Sub GotFocus()
		  If HelperActive Then
		    If PresentHelperWindow.IsCollapsed Then
		      App.RestoreWindow(PresentHelperWindow)
		    End If
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Dim status As Boolean
		  status = KeyDownX(Key)
		  Return Status
		End Function
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics)
		  If Not Globals.Status_Presentation Then Return
		  '#if DebugBuild then
		  'App.DebugWriter.Write("PresentWindow.cnvSlide.Paint: Enter")
		  '#endif
		  If (doTransition And (curslideTransition = SlideTransitionEnum.ApplicationDefault)) Or (curslideTransition = SlideTransitionEnum.UseTransition) Then
		    Profiler.BeginProfilerEntry "PresentWindow::Repaint Timer::Blit"
		    CurrentPicture.Mask.Graphics.ForeColor = rgb(255*(TransitionFrames-TransitionFrame)/TransitionFrames, 255*(TransitionFrames-TransitionFrame)/TransitionFrames, 255*(TransitionFrames-TransitionFrame)/TransitionFrames)
		    CurrentPicture.Mask.Graphics.FillRect(0, 0, CurrentPicture.Mask.Graphics.Width, CurrentPicture.Mask.Graphics.Height)
		    LastPicture.Graphics.DrawPicture CurrentPicture, 0, 0
		    g.DrawPicture LastPicture, 0, 0, g.Width, g.Height, 0, 0, LastPicture.Width, LastPicture.Height
		    'LastPicture = LastPicture.CXG_Composite(CurrentPicture, TransitionFrame/TransitionFrames, 0, 0)
		    'g.DrawPicture LastPicture.CXG_Composite(CurrentPicture, TransitionFrame/TransitionFrames, 0, 0, True), 0, 0
		    'g.DrawPicture LastPicture.CXG_Transition(CurrentPicture, LastPicture, TransitionFrame/TransitionFrames), 0, 0
		    Profiler.EndProfilerEntry
		  Else
		    g.DrawPicture CurrentPicture, 0, 0, g.Width, g.Height, 0, 0, CurrentPicture.Width, CurrentPicture.Height
		  End If
		  '#if DebugBuild Then
		  'App.DebugWriter.Write("PresentWindow.cnvSlide.Paint: Exit")
		  '#endif
		  //++
		  // EMP: handle any exceptions by ignoring them.
		  // This corrects an issue seen when changing the SButton style
		  // after a presentation and for some reason this window is still open
		  //--
		Catch ex
		  App.DebugWriter.Write("PresentWindow.cnvSlide.Paint: Got an exception: " +_
		  RuntimeException(ex).Message, 1)
		  Return
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events timerAdvance
	#tag Event
		Sub Action()
		  If XCurrentSlide.NextSibling = Nil And SmartML.GetValueB(XCurrentSlide.Parent.Parent, "@loop") Then
		    Call PerformAction(ACTION_FIRST_SLIDE_OF_SECTION)
		  Else
		    'TODO Should probably check if next slide is a new set item
		    'and stop auto-advancing if it is
		    Call PerformAction(ACTION_NEXT_SLIDE)
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events timerTransition
	#tag Event
		Sub Action()
		  
		  If TransitionFrame = TransitionFrames Then
		    Me.Enabled = False
		    Me.Reset
		  Else
		    TransitionFrame = TransitionFrame + 1
		  End If
		  
		  cnvSlide.Refresh False
		End Sub
	#tag EndEvent
#tag EndEvents
