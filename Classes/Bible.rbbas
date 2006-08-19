#tag Class
Class Bible
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
		  file= GetFolderItem("OpenSong Settings\bnames.xml")
		  if file.Exists=false then
		    msgBox("Cannot find file 'OpenSong Settings\bnames.xml'")
		    
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
		  choice= InputBox.Pick("Please select desired language for this bible's book names:", options)
		  
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
		  out= bibleFile.createTextFile
		  
		  out.Write(Scripture.toString)
		  out.close
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Bible()
		  
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
		    i = msgBox("Error converting '" + strRoman + "': " + GrepErr.Message, 48, "FromRoman")
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

	#tag Method, Flags = &h0
		Function GetBookNum(book as String) As Integer
		  return Books.indexOf(book)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetChapterCount(booknum As Integer) As Integer
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
		    
		    i =  Len(VersesInChapters(booknum)) / 4
		    
		  Case XML_NAB
		    xn = Scripture.Xql("/bible/b[" + str(booknum) + "]")
		    
		    i = val(xn.item(0).GetAttribute("CHAPTERS"))
		    
		  Case XML_ZEFANIA
		    xn = Scripture.Xql("/XMLBIBLE/BIBLEBOOK[" + Str(booknum) + "]/CHAPTER")
		    
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
		Sub GetChapterFromFile(ByRef verses() As String, bible As FolderItem, book As String, chapter As Integer)
		  //
		  // 29 Aug 2005: Legacy code pre-V1
		  // Can't find any reference to this method in V0.9.9
		  // Do not assume that it will work with V1 data structures
		  // Ed Palmer
		  //
		  Dim biblein As TextInputStream
		  Dim line, chap As String
		  Dim inChapter As Boolean
		  Dim x As Integer
		  
		  For x = UBound(verses) DownTo 1
		    verses.Remove x
		  Next x
		  
		  chap = Str(chapter)
		  biblein = bible.OpenAsTextFile
		  
		  While Not biblein.EOF
		    line = biblein.ReadLine
		    If Not inChapter And line = book + " " + chap Then
		      inChapter = True
		      line = biblein.ReadLine ' skip the blank line
		    ElseIf inChapter Then
		      If Len(line) > 1 Then
		        line = ReplaceAll(line, "  ", "|||")
		        line = ReplaceAll(line, "|||", " ")
		        verses.Append Trim(line)
		      Else
		        inChapter = False
		        Exit
		      End If
		    End If
		  Wend
		  
		  biblein.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetLoadedName(num As Integer) As String
		  //
		  // 29 Aug 2005: Ed Palmer
		  // Can't find any references to this method in V0.9.9
		  // Left in for V1 just in case
		  // Do not assume this method supports V1 data structures
		  //
		  Return LoadedNames(num)
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
		  
		  Select Case XMLTYPE
		    
		  Case XML_ORIGINAL
		    Return NT_PROTESTANT
		    
		  Case XML_NAB
		    xn = Scripture.Xql("/bible/NT/book")
		    if xn.length > 0 then
		      Return xn.length
		    else
		      Return NT_PROTESTANT
		    end if
		    
		  Case XML_ZEFANIA
		    //
		    // Zefania books have an attribute with the book number.
		    // Book 40 is Matthew, Book 66 is Revelation.
		    //
		    // Have to do a lookup because Zefania permits a file to only have one
		    // testament, or it may not even be a Christian Bible (i.e., Koran, Book of Mormon)
		    //
		    Return Scripture.Xql("/XMLBIBLE/BIBLEBOOK[@bnumber >= 40 and @bnumber <= 66]").Length
		    
		  End Select
		  
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
		  
		  Select Case XMLTYPE
		  Case XML_ORIGINAL
		    Return OT_PROTESTANT
		    
		  Case XML_NAB
		    Return Scripture.Xql("/bible/OT/book").Length
		    
		  Case XML_ZEFANIA
		    //
		    // Zefania format has Apocrypha books falling after Revelation
		    //
		    // Book 40 is Matthew, book 66 is Revelation
		    //
		    Return Scripture.Xql("/XMLBIBLE/BIBLEBOOK[@bnumber < 40 or @bnumber > 66]").Length
		    
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPassage(book As String, chapter As String, fromVerse As String, toVerse As String) As String()
		  // Updated 8 October 2004 to fix "3John issue" in book parsing algorithm and NAB format
		  // 29 August 2005: Add support for Zefania format
		  // Original version parsed a text string to determine the reference
		  // This version uses distinct parameters.
		  // Ed Palmer
		  
		  If Val(toVerse) < Val(fromVerse) Then toVerse = fromVerse
		  
		  Dim list As New XmlNodeList
		  Dim query As String
		  Dim i As Integer
		  Dim ret(0), verse As String
		  Dim reg as RegEx
		  
		  
		  
		  Select Case XMLTYPE
		    
		  Case XML_ORIGINAL, XML_NAB
		    Try
		      'query = "/bible/b[@n='" + book + "')]/c[" + chapter + "]/v[(@n>='" + fromVerse + "' or @t>='" + toVerse + "') and @n<='" + toVerse + "']"
		      query = "/bible/b[@n='" + book + "']/c[@n=" + chapter + "]/v[(@n>=" + fromVerse + " or @t>=" + toVerse + ") and @n<=" + toVerse + "]"
		      list = Scripture.Xql(query)
		    Catch ex As XmlException
		      ErrorCode = ex.ErrorNumber
		      ErrorString = ex.Message + chr(10) + "At " + ex.Node + ", Token: " + ex.Token
		      return ret
		    End Try
		    
		    For i = 0 To list.Length - 1
		      fromVerse = list.Item(i).GetAttribute("n")
		      toVerse = list.Item(i).GetAttribute("t")
		      If toVerse > fromVerse Then
		        ret.Append fromVerse + "-" + toVerse + " " + list.Item(i).FirstChild.Value
		      Else
		        ret.Append fromVerse + " " + list.Item(i).FirstChild.Value
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
		    Catch ex2 As XmlException
		      ErrorCode = ex2.ErrorNumber
		      ErrorString = ex2.Message + chr(10) + "At " + ex2.Node + ", Token: " + ex2.Token
		    End Try
		    
		    For i = 0 To list.Length - 1
		      fromVerse = list.Item(i).GetAttribute("vnumber")
		      verse= list.Item(i).toString
		      ret.Append fromVerse + " " + reg.Replace(verse)
		    Next
		    
		  End Select
		  
		  Return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetStdBookName(num As Integer) As String
		  //
		  // 29 Aug 2005: Ed Palmer
		  // No reference to this method found in V0.9.9 code
		  // Assume no support for this in V1
		  //
		  Return StdBooks(num)
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

	#tag Method, Flags = &h0
		Function GetVerseCount(booknum As Integer, chapternum As Integer) As Integer
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
		    i = Val(Mid(VersesInChapters(booknum), (chapternum-1)*4+1, 3))
		    
		  Case XML_NAB
		    s = "/bible/b[" + str(booknum) + "]/c[" + str(chapternum) + "]"
		    xn = Scripture.Xql(s)
		    if xn.item(0) <> nil then
		      i = val(xn.item(0).GetAttribute("VERSES"))
		    end if
		    
		  Case XML_ZEFANIA
		    s = "/XMLBIBLE/BIBLEBOOK[" + str(booknum) + "]/CHAPTER[" + str(chapternum) + "]/VERS"
		    xn = Scripture.Xql(s)
		    i = xn.Length
		    
		  Case Else
		    // TODO: Descriptive error message
		    
		  End Select
		  return i
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
		  
		  Select Case XMLTYPE
		  Case XML_ORIGINAL, XML_NAB
		    xn = Scripture.Xql("/bible/b[@n='" + BookName + "']/c[@n=" + Str(ChapterNum) + "]/v")
		    For i = 0 to xn.Length - 1
		      Verses.Append xn.Item(i).GetAttribute("n")
		      if xn.Item(i).GetAttribute("t") <> "" Then
		        Verses.Append xn.Item(i).GetAttribute("t")
		      End If
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
		Protected Sub genIndex(file As FolderItem)
		  'bhenny- create index of words to use for searches
		  Dim newFile as FolderItem
		  Dim out as TextOutputStream
		  Dim node as XMLNode
		  Dim split(), verse, location, fileName, sBook, sChap, sVer as String
		  Dim reg as RegEx
		  Dim x,y,  book, chap, ver, bound as Integer
		  Dim root, wordNode as TreeNode
		  Dim Progress As Double
		  Dim BookName As String
		  
		  'clear index
		  reDim index(-1)
		  reDim notIndexed(-1)
		  
		  'create folder if necessary
		  newFile= New FolderItem(file.Parent.child("indexes"))
		  if newFile.Exists=false then
		    newFile.CreateAsFolder
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
		    catch err
		      newFile.delete
		      genIndex(file)
		    end try
		    
		    return
		  end if
		  
		  out= newFile.CreateTextFile
		  
		  'go to first book
		  //++EMP 18 Feb 2006
		  // Had to change the original If to a Select
		  // The structure for XML_NAB isn't quite the same
		  // as the original, and the first two children define the OT and NT books
		  //--
		  'if XMLTYPE= XML_ZEFANIA then
		  'node= Scripture.xql("/XMLBIBLE/BIBLEBOOK[1]").Item(0)
		  'else
		  'node= Scripture.Child(0).Child(0)
		  'end if
		  Select Case XMLTYPE
		  Case XML_ZEFANIA
		    node = Scripture.xql("/XMLBIBLE/BIBLEBOOK[1]").Item(0)
		  Case XML_NAB
		    node = Scripture.xql("/bible/b[1]").Item(0)
		  Case XML_ORIGINAL
		    node = Scripture.Child(0).Child(0)
		  End Select
		  
		  'used to remove puncuation and xml tags
		  reg= New RegEx
		  reg.SearchPattern= "[^a-zA-Z0-9\s]+"
		  reg.ReplacementPattern=""
		  reg.Options.ReplaceAllMatches=true
		  
		  'open progress window
		  IndexProgress.ShowWithin App.GetFrontControlScreenWindow
		  
		  'books
		  book=1
		  sBook= "1"
		  while node <> nil
		    node=node.Child(0)
		    
		    'update progress window
		    Progress = book/GetBookCount() * 100
		    BookName = GetBookName(book)
		    
		    IndexProgress.setProgress(Progress, BookName)
		    
		    
		    'chapters
		    chap=1
		    sChap="1"
		    while node <> nil
		      node=node.Child(0)
		      
		      'see if the user canceled creating the index
		      if (IndexProgress.cancel=true) then
		        out.close
		        newFile.Delete
		        IndexProgress.close
		        CanSearch = False
		        return
		      end if
		      
		      App.DoEvents 0
		      
		      'verses
		      ver=1
		      sVer="1"
		      while node <> nil
		        if node.Child(0)<> nil then
		          location=sBook + " " + sChap + " " + sVer
		          
		          'remove puncuation
		          verse= reg.Replace( getVerse(node.child(0)), 0)
		          
		          'split verse into individual words
		          split= verse.Split()
		          
		          'add to index
		          for x=0 to UBound(split)
		            'if string is empty or in the list of words not to index then skip
		            
		            if (Len(split(x))>=1 AND notIndexed.IndexOf(split(x)) <0) then
		              
		              if (root=nil) then 'first entry
		                root= new TreeNode(new IndexEntry(split(x)))
		              else
		                wordNode=root.find(split(x))
		                
		                bound=UBound(wordNode.entry.passages)
		                
		                if (bound >= 5000) then
		                  ''add to not indexed list and remove from index
		                  notIndexed.Append(split(x))
		                  
		                  root.delete(split(x))
		                else
		                  
		                  ''make sure not to include the same verse twice
		                  if (bound < 0 OR location <> wordNode.entry.passages(bound)) then
		                    wordNode.entry.passages.Append(location)
		                  end if '(bound < 0 Or location...
		                end if '(bound >= 5000)
		              end if '(root = Nil)
		            end if '(Len(split(x)) >= 1)...
		          next x
		        end if
		        
		        if node.NextSibling=nil then
		          node=node.Parent
		          exit
		        else
		          node=node.NextSibling
		        end if
		        
		        ver=ver+1
		        sVer= Str(ver)
		        // Since this is a s..l..o..w operation on OSX, update each verse (EMP)
		        'IndexProgress.setProgress(Progress, _
		        'stringutils.Sprintf("%s %d:%d",  BookName, chap, ver))
		        'App.DoEvents 0 'Windows needs this to update the progress window
		      wend
		      
		      if node.NextSibling=nil then
		        node=node.Parent
		        exit
		      else
		        node=node.NextSibling
		      end if
		      
		      chap=chap+1
		      sChap= Str(chap)
		    wend
		    
		    if node.NextSibling=nil then
		      exit
		    else
		      node=node.NextSibling
		    end if
		    
		    book=book+1
		    sBook= Str(book)
		  wend
		  
		  'sort by priority
		  root.inorderTraverse(index)
		  
		  'write to file
		  for x=0 to UBound(index)
		    out.write(index(x).word)
		    
		    for y=0 to UBound(index(x).passages)
		      out.write("|"+index(x).passages(y))
		    next y
		    out.WriteLine("")
		  next x
		  
		  out.WriteLine("---")
		  
		  for x=0 to UBound(notIndexed)
		    out.writeLine(notIndexed(x))
		  next x
		  
		  out.Close
		  
		  'close progress window
		  IndexProgress.close
		  CanSearch = True
		  
		Exception excep
		  out.Close
		  newFile.delete
		  
		  'reDim index as IndexEntry(-1)
		  'reDim notIndexed as String(-1)
		  
		  MsgBox ("Error generating Bible index. Search will be disabled.")
		  CanSearch = False
		  If IndexProgress.Visible Then
		    IndexProgress.Close
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getVerse(node as XMLNode) As String
		  if node=nil then
		    return ""
		  elseif node.Type=3 then 'text_node
		    return node.value
		  else
		    return getVerse(node.child(0)) + getVerse(node.nextSibling)
		  end if
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
		  
		  Scripture = New XmlDocument
		  
		  Dim input As TextInputStream
		  Dim s As String
		  Dim i As Integer
		  Dim BookAbbrevRoot As XmlNode
		  Dim BookNode, node As XmlNode
		  Dim BookName As String
		  Dim StdName As String
		  Dim names() as String
		  
		  // Why wasn't Scripture = New XmlDocument(file) used?
		  
		  If file = Nil Then
		    ErrorCode = 1
		    ErrorString = "Path not found."
		    Return False
		  ElseIf Not file.Exists Then
		    ErrorCode = 2
		    ErrorString = "File not found: " + file.AbsolutePath
		    Return False
		  End If
		  input = file.OpenAsTextFile
		  s = input.ReadAll
		  input.Close
		  
		  Dim list As New XmlNodeList
		  
		  Try
		    If Len(s) > 5 Then // Why?...
		      Scripture.LoadXml(s)
		      
		      If Scripture = Nil Then
		        ErrorCode = 7
		        ErrorString = "Error parsing XML: " + file.AbsolutePath
		        Return False
		      End If
		    Else
		      Return False
		    End If
		  Catch LoadErr
		    If LoadErr IsA XmlException Then
		      ErrorCode = 7
		      ErrorString = "Error parsing Bible " + file.Name + chr(10) +_
		      "Node: " + XmlException(LoadErr).Node +_
		      " at line: " + XmlException(LoadErr).Line
		      MsgBox(ErrorString)
		      Scripture = Nil
		      Return False
		    Else
		      ErrorCode = 3
		      ErrorString = RuntimeException(LoadErr).Message
		      MsgBox(ErrorString)
		      Scripture = Nil
		      Return False
		    End If
		  End Try
		  
		  
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
		    list = Scripture.Xql("/bible/b")
		    If list.Length > 0 Then
		      XMLTYPE = XML_ORIGINAL
		      s = list.Item(0).GetAttribute("CHAPTERS")
		      If Len(s) > 0 Then XMLTYPE = XML_NAB
		      
		      For i = 0 To list.Length - 1
		        BookName = list.Item(i).GetAttribute("n")
		        Books.Append BookName
		        
		        StdName = Lowercase(Left(MakeStandardName(BookName), 3)) //Assume first three characters are unique
		        
		        BookNode = BookAbbrevRoot.AppendChild(BookAbbrev.CreateElement(StdName))
		        BookNode.SetAttribute("bname", BookName)
		      Next
		      
		      If XMLTYPE = XML_ORIGINAL Then
		        LoadedBible = file.Name
		      Else
		        LoadedBible = Scripture.FirstChild.GetAttribute("n")
		      End If
		      LoadedBibleFilename = LoadedBible
		      
		    Else
		      ErrorCode = 7
		      ErrorString = "Invalid Bible: " + file.AbsolutePath + " (No books found)"
		      Return False
		    End If
		    
		    'bhenny- either load or create index
		    genIndex(file)
		    
		    Return True
		    
		  Case "XMLBIBLE"
		    //
		    // ZefaniaXML format
		    //
		    XMLTYPE = XML_ZEFANIA
		    
		    list = Scripture.Xql("/XMLBIBLE/BIBLEBOOK")
		    
		    'bhenny- if the bible doesn't have the required bname attributes add them in from the file bnames.xml
		    If list.Item(0).GetAttribute("bname")="" then
		      try
		        if addBNames(file)=false then
		          ErrorCode=111
		          ErrorString="Bible does not have required bname attributes and they could not be added"
		          Scripture=nil
		          return false
		        end if
		      catch e
		        ErrorCode=111
		        ErrorString="Bible does not have required bname attributes and they could not be added"
		        Scripture=nil
		        return false
		      end try
		      
		    end if
		    
		    If list.Length > 0 Then
		      For i = 0 To list.Length - 1
		        BookName = list.Item(i).GetAttribute("bname")
		        Books.Append BookName
		        BookNode = BookAbbrevRoot.AppendChild(BookAbbrev.CreateElement(Lowercase(list.item(i).GetAttribute("bsname"))))
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
		    genIndex(file)
		    
		    Return True
		    
		  Case Else
		    ErrorCode = 5
		    ErrorString = "Error parsing XML: " + file.AbsolutePath + _
		    " (Unrecognized DocElement: " + _
		    Scripture.DocumentElement.Name + ")"
		    Return False
		  End Select
		  
		Exception err
		  If err IsA XmlException Then
		    ErrorCode = 3
		    ErrorString = "Error parsing XML: " + file.AbsolutePath + ": Line " + XmlException(err).Line + ": " + XmlException(err).Node
		    Return False
		  Else
		    ErrorCode  = err.ErrorNumber
		    ErrorString = err.Message
		    Return False
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LookupBookName(ShortName As String) As String
		  //
		  // Determine what book the passed string refers to.
		  //
		  // Ed Palmer, September 2005
		  //
		  Dim FoundBooks(0) As String
		  Dim xn As XmlNodeList
		  
		  ShortName = Lowercase(ShortName)
		  ShortName = ReplaceAll(ShortName, ".", "")
		  ShortName = ReplaceAll(ShortName, " ", "")
		  
		  'xn = Scripture.Xql("//b[matches(@n, ShortName, 'i')]")
		  xn = BookAbbrev.Xql("/abbrev/*[starts-with(name(), '" + Left(ShortName, 3) + "')]")
		  
		  If xn.Length = 1 Then
		    Return xn.Item(0).GetAttribute("bname")
		  Else
		    Return ""
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LookupPassage(ref As String) As String()
		  // Validate and convert the passed reference into
		  // book name, chapter, starting verse and ending verse,
		  // then return the passage to the caller.
		  //
		  // Relies on method GetPassage, which originally was a
		  // combination of this method and that one.
		  //
		  // Ed Palmer, 29 August 2005
		  //
		  // ********* NOTE: This method is incomplete at this time
		  // TODO: Complete
		  //
		  // (This was started before I discovered that the ScripturePickerWindow
		  // actually handles parsing the free-form "quick lookup."  I'm unsure if
		  // that should be pushed down into the Bible class or if Bible should
		  // just support external code such as ScripturePickerWindow with
		  // a function to take a book abbreviation and return matching full
		  // book names (see LookupBookName).)
		  //
		  Dim ret(0) As String
		  Dim j as integer
		  Dim BookName As String
		  Dim BookList As New XmlNodeList
		  If Scripture = Nil Then Return ret
		  
		  Dim book, chapter, fromv, tov As String
		  
		  ref = ReplaceAll(ref, ":", " ")
		  ref = ReplaceAll(ref, "-", " ")
		  
		  book = NthField(ref, " ", 1)
		  
		  j= FromRoman(book) // should be I, II or III (No books can accidentally trigger in English language)
		  if j > 0 then
		    book = str(j)
		  end if
		  If IsPositiveInteger(book) Then ' 1,2,I,II with a space after
		    book = book + " " + NthField(ref, " ", 2)
		    chapter = NthField(ref, " ", 3)
		    fromv = NthField(ref, " ", 4)
		    tov = NthField(ref, " ", 5)
		  Elseif IsPositiveInteger(Left(book, 1)) Then
		    book = Left(book, 1) + " " + Mid(book, 2) ' 1,2 without a space after
		    chapter = NthField(ref, " ", 2)
		    fromv = NthField(ref, " ", 3)
		    tov = NthField(ref, " ", 4)
		  Else
		    chapter = NthField(ref, " ", 2)
		    fromv = NthField(ref, " ", 3)
		    tov = NthField(ref, " ",4)
		  End If
		  //
		  // Validate the book.
		  //
		  // "Valid" book abbreviations are held in the BookAbbrev XmlDocument
		  //
		  BookList = BookAbbrev.Xql("/abbrev/" + book)
		  
		  Select Case BookList.Length
		    
		  Case 1
		    BookName = BookList.Item(0).GetAttribute("bname")
		    Return GetPassage(BookName, chapter, fromv, tov)
		    
		  Case 0
		    ErrorCode = 8
		    ErrorString = "Unable to find '" + book + "'"
		    Return ret
		    
		  Case Else
		    ErrorCode = 9
		    ErrorString = "Multiple books found for '" + book + "'"
		    Return ret
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub loadIndex(file As FolderItem)
		  Dim fileIn as TextInputStream
		  Dim line() as String
		  Dim entry as IndexEntry
		  Dim x as Integer
		  
		  
		  fileIn= file.OpenAsTextFile
		  
		  line= fileIn.ReadLine().split("|")
		  
		  'read indexed words
		  while line(0) <> "---"
		    entry= new IndexEntry(line(0))
		    
		    for x=1 to UBound(line)
		      entry.passages.Append(line(x))
		    next x
		    
		    index.Append(entry)
		    
		    
		    line= fileIn.ReadLine().split("|")
		  wend
		  
		  'read words that aren't indexed
		  line(0)= fileIn.ReadLine()
		  
		  while (line(0) <> "")
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
		      If IndexProgress.Visible = True Then
		        IndexProgress.Close
		      End If
		      CanSearch = False
		    Else // Toss it back up the chain
		      CanSearch = False
		      Raise ex
		    End If
		End Sub
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
		Function search(word as String, partialMatch as Boolean) As String()
		  Dim min, max, mid, x as Integer
		  Dim returnVal() as String
		  
		  'make sure an index is loaded
		  if (UBound(index)<0) then
		    MsgBox("No index loaded. Please restart OpenSong or select a different version.")
		    
		    return  returnVal
		  end if
		  
		  min=0
		  max=UBound(index)
		  
		  while min<=max
		    mid= (max-min)/2+ min
		    
		    if partialMatch=false then 'look for exact word
		      if (index(mid).word= word) then
		        for x=0 to UBound(index(mid).passages)
		          returnVal.Append(index(mid).passages(x))
		        next x
		        exit
		      elseif (word<index(mid).word)  then
		        max=mid-1
		      else
		        min=mid+1
		      end if
		    else 'look for partial word
		      if (InStr(index(mid).word, word)) >0 then 'partial match
		        
		        returnVal= combineLists(returnVal, index(mid).passages)
		        
		      end if
		      
		      if (word<index(mid).word)  then
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

	#tag Property, Flags = &h0
		ErrorString As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected index(-1) As IndexEntry
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
		Protected StdBooks(0) As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected VersesInChapters(0) As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected WebBooks(0) As String
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


End Class
#tag EndClass
