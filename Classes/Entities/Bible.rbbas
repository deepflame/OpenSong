#tag Class
Protected Class Bible
Implements iBible
	#tag Method, Flags = &h1
		Protected Function addBNames(bibleFile as FolderItem) As Boolean
		  Dim list As New XmlNodeList
		  Dim x as Integer
		  Dim lan as String
		  Dim node as XmlNode
		  Dim file as FolderItem
		  Dim bookNames as XmlDocument
		  Dim options(0), choice as String
		  Dim out as TextOutputStream
		  
		  'load bnames.xml
		  file= App.AppFolder.Child("OpenSong Settings").Child("bnames.xml")
		  if file.Exists=false then
		    InputBox.Message App.T.Translate("bible/errors/load2", bibleFile.Name, _
		    App.T.Translate("bible/errors/missing_bnames"))
		    //
		    // Let's be a little sneaky and set the bnames to the book numbers.
		    // Why not?  The user will find out quickly enough that there is an issue,
		    // and the error message has already been displayed.
		    //
		    Try
		      list= Scripture.xql("/XMLBIBLE/BIBLEBOOK")
		      For x = 0 To List.Length - 1
		        SmartML.SetValue list.Item(x), "@bname", SmartML.GetValue(list.Item(x), "@bnumber")
		      Next x
		      ShouldGenerateIndex = False
		      Return True // OK to use, but return now to skip writing the file
		    Catch
		      Scripture = Nil
		    End Try
		    return false
		  end if
		  
		  bookNames= new XmlDocument(file)
		  
		  'get a list of available languages
		  list= bookNames.xql("/BOOKNAMES/ID")
		  
		  for x=0 to list.Length-1
		    lan=list.Item(x).getAttribute("descr")
		    
		    if lan.Left(2)<>"x-" then
		      options.append(lan)
		    end if
		  next x
		  
		  'let user pick language
		  choice= InputBox.Pick(App.T.Translate("bible/messages/bnames"), options)
		  
		  'if they canceled
		  if (choice="") then return false
		  
		  'add bname and bsname attributes to the bible
		  list= Scripture.xql("/XMLBIBLE/BIBLEBOOK")
		  
		  for x=0 to list.Length-1
		    node= bookNames.xql("/BOOKNAMES/ID[@descr='"+choice+"']/BOOK[@bnumber='"+list.Item(x).getAttribute("bnumber")+"']").Item(0)
		    list.Item(x).setAttribute("bname", node.FirstChild.Value)
		    list.Item(x).setAttribute("bsname", node.getAttribute("bshort"))
		  next x
		  
		  'save the changes
		  If InputBox.AskYN(App.T.Translate("bible/messages/save")) Then
		    out= TextOutputStream.Create(bibleFile)
		    Scripture.PreserveWhitespace = True
		    out.Write(Scripture.toString)
		    out.close
		    ShouldGenerateIndex = True
		  End If
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function combineLists(one() as String, two() as String) As String()
		  'takes two sorted lists and combines them
		  
		  Dim returnVal(-1) as String
		  Dim left, right as SearchResult
		  Dim x,y, comp as Integer
		  
		  'since both lists are sorted all you have to do is combine them
		  while x<= UBound(one) AND y<= UBound(two)
		    
		    
		    left= new SearchResult(one(x))
		    right= new SearchResult(two(y))
		    
		    comp= left.compareTo(right)
		    
		    if comp=0 then
		      
		      returnVal.Append(one(x))
		      
		      x=x+1
		      y=y+1
		    elseif comp<0 then
		      returnVal.Append(one(x))
		      
		      x=x+1
		    else
		      
		      returnVal.Append(two(y))
		      
		      y=y+1
		    end if
		    
		  wend
		  
		  
		  while x<=UBound(one)
		    returnVal.Append(one(x))
		    x=x+1
		  wend
		  
		  while y<= UBound(two)
		    returnVal.Append(two(y))
		    y=y+1
		  wend
		  
		  
		  return returnVal
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  CanSearch = False
		  ShouldGenerateIndex = False
		  
		  StdBooks.Append "Genesis"
		  WebBooks.Append "GEN"
		  VersesInChapters.Append "031 025 024 026 032 022 024 022 029 032 032 020 018 024 021 016 027 033 038 018 034 024 020 067 034 035 046 022 035 043 055 032 020 031 029 043 036 030 023 023 057 038 034 034 028 034 031 022 033 026 "
		  
		  StdBooks.Append "Exodus"
		  WebBooks.Append "EXOD"
		  VersesInChapters.Append "022 025 022 031 023 030 025 032 035 029 010 051 022 031 027 036 016 027 025 026 036 031 033 018 040 037 021 043 046 038 018 035 023 035 035 038 029 031 043 038 "
		  
		  StdBooks.Append "Leviticus"
		  WebBooks.Append "LEV"
		  VersesInChapters.Append "017 016 017 035 019 030 038 036 024 020 047 008 059 057 033 034 016 030 037 027 024 033 044 023 055 046 034 "
		  
		  StdBooks.Append "Numbers"
		  WebBooks.Append "NUM"
		  VersesInChapters.Append "054 034 051 049 031 027 089 026 023 036 035 016 033 045 041 050 013 032 022 029 035 041 030 025 018 065 023 031 040 016 054 042 056 029 034 013 "
		  
		  StdBooks.Append "Deuteronomy"
		  WebBooks.Append "DEUT"
		  VersesInChapters.Append "046 037 029 049 033 025 026 020 029 022 032 032 018 029 023 022 020 022 021 020 023 030 025 022 019 019 026 068 029 020 030 052 029 012 "
		  
		  StdBooks.Append "Joshua"
		  WebBooks.Append "JOSH"
		  VersesInChapters.Append "018 024 017 024 015 027 026 035 027 043 023 024 033 015 063 010 018 028 051 009 045 034 016 033 "
		  
		  StdBooks.Append "Judges"
		  WebBooks.Append "JUDG"
		  VersesInChapters.Append "036 023 031 024 031 040 025 035 057 018 040 015 025 020 020 031 013 031 030 048 025 "
		  
		  StdBooks.Append "Ruth"
		  WebBooks.Append "RUTH"
		  VersesInChapters.Append "022 023 018 022 "
		  
		  StdBooks.Append "1 Samuel"
		  WebBooks.Append "1SAM"
		  VersesInChapters.Append "028 036 021 022 012 021 017 022 027 027 015 025 023 052 035 023 058 030 024 042 015 023 029 022 044 025 012 025 011 031 013 "
		  
		  StdBooks.Append "2 Samuel"
		  WebBooks.Append "2SAM"
		  VersesInChapters.Append "027 032 039 012 025 023 029 018 013 019 027 031 039 033 037 023 029 033 043 026 022 051 039 025 "
		  
		  StdBooks.Append "1 Kings"
		  WebBooks.Append "1KGS"
		  VersesInChapters.Append "053 046 028 034 018 038 051 066 028 029 043 033 034 031 034 034 024 046 021 043 029 053 "
		  
		  StdBooks.Append "2 Kings"
		  WebBooks.Append "2KGS"
		  VersesInChapters.Append "018 025 027 044 027 033 020 029 037 036 021 021 025 029 038 020 041 037 037 021 026 020 037 020 030 "
		  
		  StdBooks.Append "1 Chronicles"
		  WebBooks.Append "1CHRON"
		  VersesInChapters.Append "054 055 024 043 026 081 040 040 044 014 047 040 014 017 029 043 027 017 019 008 030 019 032 031 031 032 034 021 030 "
		  
		  StdBooks.Append "2 Chronicles"
		  WebBooks.Append "2CHRON"
		  VersesInChapters.Append "017 018 017 022 014 042 022 018 031 019 023 016 022 015 019 014 019 034 011 037 020 012 021 027 028 023 009 027 036 027 021 033 025 033 027 023 "
		  
		  StdBooks.Append "Ezra"
		  WebBooks.Append "EZRA"
		  VersesInChapters.Append "011 070 013 024 017 022 028 036 015 044 "
		  
		  StdBooks.Append "Nehemiah"
		  WebBooks.Append "NEH"
		  VersesInChapters.Append "011 020 032 023 019 019 073 018 038 039 036 047 031 "
		  
		  StdBooks.Append "Esther"
		  WebBooks.Append "ESTH"
		  VersesInChapters.Append "022 023 015 017 014 014 010 017 032 003 "
		  
		  StdBooks.Append "Job"
		  WebBooks.Append "JOB"
		  VersesInChapters.Append "022 013 026 021 027 030 021 022 035 022 020 025 028 022 035 022 016 021 029 029 034 030 017 025 006 014 023 028 025 031 040 022 033 037 016 033 024 041 030 024 034 017 "
		  
		  StdBooks.Append "Psalms"
		  WebBooks.Append "PS"
		  VersesInChapters.Append "006 012 008 008 012 010 017 009 020 018 007 008 006 007 005 011 015 050 014 009 013 031 006 010 022 012 014 009 011 012 024 011 022 022 028 012 040 022 013 017 013 011 005 026 017 011 009 014 020 023 019 009 006 007 023 013 011 011 017 012 008 012 011 010 013 020 007 035 036 005 024 020 028 023 010 012 020 072 013 019 016 008 018 012 013 017 007 018 052 017 016 015 005 023 011 013 012 009 009 005 008 028 022 035 045 048 043 013 031 007 010 010 009 008 018 019 002 029 176 007 008 009 004 008 005 006 005 006 008 008 003 018 003 003 021 026 009 008 024 013 010 007 012 015 021 010 020 014 009 006 "
		  
		  StdBooks.Append "Proverbs"
		  WebBooks.Append "PROV"
		  VersesInChapters.Append "033 022 035 027 023 035 027 036 018 032 031 028 025 035 033 033 028 024 029 030 031 029 035 034 028 028 027 028 027 033 031 "
		  
		  StdBooks.Append "Ecclesiastes"
		  WebBooks.Append "ECC"
		  VersesInChapters.Append "018 026 022 016 020 012 029 017 018 020 010 014 "
		  
		  StdBooks.Append "Song of Solomon"
		  WebBooks.Append "SONG"
		  VersesInChapters.Append "017 017 011 016 016 013 013 014 "
		  
		  StdBooks.Append "Isaiah"
		  WebBooks.Append "ISA"
		  VersesInChapters.Append "031 022 026 006 030 013 025 022 021 034 016 006 022 032 009 014 014 007 025 006 017 025 018 023 012 021 013 029 024 033 009 020 024 017 010 022 038 022 008 031 029 025 028 028 025 013 015 022 026 011 023 015 012 017 013 012 021 014 021 022 011 012 019 012 025 024 "
		  
		  StdBooks.Append "Jeremiah"
		  WebBooks.Append "JER"
		  VersesInChapters.Append "019 037 025 031 031 030 034 022 026 025 023 017 027 022 021 021 027 023 015 018 014 030 040 010 038 024 022 017 032 024 040 044 026 022 019 032 021 028 018 016 018 022 013 030 005 028 007 047 039 046 064 034 "
		  
		  StdBooks.Append "Lamentations"
		  WebBooks.Append "LAM"
		  VersesInChapters.Append "022 022 066 022 022 "
		  
		  StdBooks.Append "Ezekiel"
		  WebBooks.Append "EZEK"
		  VersesInChapters.Append "028 010 027 017 017 014 027 018 011 022 025 028 023 023 008 063 024 032 014 049 032 031 049 027 017 021 036 026 021 026 018 032 033 031 015 038 028 023 029 049 026 020 027 031 025 024 023 035 "
		  
		  StdBooks.Append "Daniel"
		  WebBooks.Append "DAN"
		  VersesInChapters.Append "021 049 030 037 031 028 028 027 027 021 045 013 "
		  
		  StdBooks.Append "Hosea"
		  WebBooks.Append "HOSEA"
		  VersesInChapters.Append "011 023 005 019 015 011 016 014 017 015 012 014 016 009 "
		  
		  StdBooks.Append "Joel"
		  WebBooks.Append "JOEL"
		  VersesInChapters.Append "020 032 021 "
		  
		  StdBooks.Append "Amos"
		  WebBooks.Append "AMOS"
		  VersesInChapters.Append "015 016 015 013 027 014 017 014 015 "
		  
		  StdBooks.Append "Obadiah"
		  WebBooks.Append "OBAD"
		  VersesInChapters.Append "021 "
		  
		  StdBooks.Append "Jonah"
		  WebBooks.Append "JONAH"
		  VersesInChapters.Append "017 010 010 011 "
		  
		  StdBooks.Append "Micah"
		  WebBooks.Append "MICAH"
		  VersesInChapters.Append "016 013 012 013 015 016 020 "
		  
		  StdBooks.Append "Nahum"
		  WebBooks.Append "NAHUM"
		  VersesInChapters.Append "015 013 019 "
		  
		  StdBooks.Append "Habakkuk"
		  WebBooks.Append "HAB"
		  VersesInChapters.Append "017 020 019 "
		  
		  StdBooks.Append "Zephaniah"
		  WebBooks.Append "ZEPH"
		  VersesInChapters.Append "018 015 020 "
		  
		  StdBooks.Append "Haggai"
		  WebBooks.Append "HAG"
		  VersesInChapters.Append "015 023 "
		  
		  StdBooks.Append "Zechariah"
		  WebBooks.Append "ZECH"
		  VersesInChapters.Append "021 013 010 014 011 015 014 023 017 012 017 014 009 021 "
		  
		  StdBooks.Append "Malachi"
		  WebBooks.Append "MAL"
		  VersesInChapters.Append "014 017 018 006 "
		  
		  StdBooks.Append "Matthew"
		  WebBooks.Append "MATT"
		  VersesInChapters.Append "025 023 017 025 048 034 029 034 038 042 030 050 058 036 039 028 027 035 030 034 046 046 039 051 046 075 066 020 "
		  
		  StdBooks.Append "Mark"
		  WebBooks.Append "MARK"
		  VersesInChapters.Append "045 028 035 041 043 056 037 038 050 052 033 044 037 072 047 020 "
		  
		  StdBooks.Append "Luke"
		  WebBooks.Append "LUKE"
		  VersesInChapters.Append "080 052 038 044 039 049 050 056 062 042 054 059 035 035 032 031 037 043 048 047 038 071 056 053 "
		  
		  StdBooks.Append "John"
		  WebBooks.Append "JOHN"
		  VersesInChapters.Append "051 025 036 054 047 071 053 059 041 042 057 050 038 031 027 033 026 040 042 031 025 "
		  
		  StdBooks.Append "Acts"
		  WebBooks.Append "ACTS"
		  VersesInChapters.Append "026 047 026 037 042 015 060 040 043 048 030 025 052 028 041 040 034 028 041 038 040 030 035 027 027 032 044 031 "
		  
		  StdBooks.Append "Romans"
		  WebBooks.Append "ROM"
		  VersesInChapters.Append "032 029 031 025 021 023 025 039 033 021 036 021 014 023 033 027 "
		  
		  StdBooks.Append "1 Corinthians"
		  WebBooks.Append "1COR"
		  VersesInChapters.Append "031 016 023 021 013 020 040 013 027 033 034 031 013 040 058 024 "
		  
		  StdBooks.Append "2 Corinthians"
		  WebBooks.Append "2COR"
		  VersesInChapters.Append "024 017 018 018 021 018 016 024 015 018 033 021 014 "
		  
		  StdBooks.Append "Galatians"
		  WebBooks.Append "GAL"
		  VersesInChapters.Append "024 021 029 031 026 018 "
		  
		  StdBooks.Append "Ephesians"
		  WebBooks.Append "EPH"
		  VersesInChapters.Append "023 022 021 032 033 024 "
		  
		  StdBooks.Append "Philippians"
		  WebBooks.Append "PHIL"
		  VersesInChapters.Append "030 030 021 023 "
		  
		  StdBooks.Append "Colossians"
		  WebBooks.Append "COL"
		  VersesInChapters.Append "029 023 025 018 "
		  
		  StdBooks.Append "1 Thessalonians"
		  WebBooks.Append "1THES"
		  VersesInChapters.Append "010 020 013 018 028 "
		  
		  StdBooks.Append "2 Thessalonians"
		  WebBooks.Append "2THES"
		  VersesInChapters.Append "012 017 018 "
		  
		  StdBooks.Append "1 Timothy"
		  WebBooks.Append "1TIM"
		  VersesInChapters.Append "020 015 016 016 025 021 "
		  
		  StdBooks.Append "2 Timothy"
		  WebBooks.Append "2TIM"
		  VersesInChapters.Append "018 026 017 022 "
		  
		  StdBooks.Append "Titus"
		  WebBooks.Append "TIT"
		  VersesInChapters.Append "016 015 015 "
		  
		  StdBooks.Append "Philemon"
		  WebBooks.Append "PHILEM"
		  VersesInChapters.Append "025 "
		  
		  StdBooks.Append "Hebrews"
		  WebBooks.Append "HEB"
		  VersesInChapters.Append "014 018 019 016 014 020 028 013 028 039 040 029 025 "
		  
		  StdBooks.Append "James"
		  WebBooks.Append "JAS"
		  VersesInChapters.Append "027 026 018 017 020 "
		  
		  StdBooks.Append "1 Peter"
		  WebBooks.Append "1PET"
		  VersesInChapters.Append "025 025 022 019 014 "
		  
		  StdBooks.Append "2 Peter"
		  WebBooks.Append "2PET"
		  VersesInChapters.Append "021 022 018 "
		  
		  StdBooks.Append "1 John"
		  WebBooks.Append "1JOHN"
		  VersesInChapters.Append "010 029 024 021 021 "
		  
		  StdBooks.Append "2 John"
		  WebBooks.Append "2JOHN"
		  VersesInChapters.Append "013 "
		  
		  StdBooks.Append "3 John"
		  WebBooks.Append "3JOHN"
		  VersesInChapters.Append "014 "
		  
		  StdBooks.Append "Jude"
		  WebBooks.Append "JUDE"
		  VersesInChapters.Append "025 "
		  
		  StdBooks.Append "Revelation"
		  WebBooks.Append "REV"
		  VersesInChapters.Append "020 029 022 011 014 017 017 013 021 011 019 017 018 020 008 021 018 024 021 015 027 021 "
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ConvVal(intVal as Integer) As Integer
		  '
		  ' Given the "rank" of a character from a Roman numeral, return its equivalent integer
		  '
		  ' EMP, 2005
		  '
		  dim Conv As Integer
		  Select Case intVal
		  Case 7
		    Conv = 1000
		  Case 6
		    Conv = 500
		  Case 5
		    Conv = 100
		  Case 4
		    Conv = 50
		  Case 3
		    Conv= 10
		  Case 2
		    Conv= 5
		  Case 1
		    Conv = 1
		  End Select
		  return Conv
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ErrorString() As String
		  // Part of the iBible interface.
		  Return ErrorString
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FromRoman(strRoman as String) As integer
		  '
		  ' Convert Roman numeral to Integer
		  '
		  ' EMP, 2005
		  '
		  ' Code liberally lifted from samples found on the Net
		  '
		  Dim i As Integer
		  Dim strLen As Integer
		  Dim intChar As Integer
		  Dim intNextChar As Integer
		  Dim intNextChar1 As Integer
		  Dim tmpVal As Integer
		  Dim RomanChars as String
		  Dim RomanRegex as String
		  Dim myRegex as new RegEx
		  Dim reOpt as new RegExOptions
		  Dim reMatch as new RegExMatch
		  
		  //Validate we have a real Roman Numeral
		  RomanRegex = "^ m* (?:d?c{0,3}|c[dm]) (?:l?x{0,3}|x[lc]) (?:v?i{0,3}|i[vx]) $ "'
		  RomanRegex = replaceall(RomanRegex," ","") //Regex stolen from perl code that had the /x option on the regex
		  myRegex.SearchPattern = RomanRegex
		  reopt.CaseSensitive = False
		  myRegex.Options = reOpt
		  try
		    reMatch = myRegex.Search(strRoman)
		    if reMatch = Nil then return -1
		  exception GrepErr as RegExException
		    InputBox.Message App.T.Translate("bible/errors/roman", strRoman, GrepErr.Message)
		    return -1
		  end try
		  
		  
		  RomanChars = "ivxlcdm" // valid characters in ascending order
		  strRoman = LowerCase(strRoman)
		  
		  If InStr(strRoman, "iiii") > 0 Or InStr(strRoman, "xxxx") > 0_
		    Or InStr(strRoman, "cccc") > 0 Or InStr(strRoman, "vv") > 0_
		    Or InStr(strRoman, "ll") > 0 Or InStr(strRoman, "dd") > 0 Then
		    Return -1
		  End If
		  
		  strLen = Len(strRoman)
		  Dim pos As Integer
		  Dim tmpStr as String
		  tmpStr = ""
		  For i = 1 To strLen
		    pos = InStr(RomanChars, mid(strRoman, i, 1))
		    tmpStr = tmpStr + str(pos)
		    'Select Case Mid(strRoman, i, 1)
		    'Case "i"
		    'Mid$(strRoman, i, 1) = 1
		    'Case "v"
		    'Mid$(strRoman, i, 1) = 2
		    'Case "x"
		    'Mid$(strRoman, i, 1) = 3
		    'Case "l"
		    'Mid$(strRoman, i, 1) = 4
		    'Case "c"
		    'Mid$(strRoman, i, 1) = 5
		    'Case "d"
		    'Mid$(strRoman, i, 1) = 6
		    'Case "m"
		    'Mid$(strRoman, i, 1) = 7
		    'End Select
		  Next
		  
		  strRoman = tmpStr
		  For i = 1 To strLen
		    intChar = val(Mid(strRoman, i, 1))
		    
		    If i < strLen Then
		      intNextChar = val(Mid(strRoman, i + 1, 1))
		      If i < strLen - 1 Then
		        intNextChar1 = val(Mid(strRoman, i + 2, 1))
		      Else
		        intNextChar1 = 0
		      End If
		      
		      Select Case intChar
		      Case 7
		        GetTmpVal intChar, intNextChar, intNextChar1, tmpVal, i, 1000
		      Case 6
		        GetTmpVal intChar, intNextChar, intNextChar1, tmpVal, i, 500
		      Case 5
		        GetTmpVal intChar, intNextChar, intNextChar1, tmpVal, i, 100
		      Case 4
		        GetTmpVal intChar, intNextChar, intNextChar1, tmpVal, i, 50
		      Case 3
		        GetTmpVal intChar, intNextChar, intNextChar1, tmpVal, i, 10
		      Case 2
		        GetTmpVal intChar, intNextChar, intNextChar1, tmpVal, i, 5
		      Case 1
		        GetTmpVal intChar, intNextChar, intNextChar1, tmpVal, i, 1
		      End Select
		    Else
		      tmpVal = tmpVal + ConvVal(intChar)
		    End If
		    If tmpVal = -1 Then Exit
		  Next
		  Return tmpVal
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub genIndex(file As FolderItem)
		  'bhenny- create index of words to use for searches
		  //++
		  // Bug 1449454: Index generation dies if there is a chapter
		  // with no content.  Added individual XmlNode variables for
		  // book, chapter and verse since the use of a single variable
		  // would die if a book or chapter had no children.
		  //--
		  Dim newFile as FolderItem
		  Dim out as TextOutputStream
		  Dim BookNode, ChapNode, VerseNode As XmlNode
		  Dim sSplit, aSplit(), verse, location, fileName, sBook, sChap, sVer as String
		  Dim reg as RegEx
		  Dim x,y,  book, chap, ver, bound as Integer
		  Dim root, wordNode as TreeNode
		  Dim Progress As Double
		  Dim BookName As String
		  Dim Passage As String
		  Dim wProgress As IndexProgress
		  
		  // Only do this if allowed
		  If Not ShouldGenerateIndex Then Return
		  
		  App.DebugWriter.Write "Bible.genIndex: Enter"
		  
		  'clear index
		  reDim index(-1)
		  reDim notIndexed(-1)
		  
		  IndexDict = New Dictionary
		  
		  'create folder if necessary
		  newFile= New FolderItem(file.Parent.child("indexes"))
		  if Not newFile.Exists then
		    '++JRC Prompt before creating index
		    If NOT InputBox.AskYN(App.T.Translate("module/generate_index", file.Name)) Then Return
		    
		    newFile.CreateAsFolder
		    If Not newFile.Exists Then
		      ShouldGenerateIndex = False
		      App.DebugWriter.Write "Bible.genindex: Exit (can't create index folder), error code is " + CStr(newFile.LastErrorCode)
		      Return
		    End If
		  end if
		  
		  //strip file extension from file name
		  fileName=file.Name
		  x=InStr(filename, ".")
		  if x>0 then
		    fileName= Left(fileName, x-1)
		  end if
		  
		  'create file
		  newFile=newFile.Child(fileName+".ind")
		  if newFile.Exists=true then
		    try
		      loadIndex(newFile) 'if index exists then just load it
		      App.DebugWriter.Write "Bible.genindex: Exit (load existing index)"
		    catch err
		      newFile.delete
		      genIndex(file)
		      App.DebugWriter.Write "Bible.genindex: Exit (rebuild index after error loading)"
		    end try
		    Return
		  Else
		    out = TextOutputStream.Create(newFile)
		    If Not newFile.Exists Then
		      ShouldGenerateIndex = False
		      App.DebugWriter.Write "Bible.genindex: Exit (can't create index file), errorcode is " + CStr(newFile.LastErrorCode)
		      Return
		    End If
		    out.Close
		    newFile.Delete
		  end if
		  
		  'go to first book
		  //++EMP 18 Feb 2006
		  // Had to change the original If to a Select
		  // The structure for XML_NAB isn't quite the same
		  // as the original, and the first two children define the OT and NT books
		  //--
		  Select Case XMLTYPE
		  Case XML_ZEFANIA
		    booknode = Scripture.xql("/XMLBIBLE/BIBLEBOOK[1]").Item(0)
		  Case XML_NAB
		    booknode = Scripture.xql("/bible/b[1]").Item(0)
		  Case XML_ORIGINAL
		    booknode = Scripture.Child(0).Child(0)
		  End Select
		  
		  'used to remove puncuation and xml tags
		  reg= New RegEx
		  reg.SearchPattern = "[[:punct:]]" ' Non-word, non-space
		  reg.ReplacementPattern=""
		  reg.Options.ReplaceAllMatches=true
		  
		  'open progress window
		  If Not (wSplash Is Nil) Then wSplash.Hide
		  
		  wProgress = New IndexProgress()
		  wProgress.setProgress(0, "")
		  wProgress.ShowWithin App.GetFrontControlScreenWindow
		  'books
		  book=1
		  sBook= "1"
		  while booknode <> nil
		    chapnode=booknode.Child(0)
		    
		    'update progress window
		    Progress = book/GetBookCount() * 100
		    BookName = GetBookName(book)
		    wProgress.setProgress(Progress, BookName)
		    
		    'chapters
		    chap=1
		    sChap="1"
		    while chapnode <> nil
		      versenode=chapnode.Child(0)
		      
		      'see if the user canceled creating the index
		      if (wProgress.cancel=true) then
		        out.close
		        newFile.Delete
		        wProgress.close
		        wProgress = Nil
		        CanSearch = False
		        App.DebugWriter.Write "Bible.genindex: Exit (user cancel)"
		        If Not (wSplash Is Nil) Then wSplash.Show
		        return
		      end if
		      
		      App.DoEvents 0
		      
		      'verses
		      ver=1
		      sVer="1"
		      while versenode <> nil
		        if versenode.Child(0)<> nil then
		          location=sBook + " " + sChap + " " + sVer
		          
		          'remove puncuationı
		          verse= reg.Replace( getVerseText(versenode), 0)
		          
		          'split verse into individual words
		          aSplit= verse.Split()
		          
		          'add to index
		          for x=0 to UBound(aSplit)
		            sSplit = Trim(aSplit(x))
		            'if string is empty or in the list of words not to index then skip
		            
		            if (Len(sSplit)>=1 AND notIndexed.IndexOf(sSplit) <0) then
		              
		              if (root=nil) then 'first entry
		                root= new TreeNode(sSplit, IndexDict)
		              end if
		              
		              wordNode=root.find(sSplit)
		              
		              bound=UBound(wordNode.passages)
		              
		              if (bound >= 5000) then
		                ''add to not indexed list and remove from index
		                notIndexed.Append(sSplit)
		                
		                root.delete(sSplit)
		              else
		                
		                ''make sure not to include the same verse twice
		                if (bound < 0 OR location <> wordNode.passages(bound)) then
		                  wordNode.passages.Append(location)
		                end if '(bound < 0 Or location...
		              end if '(bound >= 5000)
		              
		            end if '(Len(sSplit) >= 1)...
		          next x
		        end if
		        
		        VerseNode = VerseNode.NextSibling
		        
		        ver=ver+1
		        sVer= Str(ver)
		      wend
		      
		      ChapNode = ChapNode.NextSibling
		      chap=chap+1
		      sChap= Str(chap)
		    wend
		    
		    BookNode = BookNode.NextSibling
		    book=book+1
		    sBook= Str(book)
		  wend
		  
		  'sort by priority
		  root.inorderTraverse(index)
		  
		  'write to file
		  out= TextOutputStream.Create(newFile)
		  for x=0 to UBound(index)
		    Passage = index(x).entry + "|" + Join(index(x).passages, "|")
		    out.WriteLine(Passage)
		  next x
		  
		  out.WriteLine("---")
		  
		  for x=0 to UBound(notIndexed)
		    If notIndexed(x)<>"" Then
		      out.writeLine(notIndexed(x))
		    End If
		  next x
		  
		  out.Close
		  
		  'close progress window
		  wProgress.doClose
		  wProgress = Nil
		  If Not (wSplash Is Nil) Then wSplash.Show
		  CanSearch = True
		  App.DebugWriter.Write "Bible.genindex: Exit"
		Exception excep
		  If Not (out Is Nil) Then out.Close
		  If Not (newFile Is Nil) Then newFile.delete
		  
		  InputBox.Message App.T.Translate("bible/errors/index_generation")
		  CanSearch = False
		  If wProgress <> Nil Then wProgress = Nil
		  If Not (wSplash Is Nil) Then wSplash.Show
		  App.DebugWriter.Write "Bible.genindex: Exit (exception)"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBibleFilename() As String
		  Return LoadedBibleFilename
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBibleName() As String
		  Return LoadedBible
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBookCount() As Integer
		  Return UBound(StdBooks)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBookName(num As Integer) As String
		  If num > 0 And num <= UBound(Books) Then
		    Return Books(num)
		  Else
		    Return ""
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetBookNameFromStdBookNumber(bookNumber As Integer) As String
		  
		  Select Case XMLTYPE
		    
		  Case XML_ORIGINAL, XML_NAB
		    Return GetBookName(bookNumber)
		    
		  Case XML_ZEFANIA
		    Try
		      Return Scripture.Xql("/XMLBIBLE/BIBLEBOOK[@bnumber=" + CStr(bookNumber) + "]").Item(0).GetAttribute("bname")
		    Catch
		      Return ""
		    End Try
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBookNum(book as String) As Integer
		  return Books.indexOf(book)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetChapterCount(bookNumber As Integer) As Integer
		  // Part of the iBible interface.
		  
		  //
		  // Updated to support different XML schemas
		  //
		  // Ed Palmer, October 2004 (NAB format), August 2005 (Zefania)
		  //
		  dim i as integer
		  dim xn as xmlNodeList
		  
		  i = 0
		  
		  Select Case XMLTYPE
		    
		  Case XML_ORIGINAL
		    
		    i =  Len(VersesInChapters(bookNumber)) / 4
		    
		  Case XML_NAB
		    xn = Scripture.Xql("/bible/b[" + str(bookNumber) + "]")
		    
		    i = val(xn.item(0).GetAttribute("CHAPTERS"))
		    
		  Case XML_ZEFANIA
		    xn = Scripture.Xql("/XMLBIBLE/BIBLEBOOK[" + Str(bookNumber) + "]/CHAPTER")
		    
		    i = xn.Length
		    
		  Case Else
		    //
		    // TODO: provide descriptive error
		    //
		  End Select
		  
		  Return i
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCitation(bookNumber As Integer, chapterNumber As Integer, startVerse As Integer, endVerse As Integer = - 1) As String
		  // Part of the iBible interface
		  
		  //++
		  // Given a specific Bible reference in relative references, return
		  // a textual citation for that reference.
		  // For example, GetCitation(1, 1, 1, 2) would return
		  // "Genesis 1:1-2" for KJV
		  // If endVerse is omitted or < 1, assume the same as startVerse
		  //
		  // Ed Palmer, July 2007
		  //--
		  
		  Dim sVerseStart As String
		  Dim sVerseEnd As String
		  Dim cite As String
		  
		  If endVerse < 1 Then endVerse = startVerse
		  If Not ValidateCitation(bookNumber, chapterNumber, startVerse, endVerse) Then
		    Return ""
		  End If
		  
		  cite = GetBookNameFromStdBookNumber(bookNumber)
		  cite = cite + " " + CStr(chapterNumber) + ":"
		  GetVerseRange(bookNumber, chapterNumber, startVerse, sVerseStart, sVerseEnd)
		  cite = cite + sVerseStart
		  If endVerse = startVerse Then
		    If sVerseEnd <> "" Then
		      cite = cite + "-" + sVerseEnd
		    End If
		  Else
		    GetVerseRange(bookNumber, chapterNumber, endVerse, sVerseStart, sVerseEnd)
		    If sVerseEnd = "" Then
		      cite = cite + ":" + sVerseStart
		    Else
		      cite = cite + ":" + sVerseEnd
		    End If
		  End If
		  
		  Return cite
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetNTBooks() As String()
		  //
		  // Returns a string array with the names of the books
		  // of the New Testament from the currently-loaded Bible.
		  //
		  // Must use this routine to allow for both I18N issues
		  // and to handle Zefania files with incomplete
		  // books.
		  //
		  // Ed Palmer, September 2005
		  //
		  Dim BookNames(0) As String
		  Dim xn As XmlNodeList
		  Dim i As Integer
		  
		  Select Case XMLTYPE
		    
		  Case XML_ORIGINAL
		    For i = 1 to NT_PROTESTANT
		      BookNames.Append GetBookName(i + OT_PROTESTANT)
		    Next
		    
		  Case XML_NAB
		    xn = Scripture.Xql("/bible/NT/book")
		    For i = 0 to xn.Length - 1
		      BookNames.Append xn.Item(i).GetAttribute("n")
		    Next
		    
		  Case XML_ZEFANIA
		    //
		    // Look at books in the book number range 40-66
		    // 40 = Matthew, 66 = Revelation
		    //
		    xn = Scripture.Xql("/XMLBIBLE/BIBLEBOOK[@bnumber >= 40 and @bnumber <= 66]")
		    For i = 0 to xn.Length - 1
		      BookNames.Append xn.Item(i).GetAttribute("bname")
		    Next
		    
		  End Select
		  
		  Return BookNames
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetNTBooks(ByRef BookNames() As String, ByRef BookNumbers() As Integer) As Integer
		  //
		  // Returns a string array with the names of the books
		  // of the New Testament from the currently-loaded Bible.
		  //
		  // Must use this routine to allow for both I18N issues
		  // and to handle Zefania files with incomplete
		  // books.
		  //
		  // Ed Palmer, September 2005
		  //
		  // Overloaded revision November 2006.  Returns the booknumber as well as the
		  // the name.  This is used with a new version of GetPassage that takes integers instead
		  // of strings and allows us to more definitively handle odd Bible styles.  This is a patch, not
		  // a good long term solution.
		  //
		  Redim BookNames(-1)
		  Redim BookNumbers(-1)
		  
		  Dim xn As XmlNodeList
		  Dim i As Integer
		  
		  Select Case XMLTYPE
		    
		  Case XML_ORIGINAL
		    For i = 1 to NT_PROTESTANT
		      BookNames.Append GetBookName(i + OT_PROTESTANT)
		      BookNumbers.Append i + OT_PROTESTANT
		    Next
		    
		  Case XML_NAB
		    xn = Scripture.Xql("/bible/NT/book")
		    For i = 0 to xn.Length - 1
		      BookNames.Append xn.Item(i).GetAttribute("n")
		      BookNumbers.Append i + GetOTCount + 1
		    Next
		    
		  Case XML_ZEFANIA
		    //
		    // Look at books in the book number range 40-66
		    // 40 = Matthew, 66 = Revelation
		    //
		    xn = Scripture.Xql("/XMLBIBLE/BIBLEBOOK[@bnumber >= 40 and @bnumber <= 66]")
		    For i = 0 to xn.Length - 1
		      BookNames.Append xn.Item(i).GetAttribute("bname")
		      BookNumbers.Append CDbl(xn.Item(i).GetAttribute("bnumber"))
		    Next
		    
		  End Select
		  
		  Return UBound(BookNames) + 1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetNTCount() As Integer
		  '
		  ' Returns count of New Testament books
		  '
		  ' Allows support of translations that don't have the same number of books as
		  '  the original author's bible (i.e., New American Bible, NRSV with Apocrypha, etc.)
		  '
		  ' EMP, 2005
		  '
		  
		  dim xn as xmlNodeList
		  Dim BookCount As Integer
		  
		  Select Case XMLTYPE
		    
		  Case XML_ORIGINAL
		    BookCount = NT_PROTESTANT
		    
		  Case XML_NAB
		    Try
		      xn = Scripture.Xql("/bible/NT/book")
		      BookCount = xn.length
		    Catch
		      BookCount = 0
		    End Try
		    
		  Case XML_ZEFANIA
		    //
		    // Zefania books have an attribute with the book number.
		    // Book 40 is Matthew, Book 66 is Revelation.
		    //
		    // Have to do a lookup because Zefania permits a file to only have one
		    // testament, or it may not even be a Christian Bible (i.e., Koran, Book of Mormon)
		    //
		    Try
		      BookCount = Scripture.Xql("/XMLBIBLE/BIBLEBOOK[@bnumber >= 40 and @bnumber <= 66]").Length
		    Catch
		      BookCount = 0
		    End Try
		  End Select
		  Return BookCount
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetOTBooks() As String()
		  //
		  // Returns a string array with the names of the books
		  // of the Old Testament from the currently-loaded Bible.
		  //
		  // Must use this routine to allow for both I18N issues
		  // and to handle Apocrypha or Zefania files with incomplete
		  // books.
		  //
		  // Ed Palmer, September 2005
		  //
		  Dim BookNames(0) As String
		  Dim xn As XmlNodeList
		  Dim i As Integer
		  
		  Select Case XMLTYPE
		    
		  Case XML_ORIGINAL
		    For i = 1 to OT_PROTESTANT
		      BookNames.Append GetBookName(i)
		    Next
		    
		  Case XML_NAB
		    xn = Scripture.Xql("/bible/OT/book")
		    For i = 0 to xn.Length - 1
		      BookNames.Append xn.Item(i).GetAttribute("n")
		    Next
		    
		  Case XML_ZEFANIA
		    //
		    // Look at books outside the book number range 40-66
		    // 40 = Matthew, 66 = Revelation
		    //
		    xn = Scripture.Xql("/XMLBIBLE/BIBLEBOOK[@bnumber < 40 or @bnumber > 66]")
		    For i = 0 to xn.Length - 1
		      BookNames.Append xn.Item(i).GetAttribute("bname")
		    Next
		    
		  End Select
		  
		  Return BookNames
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetOTBooks(ByRef BookNames() As String, ByRef BookNumbers() As Integer) As Integer
		  //
		  // Returns a string array with the names of the books
		  // of the Old Testament from the currently-loaded Bible.
		  //
		  // Must use this routine to allow for both I18N issues
		  // and to handle Apocrypha or Zefania files with incomplete
		  // books.
		  //
		  // Ed Palmer, September 2005
		  //
		  // Overloaded revision November 2006.  Returns the booknumber as well as the
		  // the name.  This is used with a new version of GetPassage that takes integers instead
		  // of strings and allows us to more definitively handle odd Bible styles.  This is a patch, not
		  // a good long term solution.
		  //
		  Dim xn As XmlNodeList
		  Dim i As Integer
		  
		  Redim BookNames(-1)
		  Redim BookNumbers(-1)
		  Select Case XMLTYPE
		    
		  Case XML_ORIGINAL
		    For i = 1 to OT_PROTESTANT
		      BookNames.Append GetBookName(i)
		      BookNumbers.Append i
		    Next
		    
		  Case XML_NAB
		    xn = Scripture.Xql("/bible/OT/book")
		    For i = 0 to xn.Length - 1
		      BookNames.Append xn.Item(i).GetAttribute("n")
		      BookNumbers.Append i + 1
		    Next
		    
		  Case XML_ZEFANIA
		    //
		    // Look at books outside the book number range 40-66
		    // 40 = Matthew, 66 = Revelation
		    //
		    xn = Scripture.Xql("/XMLBIBLE/BIBLEBOOK[@bnumber < 40 or @bnumber > 66]")
		    For i = 0 to xn.Length - 1
		      BookNames.Append xn.Item(i).GetAttribute("bname")
		      BookNumbers.Append CDbl(xn.Item(i).GetAttribute("bnumber"))
		    Next
		    
		  End Select
		  
		  Return UBound(BookNames) + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetOTCount() As Integer
		  //
		  // Returns count of Old Testament books
		  //
		  // Allows support of translations that don't have the same number of books as
		  //  the original author's bible (i.e., New American Bible, NRSV with Apocrypha, etc.)
		  //
		  // EMP, 2005
		  //
		  // This needs to be updated to support a non-Protestant Bible in Zefania format
		  //
		  dim i as integer
		  dim xn as xmlNodeList
		  Dim BookCount As Integer
		  
		  Select Case XMLTYPE
		  Case XML_ORIGINAL
		    BookCount = OT_PROTESTANT
		    
		  Case XML_NAB
		    Try
		      BookCount = Scripture.Xql("/bible/OT/book").Length
		    Catch
		      BookCount = 0
		    End Try
		    
		  Case XML_ZEFANIA
		    //
		    // Zefania format has Apocrypha books falling after Revelation
		    //
		    // Book 40 is Matthew, book 66 is Revelation
		    //
		    Try
		      BookCount = Scripture.Xql("/XMLBIBLE/BIBLEBOOK[@bnumber < 40 or @bnumber > 66]").Length
		    Catch
		      BookCount = 0
		    End Try
		    
		  End Select
		  Return BookCount
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPassage(bookNumber As Integer, chapterNumber As Integer, startVerseOffset As Integer, endVerseOffset As Integer, embedVerseNumbers As Boolean = True) As String()
		  // Part of the iBible interface.
		  
		  // Updated 8 October 2004 to fix "3John issue" in book parsing algorithm and NAB format
		  // 29 August 2005: Add support for Zefania format
		  // Original version parsed a text string to determine the reference
		  // This version uses distinct parameters.
		  // Ed Palmer
		  // November 2006: Overloaded to numerics to simplify XQL queries.
		  //
		  // GetPassage parameters are one-based.
		  //
		  Dim list As New XmlNodeList
		  Dim query As String
		  Dim i As Integer
		  Dim ret(), verse As String
		  Dim reg as RegEx
		  
		  If endVerseOffset < startVerseOffset Then endVerseOffset = startVerseOffset
		  
		  Select Case XMLTYPE
		    
		  Case XML_ORIGINAL, XML_NAB
		    Try
		      query = "/bible/b[" + CStr(bookNumber) + "]/c[" + CStr(chapterNumber) + "]/v[position() >= " + CStr(startVerseOffset) +_
		      " and position() <= " + CStr(endVerseOffset) + "]"
		      list = Scripture.Xql(query)
		    Catch ex
		      If ex IsA XmlException Then
		        ErrorCode = ex.ErrorNumber
		        ErrorString = ex.Message + chr(10) + "At " + XmlException(ex).Node + ", Token: " + XmlException(ex).Token
		        ex.Message = ErrorString
		      Else
		        ErrorString = "Bible.GetPassage exception in query '" + query + "'"
		        ex.Message = ErrorString
		      End If
		      Return ret
		    End Try
		    
		    If list = Nil Then
		      App.DebugWriter.Write "In Bible.GetVerse, using " + LoadedBibleFilename + ", got an empty list."
		      App.DebugWriter.Write Chr(9) + "Asking for Book/Chap/From/To = " + _
		      Join(Array(CStr(bookNumber), CStr(chapterNumber), CStr(startVerseOffset), CStr(endVerseOffset)), "/")
		    Else
		      For i = 0 To list.Length - 1
		        Verse = ""
		        If embedVerseNumbers Then
		          Verse = list.Item(i).GetAttribute("n")
		          If list.Item(i).GetAttribute("t") <> "" Then
		            Verse = verse + "-" + list.Item(i).GetAttribute("t")
		          End If
		          Verse = verse + " "
		        End If
		        ret.Append Verse + getVerseText(list.Item(i))
		      Next
		    End If //list = Nil
		  Case XML_ZEFANIA
		    // The bsname attribute doesn't have spaces between the number and name
		    // ("3John" instead of "3 John")
		    //
		    'book = Replace(book, " ", "")
		    
		    'bhenny- some Zefania bibles are red-letter, so we need to remove the tags for the red since OS doesn't currently support red letters
		    reg= New RegEx
		    reg.SearchPattern= "[<][^>]*[>]"
		    reg.ReplacementPattern=""
		    reg.Options.ReplaceAllMatches=true
		    
		    query = "/XMLBIBLE/BIBLEBOOK[@bnumber = '" + CStr(bookNumber) + "']/CHAPTER[@cnumber='" + CStr(chapterNumber)  _
		    + "']/VERS[position() >= " + CStr(startVerseOffset) + " and position() <= " + CStr(endVerseOffset) + "]"
		    Try
		      list = Scripture.Xql(query)
		    Catch ex2
		      If ex2 IsA XmlException Then
		        ErrorCode = ex2.ErrorNumber
		        ErrorString = ex2.Message + chr(10) + "At " + XmlException(ex2).Node + ", Token: " + XmlException(ex2).Token
		        ex2.Message = ErrorString
		      Else
		        ErrorString = "Bible.GetPassage exception in query " + query
		        ex2.Message = ErrorString
		      End If
		      Return ret
		    End Try
		    
		    If list = Nil Then
		      App.DebugWriter.Write "In Bible.GetVerse, using " + LoadedBibleFilename + ", got an empty list."
		      App.DebugWriter.Write Chr(9) + "Asking for Book/Chap/From/To = " + _
		      Join(Array(CStr(bookNumber), CStr(chapterNumber), CStr(startVerseOffset), CStr(endVerseOffset)), "/")
		    Else
		      For i = 0 To list.Length - 1
		        Verse = ""
		        If embedVerseNumbers Then
		          Verse = list.Item(i).GetAttribute("vnumber") + list.Item(i).GetAttribute("aix")
		          If list.Item(i).GetAttribute("enumber") <> "" Then
		            verse = verse + "-" + list.Item(i).GetAttribute("enumber")
		          End If
		          verse = verse + " "
		        End If
		        verse = verse + getVerseText(list.Item(i))
		        ret.Append verse
		      Next
		    End If
		  End Select
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPassage(book As String, chapter As String, fromVerse As String, toVerse As String) As String()
		  // Updated 8 October 2004 to fix "3John issue" in book parsing algorithm and NAB format
		  // 29 August 2005: Add support for Zefania format
		  // Original version parsed a text string to determine the reference
		  // This version uses distinct parameters.
		  // Ed Palmer
		  
		  Dim list As New XmlNodeList
		  Dim query As String
		  Dim i As Integer
		  Dim ret(0), verse As String
		  Dim reg as RegEx
		  
		  If Val(toVerse) < Val(fromVerse) Then toVerse = fromVerse
		  
		  Select Case XMLTYPE
		    
		  Case XML_ORIGINAL, XML_NAB
		    Try
		      'query = "/bible/b[@n='" + book + "')]/c[" + chapter + "]/v[(@n>='" + fromVerse + "' or @t>='" + toVerse + "') and @n<='" + toVerse + "']"
		      query = "/bible/b[@n='" + book + "']/c[@n=" + chapter + "]/v[(@n>=" + fromVerse + " or @t>=" + toVerse + ") and @n<=" + toVerse + "]"
		      list = Scripture.Xql(query)
		    Catch ex
		      If ex IsA XmlException Then
		        ErrorCode = ex.ErrorNumber
		        ErrorString = ex.Message + chr(10) + "At " + XmlException(ex).Node + ", Token: " + XmlException(ex).Token
		        ex.Message = ErrorString
		      Else
		        ErrorString = "Bible.GetPassage exception in query"
		        ex.Message = ErrorString
		      End If
		      Return ret
		    End Try
		    
		    For i = 0 To list.Length - 1
		      fromVerse = list.Item(i).GetAttribute("n")
		      toVerse = list.Item(i).GetAttribute("t")
		      If toVerse > fromVerse Then
		        ret.Append fromVerse + "-" + toVerse + " " + GetVerseText(list.Item(i))
		      Else
		        ret.Append fromVerse + " " + GetVerseText(list.Item(i))
		      End If
		    Next
		    
		  Case XML_ZEFANIA
		    // The bsname attribute doesn't have spaces between the number and name
		    // ("3John" instead of "3 John")
		    //
		    'book = Replace(book, " ", "")
		    
		    'bhenny- some Zefania bibles are red-letter, so we need to remove the tags for the red since OS doesn't currently support red letters
		    reg= New RegEx
		    reg.SearchPattern= "[<][^>]*[>]"
		    reg.ReplacementPattern=""
		    reg.Options.ReplaceAllMatches=true
		    
		    query = "/XMLBIBLE/BIBLEBOOK[@bname = '" + book + "']/CHAPTER[@cnumber='" + chapter _
		    + "']/VERS[@vnumber >= '" + fromVerse + "' and @vnumber <= '" + toVerse + "']"
		    Try
		      list = Scripture.Xql(query)
		    Catch ex2
		      If ex2 IsA XmlException Then
		        ErrorCode = ex2.ErrorNumber
		        ErrorString = ex2.Message + chr(10) + "At " + XmlException(ex2).Node + ", Token: " + XmlException(ex2).Token
		        ex2.Message = ErrorString
		      Else
		        ErrorString = "Bible.GetPassage exception in query"
		        ex2.Message = ErrorString
		      End If
		      Return ret
		    End Try
		    
		    For i = 0 To list.Length - 1
		      fromVerse = list.Item(i).GetAttribute("vnumber")
		      verse= GetVerseText(list.Item(i))
		      ret.Append fromVerse + " " + reg.Replace(verse)
		    Next
		    
		  End Select
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub GetTmpVal(intChar as Integer, intNextChar as Integer, intNextChar1 as Integer, byref tmpVal as integer, i as integer, intvalue as integer)
		  If intNextChar > intChar Then
		    If ((intNextChar - intChar = 1 _
		      And (intChar <> 2 And intChar <> 6)) _
		      Or (intNextChar - intChar = 2 _
		      And (intNextChar <> 4 And intNextChar <> 6))) _
		      And intNextChar1 < intNextChar _
		      And intNextChar1 <> intChar Then
		      tmpVal = tmpVal + ConvVal(intNextChar) - intValue
		      i = i + 1
		    Else
		      tmpVal = -1
		    End If
		  Else
		    tmpVal = tmpVal + intValue
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getVerse(node as XMLNode) As String
		  if node=nil then
		    return ""
		  elseif node.Type=XmlNodeType.TEXT_NODE then 'text_node
		    return node.value
		  else
		    return getVerse(node.child(0)) + getVerse(node.nextSibling)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetVerseCount(bookNumber As Integer, chapterNumber As Integer) As Integer
		  // Part of the iBible interface.
		  
		  //
		  // Updated to support different XML schemas
		  //
		  // Ed Palmer, October 2004 (NAB format), August 2005 (Zefania)
		  //
		  dim i as integer
		  dim s as string
		  dim xn as XmlNodeList
		  i = 0
		  
		  Select Case XMLTYPE
		    
		  Case XML_ORIGINAL
		    i = Val(Mid(VersesInChapters(bookNumber), (chapterNumber-1)*4+1, 3))
		    
		  Case XML_NAB
		    s = "/bible/b[" + str(bookNumber) + "]/c[" + str(chapterNumber) + "]"
		    xn = Scripture.Xql(s)
		    if xn.item(0) <> nil then
		      i = val(xn.item(0).GetAttribute("VERSES"))
		    end if
		    
		  Case XML_ZEFANIA
		    s = "/XMLBIBLE/BIBLEBOOK[" + str(bookNumber) + "]/CHAPTER[" + str(chapterNumber) + "]/VERS"
		    xn = Scripture.Xql(s)
		    i = xn.Length
		    
		  Case Else
		    // TODO: Descriptive error message
		    
		  End Select
		  return i
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetVerseNodeFromNumber(bookNumber As Integer, chapterNumber As Integer, verseNumber As Integer, verseAix As String) As Integer
		  //
		  // Given verseNumber + verseAix, return the number of the verse node that
		  // contains that verse.
		  // This is a 1-based number, thus the unusual return values.
		  //
		  Dim verselist() As String
		  Dim v As Integer
		  Dim aix As String
		  Dim splitRE As New RegEx
		  Dim match As RegExMatch
		  
		  verselist = GetVerseNumbers(bookNumber, chapterNumber)
		  
		  If verselist.UBound < 0 Then Return -1
		  
		  SplitRE.SearchPattern = "(\d+)(\w*)"
		  For i As Integer = 0 To verselist.UBound
		    match = splitRE.Search(verselist(i))
		    v = CDbl(match.SubExpressionString(1))
		    aix = match.SubExpressionString(2)
		    If v > verseNumber Then
		      Return i
		    ElseIf v = verseNumber Then
		      If aix = verseAix Then
		        Return i + 1
		      Else
		        Return i
		      End If
		    End If
		  Next
		  
		  Return -1 // verseNumber > verselist(UBound(verselist))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetVerseNumbers(bookNumber As Integer, chapterNumber As Integer) As String()
		  // Part of the iBible interface.
		  
		  //
		  // Given the input book and chapter, return an array of verse numbers.
		  //
		  // Why is this here as well as GetVerseCount?  Provides support for subverses
		  // such as 14a, 14b, etc. (defined either in the "n" attribute of the NAB or
		  // the aix (Alpha Index) attribute from a Zefania document
		  //
		  // Overloaded version using bookNumber instead of BookName added 24 April 2007
		  
		  Dim Verses() As String
		  Dim i as Integer
		  Dim xn As XmlNodeList
		  Dim s As String
		  
		  Select Case XMLTYPE
		    
		  Case XML_ORIGINAL, XML_NAB
		    s = "/bible/b[" + str(bookNumber) + "]/c[" + str(chapterNumber) + "]/v"
		    xn = Scripture.Xql(s)
		    if xn <> Nil Then
		      For i = 0 to xn.Length - 1
		        Verses.Append xn.Item(i).GetAttribute("n")
		      Next
		    end if
		    
		  Case XML_ZEFANIA
		    s = "/XMLBIBLE/BIBLEBOOK[" + str(bookNumber) + "]/CHAPTER[" + str(chapterNumber) + "]/VERS"
		    xn = Scripture.Xql(s)
		    If xn <> Nil Then
		      For i = 0 to xn.Length - 1
		        Verses.Append xn.Item(i).GetAttribute("vnumber") +_
		        xn.Item(i).GetAttribute("aix")
		      Next
		    End If
		  Case Else
		    // TODO: Descriptive error message
		    
		  End Select
		  Return Verses
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetVerseNumbers(BookName As String, ChapterNum As Integer) As String()
		  //
		  // Given the input book and chapter, return an array of verse numbers.
		  //
		  // Why is this here as well as GetVerseCount?  Provides support for subverses
		  // such as 14a, 14b, etc. (defined either in the "n" attribute of the NAB or
		  // the aix (Alpha Index) attribute from a Zefania document
		  //
		  Dim Verses(0) As String
		  Dim i as Integer
		  Dim xn As XmlNodeList
		  
		  // Apparently Xql doesn't encode the parameters prior to parsing them.
		  // HTMLEntityEncode will get most of them, but the apostrophe is problematic.
		  //++
		  // NOTE added 24 April 2007 (EMP): This has some serious issues.  Apparently
		  // what works and what doesn't may depend upon the encoding of the XML file.
		  // The two Spanish bibles on opensong.org (NVI & LBLA) are using ISO-8859-1
		  // instead of UTF-8, but internally the strings are UTF-8.  When passing through
		  // HTMLEntityEncode, Génesis becomes G&eacute;nesis, but fails to match
		  // because the XML doesn't have the converted character.  It could be that dropping
		  // HTMLEntityEncode would fix this, but I know I put it in here for a reason...
		  // some other bible had an issue.
		  // Anyway, rather than chase this all over the place, I recoded the only place this gets
		  // called to use the book number like the rest of the lookup routines.
		  //--
		  BookName = ReplaceAll(BookName.HTMLEntityEncode, "'", "&apos;")
		  
		  Select Case XMLTYPE
		  Case XML_ORIGINAL, XML_NAB
		    xn = Scripture.Xql("/bible/b[@n='" + BookName + "']/c[@n=" + Str(ChapterNum) + "]/v")
		    For i = 0 to xn.Length - 1
		      Verses.Append xn.Item(i).GetAttribute("n")
		      'if xn.Item(i).GetAttribute("t") <> "" Then
		      'Verses.Append xn.Item(i).GetAttribute("t")
		      'End If
		    Next
		    
		  Case XML_ZEFANIA
		    xn = Scripture.Xql("XMLBIBLE/BIBLEBOOK[@bname = '" + BookName +_
		    "']/CHAPTER[@cnumber = " + Str(ChapterNum) + "]/VERS")
		    For i = 0 to xn.Length - 1
		      Verses.Append xn.Item(i).GetAttribute("vnumber") +_
		      xn.Item(i).GetAttribute("aix")
		    Next
		    
		  End Select
		  
		  Return Verses
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVerseRange(BookNumber As Integer, ChapterNumber As Integer, VerseIndex As Integer, ByRef StartVerse As String, ByRef EndVerse As String)
		  //++
		  // Given a reference to a verse node, return the starting and ending verses for the node.
		  // If a single verse, the EndVerse will be an empty string.
		  //
		  // Purpose is to accomodate Bibles where there are multiple verses combined into one, or where
		  // there are subverses (i.e., 16a, 16b, 16c).
		  //
		  // Ed Palmer, November 2006
		  //--
		  
		  Dim xn As XmlNodeList
		  Dim VerseNode As XmlNode
		  Dim query As String
		  
		  Select Case XMLTYPE
		  Case XML_ORIGINAL, XML_NAB
		    Try
		      query = "/bible/b[" + CStr(BookNumber) + "]/c[" + CStr(ChapterNumber) + "]/v[" + CStr(VerseIndex) + "]"
		      xn = Scripture.Xql(query)
		    Catch ex
		      If ex IsA XmlException Then
		        ErrorCode = ex.ErrorNumber
		        ErrorString = ex.Message + chr(10) + "At " + XmlException(ex).Node + ", Token: " + XmlException(ex).Token
		        ex.Message = ErrorString
		      Else
		        ErrorString = "Bible.GetVerseRange exception in query '" + query + "'"
		        ex.Message = ErrorString
		      End If
		      StartVerse = ""
		      EndVerse = ""
		      Return
		    End Try
		    
		    If xn.Length > 0 Then
		      StartVerse = xn.Item(0).GetAttribute("n")
		      EndVerse = xn.Item(0).GetAttribute("t")
		    Else
		      StartVerse = ""
		      EndVerse = ""
		    End If
		    
		  Case XML_ZEFANIA
		    query = "/XMLBIBLE/BIBLEBOOK[@bnumber = '" + CStr(BookNumber) + "']/CHAPTER[@cnumber='" + CStr(ChapterNumber)  _
		    + "']/VERS[" + CStr(VerseIndex) + "]"
		    Try
		      xn = Scripture.Xql(query)
		    Catch ex2
		      If ex2 IsA XmlException Then
		        ErrorCode = ex2.ErrorNumber
		        ErrorString = ex2.Message + chr(10) + "At " + XmlException(ex2).Node + ", Token: " + XmlException(ex2).Token
		        ex2.Message = ErrorString
		      Else
		        ErrorString = "Bible.GetVerseRange exception in query " + query
		        ex2.Message = ErrorString
		      End If
		      Return
		    End Try
		    
		    If xn.Length > 0 Then
		      StartVerse = xn.Item(0).GetAttribute("vnumber") + xn.Item(0).GetAttribute("aix")
		      EndVerse = xn.Item(0).GetAttribute("enumber")
		    Else
		      StartVerse = ""
		      EndVerse = ""
		    End If
		  End Select
		  
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getVerseText(VerseNode As XmlNode) As String
		  //++
		  // Bug 1658650: Tabs in scripture create issues with
		  // both indexing and presentation.
		  // Alter returned text to change all whitespace to ASCII space.
		  //--
		  Dim s() As String
		  Dim child As XmlNode
		  Dim re As New RegEx
		  
		  re.SearchPattern = "\s+"
		  re.ReplacementPattern = " "
		  re.Options.ReplaceAllMatches = True
		  
		  child = VerseNode.FirstChild
		  
		  While child <> Nil
		    If child.Type = XmlNodeType.TEXT_NODE Then
		      s.Append child.Value
		    ElseIf child.type = XmlNodeType.ELEMENT_NODE Then
		      s.Append getVerseText(child)
		    End If
		    child = child.NextSibling
		  Wend
		  
		  '++JRC Add support for displaying the same verse from 2 bibles versions (thanks Ovidiu).
		  'Return re.Replace(Join(s))
		  Return ReplaceAll(re.Replace(Join(s)),"|",Chr(10))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetWebBookName(num As Integer) As String
		  //
		  // 29 Aug 2005: Ed Palmer
		  // Unable to find any reference to this method in V0.9.9
		  // Assuming unused, but retained for the moment
		  // Do not assume that this method is supported in V1
		  //
		  Return WebBooks(num)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsPositiveInteger(s As String) As Boolean
		  Dim iVal as Integer
		  
		  iVal = Val(s)
		  return (not(ival < 1))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsSearchable() As Boolean
		  Return CanSearch
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LoadBible(file As FolderItem) As Boolean
		  //
		  // Read an XML version of scripture into memory
		  // and set up appropriate data structures.
		  //
		  // Original version assumed an XML structure with bible as the head node,
		  // b (for book) a child of bible, c (chapter) a child of b, and v (verse)
		  // a child of c.  b had one attribute, n (name). c  and v had n (number)
		  // attributes.
		  //
		  // First update to allow support for Apocrypha added CHAPTERS
		  // attribute to b and VERSES attribute to c to allow quick lookup of
		  // items that would be used to fill the ScripturePickerWindow info.
		  // Since the first Bible to support this was the New American Bible,
		  // this format is called XML_NAB here.
		  //
		  // Modified August 2005 to support either the original XML format
		  // (hopefully to be deprecated) or Zefania XML, a standard XML schema
		  // developed in Germany.  (Far in the future: consider support for OSIS,
		  // an alternative from TheSword, but its complexity doesn't lend itself
		  // to V1 support.)
		  //
		  // Updated version by Ed Palmer based on original code by Sean Lickfold
		  //
		  // Future TO DO: Change the way this object is set up to do the load as
		  // part of the constructor.  This will lay the foundation for having multiple
		  // translations in play in case support for comparison or side-by-side
		  // presentation (i.e., multi-lingual services).
		  //
		  // Future TO DO: I18N support for error messages.
		  //
		  
		  Dim input As TextInputStream
		  Dim s As String
		  Dim i As Integer
		  Dim BookAbbrevRoot As XmlNode
		  Dim BookNode, node As XmlNode
		  Dim BookName As String
		  Dim BookNameShort As String
		  Dim StdName As String
		  Dim names() as String
		  Dim splashHidden As Boolean = False
		  Dim w As Window
		  
		  Scripture = New XmlDocument
		  ShouldGenerateIndex = False
		  
		  If file = Nil Then
		    ErrorCode = 1
		    ErrorString = "Path not found."
		    Return False
		  ElseIf Not file.Exists Then
		    ErrorCode = 2
		    ErrorString = "File not found: " + file.AbsolutePath
		    Return False
		  End If
		  input = TextInputStream.Open(file)
		  s = input.ReadAll
		  input.Close
		  
		  Dim list As New XmlNodeList
		  
		  Try
		    If Len(s) > 5 Then
		      Scripture.LoadXml(s)
		      
		      If Scripture = Nil Then
		        ErrorCode = 7
		        ErrorString = App.T.Translate("bible/errors/load1", file.name)
		        InputBox.Message ErrorString
		        Return False
		      End If
		    Else
		      Return False
		    End If
		  Catch LoadErr
		    If LoadErr IsA XmlException Then
		      ErrorCode = 7
		      ErrorString = App.T.Translate("bible/errors/loadxml", file.name, _
		      XmlException(LoadErr).Node, XmlException(LoadErr).Line)
		      LoadErr.Message = ErrorString
		      LoadErr.ErrorNumber = ErrorCode
		      InputBox.Message ErrorString
		      Scripture = Nil
		      Return False
		    Else
		      ErrorCode = 3
		      ErrorString = App.T.Translate("bible/errors/load1", file.name)
		      LoadErr.ErrorNumber = ErrorCode
		      LoadErr.Message = ErrorString
		      InputBox.Message ErrorString
		      Scripture = Nil
		      Return False
		    End If
		  End Try
		  
		  App.DebugWriter.Write "Bible.LoadBible: XML read, load book names"
		  
		  ' Pre-load book names and book abbreviations
		  ReDim Books(0)
		  BookAbbrev = New XmlDocument
		  BookAbbrevRoot = BookAbbrev.AppendChild(BookAbbrev.CreateElement("abbrev"))
		  //
		  // Determine which format was loaded
		  //
		  Select Case Uppercase(Scripture.DocumentElement.Name)
		    
		  Case "BIBLE"
		    //
		    // Original or NAB, check if the first book has a CHAPTERS attribute to decide
		    //
		    App.DebugWriter.Write "Bible.LoadBible: Opened an OpenSong format"
		    list = Scripture.Xql("/bible/b")
		    If list.Length > 0 Then
		      XMLTYPE = XML_ORIGINAL
		      s = list.Item(0).GetAttribute("CHAPTERS")
		      If Len(s) > 0 Then
		        XMLTYPE = XML_NAB
		        App.DebugWriter.Write Chr(9) + "...with NAB extensions"
		      End If
		      
		      For i = 0 To list.Length - 1
		        BookName = list.Item(i).GetAttribute("n")
		        Books.Append BookName
		        
		        'StdName = Lowercase(Left(MakeStandardName(BookName), 3)) //Assume first three characters are unique
		        //++
		        // Testing...Store entire name since we have dups in first 3 chars such as Judges and Jude
		        //--
		        StdName = Lowercase(MakeStandardName(BookName))
		        
		        BookNode = BookAbbrevRoot.AppendChild(BookAbbrev.CreateElement(StdName))
		        BookNode.SetAttribute("bname", BookName)
		      Next
		      
		      If XMLTYPE = XML_ORIGINAL Then
		        LoadedBible = file.Name
		      Else
		        LoadedBible = Scripture.FirstChild.GetAttribute("n")
		      End If
		      LoadedBibleFilename = file.name
		      ShouldGenerateIndex = True
		    Else
		      ErrorCode = 7
		      ErrorString = "Invalid Bible: " + file.AbsolutePath + " (No books found)"
		      Return False
		    End If
		    
		    'bhenny- either load or create index
		    For i = 0 To WindowCount - 1
		      If Window(i) IsA Splash Then
		        wSplash = Splash(Window(i))
		      End If
		    Next
		    genIndex(file)
		    
		    App.DebugWriter.Write "Bible.LoadBible: Exit successfully"
		    Return True
		    
		  Case "XMLBIBLE"
		    //
		    // ZefaniaXML format
		    //
		    App.DebugWriter.Write "Bible.LoadBible: Loaded a Zefania format XML"
		    XMLTYPE = XML_ZEFANIA
		    
		    list = Scripture.Xql("/XMLBIBLE/BIBLEBOOK")
		    
		    'bhenny- if the bible doesn't have the required bname attributes add them in from the file bnames.xml
		    If list.Item(0).GetAttribute("bname")="" then
		      try
		        if addBNames(file)=false then
		          ErrorCode=111
		          ErrorString=App.T.Translate("bible/errors/load2", file.Name, App.T.Translate("bible/errors/nobnames"))
		          Scripture=nil
		          return false
		        end if
		      catch e
		        ErrorCode=111
		        ErrorString=App.T.Translate("bible/errors/load2", file.Name, App.T.Translate("bible/errors/nobnames"))
		        Scripture=nil
		        return false
		      end try
		    Else // bname attribute found
		      ShouldGenerateIndex = True
		    end if
		    
		    If list.Length > 0 Then
		      For i = 0 To list.Length - 1
		        BookName = list.Item(i).GetAttribute("bname")
		        BookNameShort = list.item(i).GetAttribute("bsname")
		        If BookName = "" Then BookName = list.Item(i).GetAttribute("bnumber")
		        If BookNameShort = "" Then BookNameShort = list.Item(i).GetAttribute("bnumber")
		        Books.Append BookName
		        BookNode = BookAbbrevRoot.AppendChild(BookAbbrev.CreateElement(Lowercase(BookNameShort)))
		        BookNode.SetAttribute("bname", BookName)
		      Next
		      
		    Else
		      ErrorCode = 7
		      ErrorString = "Invalid Bible: " + file.AbsolutePath + " (No books found)"
		      Return False
		    End If
		    
		    LoadedBible = Scripture.DocumentElement.GetAttribute("biblename")
		    If Len(LoadedBible) = 0 Then LoadedBible = File.Name
		    LoadedBibleFilename = File.Name
		    
		    'bhenny- either load or create index
		    Try
		      For i = 0 To WindowCount - 1
		        If Window(i) IsA Splash Then
		          wSplash = Splash(Window(i))
		        End If
		      Next
		      If wSplash <> Nil Then wSplash.Hide
		      genIndex(file)
		    Catch genErr
		      App.DebugWriter.Write "Bible.LoadBible: Caught " + s + " when calling genIndex"
		      ShouldGenerateIndex = False
		    End Try
		    If wSplash <> Nil Then wSplash.Show
		    
		    App.DebugWriter.Write "Bible.LoadBible: Exit successfully"
		    Return True
		    
		  Case Else
		    ErrorCode = 5
		    ErrorString = "Error parsing XML: " + file.AbsolutePath + _
		    " (Unrecognized DocElement: " + _
		    Scripture.DocumentElement.Name + ")"
		    Return False
		  End Select
		  
		Exception err
		  If wSplash <> Nil Then wSplash.Show
		  If err IsA XmlException Then
		    ErrorCode = 3
		    ErrorString = "Error parsing XML: " + file.AbsolutePath + ": Line " + XmlException(err).Line + ": " + XmlException(err).Node
		    App.DebugWriter.Write "Bible.LoadBible: Caught an XML exception"
		    Return False
		  Else
		    ErrorCode  = err.ErrorNumber
		    ErrorString = err.Message
		    App.DebugWriter.Write "Bible.LoadBible: Caught a " + err.ToString
		    Return False
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub loadIndex(file As FolderItem)
		  Dim fileIn as TextInputStream
		  Dim line() as String
		  Dim entry as TreeNode
		  Dim x as Integer
		  
		  If IndexDict = Nil Then IndexDict = New Dictionary
		  
		  fileIn= TextInputStream.Open(file)
		  line= fileIn.ReadLine().split("|")
		  
		  'read indexed words
		  while line(0) <> "---"
		    If FileIn.EOF Then Exit
		    entry= new TreeNode(line(0), IndexDict)
		    
		    for x=1 to UBound(line)
		      entry.passages.Append(line(x))
		    next x
		    
		    index.Append(entry)
		    
		    line= fileIn.ReadLine().split("|")
		  wend
		  
		  'read words that aren't indexed
		  line(0)= fileIn.ReadLine()
		  
		  while (Not fileIn.EOF)
		    notIndexed.Append(line(0))
		    
		    line(0)= fileIn.ReadLine()
		  wend
		  CanSearch = True
		  
		  //++EMP 18 Feb 2006
		  // Add exception block...ran into issue where a 0-length index file
		  // was left after a debug crash.  Got a OOB exception on the first While
		  //--
		Catch ex
		  If ex Isa OutOfBoundsException Then
		    filein.Close
		    file.Delete // Let's kill it for now
		    Redim index(-1)
		    Redim notIndexed(-1)
		    CanSearch = False
		  Else // Toss it back up the chain
		    CanSearch = False
		    Raise ex
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LookupBookName(ShortName As String) As String
		  //
		  // Determine what book the passed string refers to.
		  //
		  // Ed Palmer, September 2005
		  //
		  // April 2011: Original RegEx used \s, which isn't UTF-8 clean. Replace with [:space:] instead
		  //
		  Dim FoundBooks() As String
		  Dim xn As XmlNodeList
		  Dim j As Integer
		  Dim i As Integer
		  Dim booknode As XmlNode
		  Dim bookname As String
		  Dim re As New RegEx
		  
		  //
		  // Normalize the user input to all lowercase and remove spaces and periods
		  //
		  ShortName = Lowercase(ShortName)
		  ShortName = ReplaceAll(ShortName, ".", "")
		  ShortName = ReplaceAll(ShortName, " ", "")
		  
		  //++
		  // Bug 1467887: Fix issue where OS assumed book names are unique in 3 characters
		  // and there was no way to lookup Judges and Jude.
		  //--
		  
		  
		  If Len(ShortName) < 3 Then Return ""
		  
		  '++JRC: Fix issue where certain Zefania Bible books were not accesible (bug #2769373)
		  'also added support for partial Bible book names (e.g. Phile for Philemon)
		  'It's also now possible to use the whole book name in searches as well
		  
		  xn = BookAbbrev.Xql("/abbrev/*[starts-with(name(), '" + ShortName + "')]")
		  Select Case xn.Length
		  Case 0 'No abbreviations match see if Shortname matches part of a book name
		    xn = BookAbbrev.Xql("/abbrev/*")
		    If xn.Length = 0 Then
		      ErrorString = ""  // Indicates no match
		      Return ""
		    Else
		      For j = 0 To xn.Length - 1
		        
		        booknode = xn.Item(j)
		        re.SearchPattern = "[[:space:].,]+"
		        re.ReplacementPattern = ""
		        re.Options.ReplaceAllMatches = True
		        re.Options.CaseSensitive = False
		        bookname = re.Replace(booknode.GetAttribute("bname"))
		        
		        If Left(bookname, Len(ShortName)) = ShortName Then
		          Return xn.Item(j).GetAttribute("bname")
		        End If
		      Next j
		    End If
		    
		  End Select
		  
		  // Control here means that at least a substring of ShortName matches exactly one book.
		  // Verify that the entire ShortName matches this book, otherwise it's not a match
		  
		  booknode = xn.Item(0)
		  re.SearchPattern = "[[:space:].,]+"
		  re.ReplacementPattern = ""
		  re.Options.ReplaceAllMatches = True
		  re.Options.CaseSensitive = False
		  bookname = re.Replace(booknode.GetAttribute("bname"))
		  
		  If Left(bookname, Len(ShortName)) <> ShortName Then
		    'No match, try comparing to the bshort attribute
		    If Left(xn.Item(0).Name, Len(ShortName)) <> ShortName Then
		      Return ""
		    End If
		  End If
		  
		  Return xn.Item(0).GetAttribute("bname")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MakeStandardName(FullName As String) As String
		  // Convert Book name by changing leading Roman numeral to Arabic
		  // Then delete spaces and punctuation and convert to lowercase
		  Dim book As String
		  Dim j As Integer
		  FullName = ReplaceAll(FullName, ":", "")
		  
		  book = NthField(FullName, " ", 1)
		  
		  j= FromRoman(book) // should be I, II or III (No books can accidentally trigger in English language)
		  if j > 0 then
		    book = str(j)
		  end if
		  If IsPositiveInteger(book) Then ' 1,2,I,II with a space after
		    book = book  + NthField(FullName, " ", 2)
		  End If
		  book = ReplaceAll(book, ".", "")
		  
		  Return book
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As String
		  Return LoadedBibleFilename
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function QuickLookup(cite As String) As Integer()
		  // Part of the iBible interface.
		  
		  Const kBookItem = 0
		  Const kChapItem = 1
		  Const kFromVerseItem = 2
		  Const kFromAixItem = 3
		  Const kThruVerseItem = 4
		  Const kThruAixItem = 5
		  
		  Dim citeSplit() As String
		  Dim e As BibleRefException
		  Dim result() As Integer
		  
		  citeSplit = BibleFactory.ParseCitation(cite)
		  
		  If citeSplit.UBound < 1 Then
		    e = New BibleRefException
		    e.Message = App.T.Translate("scripture_lookup/bad_reference/book", cite)
		    Raise e
		  End If
		  
		  Dim bookRef As String
		  bookRef = LookupBookName(citeSplit(kBookItem))
		  If bookRef.Len = 0 Then
		    e = New BibleRefException
		    If ErrorString.Len = 0 Then
		      e.Message = App.T.Translate("scripture_lookup/bad_reference/book", cite)
		    Else
		      e.Message = App.T.Translate("scripture_lookup/bad_reference/ambiguous", bookRef, ErrorString)
		    End If
		    Raise e
		  End If
		  
		  result.Append GetBookNum(bookRef)
		  
		  Dim chapNum As Integer
		  chapNum = CDbl(citeSplit(kChapItem))
		  If chapNum < 1 Or chapNum > GetChapterCount(result(0)) Then
		    e = New BibleRefException
		    e.Message = App.T.Translate("scripture_lookup/bad_reference/chapter", citeSplit(kChapItem))
		    Raise e
		  End If
		  
		  result.Append chapNum
		  
		  Dim fromNode As Integer
		  Dim thruNode As Integer
		  
		  Select Case citeSplit.UBound
		  Case 1 // Book and chapter only
		    fromNode = 1
		    thruNode = UBound(GetVerseNumbers(result(0), result(1))) + 1
		  Case 3
		    fromNode = GetVerseNodeFromNumber(result(0), result(1), CDbl(citeSplit(kFromVerseItem)), citeSplit(kFromAixItem))
		    thruNode = fromNode
		  Case 5
		    fromNode = GetVerseNodeFromNumber(result(0), result(1), CDbl(citeSplit(kFromVerseItem)), citeSplit(kFromAixItem))
		    thruNode = GetVerseNodeFromNumber(result(0), result(1), CDbl(citeSplit(kThruVerseItem)), citeSplit(kThruAixItem))
		  Case Else
		    fromNode = -1
		    thruNode = -1
		    App.DebugWriter.Write "Bible.Quicklookup: citesplit ubound is " + CStr(citeSplit.UBound) + ", expected 1, 3 or 5", 1
		  End Select
		  
		  If fromNode < 0 Then
		    e = New BibleRefException
		    e.Message = App.T.Translate("scripture_lookup/bad_reference/verse", citeSplit(kFromVerseItem) + citeSplit(kFromAixItem))
		    Raise e
		  End If
		  
		  If thruNode < 0 Then
		    e = New BibleRefException
		    e.Message = App.T.Translate("scripture_lookup/bad_reference/verse", citeSplit(kThruVerseItem) + citeSplit(kThruAixItem))
		    Raise e
		  End If
		  
		  result.Append fromNode
		  result.Append thruNode
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function search(word as String, partialMatch as Boolean) As String()
		  Dim min, max, mid, x as Integer
		  Dim returnVal() as String
		  
		  'make sure an index is loaded
		  if (UBound(index)<0) then
		    InputBox.Message App.T.Translate("bible/errors/noindex")
		    return  returnVal
		  end if
		  
		  min=0
		  max=UBound(index)
		  
		  while min<=max
		    mid= (max-min)/2+ min
		    
		    if partialMatch=false then 'look for exact word
		      if (index(mid).entry= word) then
		        for x=0 to UBound(index(mid).passages)
		          returnVal.Append(index(mid).passages(x))
		        next x
		        exit
		      elseif (word<index(mid).entry)  then
		        max=mid-1
		      else
		        min=mid+1
		      end if
		    else 'look for partial word
		      if (InStr(index(mid).entry, word)) >0 then 'partial match
		        
		        returnVal= combineLists(returnVal, index(mid).passages)
		        
		      end if
		      
		      if (word<index(mid).entry)  then
		        max=mid-1
		      else
		        min=mid+1
		      end if
		    end if
		  wend
		  
		  return returnVal
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ValidateBook(bookNum As Integer) As Boolean
		  Dim nums() As Integer
		  Dim names() As String
		  Dim count As Integer
		  Dim found As Boolean = True
		  
		  count = GetNTBooks(names, nums)
		  
		  If nums.IndexOf(bookNum) < 0 Then
		    count = GetOTBooks(names, nums)
		    If nums.IndexOf(bookNum) < 0 Then
		      found = False
		    End If
		  End If
		  
		  Return found
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ValidateCitation(bookNum As Integer, chapterNum As Integer, fromVerse As Integer, thruVerse As Integer) As Boolean
		  // Part of the iBible interface.
		  
		  Dim count As Integer
		  
		  If Not ValidateBook(bookNum) Then Return False
		  
		  count = GetChapterCount(bookNum)
		  
		  If chapterNum < 1 Or chapterNum > count Then Return False
		  
		  count = GetVerseCount(bookNum, chapterNum)
		  
		  If fromVerse < 1 Or fromVerse > count Then Return False
		  If thruVerse < 1 Or thruVerse > count Then Return False
		  If thruVerse < fromVerse Then Return False
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function validSearch(word as String) As Boolean
		  'returns true if the word isn't in the notIndexed list
		  
		  if (notIndexed.IndexOf(word) = -1) then
		    return true
		  else
		    return false
		  end if
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		#tag Note
			Holds the list of valid abbreviations for book names
			The abbreviation is the tag, the bname attribute holds the full book name
		#tag EndNote
		Protected BookAbbrev As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Books(0) As String
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			This flags if a search function is available (will be false if indexing failed or the
			index file isn't available)
		#tag EndNote
		Protected CanSearch As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ErrorCode As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected ErrorString As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected index(-1) As TreeNode
	#tag EndProperty

	#tag Property, Flags = &h0
		IndexDict As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LoadedBible As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LoadedBibleFilename As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LoadedNames(0) As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected notIndexed(-1) As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Scripture As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			If a bible is loaded and the accompanying index
			file shouldn't be created, set this False
			
			Example: If loading a Zefania bible that doesn't have booknames (bname attribute),
			should the user elect not to save the version with the bnames, this will prevent
			the index for what is essentially a temporary bible from being created.
		#tag EndNote
		Protected ShouldGenerateIndex As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected StdBooks(0) As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected VersesInChapters(0) As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected WebBooks(0) As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected wSplash As Splash
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Defines the type of XML used to encode the Bible in this object.
			See the XML_ constants for valid values
			
			XML_ORIGINAL: Original OpenSong XML format
			XML_NAB: Expanded format with self-describing books and chapters
			XML_ZEFANIA: ZEFANIA XML format (http://www.zefania.de)
		#tag EndNote
		Protected XMLTYPE As Integer
	#tag EndProperty


	#tag Constant, Name = NT_PROTESTANT, Type = Integer, Dynamic = False, Default = \"27", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = OT_PROTESTANT, Type = Integer, Dynamic = False, Default = \"39", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = XML_NAB, Type = Integer, Dynamic = False, Default = \"1", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = XML_ORIGINAL, Type = Integer, Dynamic = False, Default = \"0", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = XML_ZEFANIA, Type = Integer, Dynamic = False, Default = \"2", Scope = Protected
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="ErrorCode"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
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
