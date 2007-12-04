#tag Module
Module StringUtils
	#tag Method, Flags = &h1
		Protected Function Chop(s As String, charsToCut As Integer) As String
		  // Return s with the rightmost 'charsToCut' chars removed.
		  
		  return s.Left( s.Len - charsToCut )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ChopB(s As String, bytesToCut As Integer) As String
		  // Return s with the rightmost 'bytesToCut' bytes removed.
		  
		  return s.LeftB( s.LenB - bytesToCut )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CleanSpaces(Extends str As String) As String
		  // Returns the string with multiple back-to-back spaces shortened down to a single space.
		  // Sean Lickfold, 2004
		  
		  Dim i As Integer
		  Dim temp As String
		  i = Instr(str, "  ")
		  While i > 0
		    str = Mid(str, 1, i-1) + Mid(str, i+1)
		    i = Instr(i, str, "  ")
		  Wend
		  Return str
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Compare(s1 As string, s2 As string) As Integer
		  
		  // adapted from c# source code (this is a standard compare)
		  //(c) Vasian Cepa 2005
		  // Version 2
		  
		  //get rid of special cases
		  dim c1 As string
		  dim c2 As string
		  dim l1 As Integer
		  dim l2 As Integer
		  dim i1 As Integer
		  dim i2 As Integer
		  dim d1 As Boolean
		  dim d2 As Boolean
		  dim letter1 As  Boolean
		  dim letter2 As  Boolean
		  dim r As Integer
		  
		  i1 = 1
		  i2  = 1
		  r  =0
		  
		  if s1 = "" then
		    if s2 = "" then
		      return 0
		    else
		      return -1
		    end if
		    
		  end if
		  
		  //WE style, special case
		  c1 = s1.Left(1)
		  c2 = s2.Left(1)
		  if isalnum(Asc(c1)) = true then
		    if isalnum(Asc(c2)) = false then
		      return 1
		    end if
		  else
		    if isalnum(Asc(c2)) = true then
		      return -1
		    end if
		  end if
		  
		  while true
		    c1 = s1.Mid(i1, 1)
		    c2 = s2.Mid(i2, 1)
		    l1 = tolower(Asc(c1))
		    l2 = tolower(Asc(c2))
		    d1 = isdigit(Asc(c1))
		    d2 = isdigit(Asc(c2))
		    
		    if d1 = false then 'c1 is not a number
		      if d2 = false then  'c2 is not a number
		        letter1 = isalpha(Asc(c1))
		        letter2 = isalpha(Asc(c2))
		        
		        if letter1 = true then 'c1 is a letter
		          if letter2 = true then 'c2 is a letter
		            if l1 = l2 then
		              r = 0
		            end if
		            if l1 > l2 then
		              r = 1
		            end if
		            if l1 < l2 then
		              r = -1
		            end if
		            if r <> 0 then
		              return r
		            end if
		          else 'c2 is not a letter
		            return 1
		          end if
		        else 'c1 is not a letter
		          if letter2 = false then 'c2 is not a letter
		            if c1 = c2 then
		              r = 0
		            end if
		            if c1 > c2 then
		              r = 1
		            end if
		            if c1 < c2 then
		              r = -1
		            end if
		            if r <> 0 then
		              return r
		            end if
		          else 'c2 is a letter
		            return -1
		          end if
		        end if
		        
		      else ' c2 is a number
		        return 1
		      end if
		    else 'c1 is a number
		      if d2 = true then 'c2 is a number
		        r = CompareNum(s1, i1, s2, i2)
		        if r <> 0 then
		          return r
		        end if
		      else 'c2 is not a number
		        return -1
		      end if
		      
		    end if
		    
		    'if d2 = true then 'c2 is a number
		    'return 1
		    'end if
		    
		    i1 = i1 + 1
		    i2 = i2 + 1
		    
		    if i1 >= s1.Len then
		      if i2 >= s2.Len then
		        return 0
		      else
		        return -1
		      end if
		    end if
		    
		    if i2 >= s2.Len then
		      return -1
		    end if
		    
		  wend
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CompareHymnBookOrder(s1 As String, s2 As String) As Integer
		  // EMP 4 Feb 06
		  //
		  // Here's a different take on a compare routine.
		  // This puts items that have numbers after
		  // letters in numerical order.
		  // It also puts items with leading digits in numerical order as well.
		  // Two strings with trailing digits that are otherwise equal get
		  // sorted in numerical order (i.e., Song1, Song2, Song10, Song11)
		  //
		  // Returns 0 if equal, -1 if s1 < s2, 1 if s1 > s2
		  //
		  Dim re As New RegEx
		  Dim result1 As RegExMatch
		  Dim result2 As RegExMatch
		  Dim result1a As RegExMatch
		  Dim result2a As RegExMatch
		  Dim val1, val2 As Integer
		  Dim t1, t2 As String
		  Dim CompareCode As Integer = 0
		  Dim i As Integer
		  
		  //
		  // Add a trailing forward slant.  Otherwise, the first RegEx isn't right and
		  // the compare degenerates into a simple string compare.
		  // Even if it already had one, this is faster than doing the If check to see, and the /* in the RE
		  // will pick up both.
		  //
		  s1 = s1 + "/"
		  s2 = s2 + "/"
		  //
		  // Split the string into name and directory (string is of the form /name/dir[/dir...]/)
		  //
		  re.SearchPattern = "^/*(.*?)/(.*?)/*$"
		  result1 = re.Search(s1)
		  result2 = re.Search(s2)
		  If result1 = Nil or result2 = Nil Then  // Not in expected format; return standard compare
		    if s1 < s2 Then Return -1
		    If s1 > s2 Then Return 1
		    Return 0
		  End If
		  
		  t1 = result1.SubExpressionString(1) // Just the filename portion, please
		  t2 = result2.SubExpressionString(1)
		  
		  re.SearchPattern = "^(\d*)(.*?)(\d*)$" // Start of string, zero or more characters, one or more digits, end of string
		  
		  result1a = re.Search(t1)
		  result2a = re.Search(t2)
		  If result1a = Nil or result2a = Nil Then  // Not in expected format; return standard compare
		    if s1 < s2 Then Return -1
		    If s1 > s2 Then Return 1
		    Return 0
		  End If
		  
		  val1 = CDbl(result1a.SubExpressionString(1)) // Leading numbers
		  val2 = CDbl(result2a.SubExpressionString(1))
		  
		  // If the value is zero, then there wasn't anything there
		  
		  If val1 > 0 And val2 = 0 Then
		    // Leading numbers are smaller than alphabetic by definition
		    If Left(result2a.SubExpressionString(2), 1) > "9" Then Return -1 Else Return 1
		  End If
		  If val1 = 0 And val2 > 0 Then
		    If Left(result1a.SubExpressionString(2), 1) > "9" Then Return 1 Else Return -1
		  End If
		  
		  if val1 < val2 Then Return -1
		  If val1 > val2 Then Return 1
		  
		  // Initial numbers (if any) are equal. Check the interior string.
		  
		  t1 = result1a.SubExpressionString(2)
		  t2 = result2a.SubExpressionString(2)
		  
		  If t1 < t2 Then Return -1
		  If t1 > t2 Then Return 1
		  
		  // Strings are equal.  Check for trailing numbers
		  
		  val1 = CDbl(result1a.SubExpressionString(3))
		  val2 = CDbl(result2a.SubExpressionString(3))
		  
		  If val1 < val2 Then Return -1
		  If val1 > val2 Then Return 1
		  
		  // Everything is equal.  Just return the comparison of the original strings
		  // This way, directory names should break the tie.
		  
		  If s1 < s2 Then Return -1
		  If s1 > s2 Then Return 1
		  Return 0
		  
		Catch ex as RegExException
		  If s1 < s2 Then Return -1
		  If s1 > s2 Then Return 1
		  Return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CompareNum(s1 As string, ByRef i1 As Integer, s2 As string, Byref i2 As Integer) As Integer
		  // adapted from c# source code
		  //(c) Vasian Cepa 2005
		  // Version 2
		  
		  dim nzStart1 As Integer
		  dim nzStart2 As Integer
		  dim end1 As Integer
		  dim end2 As Integer
		  dim start1 As Integer
		  dim start2 As Integer
		  dim nzLength1 As Integer
		  dim nzLength2 As Integer
		  dim r As Integer
		  dim j1 As Integer
		  dim j2 As Integer
		  dim c1 As string
		  dim c2 As string
		  dim length1 As Integer
		  dim length2 As Integer
		  dim i As Integer
		  
		  nzStart1 = i1
		  nzStart2 = i2
		  end1 = i1
		  end2 = i2
		  
		  ScanNumEnd(s1, i1, end1, nzStart1)
		  ScanNumEnd(s2, i2, end2, nzStart2)
		  
		  start1 = i1
		  start2 = i2
		  i1 = end1 - 1
		  i2 = end2 - 1
		  
		  nzLength1 = end1 - nzStart1
		  nzLength2 = end2 - nzStart2
		  r = 0
		  
		  if nzLength1 < nzLength2 then
		    return -1
		  end if
		  if nzLength1 > nzLength2 then
		    return 1
		  end if
		  
		  j1 = nzStart1
		  j2 = nzStart2
		  
		  while j1 <= i1
		    c1 = s1.Mid(j1, 1)
		    c2 = s2.Mid(j2, 1)
		    
		    if c1 = c2 then
		      r = 0
		    end if
		    if c1 > c2 then
		      r = 1
		    end if
		    if c1 < c2 then
		      r = -1
		    end if
		    
		    if r <> 0 then
		      return r
		    end if
		    
		    j1 = j1 + 1
		    j2 = j2 + 1
		  wend
		  
		  length1 = end1 - start1
		  length2 = end2 - start2
		  
		  if length1 = length2 then
		    return 0
		  end if
		  if length1 > length2 then
		    return -1
		  end if
		  
		  return 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Contains(extends s As String, what As String) As Boolean
		  // Return true if 's' contains the substring 'what'.
		  // By "contains" we mean case-insensitive, encoding-savvy containment
		  // as with InStr.
		  
		  if what = "" then return true
		  return InStr( s, what ) > 0
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsB(extends s As String, what As String) As Boolean
		  // Return true if 's' contains the substring 'what'.
		  // By "contains" we mean binary containment
		  // as with InStrB.
		  
		  if what = "" then return true
		  return InStrB( s, what ) > 0
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ControlCharacters() As String
		  // Return the control character region of the ASCII set,
		  // i.e., ASCII 0 through 31.
		  Dim i As Integer
		  if mControlChars = "" then
		    for i = 0 to 31
		      mControlChars = mControlChars + Encodings.ASCII.Chr(i)
		    next
		  end if
		  
		  return mControlChars
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Count(source As String, substr As String) As Integer
		  // Return how many non-overlapping occurrences of 'substr' there
		  // are in 'source'.
		  
		  dim theCount as Integer
		  dim substrLength as Integer
		  dim start as Integer
		  
		  substrLength = Len(substr)
		  if substrLength = 0 then return Len(source) + 1
		  
		  start = 1
		  Do
		    start= InStr(start, source, substr)
		    If start < 1 then return theCount
		    theCount = theCount + 1
		    start = start + substrLength
		  Loop
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CountB(source As String, substr As String) As Integer
		  // Return how many non-overlapping occurrences of 'substr' there
		  // are in 'source', doing binary comparison.
		  
		  dim theCount as Integer
		  dim substrLength as Integer
		  dim start as Integer
		  
		  substrLength = Len(substr)
		  if substrLength = 0 then return LenB(source) + 1
		  
		  start = 1
		  Do
		    start= InStrB(start, source, substr)
		    If start < 1 then return theCount
		    theCount = theCount + 1
		    start = start + substrLength
		  Loop
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CountFieldsQuoted(src as string, sep as string) As integer
		  // Equivalent to RB's CountFields() function, but respects quoted values
		  // Usage:
		  //    s = """Hello, Kitty"", ""One"", ""Two, Three"""
		  //    x = CountFieldsQuoted(s, ",")
		  // result: x=3
		  
		  #pragma DisableBoundsChecking
		  #pragma NilObjectChecking false
		  
		  if InStr( src, sep ) = 0 then return 1
		  if InStr(src,"""")=0 then return CountFields(src, sep)
		  
		  dim countParts, i, n, c as integer
		  dim sepLen as integer = len( sep )
		  dim parts( -1 ) as string
		  
		  parts = split( src, """" )
		  countParts = UBound( parts )
		  for i = 0 to countParts step 2
		    n = InStr( parts( i ), sep )
		    while n > 0
		      c = c + 1
		      n = InStr( n + sepLen, parts( i ), sep )
		    wend
		  next i
		  
		  return c + 1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CountRegEx(s As String, pattern As String) As Integer
		  // Count the number of occurrences of a RegEx pattern within a string.
		  
		  Dim out As Integer
		  
		  Dim re As New RegEx
		  Dim rm As RegExMatch
		  
		  re.SearchPattern = pattern
		  rm = re.Search( s )
		  while rm <> nil
		    'System.DebugLog rm.SubExpressionString(0) + " at " + str(rm.SubExpressionStartB(0)) + " matches " + pattern + " in " + s
		    out = out + 1
		    rm = re.Search
		  wend
		  
		  return out
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DecimalSeparator() As String
		  // Return the decimal separator the user uses (either "." or ",").
		  if mDecimalSeparator = "" then
		    mDecimalSeparator = Format(1.2, "0.0")
		    mDecimalSeparator = Mid( mDecimalSeparator, 2, 1 )
		  end if
		  
		  return mDecimalSeparator
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function EditDistance(s1 As String, s2 As String) As Integer
		  // Return the Levenshein distance, aka the edit distance,
		  // between the two StringUtils.  That's the number of insertions
		  // or deletions required to make one string match the other.
		  // A result of 0 means the strings
		  // are identical; higher values mean more different.
		  
		  // Implementation adapted from <http://www.merriampark.com/ld.htm>,
		  // though we're using only a 1D array since the 2D array is wasteful.
		  
		  Dim n, m As Integer
		  n = s1.Len
		  m = s2.Len
		  if n = 0 then return m
		  if m = 0 then return n
		  
		  Dim d(-1) As Integer
		  Redim d(m)
		  Dim i, j, cost As Integer
		  
		  Dim s1char As String
		  Dim lastCost, nextCost As Integer
		  Dim a, b, c As Integer
		  for i = 1 to n
		    s1char = Mid( s1, i, 1 )
		    lastCost = i
		    for j = 1 to m
		      if s1char = Mid( s2, j, 1 ) then cost = 0 else cost = 1
		      
		      // set nextCost to the minimum of the following three possibilities:
		      a = d(j) + 1
		      b = lastCost + 1
		      c = cost + d(j-1)
		      
		      if a < b then
		        if c < a then nextCost = c else nextCost = a
		      else
		        if c < b then nextCost = c else nextCost = b
		      end if
		      
		      d(j-1) = lastCost
		      lastCost = nextCost
		    next
		    d(m) = lastCost
		  next
		  
		  return nextCost
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EndsWith(extends s As String, withWhat As String) As Boolean
		  // Return true if 's' ends with the string 'withWhat',
		  // doing a standard string comparison.
		  
		  return Right(s, withWhat.Len) = withWhat
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EndsWithB(extends s As String, withWhat As String) As Boolean
		  // Return true if 's' ends with the string 'withWhat',
		  // doing a binary comparison.
		  
		  return StrComp( RightB(s, withWhat.Len), withWhat, 0 ) = 0
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FormatLocalEndOfLine(Extends str As String) As String
		  // Sean Lickfold, 2004
		  
		  str = ReplaceAll(str.FormatUnixEndOfLine, Chr(10), EndOfLine)
		  Return str
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FormatUnixEndOfLine(Extends str As String) As String
		  // Sean Lickfold, 2004
		  
		  str = ReplaceAll(str, Chr(13)+Chr(10), Chr(10))
		  str = ReplaceAll(str, Chr(13), Chr(10))
		  Return str
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Hash(s As String) As Integer
		  // Return the hash value of the given string, as used by RB's
		  // Variant and Dictionary classes.
		  
		  Dim v As Variant
		  v = s
		  return v.Hash
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Heapify(a() as String, parentIndex as integer, lastIndex as integer)
		  dim childIndex as integer
		  dim temp as variant
		  childIndex = parentIndex*2
		  // if item has no children, do nothing
		  if childIndex > lastIndex then
		    return
		  end
		  // point at largest child
		  if childIndex+1 <= lastIndex then
		    if a(childIndex).shouldSwapWith(a(childIndex+1)) then
		      childIndex = childIndex+1
		    end
		  end
		  // if needs swapping, swap and continue heapifying
		  if a(parentIndex).shouldSwapWith(a(childIndex)) then
		    temp = a(childIndex)
		    a(childIndex) = a(parentIndex)
		    a(parentIndex) = temp
		    heapify(a, childIndex, lastIndex)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Heapsort(a() As String)
		  dim i,u as integer
		  dim temp as variant
		  u = ubound(a)
		  for i = u downto 0
		    heapify(a, i, u)
		  next
		  for i = u downto 1
		    temp = a(i)
		    a(i) = a(0)
		    a(0) = temp
		    heapify(a, 0, i-1)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function HexB(s As String) As String
		  // Return a hex representation of each byte of s,
		  // i.e., each byte becomes a pair of hexadecimal digits,
		  // separated by spaces from the next byte.
		  
		  Dim m As MemoryBlock
		  Dim spos, mpos, bytes, b As Integer
		  
		  bytes = s.LenB
		  if bytes < 1 then return ""
		  
		  Dim hexChar() As Integer = Array( _
		  48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70 )
		  
		  m = NewMemoryBlock( bytes*2 + bytes - 1 )
		  for spos = 1 to bytes
		    b = AscB( MidB( s, spos, 1 ) )
		    if b < 16 then
		      m.Byte(mpos) = hexChar(0)
		      m.Byte(mpos+1) = hexChar(b)
		    else
		      m.Byte(mpos) = hexChar(b \ 16)
		      m.Byte(mpos+1) = hexChar(b mod 16)
		    end if
		    if spos < bytes then m.Byte(mpos+2) = 32  // space
		    mpos = mpos + 3
		  next
		  
		  return DefineEncoding( m.StringValue(0, m.size), Encodings.ASCII )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function InStrReverse(startPos As Integer = - 1, source As String, substr As String) As Integer
		  // Similar to InStr, but searches backwards from the given position
		  // (or if startPos = -1, then from the end of the string).
		  // If substr can't be found, returns 0.
		  
		  Dim srcLen As Integer = source.Len
		  if startPos = -1 then startPos = srcLen
		  
		  // Here's an easy way...
		  // There may be a faster implementation, but then again, there may not -- it probably
		  // depends on what you're trying to do.
		  Dim reversedSource As String = Reverse(source)
		  Dim reversedSubstr As String = Reverse(substr)
		  Dim reversedPos As Integer
		  reversedPos = InStr( srcLen - startPos + 1, reversedSource, reversedSubstr )
		  if reversedPos < 1 then return 0
		  return srcLen - reversedPos - substr.Len + 2
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function InStrReverseB(startPosB As Integer = - 1, source As String, substr As String) As Integer
		  // Similar to InStrB, but searches backwards from the given position
		  // (or if startPosB = -1, then from the end of the string).
		  // If substr can't be found, returns 0.
		  
		  Dim srcLen As Integer = source.LenB
		  if startPosB = -1 then startPosB = srcLen
		  
		  // Here's an easy way...
		  // There may be a faster implementation, but then again, there may not -- it probably
		  // depends on what you're trying to do.
		  Dim reversedSource As String = Reverse(source)
		  Dim reversedSubstr As String = Reverse(substr)
		  Dim reversedPos As Integer
		  reversedPos = InStrB( srcLen - startPosB + 1, reversedSource, reversedSubstr )
		  if reversedPos < 1 then return 0
		  return srcLen - reversedPos - substr.LenB + 2
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isalnum(c As Integer) As Boolean
		  if c >= Asc("0") then
		    if c <= Asc("9") then
		      return true
		    end if
		  end if
		  
		  if c >= Asc("a") then
		    if c <= Asc("z") then
		      return true
		    end if
		  end if
		  
		  if c >= Asc("A") then
		    if c <= Asc("Z") then
		      return true
		    end if
		  end if
		  
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isalpha(c As Integer) As Boolean
		  
		  if c >= Asc("a") then
		    if c <= Asc("z") then
		      return true
		    end if
		  end if
		  
		  if c >= Asc("A") then
		    if c <= Asc("Z") then
		      return true
		    end if
		  end if
		  
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isdigit(c As Integer) As Boolean
		  if c >= Asc("0") then
		    if c <= Asc("9") then
		      return true
		    end if
		  end if
		  
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsEmpty(extends s As String) As Boolean
		  // Return true if the string is empty.
		  
		  return s = ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LTrim(source As String, charsToTrim As String) As String
		  // This is an extended version of RB's LTrim function that lets you specify
		  // a set of characters to trim.
		  
		  Dim srcLen As Integer = source.Len
		  Dim leftPos, i As Integer
		  for i = 1 to srcLen
		    if InStr( charsToTrim, Mid(source, i, 1) ) = 0 then exit
		  next
		  leftPos = i
		  if leftPos > srcLen then return ""
		  
		  return Mid( source, leftPos )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Metaphone(source As String, ByRef outPrimary As String, ByRef outAlternate As String)
		  // Compute the Double Metaphone of the source string.  This is an algorithm that
		  // finds one or two approximate phonetic representations of a string, useful in
		  // searching for almost-matches -- e.g., looking for names whose spelling may have
		  // varied, or correcting typos made by the user, and so on.
		  //
		  // The output is roughly human-readable, with the following conventions:
		  //   Vowels are omitted from the output, except for a vowel at the beginning
		  //      of a word, which is represented by an A (e.g. "ox" becomes "AKS")
		  //   X is used to represent a "ch" sound (e.g., "church" becomes "XRX")
		  //   0 (zero) is used to represent a "th" sound (e.g. "think" becomes "0NK")
		  //
		  // For more information about Double Metaphone, see:
		  //     http://aspell.sourceforge.net/metaphone/
		  //     http://www.cuj.com/articles/2000/0006/0006d/0006d.htm?topic=articles
		  //
		  // This implementation is based on the one at:
		  //     http://aspell.sourceforge.net/metaphone/dmetaph.cpp
		  
		  
		  Dim length As Integer
		  length = source.Len
		  if length < 1 then
		    outPrimary = ""
		    outAlternate = ""
		    return
		  end if
		  
		  source = Uppercase(source) + " "
		  Dim current As Integer = 1
		  
		  Dim charAt(-1) As String
		  charAt = source.Split("")
		  charAt.Insert 0, ""  // (make it 1-based, like Mid)
		  
		  Dim slavoGermanic As Boolean
		  if InStr(source, "W") > 0 or InStr(source, "K") > 0 _
		    or InStr(source, "CZ") > 0 or InStr(source, "WITZ") > 0 then
		    slavoGermanic = true
		  end if
		  
		  Dim out1, out2 As String
		  
		  // skip these when at start of word
		  if MStringAt(source, 1, 2, "GN", "KN", "PN", "WR", "PS") then current = current + 1
		  
		  // initial 'X' is pronounced 'Z' e.g. 'Xavier'
		  if charAt(1) = "X" then
		    out1 = out1 + "S"
		    out2 = out2 + "S"  // "Z" maps to "S"
		    current = current + 1
		  end if
		  
		  //---------- main loop ---------------
		  while current <= length
		    
		    select case charAt(current)
		      
		    case "A", "E", "I", "O", "U", "Y"
		      if current = 1 then
		        // all initial vowels map to "A"; elsewhere they're skipped
		        out1 = out1 + "A"
		        out2 = out2 + "A"
		      end if
		      current = current + 1
		      
		    case "B"
		      //"-mb", e.g", "dumb", already skipped over...
		      out1 = out1 + "P"
		      out2 = out2 + "P"
		      if charAt(current + 1) = "B" then
		        current = current + 2
		      else
		        current = current + 1
		      end if
		      
		    case "Ç"
		      out1 = out1 + "S"
		      out2 = out2 + "S"
		      current = current +  1
		      
		    case "C"
		      // various germanic
		      if current > 2 _
		        and not MIsVowel(source, current - 2) _
		        and MStringAt(source, (current - 1), 3, "ACH") _
		        and (charAt(current + 2) <> "I" and (charAt(current + 2) <> "E"_
		        or MStringAt(source, current - 2, 6, "BACHER", "MACHER")) ) then
		        out1 = out1 + "K"
		        out2 = out2 + "K"
		        current = current + 2
		        
		      elseif current = 1 AND MStringAt(source, current, 6, "CAESAR") then
		        // special case 'caesar' (why didn't this go at the top?)
		        out1 = out1 + "S"
		        out2 = out2 + "S"
		        current = current + 2
		        
		      elseif MStringAt(source, current, 4, "CHIA") then
		        // italian 'chianti'
		        out1 = out1 + "K"
		        out2 = out2 + "K"
		        current = current + 2
		        
		      elseif MStringAt(source, current, 2, "CH") then
		        // find 'michael'
		        if current > 0 AND MStringAt(source, current, 4, "CHAE") then
		          out1 = out1 + "K"
		          out2 = out2 + "X"
		          current = current + 2
		          break
		          
		        elseif current = 0 _
		          and (MStringAt(source, current + 1, 5, "HARAC", "HARIS") _
		          or MStringAt(source, current + 1, 3, "HOR", "HYM", "HIA", "HEM")) _
		          and not MStringAt(source, 0, 5, "CHORE") then
		          // greek roots e.g. 'chemistry', 'chorus'
		          out1 = out1 + "K"
		          out2 = out2 + "K"
		          current = current + 2
		          
		        else
		          //germanic, greek, or otherwise 'ch' for 'kh' sound
		          if((MStringAt(source, 0, 4, "VAN ", "VON ") or MStringAt(source, 0, 3, "SCH")) _
		            _ // 'architect but not 'arch', 'orchestra', 'orchid'
		            or MStringAt(source, current - 2, 6, "ORCHES", "ARCHIT", "ORCHID") _
		            or MStringAt(source, current + 2, 1, "T", "S") _
		            or ((MStringAt(source, current - 1, 1, "A", "O", "U", "E") OR current = 1) _
		            _ //e.g., 'wachtler', 'wechsler', but not 'tichner'
		            and MStringAt(source, current + 2, 1, "L", "R", "N", "M", "B", "H", "F", "V", "W", " "))) then
		            out1 = out1 + "K"
		            out2 = out2 + "K"
		          else
		            if current > 1 then
		              if MStringAt(source, 1, 2, "MC") then
		                //e.g., "McHugh"
		                out1 = out1 + "K"
		                out2 = out2 + "K"
		              else
		                out1 = out1 + "X"
		                out2 = out2 + "K"
		              end if
		            else
		              out1 = out1 + "X"
		              out2 = out2 + "X"
		            end if
		          end if
		          current = current + 2
		        end if
		        
		        // end of CH case
		        
		      elseif MStringAt(source, current, 2, "CZ") and not MStringAt(source, current - 2, 4, "WICZ") then
		        //e.g, 'czerny'
		        out1 = out1 + "S"
		        out2 = out2 + "X"
		        current = current +  2
		        
		      elseif MStringAt(source, current + 1, 3, "CIA") then
		        //e.g., 'focaccia'
		        out1 = out1 + "X"
		        out2 = out2 + "X"
		        current = current +  3
		        
		      elseif MStringAt(source, current, 2, "CC") and not (current = 2 AND charAt(1) = "M") then
		        // double "C", but not if e.g. 'McClellan'
		        //'bellocchio' but not 'bacchus'
		        if MStringAt(source, current + 2, 1, "I", "E", "H") and not MStringAt(source, current + 2, 2, "HU") then
		          //'accident', 'accede" "succeed'
		          if((current = 2 AND charAt(current - 1) = "A") _
		            OR MStringAt(source, current - 1, 5, "UCCEE", "UCCES")) then
		            out1 = out1 + "KS"
		            out2 = out2 + "KS"
		            //'bacci', 'bertucci', other italian
		          else
		            out1 = out1 + "X"
		            out2 = out2 + "X"
		          end if
		          current = current +  3
		        else // Pierce's rule
		          out1 = out1 + "K"
		          out2 = out2 + "K"
		          current = current +  2
		        end if
		        
		      elseif MStringAt(source, current, 2, "CK", "CG", "CQ") then
		        out1 = out1 + "K"
		        out2 = out2 + "K"
		        current = current +  2
		        
		      elseif MStringAt(source, current, 2, "CI", "CE", "CY") then
		        // italian vs. english
		        if MStringAt(source, current, 3, "CIO", "CIE", "CIA") then
		          out1 = out1 + "S"
		          out2 = out2 + "X"
		        else
		          out1 = out1 + "S"
		          out2 = out2 + "S"
		        end if
		        current = current +  2
		        
		      else
		        // all other C cases are considered a K:
		        out1 = out1 + "K"
		        out2 = out2 + "K"
		        
		        // name sent in 'mac caffrey', 'mac gregor'
		        if MStringAt(source, current + 1, 2, " C", " Q", " G" ) then
		          current = current +  3
		        else
		          if MStringAt(source, current + 1, 1, "C", "K", "Q") _
		            AND not MStringAt(source, current + 1, 2, "CE", "CI") then
		            current = current +  2
		          else
		            current = current +  1
		          end if
		        end if
		      end if
		      
		    case "D"
		      if MStringAt(source, current, 2, "DG") then
		        if MStringAt(source, current + 2, 1, "I", "E", "Y") then
		          //e.g. 'edge'
		          out1 = out1 + "J"
		          out2 = out2 + "J"
		          current = current +  3
		        else
		          //e.g. 'edgar'
		          out1 = out1 + "TK"
		          out2 = out2 + "TK"
		          current = current +  2
		        end if
		        
		      elseif MStringAt(source, current, 2, "DT", "DD") then
		        out1 = out1 + "T"
		        out2 = out2 + "T"
		        current = current +  2
		      else
		        out1 = out1 + "T"
		        out2 = out2 + "T"
		        current = current +  1
		      end if
		      
		    case "F"
		      out1 = out1 + "F"
		      out2 = out2 + "F"
		      if charAt(current + 1) = "F" then
		        current = current +  2
		      else
		        current = current +  1
		      end if
		      
		    case "G"
		      if charAt(current + 1) = "H"  then
		        // GH...
		        if current > 1 AND not MIsVowel(source, current - 1) then
		          out1 = out1 + "K"
		          out2 = out2 + "K"
		          current = current +  2
		          
		        elseif current = 1 then
		          //'ghislane', ghiradelli
		          if charAt(current + 2) = "I" then
		            out1 = out1 + "J"
		            out2 = out2 + "J"
		          else
		            out1 = out1 + "K"
		            out2 = out2 + "K"
		          end if
		          current = current +  2
		          
		        elseif((current > 2 AND MStringAt(source, current - 2, 1, "B", "H", "D") ) _
		          _ //e.g., 'bough'
		          OR (current > 3 AND MStringAt(source, current - 3, 1, "B", "H", "D") ) _
		          _ //e.g., 'broughton'
		          OR (current > 4 AND MStringAt(source, current - 4, 1, "B", "H") ) ) then
		          //Parker's rule (with some further refinements) - e.g., 'hugh'
		          current = current +  2
		          
		        else
		          //e.g., 'laugh', 'McLaughlin', 'cough', 'gough', 'rough', 'tough'
		          if current > 3 _
		            AND charAt(current - 1) = "U" _
		            AND MStringAt(source, current - 3, 1, "C", "G", "L", "R", "T") then
		            out1 = out1 + "F"
		            out2 = out2 + "F"
		          else
		            if((current > 0) AND charAt(current - 1) <> "I") then
		              out1 = out1 + "K"
		              out2 = out2 + "K"
		            end if
		          end if
		          current = current +  2
		        end if
		        
		      elseif charAt(current + 1) = "N" then
		        // GN...
		        if current = 1 AND MIsVowel(source, 0) AND not SlavoGermanic then
		          out1 = out1 + "KN"
		          out2 = out2 + "N"
		        else
		          //not e.g. 'cagney'
		          if not MStringAt(source, current + 2, 2, "EY") _
		            AND charAt(current + 1) <> "Y" AND not SlavoGermanic then
		            out1 = out1 + "N"
		            out2 = out2 + "KN"
		          else
		            out1 = out1 + "KN"
		            out2 = out2 + "KN"
		          end if
		        end if
		        current = current +  2
		        
		        
		      elseif MStringAt(source, current + 1, 2, "LI") AND not SlavoGermanic then
		        //'tagliaro'
		        out1 = out1 + "KL"
		        out2 = out2 + "L"
		        current = current +  2
		        
		        
		      elseif current = 1 _
		        AND (charAt(current + 1) = "Y"  _
		        OR MStringAt(source, current + 1, 2, "ES", "EP", "EB", "EL", "EY", "IB", "IL", "IN", "IE", "EI", "ER")) then
		        //ges-,gep-,gel-, gie- at beginning
		        out1 = out1 + "K"
		        out2 = out2 + "J"
		        current = current +  2
		        
		      elseif (MStringAt(source, current + 1, 2, "ER") OR charAt(current + 1) = "Y") _
		        AND not MStringAt(source, 1, 6, "DANGER", "RANGER", "MANGER") _
		        AND not MStringAt(source, current - 1, 1, "E", "I") _
		        AND not MStringAt(source, current - 1, 3, "RGY", "OGY") then
		        // -ger-,  -gy-
		        out1 = out1 + "K"
		        out2 = out2 + "J"
		        current = current +  2
		        
		      elseif MStringAt(source, current + 1, 1, "E", "I", "Y") OR MStringAt(source, current - 1, 4, "AGGI", "OGGI") then
		        // italian e.g, 'biaggi'
		        //obvious germanic
		        if MStringAt(source, 1, 4, "VAN ", "VON ") OR MStringAt(source, 1, 3, "SCH") _
		          OR MStringAt(source, current + 1, 2, "ET") then
		          out1 = out1 + "K"
		          out2 = out2 + "K"
		        else
		          //always soft if french ending
		          if MStringAt(source, current + 1, 4, "IER ") then
		            out1 = out1 + "J"
		            out2 = out2 + "J"
		          else
		            out1 = out1 + "J"
		            out2 = out2 + "K"
		          end if
		        end if
		        current = current +  2
		        
		      else
		        // any other G
		        out1 = out1 + "K"
		        out2 = out2 + "K"
		        if charAt(current + 1) = "G" then
		          current = current +  2
		        else
		          current = current +  1
		        end if
		      end if
		      
		    case "H"
		      //only keep if first & before vowel or btw. 2 vowels
		      if (current = 1 OR MIsVowel(source, current - 1)) AND MIsVowel(source, current + 1) then
		        out1 = out1 + "H"
		        out2 = out2 + "H"
		        current = current +  2
		      else//also takes care of 'HH'
		        current = current +  1
		      end if
		      
		    case "J"
		      //obvious spanish, 'jose', 'san jacinto'
		      if MStringAt(source, current, 4, "JOSE") OR MStringAt(source, 1, 4, "SAN ") then
		        if (current = 0 AND charAt(current + 4) = " ") OR MStringAt(source, 1, 4, "SAN ") then
		          out1 = out1 + "H"
		          out2 = out2 + "H"
		        else
		          out1 = out1 + "J"
		          out2 = out2 + "H"
		        end if
		        current = current + 1
		        
		      else
		        if current = 0 AND not MStringAt(source, current, 4, "JOSE") then
		          out1 = out1 + "J"
		          out2 = out2 + "A"//Yankelovich/Jankelowicz
		        else
		          //spanish pron. of e.g. 'bajador'
		          if MIsVowel(source, current - 1) _
		            AND not SlavoGermanic _
		            AND (charAt(current + 1) = "A" OR charAt(current + 1) = "O") then
		            out1 = out1 + "J"
		            out2 = out2 + "H"
		          else
		            if current = length then
		              out1 = out1 + "J"
		              out2 = out2 + ""
		            elseif not MStringAt(source, current + 1, 1, "L", "T", "K", "S", "N", "M", "B", "Z") _
		              AND not MStringAt(source, current - 1, 1, "S", "K", "L") then
		              out1 = out1 + "J"
		              out2 = out2 + "J"
		            end if
		          end if
		        end if
		        
		        if charAt(current + 1) = "J" then //it could happen!
		          current = current +  2
		        else
		          current = current +  1
		        end if
		      end if
		      
		    case "K"
		      out1 = out1 + "K"
		      out2 = out2 + "K"
		      if charAt(current + 1) = "K" then
		        current = current +  2
		      else
		        current = current +  1
		      end if
		      
		    case "L"
		      if charAt(current + 1) = "L" then
		        //spanish e.g. 'cabrillo', 'gallegos'
		        if (current = length - 2 AND MStringAt(source, current - 1, 4, "ILLO", "ILLA", "ALLE")) _
		          OR ((MStringAt(source, length - 1, 2, "AS", "OS") OR MStringAt(source, length, 1, "A", "O")) _
		          AND MStringAt(source, current - 1, 4, "ALLE")) then
		          out1 = out1 + "L"
		          out2 = out2 + ""
		          current = current +  2
		        else
		          out1 = out1 + "L"
		          out2 = out2 + "L"
		          current = current +  2
		        end if
		      else
		        out1 = out1 + "L"
		        out2 = out2 + "L"
		        current = current +  1
		      end if
		      
		    case "M"
		      out1 = out1 + "M"
		      out2 = out2 + "M"
		      if (MStringAt(source, current - 1, 3, "UMB") _
		        AND (current + 1 = length OR MStringAt(source, current + 2, 2, "ER"))) _
		        _ //'dumb","thumb'
		        OR charAt(current + 1) = "M" then
		        current = current +  2
		      else
		        current = current +  1
		      end if
		      
		    case "N"
		      out1 = out1 + "N"
		      out2 = out2 + "N"
		      if charAt(current + 1) = "N" then
		        current = current +  2
		      else
		        current = current +  1
		      end if
		      
		    case "Ñ"
		      out1 = out1 + "N"
		      out2 = out2 + "N"
		      current = current +  1
		      
		    case "P"
		      if charAt(current + 1) = "H" then  // PH sounds like F
		        out1 = out1 + "F"
		        out2 = out2 + "F"
		        current = current +  2
		        
		      else
		        out1 = out1 + "P"
		        out2 = out2 + "P"
		        // (also account for "campbell", "raspberry")
		        if MStringAt(source, current + 1, 1, "P", "B") then
		          current = current +  2
		        else
		          current = current +  1
		        end if
		      end if
		      
		    case "Q"
		      out1 = out1 + "K"
		      out2 = out2 + "K"
		      if charAt(current + 1) = "Q" then
		        current = current +  2
		      else
		        current = current +  1
		      end if
		      
		    case "R"
		      //french e.g. 'rogier', but exclude 'hochmeier'
		      if current = length AND not SlavoGermanic _
		        AND MStringAt(source, current - 2, 2, "IE") _
		        AND not MStringAt(source, current - 4, 2, "ME", "MA") then
		        out1 = out1 + ""
		        out2 = out2 + "R"
		      else
		        out1 = out1 + "R"
		        out2 = out2 + "R"
		      end if
		      
		      if charAt(current + 1) = "R" then
		        current = current +  2
		      else
		        current = current +  1
		      end if
		      
		    case "S"
		      if MStringAt(source, current - 1, 3, "ISL", "YSL") then
		        //special cases 'island', 'isle', 'carlisle', 'carlysle'
		        current = current +  1
		        
		      elseif current = 1 AND MStringAt(source, current, 5, "SUGAR") then
		        //special case 'sugar-'
		        out1 = out1 + "X"
		        out2 = out2 + "S"
		        current = current +  1
		        
		      elseif MStringAt(source, current, 2, "SH") then
		        //germanic
		        if MStringAt(source, current + 1, 4, "HEIM", "HOEK", "HOLM", "HOLZ") then
		          out1 = out1 + "S"
		          out2 = out2 + "S"
		        else
		          out1 = out1 + "X"
		          out2 = out2 + "X"
		        end if
		        current = current +  2
		        
		      elseif MStringAt(source, current, 3, "SIO", "SIA") OR MStringAt(source, current, 4, "SIAN") then
		        //italian & armenian
		        if not SlavoGermanic then
		          out1 = out1 + "S"
		          out2 = out2 + "X"
		        else
		          out1 = out1 + "S"
		          out2 = out2 + "S"
		        end if
		        current = current +  3
		        
		      elseif (current = 1 AND MStringAt(source, current + 1, 1, "M", "N", "L", "W")) _
		        OR MStringAt(source, current + 1, 1, "Z") then
		        //german & anglicisations, e.g. 'smith' match 'schmidt', 'snider' match 'schneider'
		        //also, -sz- in slavic language altho in hungarian it is pronounced "s"
		        out1 = out1 + "S"
		        out2 = out2 + "X"
		        if MStringAt(source, current + 1, 1, "Z") then
		          current = current +  2
		        else
		          current = current +  1
		        end if
		        
		      elseif MStringAt(source, current, 2, "SC") then
		        //Schlesinger's rule
		        if charAt(current + 2) = "H" then
		          //dutch origin, e.g. 'school', 'schooner'
		          if MStringAt(source, current + 3, 2, "OO", "ER", "EN", "UY", "ED", "EM") then
		            //'schermerhorn', 'schenker'
		            if MStringAt(source, current + 3, 2, "ER", "EN") then
		              out1 = out1 + "X"
		              out2 = out2 + "SK"
		            else
		              out1 = out1 + "SK"
		              out2 = out2 + "SK"
		            end if
		            current = current +  3
		            
		          else
		            if current = 1 AND not MIsVowel(source, 4) AND charAt(4) <> "W" then
		              out1 = out1 + "X"
		              out2 = out2 + "S"
		            else
		              out1 = out1 + "X"
		              out2 = out2 + "X"
		            end if
		            current = current +  3
		          end if
		          
		        elseif MStringAt(source, current + 2, 1, "I", "E", "Y") then
		          out1 = out1 + "S"
		          out2 = out2 + "S"
		          current = current +  3
		          
		        else
		          out1 = out1 + "SK"
		          out2 = out2 + "SK"
		          current = current +  3
		        end if
		        
		      else
		        //french e.g. 'resnais', 'artois'
		        if current = length AND MStringAt(source, current - 2, 2, "AI", "OI") then
		          out1 = out1 + ""
		          out2 = out2 + "S"
		        else
		          out1 = out1 + "S"
		          out2 = out2 + "S"
		        end if
		        if MStringAt(source, current + 1, 1, "S", "Z") then
		          current = current +  2
		        else
		          current = current +  1
		        end if
		      end if
		      
		    case "T"
		      if MStringAt(source, current, 4, "TION") then
		        out1 = out1 + "X"
		        out2 = out2 + "X"
		        current = current +  3
		        
		      elseif MStringAt(source, current, 3, "TIA", "TCH") then
		        out1 = out1 + "X"
		        out2 = out2 + "X"
		        current = current +  3
		        
		      elseif MStringAt(source, current, 2, "TH") OR MStringAt(source, current, 3, "TTH") then
		        //special case 'thomas', 'thames' or germanic
		        if MStringAt(source, current + 2, 2, "OM", "AM") _
		          OR MStringAt(source, 1, 4, "VAN ", "VON ") OR MStringAt(source, 1, 3, "SCH") then
		          out1 = out1 + "T"
		          out2 = out2 + "T"
		        else
		          out1 = out1 + "0"     // 0 represents "TH" sound in Metaphone
		          out2 = out2 + "T"     // (a bad choice -- # would have been better)
		        end if
		        current = current +  2
		        
		      else
		        out1 = out1 + "T"
		        out2 = out2 + "T"
		        if MStringAt(source, current + 1, 1, "T", "D") then
		          current = current +  2
		        else
		          current = current +  1
		        end if
		      end if
		      
		    case "V"
		      out1 = out1 + "F"
		      out2 = out2 + "F"
		      if charAt(current + 1) = "V" then
		        current = current +  2
		      else
		        current = current +  1
		      end if
		      
		    case "W"
		      //can also be in middle of word
		      if MStringAt(source, current, 2, "WR") then
		        out1 = out1 + "R"
		        out2 = out2 + "R"
		        current = current +  2
		        
		      else
		        if current = 1 AND (MIsVowel(source, current + 1) OR MStringAt(source, current, 2, "WH")) then
		          //Wasserman should match Vasserman
		          if(MIsVowel(source, current + 1)) then
		            out1 = out1 + "A"
		            out2 = out2 + "F"
		          else
		            //need Uomo to match Womo
		            out1 = out1 + "A"
		            out2 = out2 + "A"
		          end if
		        end if
		        
		        if (current = length AND MIsVowel(source, current - 1)) _
		          OR MStringAt(source, current - 1, 5, "EWSKI", "EWSKY", "OWSKI", "OWSKY") _
		          OR MStringAt(source, 1, 3, "SCH") then
		          //Arnow should match Arnoff
		          out1 = out1 + ""
		          out2 = out2 + "F"
		          current = current + 1
		          
		        elseif MStringAt(source, current, 4, "WICZ", "WITZ") then
		          //polish e.g. 'filipowicz'
		          out1 = out1 + "TS"
		          out2 = out2 + "FX"
		          current = current + 4
		          
		        else
		          //else skip it
		          current = current + 1
		        end if
		      end if
		      
		    case "X"
		      //french e.g. breaux
		      if not (current = length AND _
		        (MStringAt(source, current - 3, 3, "IAU", "EAU") OR MStringAt(source, current - 2, 2, "AU", "OU"))) then
		        out1 = out1 + "KS"
		        out2 = out2 + "KS"
		      end if
		      
		      if MStringAt(source, current + 1, 1, "C", "X") then
		        current = current +  2
		      else
		        current = current +  1
		      end if
		      
		    case "Z"
		      //chinese pinyin e.g. 'zhao'
		      if charAt(current + 1) = "H" then
		        out1 = out1 + "J"
		        out2 = out2 + "J"
		        current = current +  2
		        
		      else
		        if MStringAt(source, current + 1, 2, "ZO", "ZI", "ZA") _
		          OR (SlavoGermanic AND current > 1 AND charAt(current - 1) <> "T") then
		          out1 = out1 + "S"
		          out2 = out2 + "TS"
		        else
		          out1 = out1 + "S"
		          out2 = out2 + "S"
		        end if
		        
		        if charAt(current + 1) = "Z" then
		          current = current +  2
		        else
		          current = current +  1
		        end if
		      end if
		      
		      // ----
		    else
		      // if none of the above cases, just skip this character
		      current = current + 1
		    end Select
		  wend
		  
		  outPrimary = out1
		  outAlternate = out2
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MIsVowel(source As String, atPos As Integer) As Boolean
		  // This is a private helper function for the Metaphone method.
		  
		  return InStr( "AEIOUY", Mid(source, atPos, 1) ) > 0
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MStringAt(source As String, start As Integer, length As Integer, paramArray args As String) As Boolean
		  // This is a private helper function for the Metaphone method.
		  
		  if start < 1 then return false
		  Dim target As String
		  if start > source.Len then
		    target = " "
		  else
		    target = Mid(source, start, length)
		  end if
		  return (args.IndexOf(target) >= 0)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function NthFieldQuoted(src as string, sep as string, index as integer) As string
		  // Equivalent to RB's nthField() function, but respects quoted values
		  // Usage:
		  //    s = """Hello, Kitty"", ""One"", ""Two, Three"""
		  //    s1 = nthFieldQuoted(s, ",", 3)
		  // result: s1 = "Two, Three" (including the quotes!)
		  
		  dim c, n, startPos, endPos as integer
		  dim inQuotes as boolean
		  dim a as string
		  
		  dim sepLen as integer = sep.Len
		  dim srcLen as integer = len( src )
		  dim leftSep as string = left( sep, 1 )
		  dim adjustedIndex as integer = (index -1)
		  
		  if InStr(src,sep)=0 then
		    if index=1 then
		      return src
		    else
		      return ""
		    end if
		  elseif InStr(src,"""")= 0 then
		    return NthField(src, sep, index)
		  end if
		  
		  for n=1 to srcLen
		    a = Mid(src,n,1)
		    if a= """" then
		      inQuotes = not inQuotes
		    elseif (a=leftSep) and not inQuotes then
		      if mid(src, n, sepLen) = sep then
		        c = c + 1
		        if index = 1 then
		          // First Field
		          startPos = 1
		          endPos = n-1
		          exit
		        else
		          // Field 2..x
		          if (c=adjustedIndex)  then
		            // Leading Sep gefunden
		            startPos = n+sepLen
		          elseif (c = index) then
		            // Trailing Sep found
		            endPos = n-1
		            exit
		          end if
		        end if
		      end if
		    end if
		  next
		  if endpos = 0 then
		    endpos = srcLen + 1
		  end if
		  
		  if startPos = 0 then
		    if index=1 then
		      return src
		    else
		      return ""
		    end if
		  else
		    return mid(src,startPos,endPos-startPos+1)
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function PadBoth(s as String, width as Integer, padding as String = " ") As String
		  // Pad a string to at least 'width' characters, by adding padding characters
		  // to the left and right sides of the string.
		  //
		  // If it is impossible to center the string, the string will be one character
		  // to the right more than it is to the left.
		  
		  dim length as Integer
		  
		  length = len(s)
		  if length >= width then return s
		  
		  dim mostToRepeat as Integer
		  mostToRepeat = ceil((width-length)/len(padding))
		  
		  dim repeated as String
		  repeated = Repeat(padding, ceil(mostToRepeat/2))
		  
		  return mid(repeated, 1, ceil((width-length)/2)) + s + mid(repeated,1,(width-length)\2)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function PadLeft(s as String, width as Integer, padding as String = " ") As String
		  // Pad a string to at least 'width' characters, by adding padding characters
		  // to the left side of the string.
		  
		  dim length as Integer
		  length = len(s)
		  if length >= width then return s
		  
		  dim mostToRepeat as Integer
		  mostToRepeat = ceil((width-length)/len(padding))
		  return mid(Repeat(padding, mostToRepeat),1,width-length) + s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function PadRight(s as String, width as Integer, padding as String = " ") As String
		  // Pad a string to at least 'width' characters, by adding padding characters
		  // to the right side of the string.
		  
		  dim length as Integer
		  length = len(s)
		  if length >= width then return s
		  
		  dim mostToRepeat as Integer
		  mostToRepeat = ceil((width-length)/len(padding))
		  return s + mid(Repeat(padding, mostToRepeat),1,width-length)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Remove(s As String, charSet As String = " ") As String
		  // Delete all characters which are members of charSet. Example:
		  // Delete("wooow maaan", "aeiou") = "ww mn".
		  
		  Dim sLenB As Integer = s.LenB
		  if sLenB < 2 then return s
		  
		  Dim m As MemoryBlock
		  m = NewMemoryBlock( sLenB )
		  
		  charSet = ConvertEncoding( charSet, s.Encoding )
		  
		  Dim sLen As Integer = s.Len
		  
		  Dim char As String
		  Dim spos, mpos As Integer
		  for spos = 1 to sLen
		    char = Mid( s, spos, 1 )
		    if InStrB( charSet, char ) < 1 then
		      m.StringValue( mpos, char.LenB ) = char
		      mpos = mpos + char.LenB
		    end if
		  next
		  
		  return DefineEncoding( m.StringValue(0, mpos), s.Encoding )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function RemoveWhitespace(Input As string, chars() as string, which As integer) As string
		  '++JRC
		  'which = 0 Left
		  'which = 1 Right
		  'which = 2 Both
		  dim s As string
		  dim result As string
		  dim i As integer
		  
		  i =0
		  result = Input
		  
		  if which = 0 or which = 2 then
		    s = Left(Input, 1)
		    while i <= UBound(chars)
		      if chars(i) = s then
		        result = Mid(Input, 2)
		        goto Right 'gimme a break, pun intended :)
		      end if
		      i = i + 1
		    wend
		  end if
		  
		  Right:
		  i = 0
		  
		  if which = 1 or which = 2 then
		    s = Right(Input, 1)
		    while i <= UBound(chars)
		      if chars(i) = s then
		        result = Mid(Input, 1, Len(Input) - 1)
		        goto endfunc 'sigh
		      end if
		      i = i + 1
		    wend
		  end if
		  
		  endfunc:
		  return result
		  '--
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Repeat(s as String, repeatCount as Integer) As String
		  // Concatenate a string to itself 'repeatCount' times.
		  // Example: Repeat("spam ", 5) = "spam spam spam spam spam ".
		  
		  dim stringLength as Integer
		  stringLength = LenB(s)
		  If stringLength = 0 or repeatCount < 1 then
		    Return ""
		  End if
		  
		  dim m as MemoryBlock
		  m = new MemoryBlock(stringLength * repeatCount)
		  
		  dim i, maxi as Integer
		  maxi = (repeatCount - 1) * stringLength
		  For i = 0 to maxi step stringLength
		    m.StringValue(i, stringLength) = s
		  Next
		  
		  Return DefineEncoding(m.StringValue(0, m.Size), s.Encoding)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ReplaceRange(s As String, start As Integer, length As Integer, newText As String) As String
		  // Replace a part of the given string with a new string.
		  
		  return Left(s, start-1) + newText + Mid(s, start + length)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ReplaceRangeB(s As String, startB As Integer, lengthB As Integer, newText As String) As String
		  // Replace a part of the given string with a new string
		  // (with offset and length in bytes rather than characters).
		  
		  return LeftB(s, startB-1) + newText + MidB(s, startB + lengthB)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Reverse(s As String) As String
		  // Return s with the characters in reverse order.
		  
		  if Len(s) < 2 then return s
		  
		  Dim m As MemoryBlock
		  Dim c As String
		  Dim pos, mpos, csize As Integer
		  
		  m = NewMemoryBlock( s.LenB )
		  
		  pos = 1
		  mpos = m.Size
		  while mpos > 0
		    c = Mid( s, pos, 1 )
		    csize = c.LenB
		    mpos = mpos - csize
		    m.StringValue( mpos, csize ) = c
		    pos = pos + 1
		  wend
		  
		  return DefineEncoding( m.StringValue(0, m.Size), s.Encoding )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ReverseB(s As String) As String
		  // Return s with the bytes in reverse order.
		  // Note that if s is text in any encoding that may have
		  // multi-byte characters, you should probably be using
		  // Reverse instead of ReverseB.
		  
		  if LenB(s) < 2 then return s
		  
		  Dim m As MemoryBlock
		  Dim pos, bytes As Integer
		  bytes = s.LenB
		  
		  m = NewMemoryBlock( bytes )
		  
		  for pos = bytes - 1 DownTo 0
		    m.Byte(pos) = AscB( s.MidB( bytes - pos, 1 ) )
		  next
		  
		  return DefineEncoding( m.StringValue(0, bytes), s.Encoding )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function RTrim(source As String, charsToTrim As String) As String
		  // This is an extended version of RB's RTrim function that lets you specify
		  // a set of characters to trim.
		  
		  Dim srcLen As Integer = source.Len
		  Dim rightPos, i As Integer
		  for i = srcLen DownTo 1
		    if InStr( charsToTrim, Mid(source, i, 1) ) = 0 then exit
		  next
		  rightPos = i
		  
		  return Mid( source, 1, rightPos )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScanNumEnd(s As string, start As Integer, ByRef e As Integer, ByRef nzStart As Integer)
		  // adapted from c# source code
		  //(c) Vasian Cepa 2005
		  // Version 2
		  
		  //lookahead
		  dim countZeros  as boolean = true
		  dim c As string
		  nzStart = start
		  e = start
		  
		  c = s.Mid(e, 1)
		  while isdigit(Asc(c)) = true
		    if countZeros = true then
		      if s.Mid(e, 1) = "0" then
		        nzStart = nzStart + 1
		      else
		        countZeros = false
		      end if
		    else
		      countZeros = false
		    end if
		    
		    e = e + 1
		    if e >= s.Len then
		      'where's the break statement?
		      goto RealBASICisStupid
		    end if
		    c = s.Mid(e, 1)
		  wend
		  
		  RealBASICisStupid:
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ShouldSwapWith(Extends s As String, CompareTo As String) As Boolean
		  //
		  // If CompareTo is greater than s, return True
		  //
		  // Supports Heapsort and Heapify
		  //
		  // This version uses the Compare routine in this module
		  //
		  // Ed Palmer, 7 Feb 2006
		  //
		  Return (CompareHymnBookOrder(s, CompareTo) = -1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Sort(strings() As string, Num As Integer)
		  // this algorithm is adapted from c source code
		  // taken from The Waite Group's C Primer Plus Revised Edition
		  // copyright 1987 The Waite Group, Inc.
		  // pages 398-399
		  
		  //++
		  // EMP, 4 Feb 2006
		  // For some reason, this was starting on the second element of the
		  // array, not the first.  It was working, somehow (I think the op. system
		  // returns a sorted list when you scan a directory).
		  //
		  // Underlying compare routine was changed to collate items with leading
		  // integers first, in numerical order
		  // See Compare for more details
		  //
		  // The bubble sort is a simple sort to implement, but since it is O(n**2)
		  // it's horribly inefficient, especially when the elements to be sorted are
		  // effectively sorted already.
		  //
		  // "Num" is supposed to be the number of elements, but it's more accurate
		  // to just use the array bounds.
		  //--
		  
		  dim temp as string
		  dim top as Integer
		  dim seek as Integer
		  
		  top = 0 // EMP, 4 Feb 06: Was top = 1, but arrays on RB start at zero!
		  while top < UBound(strings)
		    seek = top + 1
		    while seek <= UBound(strings)
		      if CompareHymnBookOrder(strings(top), strings(seek) ) > 0 then // seek < top, switch places
		        temp = strings(top)
		        strings(top) = strings(seek)
		        strings(seek) = temp
		      end if
		      seek = seek + 1
		    wend
		    
		    top = top + 1
		  wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Soundex(s As String, stripPrefix As Boolean = true) As String
		  // Return the Soundex code for the given string.
		  // That's the first character, followed by numeric
		  // codes for the first several consonants.
		  // For more detail, see: <http://www.searchforancestors.com/soundex.html>
		  
		  Dim prefix, prefixes(-1) As String
		  Dim i, prefixLen As Integer
		  
		  s = Trim( s )
		  
		  if stripPrefix then
		    prefixes = Array("La ", "De ", "Van ")  // more to come?
		    for each prefix in prefixes
		      prefixLen = prefix.Len
		      if Left( s, prefixLen ) = prefix then
		        s = Mid( s, prefixLen+1 )
		        exit
		      end if
		    next
		  end if
		  
		  Dim c, out As String
		  out = Uppercase( Left(s, 1) )
		  Dim sLen, curCode, lastCode As Integer
		  sLen = s.Len
		  for i = 2 to sLen
		    c = Uppercase( Mid( s, i, 1 ) )
		    if InStrB( "BPFV", c ) > 0 then
		      curCode = 1
		    elseif InStrB( "CSKGJQXZ", c ) > 0 then
		      curCode = 2
		    elseif InStrB( "DT", c ) > 0 then
		      curCode = 3
		    elseif c = "L" then
		      curCode = 4
		    elseif InStrB( "MN", c ) > 0 then
		      curCode = 5
		    elseif c = "R" then
		      curCode = 6
		    else
		      curCode = 0
		    end if
		    if curCode > 0 and curCode <> lastCode then
		      out = out + str(curCode)
		      if Len(out) = 4 then return out
		    end if
		  next
		  
		  return Left( out + "000", 4 )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SplitByLength(s As String, fieldWidth As Integer) As String()
		  // Split a string into fields, each containing 'fieldWidth' characters
		  // (except for the last one, which may have fewer).
		  
		  if fieldWidth < 1 then   // fieldWidth must be >= 1
		    raise New OutOfBoundsException
		  end if
		  
		  Dim out(-1) As String
		  
		  Dim qty As Integer
		  qty = Ceil( Len(s) / fieldWidth )
		  Redim out( qty - 1 )
		  
		  Dim pos, i As Integer
		  pos = 1
		  for i = 0 to qty-1
		    out(i) = Mid( s, pos, fieldWidth )
		    pos = pos + fieldWidth
		  next
		  
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SplitByLengthB(s As String, fieldWidth As Integer) As String()
		  // Split a string into fields, each containing 'fieldWidth' bytes
		  // (except for the last one, which may have fewer).
		  
		  if fieldWidth < 1 then   // fieldWidth must be >= 1
		    raise New OutOfBoundsException
		  end if
		  
		  Dim out(-1) As String
		  
		  Dim qty As Integer
		  qty = Ceil( LenB(s) / fieldWidth )
		  Redim out( qty - 1 )
		  
		  Dim pos, i As Integer
		  pos = 1
		  for i = 0 to qty-1
		    out(i) = MidB( s, pos, fieldWidth )
		    pos = pos + fieldWidth
		  next
		  
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SplitByRegEx(source As String, delimPattern As String) As String()
		  // Split a string into fields delimited by a regular expression.
		  
		  Dim out(-1) As String
		  
		  Dim re As New RegEx
		  Dim rm As RegExMatch
		  Dim startPos As Integer
		  
		  re.SearchPattern = delimPattern
		  rm = re.Search( source )
		  while rm <> nil
		    'System.DebugLog rm.SubExpressionString(0) + " at " + str(rm.SubExpressionStartB(0)) + " matches " + pattern + " in " + s
		    out.Append MidB( source, startPos + 1, rm.SubExpressionStartB(0) - startPos )
		    startPos = re.SearchStartPosition
		    rm = re.Search
		  wend
		  
		  if startPos < source.LenB then
		    out.Append MidB( source, startPos + 1 )
		  end if
		  
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SplitToCDbl(source As String, delimiter As String = " ") As Double()
		  // Split a string into fields, then convert each field into a Double
		  // using the CDbl function.  This is appropriate for a set of numbers
		  // entered or readable by the end-user.
		  
		  Dim fields(-1) As String
		  fields = source.Split(delimiter)
		  
		  Dim out(-1) As Double
		  Redim out( UBound(fields) )
		  
		  Dim i As Integer
		  for i = UBound(fields) DownTo 0
		    out(i) = CDbl( fields(i) )
		  next
		  
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SplitToInt(source As String, delimiter As String = " ") As Integer()
		  // Split a string into fields, then convert each field into an Integer
		  // using the Val function.
		  
		  Dim fields(-1) As String
		  fields = source.Split(delimiter)
		  
		  Dim out(-1) As Integer
		  Redim out( UBound(fields) )
		  
		  Dim i As Integer
		  for i = UBound(fields) DownTo 0
		    out(i) = Val( fields(i) )
		  next
		  
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SplitToVal(source As String, delimiter As String = " ") As Double()
		  // Split a string into fields, then convert each field into a Double
		  // using the Val function.  This is appropriate for a set of numbers
		  // used only by the computer; for human-readable numbers, consider
		  // using SplitToCDbl instead.
		  
		  Dim fields(-1) As String
		  fields = source.Split(delimiter)
		  
		  Dim out(-1) As Double
		  Redim out( UBound(fields) )
		  
		  Dim i As Integer
		  for i = UBound(fields) DownTo 0
		    out(i) = Val( fields(i) )
		  next
		  
		  return out
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Sprintf(src as string, ParamArray data as Variant) As string
		  // By Frank Bitterlich, bitterlich@gsco.de
		  // Returns a string produced according to the formatting string <src>.
		  // The format string <src> is composed of zero or more directives: ordinary
		  // characters (excluding %) that are
		  // copied directly to the result, and conversion
		  // specifications, each of which results in fetching its
		  // own parameter.
		  // For details, see http://de.php.net/manual/en/function.sprintf.php
		  
		  // Attention: This function differs from the PHP sprintf() function in that
		  // it formats floating numbers according to the locale settings.
		  // For example, in Germany,
		  //    sprintf("%04.2f", 123.45)
		  // will return "0123,45".
		  
		  dim rex as new RegEx
		  dim match as RegExMatch
		  dim argtype, padding, alignment, precstr, replacement, frmstr, s as string
		  dim p, width, precision, index, start, length as integer
		  dim vf as double
		  
		  
		  rex.SearchPattern = "(%)(0|/s|'.)?(-)?(\d*)(\.\d+)?([%bcdeufosxX])"
		  rex.Options.Greedy = true
		  match = rex.Search(src)
		  
		  do until match = nil or index > UBound(data)
		    if match.SubExpressionCount=7 then
		      padding = Right(" " + match.SubExpressionString(2), 1)
		      // if padding = "" then padding = " " // default: space
		      alignment = match.SubExpressionString(3)
		      width = Val(match.SubExpressionString(4))
		      precstr = Mid(match.SubExpressionString(5), 2)
		      precision = Val(precstr)
		      if precstr="" then precision = 6
		      
		      argtype = match.SubExpressionString(6)
		      select case argtype
		      case "%"
		        replacement = ""
		      case "b" // binary int
		        replacement = bin(data(index))
		      case "c" // character
		        replacement = Chr(data(index))
		        width = 0
		      case "d" // signed int
		        if padding = "0" then
		          frmstr = "-"+Repeat("0", width)
		          if data(index)<0 then frmstr = Left(frmstr, Len(frmstr)-1)
		        else
		          frmstr = "-#"
		        end if
		        replacement = Format(data(index), frmstr)
		      case "e" // scientific notation
		        vf = data(index)
		        frmstr = "-#."+Repeat("0", precision)+"e+"
		        Replacement = Format(vf, frmstr)
		        p = InStr(Replacement, "e")
		        // Make sure the part after the "e" has two digits
		        Replacement = Left(Replacement, p)+Format(Val(Mid(Replacement, p+1)), "+00")
		      case "u" // unsigned int
		        replacement = Format(data(index), "#")
		      case "f" // signed float
		        if padding = "0" then
		          frmstr = "-"+Repeat("0", width)
		          if data(index)<0 then frmstr = Left(frmstr, Len(frmstr)-1)
		        else
		          frmstr = "-#"
		        end if
		        if precision > 0 then
		          frmstr = frmstr + "." + Repeat("0", precision)
		        end if
		        Replacement = Format(data(index), frmstr)
		        if precision > 0 and padding<>"0" then width = width + precision + 1
		      case "o" // octal int
		        replacement = Oct(data(index))
		      case "s" // string
		        replacement = data(index)
		      case "x" // hex int; uppercase "X" means uppercase hex, "x" is lowercase hex
		        replacement = hex(data(index))
		        if asc(argtype) = &h58 then // uppercase "X"
		          replacement = Uppercase(replacement)
		        else // lowercase "x"
		          replacement = lowercase(replacement)
		        end if
		      end select
		      
		      if width>Len(replacement) then
		        if alignment="-" then // align left
		          replacement=replacement+Repeat(padding, width-Len(replacement))
		        else // align right
		          replacement=Repeat(padding, width-Len(replacement))+replacement
		        end if
		      end if
		    end if
		    start = match.SubExpressionStartB(0)+1
		    length = LenB(match.SubExpressionString(0))
		    
		    src = LeftB(src, start-1) + replacement + Mid(src, start+length)
		    
		    index = index + 1
		    match = rex.Search(src, start)
		  loop
		  
		  return src
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SQLify(s As String) As String
		  // Return a version of s ready for use in an SQL statement.
		  
		  // In other words, we just need to double the apostrophes:
		  return ReplaceAll( s, "'", "''" )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Squeeze(s As String, charSet As String = " ") As String
		  // Find any repeating characters, where the character is a member of
		  // charSet, and replace the run with a single character.  Example:
		  // Squeeze("wooow maaan", "aeiou") = "wow man".
		  
		  Dim sLenB As Integer = s.LenB
		  if sLenB < 2 then return s
		  
		  Dim m As MemoryBlock
		  m = NewMemoryBlock( sLenB )
		  
		  charSet = ConvertEncoding( charSet, s.Encoding )
		  
		  Dim sLen As Integer = s.Len
		  
		  Dim char, lastChar As String
		  Dim charLen, spos, mpos As Integer
		  Dim skip As Boolean
		  for spos = 1 to sLen
		    char = Mid( s, spos, 1 )
		    if char = lastChar then
		      skip = InStrB( charSet, char ) > 0
		    else
		      skip = false
		      lastChar = char
		    end if
		    if not skip then
		      charLen = char.LenB
		      m.StringValue( mpos, charLen ) = char
		      mpos = mpos + charLen
		    end if
		  next
		  
		  return DefineEncoding( m.StringValue(0, mpos), s.Encoding )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StartsWith(extends s As String, withWhat As String) As Boolean
		  // Return true if 's' starts with the string 'withWhat',
		  // doing a standard string comparison.
		  
		  return Left(s, withWhat.Len) = withWhat
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StartsWithB(extends s As String, withWhat As String) As Boolean
		  // Return true if 's' starts with the string 'withWhat',
		  // doing a binary comparison.
		  
		  return StrComp( LeftB(s, withWhat.Len), withWhat, 0 ) = 0
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function StrCompT(s1 As String, s2 As String) As String
		  Dim i, l1, l2, c1, c2 As Integer
		  i = 1
		  l1 = Len(s1)
		  l2 = Len(s2)
		  
		  While i <= l1 And i <= l2
		    c1 = Asc(Uppercase(Mid(s1, i, 1)))
		    c2 = Asc(Uppercase(Mid(s2, i, 1)))
		    
		    If c1 > c2 Then
		      Return ">"
		    ElseIf c1 < c2 Then
		      Return "<"
		    End If
		    i = i + 1
		    If i > l1 And i > l2 Then
		      Return "="
		    ElseIf i > l1 Then
		      Return "<"
		    ElseIf i > l2 Then
		      Return ">"
		    End If
		  Wend
		  
		  Return "="
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function StringCompare(s1 As String, s2 As String) As Integer
		  //
		  // Do a case-insensitive compare
		  // Return -1 if s1 < s2
		  // Return  1 if s1 > s2
		  // Return 0 if equal
		  //
		  If s1 < s2 Then Return -1
		  If s1 > s2 Then Return 1
		  Return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ThousandsSeparator() As String
		  // Return the thousands separator the user uses (either "." or ",").
		  if mThousandsSeparator = "" then
		    mThousandsSeparator = Format(1000, "#,#")
		    mThousandsSeparator = Mid( mThousandsSeparator, 2, 1 )
		  end if
		  
		  return mThousandsSeparator
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function tolower(c As Integer) As Integer
		  if c >= Asc("A") then
		    if c <= Asc("Z") then
		      return c + 32
		    end if
		  end if
		  
		  return c
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toupper(c As Integer) As Integer
		  if c >= Asc("a") then
		    if c <= Asc("z") then
		      return c - 32
		    end if
		  end if
		  
		  return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Trim(source As String, charsToTrim As String) As String
		  // This is an extended version of RB's Trim function that lets you specify
		  // a set of characters to trim.
		  
		  Dim srcLen As Integer = source.Len
		  Dim leftPos, i As Integer
		  for i = 1 to srcLen
		    if InStr( charsToTrim, Mid(source, i, 1) ) = 0 then exit
		  next
		  leftPos = i
		  if leftPos > srcLen then return ""
		  
		  Dim rightPos As Integer
		  for i = srcLen DownTo 1
		    if InStr( charsToTrim, Mid(source, i, 1) ) = 0 then exit
		  next
		  rightPos = i
		  
		  return Mid( source, leftPos, rightPos - leftPos + 1 )
		  
		End Function
	#tag EndMethod


	#tag Note, Name = Contributors
		
		Many people have contributed to the development of this module, including:
		
		Frank Bitterlich, bitterlich@gsco.de
		Jon Johnson, jonj@realsoftware.com
		Joe Strout, joe@strout.net (*)
		Kem Tekinay, ktekinay@mactechnologies.com
		Charles Yeomans, yeomans@desuetude.com
		
		(*) To whom correspondence should be addressed.
	#tag EndNote

	#tag Note, Name = Home Page
		
		This StringUtils module is maintained by Joe Strout (joe@strout.net).
		You should be able to find the latest version via this URL:
		
		    http://www.strout.net/info/coding/rb/
	#tag EndNote

	#tag Note, Name = License
		
		This StringUtils module is in the public domain.  You may use it for any purpose
		whatsoever, but it comes with no express or implied warranty of correctness or
		fitness for any purpose.
		
		Share and enjoy!
	#tag EndNote

	#tag Note, Name = Version History
		
		2004-JUL-17: version 1.0
		- First public release.
		
		2004-JUL-22: version 1.1
		- Fixed some (harmless) warnings in CountRegEx and Repeat.
		- Added ControlCharacters.
		- Added DecimalSeparator.
		- Added ThousandsSeparator.
		- Added SplitByLength and SplitByLengthB.
		- Added Sprintf.
		- Added Trim, LTrim, and RTrim (with charsToTrim parameter).
		- Improved the speed of CountFieldsQuoted substantially.
		- Improved the speed of NthFieldQuoted and Squeeze slightly.
	#tag EndNote


	#tag Property, Flags = &h21
		Private mControlChars As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDecimalSeparator As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mThousandsSeparator As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
