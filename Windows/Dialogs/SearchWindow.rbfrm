#tag Window
Begin Window SearchWindow
   Placement       =   0
   Width           =   477
   Height          =   409
   MinWidth        =   477
   MinHeight       =   400
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   1
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Search"
   Visible         =   "True"
   FullScreen      =   "False"
   MenuBarVisible  =   "True"
   CloseButton     =   "True"
   Resizeable      =   "True"
   LiveResize      =   "False"
   MaximizeButton  =   "True"
   MinimizeButton  =   "True"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   0
   Begin EditField edt_search
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   87
      Top             =   114
      Width           =   169
      Height          =   22
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Border          =   "True"
      Multiline       =   "False"
      ScrollbarHorizontal=   "False"
      ScrollbarVertical=   "True"
      Styled          =   "False"
      Password        =   "False"
      UseFocusRing    =   "True"
      TextColor       =   0
      BackColor       =   16777215
      Enabled         =   True
      Format          =   ""
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Text            =   ""
      Mask            =   ""
      ReadOnly        =   "False"
      LimitText       =   0
      AcceptTabs      =   "False"
      Alignment       =   0
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   0
   End
   Begin PushButton btn_search
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   280
      Top             =   114
      Width           =   66
      Height          =   22
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Search"
      Default         =   "True"
      Cancel          =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   1
   End
   Begin ListBox lst_result
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   12
      Top             =   165
      Width           =   449
      Height          =   186
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      ColumnCount     =   2
      ColumnWidths    =   "100, 350%"
      HasHeading      =   "True"
      UseFocusRing    =   "True"
      InitialValue    =   ""
      HeadingIndex    =   -1
      ScrollbarHorizontal=   "True"
      ScrollBarVertical=   "True"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      DefaultRowHeight=   -1
      _ScrollWidth    =   -1
      _ScrollOffset   =   0
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Hierarchical    =   "False"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      RequiresSelection=   ""
      SelectionType   =   0
      ColumnsResizable=   "False"
      AutoHideScrollbars=   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   2
   End
   Begin PushButton btn_ok
      Index           =   -2147483648
      ControlOrder    =   3
      Left            =   128
      Top             =   367
      Width           =   67
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Caption         =   "Ok"
      Default         =   "False"
      Cancel          =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   3
   End
   Begin PushButton btn_cancel
      Index           =   -2147483648
      ControlOrder    =   4
      Left            =   281
      Top             =   367
      Width           =   67
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Caption         =   "Cancel"
      Default         =   "False"
      Cancel          =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   4
   End
   Begin GroupBox grp_match
      Index           =   -2147483648
      ControlOrder    =   5
      Left            =   74
      Top             =   14
      Width           =   166
      Height          =   83
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Match:"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   5
      Begin RadioButton rad_match_exact
         Index           =   -2147483648
         ControlOrder    =   6
         Left            =   85
         Top             =   36
         Width           =   139
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "True"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Exact word"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "System"
         TextSize        =   0
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "True"
         InitialParent   =   "grp_match"
         BehaviorIndex   =   6
      End
      Begin RadioButton rad_match_begin
         Index           =   -2147483648
         ControlOrder    =   7
         Left            =   85
         Top             =   63
         Width           =   139
         Height          =   20
         LockLeft        =   "False"
         LockTop         =   "True"
         LockRight       =   "False"
         LockBottom      =   "False"
         TabPanelIndex   =   0
         Caption         =   "Begins with"
         Enabled         =   True
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "System"
         TextSize        =   0
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Value           =   "False"
         InitialParent   =   "grp_match"
         BehaviorIndex   =   7
      End
   End
   Begin RadioButton rad_words_all
      Index           =   -2147483648
      ControlOrder    =   8
      Left            =   276
      Top             =   63
      Width           =   148
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "All words"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "True"
      InitialParent   =   ""
      BehaviorIndex   =   8
   End
   Begin RadioButton rad_words_any
      Index           =   -2147483648
      ControlOrder    =   9
      Left            =   276
      Top             =   36
      Width           =   143
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Any word"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   9
   End
   Begin GroupBox grp_words
      Index           =   -2147483648
      ControlOrder    =   10
      Left            =   252
      Top             =   14
      Width           =   188
      Height          =   78
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Verse must have:"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   10
   End
   Begin StaticText lbl_example
      Index           =   -2147483648
      ControlOrder    =   11
      Left            =   46
      Top             =   144
      Width           =   373
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Text            =   "To search for an exact phrase enclose it in double quotes, like ""Simon Peter"""
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   11
   End
End
#tag EndWindow

#tag WindowCode
#tag Event
	Sub Open()
	  App.CenterInControlScreen Self
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
	  Dim list(), temp As SearchResult
	  Dim reg as RegEx
	  Dim found as Boolean
	  
	  'used to tell the difference between list being empty b/c we haven't searched for any words yet and we have searched for words, but haven't found any matches
	  found=false
	  
	  'get user input
	  searchString= edt_search.Text
	  
	  'remove old search results
	  lst_result.DeleteAllRows
	  
	  'used to remove puncuation
	  reg= New RegEx
	  reg.SearchPattern= "[^a-zA-z0-9\s]+"
	  reg.ReplacementPattern=""
	  reg.Options.ReplaceAllMatches=true
	  
	  
	  'get phrases (things in double quotes)
	  for x=2 to CountFields(searchString, Chr(34))
	    phrase= Trim(NthField(searchString, Chr(34), x))
	    
	    'remove from main searchString
	    searchString= ReplaceAll(searchString, phrase, "")
	    
	    'search for first word in phrase that is in index
	    y=1
	    do until y> CountFields(phrase, " ") Or App.MyBible.validSearch(NthField(phrase, " ", y))=true
	      y=y+1
	      
	    loop
	    
	    if (y<=CountFields(phrase, " ")) then
	      
	      
	      results=App.MyBible.search(NthField(phrase, " ", y), false)
	      
	      'remove results that don't contain the entire phrase
	      for y=0 to UBound(results)
	        temp= new SearchResult(results(y))
	        verse= App.MyBible.GetPassage(App.MyBible.GetStdBookName(temp.book), Str(temp.chapter), Str(temp.verse), Str(temp.verse))
	        
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
	            list.Append(new SearchResult(Val(Nthfield(results(y), " ", 1)), Val(Nthfield(results(y), " ", 2)), Val(Nthfield(results(y), " ", 3))))
	          next y
	        else
	          list= combineResults(list, results)
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
	    if App.MyBible.validSearch(words(x))=false OR Len(words(x))<1 then
	      words.Remove(x)
	      x=x-1
	    end if
	  next x
	  
	  
	  if UBound(words) >= 0 then
	    
	    'find the word
	    results= App.MyBible.search(words(0), rad_match_begin.value)
	    
	    if (found=false) then
	      for x=0 to UBound(results)
	        list.Append(new SearchResult(Val(Nthfield(results(x), " ", 1)), Val(Nthfield(results(x), " ", 2)), Val(Nthfield(results(x), " ", 3))))
	      next x
	      
	    else
	      list= combineResults(list, results)
	    end if
	    
	    for x=1 to UBound(words)
	      
	      'find the word
	      results= App.MyBible.search(words(x), rad_match_begin.value)
	      
	      list= combineResults(list, results)
	      
	    next x
	    
	  end if
	  
	  'sort by priority
	  list= mergeSort(list, 0, UBound(list))
	  
	  'add results to list
	  for x=0 to UBound(list)
	    
	    verse= App.MyBible.GetPassage(App.MyBible.GetBookName(list(x).book), Str(list(x).chapter), Str(list(x).verse), Str(list(x).verse))
	    
	    lst_result.AddRow(App.MyBible.GetBookName(list(x).book) + " "+ Str(list(x).chapter)+ ":" + Str(list(x).verse))
	    lst_result.Cell(x, 1)= verse(1)
	  next x
	  Catch ex
	    MsgBox "SearchWindow.Search: " + ex.message + ":" + str(ex.errornumber)
	    Return
	End Sub
#tag EndMethod


#tag EndWindowCode

#tag Events edt_search
#tag Event
	Function KeyDown(Key As String) As Boolean
	  If Asc(Key) = 13 Or Asc(Key) = 10 Then
	    search
	    Return True
	  End If
	End Function
#tag EndEvent
#tag EndEvents
#tag Events btn_search
#tag Event
	Sub Action()
	  search
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events lst_result
#tag Event
	Sub DoubleClick()
	  Dim verse as String
	  
	  if (lst_result.ListIndex>=0) then
	    verse= lst_result.Cell(lst_result.ListIndex, 0)
	    
	    ScripturePickerWindow.SetSearchResult(verse)
	  end if
	  
	  close
	End Sub
#tag EndEvent
#tag Event
	Sub GotFocus()
	  btn_search.default=false
	  btn_ok.default=true
	End Sub
#tag EndEvent
#tag Event
	Sub LostFocus()
	  btn_search.default=true
	  btn_ok.Default=false
	End Sub
#tag EndEvent
#tag Event
	Sub Open()
	  Me.Heading(-1)= "Verse"+Chr(9)+ "Text"
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_ok
#tag Event
	Sub Action()
	  Dim verse as String
	  
	  if (lst_result.ListIndex>=0) then
	    verse= lst_result.Cell(lst_result.ListIndex, 0)
	    
	    ScripturePickerWindow.SetSearchResult(verse)
	  end if
	  
	  close
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_cancel
#tag Event
	Sub Action()
	  
	  close
	End Sub
#tag EndEvent
#tag EndEvents
