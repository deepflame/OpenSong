#tag Window
Begin Window SearchWindow
   BackColor       =   16777215
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   1046
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   400
   MinimizeButton  =   True
   MinWidth        =   400
   Placement       =   0
   Resizeable      =   True
   Title           =   "Search"
   Visible         =   False
   Width           =   400
   Begin SEditField edt_search
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      BehaviorIndex   =   0
      Bold            =   False
      Border          =   True
      ControlOrder    =   0
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   12
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   False
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   29
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   371
      BehaviorIndex   =   0
   End
   Begin GroupBox grp_search_match
      AutoDeactivate  =   True
      BehaviorIndex   =   1
      Bold            =   False
      Caption         =   "Match:"
      ControlOrder    =   1
      Enabled         =   True
      Height          =   62
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   12
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   85
      Underline       =   False
      Visible         =   True
      Width           =   130
      BehaviorIndex   =   1
      Begin RadioButton rad_match_exact
         AutoDeactivate  =   True
         BehaviorIndex   =   2
         Bold            =   False
         Caption         =   "Exact word"
         ControlOrder    =   2
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_search_match"
         Italic          =   False
         Left            =   23
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   100
         Underline       =   False
         Value           =   True
         Visible         =   True
         Width           =   105
         BehaviorIndex   =   2
      End
      Begin RadioButton rad_match_begin
         AutoDeactivate  =   True
         BehaviorIndex   =   3
         Bold            =   False
         Caption         =   "Begins with"
         ControlOrder    =   3
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_search_match"
         Italic          =   False
         Left            =   23
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   120
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   105
         BehaviorIndex   =   3
      End
   End
   Begin GroupBox grp_search_words
      AutoDeactivate  =   True
      BehaviorIndex   =   4
      Bold            =   False
      Caption         =   "Verse must have:"
      ControlOrder    =   4
      Enabled         =   True
      Height          =   62
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   160
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   85
      Underline       =   False
      Visible         =   True
      Width           =   130
      BehaviorIndex   =   4
      Begin RadioButton rad_words_any
         AutoDeactivate  =   True
         BehaviorIndex   =   5
         Bold            =   False
         Caption         =   "Any word"
         ControlOrder    =   5
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_search_words"
         Italic          =   False
         Left            =   176
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   100
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   105
         BehaviorIndex   =   5
      End
      Begin RadioButton rad_words_all
         AutoDeactivate  =   True
         BehaviorIndex   =   6
         Bold            =   False
         Caption         =   "All words"
         ControlOrder    =   6
         Enabled         =   True
         Height          =   19
         HelpTag         =   ""
         Index           =   2147483648
         InitialParent   =   "grp_search_words"
         Italic          =   False
         Left            =   176
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   120
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   105
         BehaviorIndex   =   6
      End
   End
   Begin PushButton btn_search_search
      AutoDeactivate  =   True
      BehaviorIndex   =   7
      Bold            =   False
      Cancel          =   False
      Caption         =   "Search"
      ControlOrder    =   7
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   317
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   125
      Underline       =   False
      Visible         =   True
      Width           =   66
      BehaviorIndex   =   7
   End
   Begin ListBox lst_result
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      BehaviorIndex   =   8
      Bold            =   False
      ColumnCount     =   2
      ColumnsResizable=   False
      ColumnWidths    =   "100, 350%"
      ControlOrder    =   8
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   183
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   12
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   174
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   372
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      BehaviorIndex   =   8
   End
   Begin PushButton btn_search_ok
      AutoDeactivate  =   True
      BehaviorIndex   =   9
      Bold            =   False
      Cancel          =   False
      Caption         =   "Ok"
      ControlOrder    =   9
      Default         =   False
      Enabled         =   False
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   238
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   369
      Underline       =   False
      Visible         =   True
      Width           =   67
      BehaviorIndex   =   9
   End
   Begin PushButton btn_search_cancel
      AutoDeactivate  =   True
      BehaviorIndex   =   10
      Bold            =   False
      Cancel          =   True
      Caption         =   "Cancel"
      ControlOrder    =   10
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   317
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   369
      Underline       =   False
      Visible         =   True
      Width           =   67
      BehaviorIndex   =   10
   End
   Begin StaticText lbl_search_example
      AutoDeactivate  =   True
      BehaviorIndex   =   11
      Bold            =   False
      ControlOrder    =   11
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   12
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "To search for an exact phrase enclose it in double quotes, like ""Simon Peter"""
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   51
      Underline       =   False
      Visible         =   True
      Width           =   373
      BehaviorIndex   =   11
   End
   Begin StaticText lbl_search_caption
      AutoDeactivate  =   True
      BehaviorIndex   =   12
      Bold            =   ""
      ControlOrder    =   12
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   12
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Search in bible using keyword:"
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   10
      Top             =   6
      Underline       =   ""
      Visible         =   True
      Width           =   285
      BehaviorIndex   =   12
   End
   Begin StaticText lbl_search_result
      AutoDeactivate  =   True
      BehaviorIndex   =   13
      Bold            =   ""
      ControlOrder    =   13
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   12
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "%1 matches were found using the specified keyword(s)."
      TextAlign       =   0
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   10
      Top             =   152
      Underline       =   ""
      Visible         =   True
      Width           =   368
      BehaviorIndex   =   13
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  App.CenterInControlScreen Self
		  '++JRC
		  App.T.TranslateWindow Me, "scripture_search", App.TranslationFonts
		  '--
		  rad_match_exact.Value = True
		  rad_words_all.Value = True
		  
		  lbl_search_result.Caption = ""
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  HS.Resize
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Function combineResults(main() as SearchResult, add() as String) As SearchResult()
		  'method takes two sorted lists and combines them
		  Dim returnVal(), temp as SearchResult
		  Dim x,y, comp as Integer
		  
		  
		  'since both lists are sorted all you have to do is combine them
		  while x<= UBound(main) AND y<= UBound(add)
		    
		    temp= new SearchResult(add(y))
		    
		    comp= main(x).compareTo(temp)
		    
		    if comp=0 then
		      main(x).value= main(x).value+temp.value
		      
		      returnVal.Append(main(x))
		      
		      x=x+1
		      y=y+1
		    elseif comp<0 then
		      if rad_words_any.Value then
		        returnVal.Append(main(x))
		      end if
		      
		      x=x+1
		    else
		      if rad_words_any.Value then
		        returnVal.Append(temp)
		      end if
		      
		      y=y+1
		    end if
		    
		  wend
		  
		  if rad_words_any.Value then
		    while x<=UBound(main)
		      returnVal.Append(main(x))
		      x=x+1
		    wend
		    
		    while y<= UBound(add)
		      
		      temp= new SearchResult(add(y))
		      
		      returnVal.Append(temp)
		      y=y+1
		    wend
		  end if
		  
		  return returnVal
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  HS = New HalfSizer(Self)
		  // call the Window constructor, or Open events will not fire
		  Super.Window()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function mergeSort(list() as SearchResult, leftIndex as Integer, rightIndex as Integer) As SearchResult()
		  Dim left(), right(), returnVal() as SearchResult
		  Dim mid, x, y as Integer
		  
		  'break list into smaller parts
		  if rightIndex-leftIndex =0 then
		    returnVal.Append(list(leftIndex))
		    return returnVal
		  elseif rightIndex<leftIndex then
		    return returnVal
		  end if
		  
		  mid= leftIndex+ (rightIndex-leftIndex)/2
		  
		  'sort smaller lists
		  left= mergeSort(list, leftIndex, mid)
		  right= mergeSort(list, mid+1, rightIndex)
		  
		  'combine lists back together
		  while x<= UBound(left) AND y<= UBound(right)
		    
		    if left(x).value= right(y).value then
		      
		      returnVal.Append(left(x))
		      
		      x=x+1
		    elseif left(x).value > right(y).value then
		      
		      returnVal.Append(left(x))
		      
		      x=x+1
		    else
		      returnVal.Append(right(y))
		      
		      y=y+1
		    end if
		    
		  wend
		  
		  while x<=UBound(left)
		    returnVal.Append(left(x))
		    x=x+1
		  wend
		  
		  while y<= UBound(right)
		    returnVal.Append(right(y))
		    y=y+1
		  wend
		  
		  
		  return returnVal
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub search()
		  Dim words(), results(), verse(),  phrase, searchString as String
		  Dim x, y as Integer
		  Dim  temp As SearchResult
		  Dim reg as RegEx
		  Dim found as Boolean
		  
		  'used to tell the difference between list being empty b/c we haven't searched for any words yet and we have searched for words, but haven't found any matches
		  found=false
		  Self.MouseCursor = System.Cursors.Wait
		  lbl_search_result.Caption = ""
		  'get user input
		  searchString= edt_search.Text
		  
		  'remove old search results
		  lst_result.DeleteAllRows
		  Redim resultList(-1)
		  
		  'used to remove puncuation
		  reg= New RegEx
		  reg.SearchPattern= "[[:punct:]]"
		  reg.ReplacementPattern=""
		  reg.Options.ReplaceAllMatches=true
		  
		  
		  'get phrases (things in double quotes)
		  for x=2 to CountFields(searchString, Chr(34))
		    phrase= Trim(NthField(searchString, Chr(34), x))
		    
		    'remove from main searchString
		    searchString= ReplaceAll(searchString, phrase, "")
		    
		    'search for first word in phrase that is in index
		    y=1
		    do until y> CountFields(phrase, " ") Or Bible(bibleToSearch).validSearch(NthField(phrase, " ", y))=true
		      y=y+1
		      
		    loop
		    
		    if (y<=CountFields(phrase, " ")) then
		      
		      
		      results= Bible(bibleToSearch).search(NthField(phrase, " ", y), false)
		      
		      'remove results that don't contain the entire phrase
		      for y=0 to UBound(results)
		        temp= new SearchResult(results(y))
		        verse= Bible(bibleToSearch).GetPassage(Bible(bibleToSearch).GetBookName(temp.book), Str(temp.chapter), Str(temp.verse), Str(temp.verse))
		        
		        'remove puncuation
		        verse(1)= reg.Replace(verse(1))
		        
		        if InStr(verse(1), phrase)=0 then
		          results.Remove(y)
		          y=y-1
		        end if
		      next y
		      
		      if (UBound(results)>=0) then
		        
		        'add matches to list
		        if (rad_words_all.value AND found=false) then
		          for y=0 to UBound(results)
		            resultList.Append(new SearchResult(Val(Nthfield(results(y), " ", 1)), Val(Nthfield(results(y), " ", 2)), Val(Nthfield(results(y), " ", 3))))
		          next y
		        else
		          resultList= combineResults(resultList, results)
		        end if
		        
		        x=x+1
		        found=true
		      end if
		      
		    end if
		  next x
		  
		  'remove puncuation
		  searchString= reg.Replace(searchString)
		  
		  'get individual words
		  words= searchString.split(" ")
		  
		  'remove words that aren't indexed
		  for x=0 to UBound(words)
		    if Bible(bibleToSearch).validSearch(words(x))=false OR Len(words(x))<1 then
		      words.Remove(x)
		      x=x-1
		    end if
		  next x
		  
		  
		  if UBound(words) >= 0 then
		    
		    'find the word
		    results= Bible(bibleToSearch).search(words(0), rad_match_begin.value)
		    
		    if (found=false) then
		      for x=0 to UBound(results)
		        resultList.Append(new SearchResult(Val(Nthfield(results(x), " ", 1)), Val(Nthfield(results(x), " ", 2)), Val(Nthfield(results(x), " ", 3))))
		      next x
		      
		    else
		      resultList= combineResults(resultList, results)
		    end if
		    
		    for x=1 to UBound(words)
		      
		      'find the word
		      results= Bible(bibleToSearch).search(words(x), rad_match_begin.value)
		      
		      resultList= combineResults(resultList, results)
		      
		    next x
		    
		  end if
		  
		  'sort by priority
		  resultList= mergeSort(resultList, 0, UBound(resultList))
		  
		  'add results to list
		  for x=0 to UBound(resultList)
		    temp = resultList(x)
		    verse= bibleToSearch.GetPassage(temp.book, temp.chapter, temp.verse, temp.verse, False)
		    
		    lst_result.AddRow(bibleToSearch.GetCitation(temp.book, temp.chapter, temp.verse))
		    lst_result.Cell(x, 1)= Join(verse, "/")
		  next x
		  If x > 0 Then
		    lst_result.ListIndex = 0
		    lst_result.SetFocus
		  End If
		  
		  lbl_search_result.Caption = App.T.Translate("scripture_search/result/@caption", Str(x))
		  Self.MouseCursor = Nil
		  
		Catch ex
		  MsgBox "SearchWindow.Search: " + ex.message + ":" + str(ex.errornumber)
		  lbl_search_result.Caption = ""
		  Self.MouseCursor = Nil
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoSearch(controller As ScripturePickerController)
		  controllerObject = controller
		  bibleToSearch = controller.CurrentBible
		  //If edt_search.Text <> "" Then search // This updates everything to account for possible changes elsewhere
		  Self.Visible = True
		  Show
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SelectResult()
		  if lst_result.ListIndex > -1 Then
		    if controllerObject <> Nil Then
		      if UBound(resultList) >= lst_result.ListIndex Then
		        controllerObject.SearchComplete(Self, resultList(lst_result.ListIndex))
		      end if
		    end if
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected HS As HalfSizer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected controllerObject As ScripturePickerController
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected bibleToSearch As iBible
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected resultList() As SearchResult
	#tag EndProperty


#tag EndWindowCode

#tag Events edt_search
	#tag Event
		Sub GotFocus()
		  btn_search_search.Default = Me.Text <> ""
		  btn_search_ok.Default = Not btn_search_search.Default
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  btn_search_search.Enabled = False
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  btn_search_search.Enabled = Me.Text <> ""
		  btn_search_search.Default = Me.Text <> ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events grp_search_match
	#tag Event
		Sub Open()
		  If HS <> Nil Then HS.AddWidth Me, .5
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_match_exact
	#tag Event
		Sub GotFocus()
		  btn_search_search.Default = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_match_begin
	#tag Event
		Sub GotFocus()
		  btn_search_search.Default = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events grp_search_words
	#tag Event
		Sub Open()
		  If HS <> Nil Then HS.AddLeftWidth Me, .5, .5
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_words_any
	#tag Event
		Sub GotFocus()
		  btn_search_search.Default = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_words_all
	#tag Event
		Sub GotFocus()
		  btn_search_search.Default = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_search_search
	#tag Event
		Sub Action()
		  search
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_result
	#tag Event
		Sub GotFocus()
		  btn_search_search.default=false
		  btn_search_ok.default=true
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  SelectResult
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  btn_search_ok.Enabled = (Me.ListIndex > -1)
		  btn_search_ok.Default = (Me.ListIndex > -1)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_search_ok
	#tag Event
		Sub Action()
		  SelectResult
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_search_cancel
	#tag Event
		Sub Action()
		  Self.Visible = False
		End Sub
	#tag EndEvent
#tag EndEvents
