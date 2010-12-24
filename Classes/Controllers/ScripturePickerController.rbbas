#tag Class
Protected Class ScripturePickerController
Implements ScriptureNotifier
	#tag Method, Flags = &h0
		Function BuildCitation() As String
		  //++
		  // Take the current book, etc., and return
		  // a citation string for it (i.e., "Gen 2:3-4")
		  //--
		  Dim ref As String
		  Dim startVerse As String
		  Dim endVerse As String
		  Dim verses() As String
		  
		  verses = CurrentBible.GetVerseNumbers(CurrentBook, CurrentChapter)
		  
		  ref = CurrentBible.GetBookNameFromStdBookNumber(CurrentBook) _
		  + " " + CStr(CurrentChapter)
		  
		  // Check to see if the reference is the entire chapter
		  // If it is, don't add verse numbers
		  
		  If Not((CurrentFromVerse = 0) And (CurrentThruVerse = UBound(verses))) Then
		    
		    // Not the entire chapter.  Add the starting verse number
		    CurrentBible.GetVerseRange(CurrentBook, CurrentChapter, CurrentFromVerse, startVerse, endVerse)
		    ref = ref + ":" + startVerse
		    
		    // If only a single verse node in the Bible is selected, see if an endverse was returned (i.e., node is a range of verses)
		    
		    If CurrentFromVerse = CurrentThruVerse Then
		      If endVerse.Len > 0 Then ref = ref + "-" + endVerse
		    Else // Selection is a range of verse nodes.  Add the last verse number to the citation
		      CurrentBible.GetVerseRange(CurrentBook, CurrentChapter, CurrentThruVerse, startVerse, endVerse)
		      If endverse.Len > 0 Then startVerse = endVerse //Most likely case is this is false - node is a single verse
		      ref = ref + "-" + startVerse
		    End If
		  End If
		  
		  Return ref
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ChangeBible(newBible As String)
		  Dim bibleList() As String
		  Dim newiBible As iBible
		  bibleList = BibleFactory.BibleList
		  
		  If biblelist.IndexOf(newBible) >= 0 Then
		    NotifyDisableUI
		    newiBible = BibleFactory.GetBible(newBible)
		    If newiBible Is Nil Then
		      App.DebugWriter.Write "ScripturePickerController: Got Nil loading bible " + newBible, 1
		      Return
		    End If
		    mCurrentBible = newiBible
		    If Not CurrentBible.ValidateCitation(CurrentBook, CurrentChapter, CurrentFromVerse, CurrentThruVerse) Then
		      SetDefaultPassage
		    End If
		    //++
		    // Invalidate the search window
		    //--
		    If Not (ActiveSearchWindow Is Nil) Then ActiveSearchWindow = Nil
		    NotifyBibleChanged
		    NotifyPassageChanged
		    NotifyEnableUI
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ChangeBook(newBook As Integer)
		  If CurrentBible.ValidateCitation(newBook, 1, 1, 1) Then
		    CurrentBook = newBook
		    CurrentChapter = 1
		    CurrentFromVerse = 1
		    CurrentThruVerse = 1
		    NotifyPassageChanged
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ChangePassage(newPassage As String)
		  Dim values() As String
		  Dim newBook As Integer
		  Dim newChapter As Integer
		  Dim newFromVerse As Integer
		  Dim newThruVerse As Integer
		  
		  values = Split(newPassage, Chr(0))
		  App.DebugWriter.Write "ScripturePickerController.ChangePassage: " + join(values, ", ")
		  newBook = Val(values(0))
		  newChapter = Val(values(1))
		  newFromVerse = Val(values(2))
		  newThruVerse = Val(values(3))
		  
		  // Compare... will determine what has changed and reset these as appropriate
		  
		  CompareToCurrentPassage(newBook, newChapter, newFromVerse, newThruVerse)
		  If CurrentBible.ValidateCitation(newBook, newChapter, newFromVerse, newThruVerse) Then
		    CurrentBook = newBook
		    CurrentChapter = newChapter
		    CurrentFromVerse = newFromVerse
		    CurrentThruVerse = newThruVerse
		  End If
		  NotifyPassageChanged
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CommandNotification(command As String, sender As iScripturePicker, parameter As Variant)
		  
		  App.DebugWriter.Write "ScripturePickerController.CommandNotification: " + Command, 5
		  
		  Select Case command
		  Case cmdSelectBible
		    ChangeBible parameter.StringValue
		    
		  Case cmdSelectionChanged
		    ChangePassage parameter.StringValue
		    
		  Case cmdSelectBook
		    ChangeBook parameter.IntegerValue
		    
		  Case cmdQuickLookup
		    DoQuickLookup parameter.StringValue
		    
		  Case cmdAddToSet
		    CompileScriptureAndNotify
		    
		  Case cmdLiveDisplay
		    CompileScriptureAndDisplay
		    
		  Case cmdFormatChanged
		    UpdateFormat sender
		    
		  Case cmdSearch
		    DoSearchBible sender
		    
		  Case cmdDone
		    ScripturePickerDone sender
		    
		  Case Else
		    App.DebugWriter.Write "ScripturePickerController.CommandNotification: Unknown command " + command, 1
		  End Select
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CompareToCurrentPassage(ByRef newBook As Integer, ByRef newChapter As Integer, ByRef newFromVerse As Integer, ByRef newThruVerse As Integer)
		  // Determine what has changed in the citation from what is currently selected, and update
		  // the citation as necessary.
		  
		  If newBook <> CurrentBook Then
		    newChapter = 1
		    newFromVerse = 1
		    newThruVerse = 1
		  ElseIf newChapter <> CurrentChapter Then
		    newFromVerse = 1
		    newThruVerse = 1
		  ElseIf (newFromVerse <> CurrentFromVerse) Then
		    If (newFromVerse < 1) Or (newFromVerse > CurrentBible.GetVerseCount(newBook, newChapter)) Then
		      newFromVerse = 1
		    End If
		  ElseIf (newThruVerse <> CurrentThruVerse) Then
		    If (newThruVerse < 1) Or (newThruVerse > CurrentBible.GetVerseCount(newBook, newChapter)) Then
		      newThruVerse = 1
		    End If
		  End If
		  
		  If newThruVerse < newFromVerse Then
		    newThruVerse = newFromVerse
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CompileScriptureAndDisplay()
		  Dim newGroup As XmlNode
		  Dim firstSlide As XmlNode
		  
		  NotifyDisableUI
		  newGroup = CompileSlideGroup
		  If newGroup <> Nil Then
		    firstSlide = SmartML.GetNode(newGroup, "slides/slide")
		    If firstSlide <> Nil Then
		      NotifyLiveDisplay(firstSlide)
		    End If
		  End If
		  CurrentFromVerse = CurrentFromVerse + Min(VersesPerSlide, CurrentThruVerse - CurrentFromVerse)
		  NotifyPassageChanged
		  NotifyEnableUI
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CompileScriptureAndNotify()
		  Dim newGroup As XmlNode
		  
		  NotifyDisableUI
		  
		  newGroup = CompileSlideGroup
		  
		  NotifyScriptureReceivers(newGroup)
		  
		  NotifyEnableUI
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CompileSlideGroup() As XmlNode
		  //
		  // Take the current settings and build a scripture slide group to pass
		  //
		  Dim xDoc As New XmlDocument
		  Dim newGroup As XmlElement
		  Dim xSlide As XmlElement
		  Dim slides As XmlNode
		  Dim ref As String
		  Dim verses() As String
		  Dim slideBody As String
		  Dim startVerse As String
		  Dim endVerse As String
		  Dim sep As String
		  Dim currVerse As Integer
		  Dim cite As String
		  
		  xDoc.AppendChild(xDoc.CreateElement("slide_group"))
		  newGroup = xdoc.DocumentElement
		  
		  newGroup.SetAttribute("type", "scripture")
		  
		  cite = BuildCitation
		  newGroup.SetAttribute("name", cite + "|" + CurrentBible.Name)
		  SmartML.SetValue(newGroup, "title", cite)
		  SmartML.SetValue(newGroup, "subtitle", CurrentBible.Name)
		  
		  verses = CurrentBible.GetPassage(CurrentBook, CurrentChapter, CurrentFromVerse, _
		  CurrentThruVerse, ShowVerseNumbers)
		  
		  currVerse = 0
		  
		  If FormatParagraph Then
		    sep = " "
		  Else
		    sep = EndOfLine
		  End If
		  
		  slides = SmartML.InsertChild(newGroup, "slides", 1)
		  While currVerse <= UBound(verses)
		    xSlide = xDoc.CreateElement("slide")
		    slideBody = ""
		    For i As Integer = 1 To VersesPerSlide
		      If currVerse > UBound(verses) Then Exit For
		      If i > 1 and (slideBody.Len + verses(currVerse).len) > CharsPerSlide  Then Exit For
		      
		      If slideBody.Len > 0 Then slideBody = slideBody + sep
		      slideBody = slideBody + verses(currVerse)
		      currVerse = currVerse + 1
		    Next
		    SmartML.SetValue(xSlide, "body", slideBody)
		    slides.AppendChild xSlide
		  Wend
		  
		  Return newGroup
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  LoadState
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  App.DebugWriter.Write "ScripturePickerController.Destructor", 4
		  ReDim Observers(-1)
		  ReDim Receivers(-1)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DoQuickLookup(cite As String)
		  Dim result() As Integer
		  
		  Dim version As String
		  
		  Dim versionRegEx As New RegEx
		  Dim versionMatch As RegExMatch
		  Dim lookupBibleName As String
		  Dim lookupBible As iBible
		  Dim bibleNames() As String
		  Dim lookupException As New BibleRefException
		  
		  // See if we need to select a different scripture version
		  
		  //++
		  // The parsing regex was changed to work around an apparent bug in the regex library
		  // that incorrectly excludes extended Latin-1 characters from the [[:alpha:]] and [[:alnum:]] classes
		  // To allow the old regex to be used if it breaks other languages than Turkish (where the error
		  // was first seen), allow a key to be added to the preferences to return to the old behavior.
		  //--
		  If App.MainPreferences.GetValueB(prefs.kUseOldBibleFactoryRegEx, False, False) Then
		    versionRegEx.SearchPattern = BibleFactory.kOldCitationRegEx
		  Else
		    versionRegEx.SearchPattern = BibleFactory.kCitationRegEx
		  End If
		  versionMatch = versionRegEx.Search(cite)
		  lookupBible = CurrentBible
		  
		  If versionMatch <> Nil Then
		    If versionMatch.SubExpressionCount > 4 Then
		      lookupBibleName = versionMatch.SubExpressionString(4)
		      bibleNames = BibleFactory.BibleList
		      If bibleNames.IndexOf(lookupBibleName) < 0 Then
		        lookupException.Message = App.T.Translate("scripture_lookup/bad_reference/version", lookupBibleName)
		        Raise lookupException
		      End If
		      lookupBible = BibleFactory.GetBible(lookupBibleName)
		    End If
		  Else
		    lookupException.Message = App.T.Translate("scripture_lookup/bad_reference/format")
		    Raise lookupException
		  End If
		  
		  If lookupBible Is Nil Then
		    lookupException.Message = App.T.Translate("scripture_lookup/bad_reference/version", lookupBibleName)
		    Raise lookupException
		  End If
		  
		  result = lookupBible.QuickLookup(cite)
		  
		  If lookupBible.ValidateCitation(result(0), result(1), result(2), result(3)) Then
		    If lookupBible <> CurrentBible Then
		      NotifyDisableUI
		      ChangeBible(lookupBible.Name)
		      NotifyEnableUI
		    End If
		    CurrentBook = result(0)
		    CurrentChapter = result(1)
		    CurrentFromVerse = result(2)
		    CurrentThruVerse = result(3)
		    NotifyPassageChanged
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DoSearchBible(sender As iScripturePicker)
		  //++
		  // Offer the user a search window for
		  // the currently-selected Bible
		  //--
		  If ActiveSearchWindow = Nil Then
		    ActiveSearchWindow = New SearchWindow
		  End If
		  ActiveSearchWindow.Visible = False
		  ActiveSearchWindow.DoSearch(self)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub LoadState()
		  //++
		  // Get the saved settings from the last ScripturePicker
		  //
		  //--
		  
		  Dim params As XmlElement
		  Dim CurrentBibleName As String
		  
		  params = App.MyMainSettings.DocumentElement
		  CurrentBibleName = SmartML.GetValue(params, "last_scripture/@version")
		  CurrentBook = SmartML.GetValueN(params, "last_scripture/@book")
		  CurrentChapter = SmartML.GetValueN(params, "last_scripture/@chapter")
		  CurrentFromVerse = SmartML.GetValueN(params, "last_scripture/@verse")
		  CurrentThruVerse = SmartML.GetValueN(params, "last_scripture/@thru")
		  VersesPerSlide = Max(0, Min(SmartML.GetValueN(params, "last_scripture/@verse_per_slide"), 5))
		  CharsPerSlide = Max(0, Min(SmartML.GetValueN(params, "last_scripture/@chars_per_slide"), 1000))
		  ShowVerseNumbers = SmartML.GetValueB(params, "last_scripture/@show_numbers", True, True)
		  FormatParagraph = ("paragraph" = SmartML.GetValue(params, "last_scripture/@format"))
		  
		  If VersesPerSlide = 0 Then VersesPerSlide = 3
		  If CharsPerSlide = 0 Then CharsPerSlide = 500
		  mCurrentBible = BibleFactory.GetBible(CurrentBibleName)
		  
		  If CurrentBible Is Nil Then
		    mCurrentBible = BibleFactory.GetBible(BibleFactory.BibleList.Pop)
		  End If
		  
		  Try
		    If Not CurrentBible.ValidateCitation(CurrentBook, CurrentChapter, CurrentFromVerse, CurrentThruVerse) Then
		      SetDefaultPassage
		    End If
		    NotifyBibleChanged
		    NotifyPassageChanged
		  Catch ex As NilObjectException
		    // NOE here is probably due to the iBible object; Abort
		    RuntimeException(ex).Message = "ScripturePickerController: NOE in BeginPickScripture"
		    For Each o As iScripturePicker In Observers
		      o.CloseScripturePicker
		    Next
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NotifyBibleChanged()
		  For Each o As iScripturePicker in Observers
		    o.ChangeBible(CurrentBible)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NotifyDisableUI(picker As iScripturePicker = Nil)
		  For Each o As iScripturePicker in Observers
		    o.DisableUI
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NotifyEnableUI()
		  For Each o As iScripturePicker in Observers
		    o.EnableUI
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NotifyFormatChanged()
		  For Each o As iScripturePicker in Observers
		    o.FormatAsParagraph(FormatParagraph)
		    o.VersesPerSlide(VersesPerSlide)
		    o.CharsPerSlide(CharsPerSlide)
		    o.ShowVerseNumbers(ShowVerseNumbers)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NotifyLiveDisplay(slide As XmlNode)
		  For Each r As ScriptureReceiver in Receivers
		    r.LiveDisplay(slide)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NotifyPassageChanged()
		  For Each o As iScripturePicker in Observers
		    o.ChangePassage(CurrentBook, CurrentChapter, CurrentFromVerse, CurrentThruVerse)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NotifyScriptureReceivers(slideGroup As XmlNode)
		  For Each r As ScriptureReceiver in Receivers
		    r.ScriptureSelected(slideGroup)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub registerObserver(newObserver As iScripturePicker)
		  if Observers.IndexOf(newObserver) < 0 Then
		    Observers.Append newObserver
		    NotifyDisableUI
		    NotifyBibleChanged
		    NotifyPassageChanged
		    NotifyFormatChanged
		    NotifyEnableUI
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub registerScriptureReceiver(receiver As ScriptureReceiver)
		  // Part of the ScriptureNotifier interface.
		  
		  If Receivers.IndexOf(receiver) < 0 Then
		    Receivers.Append receiver
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SaveState()
		  //++
		  // Store the current settings
		  //--
		  
		  Dim params As XmlElement
		  Dim CurrentBibleName As String
		  
		  params = App.MyMainSettings.DocumentElement
		  SmartML.SetValue(params, "last_scripture/@version", CurrentBible.Name)
		  SmartML.SetValueN(params, "last_scripture/@book", CurrentBook)
		  SmartML.SetValueN(params, "last_scripture/@chapter", CurrentChapter)
		  SmartML.SetValueN(params, "last_scripture/@verse", CurrentFromVerse)
		  SmartML.SetValueN(params, "last_scripture/@thru", CurrentThruVerse)
		  SmartML.SetValueN(params, "last_scripture/@verse_per_slide", VersesPerSlide)
		  SmartML.SetValueN(params, "last_scripture/@chars_per_slide", CharsPerSlide)
		  SmartML.SetValueB(params, "last_scripture/@show_numbers", ShowVerseNumbers)
		  
		  If FormatParagraph Then
		    SmartML.SetValue(params, "last_scripture/@format", "paragraph")
		  Else
		    SmartML.SetValue(params, "last_scripture/@format", "verse")
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ScripturePickerDone(sender As iScripturePicker)
		  SaveState
		  sender.CloseScripturePicker
		  unregisterObserver sender
		  If Not (ActiveSearchWindow Is Nil) Then ActiveSearchWindow = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SearchComplete(wnd As SearchWindow, result As SearchResult)
		  CurrentBook = result.book
		  CurrentChapter = result.chapter
		  CurrentFromVerse = result.verse
		  CurrentThruVerse = CurrentFromVerse
		  NotifyPassageChanged
		  wnd.Visible = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetDefaultPassage()
		  CurrentBook = 1
		  CurrentChapter = 1
		  CurrentFromVerse = 1
		  CurrentThruVerse = 1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub unregisterObserver(observer As iScripturePicker)
		  Dim i As Integer
		  
		  i = Observers.IndexOf(observer)
		  If i >= 0 Then
		    Observers.Remove i
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub unregisterScriptureReceiver(receiver As ScriptureReceiver)
		  // Part of the ScriptureNotifier interface.
		  Dim index As Integer
		  
		  index = Receivers.IndexOf(receiver)
		  If index >= 0 Then Receivers.Remove index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub UpdateFormat(sender As iScripturePicker)
		  
		  Dim changed As Boolean = False
		  
		  If sender.VersesPerSlide <> VersesPerSlide Then
		    changed = True
		    VersesPerSlide = sender.VersesPerSlide
		  End If
		  
		  If sender.CharsPerSlide <> CharsPerSlide Then
		    changed = True
		    CharsPerSlide = sender.CharsPerSlide
		  End If
		  
		  If sender.ShowVerseNumbers <> ShowVerseNumbers Then
		    changed = True
		    ShowVerseNumbers = Not ShowVerseNumbers
		  End If
		  
		  If sender.FormatAsParagraph <> FormatParagraph Then
		    changed = True
		    FormatParagraph = Not FormatParagraph
		  End If
		  
		  If changed Then NotifyFormatChanged
		End Sub
	#tag EndMethod


	#tag Note, Name = Index Base
		For this module, the base index for the Chapter and Verse references is 1
		It is the responsibility of the Observers to convert as necessary to 0-based
		(for example, to fill a listbox).
	#tag EndNote


	#tag Property, Flags = &h1
		Protected ActiveSearchWindow As SearchWindow
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CharsPerSlide As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mCurrentBible
			End Get
		#tag EndGetter
		CurrentBible As iBible
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected CurrentBook As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentChapter As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentFromVerse As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentThruVerse As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected FormatParagraph As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCurrentBible As iBible
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Observers() As iScripturePicker
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Receivers() As ScriptureReceiver
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected ShowVerseNumbers As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected VersesPerSlide As Integer
	#tag EndProperty


	#tag Constant, Name = cmdAddToSet, Type = String, Dynamic = False, Default = \"addscripture", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cmdDone, Type = String, Dynamic = False, Default = \"done", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cmdFormatChanged, Type = String, Dynamic = False, Default = \"formatchange", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cmdLiveDisplay, Type = String, Dynamic = False, Default = \"livedisplay", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cmdQuickLookup, Type = String, Dynamic = False, Default = \"quicklookup", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cmdSearch, Type = String, Dynamic = False, Default = \"search", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cmdSelectBible, Type = String, Dynamic = False, Default = \"selectbible", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cmdSelectBook, Type = String, Dynamic = False, Default = \"selectbook", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cmdSelectionChanged, Type = String, Dynamic = False, Default = \"selectionchanged", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
