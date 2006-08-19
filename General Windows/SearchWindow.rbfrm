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
      AcceptTabs      =   "False"
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   16777215
      BalloonHelp     =   ""
      Bold            =   "False"
      Border          =   "True"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   87
      LimitText       =   0
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      Mask            =   ""
      MultiLine       =   "False"
      Password        =   "False"
      ReadOnly        =   "False"
      ScrollBar       =   "True"
      ScrollBarHorizontal=   "False"
      ScrollBarVertical=   "True"
      Styled          =   "False"
      TabPanelIndex   =   0
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   114
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   169
      ControlOrder    =   0
      BehaviorIndex   =   10
   End
   Begin PushButton btn_search
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Search"
      Default         =   "True"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   280
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   114
      Underline       =   "False"
      Visible         =   "True"
      Width           =   66
      ControlOrder    =   1
      BehaviorIndex   =   0
   End
   Begin ListBox lst_result
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ColumnCount     =   2
      ColumnsResizable=   "False"
      ColumnWidths    =   "100, 350%"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      DisabledBalloonHelp=   ""
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      Enabled         =   "True"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   "True"
      HeadingIndex    =   -1
      Height          =   186
      HelpTag         =   ""
      Hierarchical    =   "False"
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   12
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      ScrollBarHorizontal=   "True"
      ScrollBarVertical=   "True"
      ScrollPosition  =   0
      ScrollPositionX =   0
      SelectionType   =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   165
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   449
      ControlOrder    =   2
      BehaviorIndex   =   1
   End
   Begin PushButton btn_ok
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Ok"
      Default         =   "False"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   128
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   367
      Underline       =   "False"
      Visible         =   "True"
      Width           =   67
      ControlOrder    =   3
      BehaviorIndex   =   2
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Cancel"
      Default         =   "False"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   281
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   367
      Underline       =   "False"
      Visible         =   "True"
      Width           =   67
      ControlOrder    =   4
      BehaviorIndex   =   3
   End
   Begin GroupBox grp_match
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Match:"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   83
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   74
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   14
      Underline       =   "False"
      Visible         =   "True"
      Width           =   166
      ControlOrder    =   5
      BehaviorIndex   =   4
      Begin RadioButton rad_match_exact
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Exact word"
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_match"
         Italic          =   "False"
         Left            =   85
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   36
         Underline       =   "False"
         Value           =   "True"
         Visible         =   "True"
         Width           =   139
         ControlOrder    =   6
         BehaviorIndex   =   5
      End
      Begin RadioButton rad_match_begin
         AutoDeactivate  =   "True"
         BalloonHelp     =   ""
         Bold            =   "False"
         Caption         =   "Begins with"
         DisabledBalloonHelp=   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_match"
         Italic          =   "False"
         Left            =   85
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   63
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   139
         ControlOrder    =   7
         BehaviorIndex   =   6
      End
   End
   Begin RadioButton rad_words_all
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "All words"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   276
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   63
      Underline       =   "False"
      Value           =   "True"
      Visible         =   "True"
      Width           =   148
      ControlOrder    =   8
      BehaviorIndex   =   7
   End
   Begin RadioButton rad_words_any
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Any word"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   276
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   36
      Underline       =   "False"
      Value           =   "False"
      Visible         =   "True"
      Width           =   143
      ControlOrder    =   9
      BehaviorIndex   =   8
   End
   Begin GroupBox grp_words
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Verse must have:"
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   78
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   252
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   14
      Underline       =   "False"
      Visible         =   "True"
      Width           =   188
      ControlOrder    =   10
      BehaviorIndex   =   9
   End
   Begin StaticText lbl_example
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   46
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "True"
      MultiLine       =   "False"
      TabPanelIndex   =   0
      Text            =   "To search for an exact phrase enclose it in double quotes, like ""Simon Peter"""
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   144
      Underline       =   "False"
      Visible         =   "True"
      Width           =   373
      ControlOrder    =   11
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
