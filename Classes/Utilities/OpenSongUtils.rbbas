#tag Module
Protected Module OpenSongUtils
	#tag Method, Flags = &h0
		Sub Append(ByRef Extends s As String, text As String)
		  s = s + text
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CMtoPoints(CM As Double) As Double
		  //++
		  //
		  // Convert centimeters to points.
		  // Uses the conversion value defined by Adobe
		  // This converts 72 points to precisely 2.54 cm
		  // Therefore, 72 pt = 2.54 cm = 1 in
		  //
		  // Value obtained from www.onlineconversion.com
		  //
		  // Ed Palmer, May 2006
		  //++
		  
		  Return CM / POINT_TO_CM
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CMtoPoints(Points As String) As String
		  //++
		  // Polymorphic version of CMtoPoints
		  //--
		  
		  Return CStr(CMtoPoints(CDbl(Points)))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CompareDates(d1 As Date, d2 As Date) As Integer
		  // ++JRC September 2007
		  // This function Compares two dates
		  //
		  // Returns 0 if equal, -1 if d1 < d2, 1 if d1 > d2
		  
		  'Compare Years
		  If d1.Year < d2.Year Then Return -1
		  If d1.Year > d2.Year Then Return 1
		  
		  'Years are equal, now compare months
		  If d1.Month < d2.Month Then Return -1
		  If d1.Month > d2.Month Then Return 1
		  
		  'Both Years & Months are equal, compare Days
		  If d1.Day < d2.Day Then Return -1
		  If d1.Day > d2.Day Then Return 1
		  
		  'Dates are equal
		  Return 0
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CompareTimes(t1 As Date, t2 As Date) As Integer
		  // ++JRC October 2008
		  // This function Compares two times
		  //
		  // Returns 0 if equal, -1 if t1 < t2, 1 if t1 > t2
		  
		  'Compare hours
		  If t1.Hour < t2.Hour Then Return -1
		  If t1.Hour > t2.Hour Then Return 1
		  
		  'Compare minutes
		  If t1.Minute < t2.Minute Then Return -1
		  If t1.Minute > t2.Minute Then Return 1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteWhiteSpace(s As String) As String
		  Dim re As New RegEx
		  
		  re.SearchPattern = "\s+"
		  re.ReplacementPattern = ""
		  re.Options.ReplaceAllMatches = True
		  Return re.Replace(s)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetText(Extends xNode As XmlNode, sep As String = " ") As String
		  Dim s() As String
		  Dim c As XmlNode
		  
		  If xNode Is Nil Then
		    App.DebugWriter.Write "OpenSongUtils.XmlNode.GetText: got a Nil input", 1
		    Dim n As New NilObjectException
		    n.Message = "XmlNode.GetText: Nil input"
		    Raise n
		  End If
		  
		  c = xNode.FirstChild
		  
		  While Not (c Is Nil)
		    If c.Type = XmlNodeType.TEXT_NODE Then s.Append c.Value
		    c = c.NextSibling
		  Wend
		  
		  Return Join(s, sep)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HTMLEntityEncode(Extends s As String) As String
		  //++
		  // December 2006, Ed Palmer
		  // Takes a passed string and examines it for
		  // characters that must be encoded for HTML use.
		  // Uses HTMLCodePoint and HTMLEntity arrays,
		  // which are initialized by the HTMLEntityInitialize
		  // method.
		  //
		  // UTF-8 code point to entity definitions are copied
		  // from the multibyte string character utilities used
		  // in PHP and sourced from http://sourceforge.jp/project/php-i18n/
		  // That project's code is licensed under LGPL 2.1
		  //--
		  
		  Dim sUTF8 As String // Input string converted to UTF-8
		  Dim result As String // Output string (UTF-8 encoding)
		  Dim i, j As Integer
		  Dim CharIndex As Integer
		  Dim CurrChar As String
		  Dim Entity As String
		  
		  // Verify the library has been initialized
		  
		  If UBound(HTMLCodePoint) <= 0 Then
		    HTMLEntityInitialize
		  End If
		  
		  sUTF8 = s.ConvertEncoding(Encodings.UTF8)
		  
		  j = Len(sUTF8)
		  
		  For i = 1 To j
		    CurrChar = Mid(sUTF8, i, 1)
		    CharIndex = HTMLCodePoint.IndexOf(CurrChar.Asc)
		    If CharIndex < 0 Then
		      result = result + CurrChar
		    Else
		      result = result + "&" + HTMLEntity(CharIndex) + ";"
		    End If
		  Next
		  
		  Return result
		  
		Catch ex
		  System.DebugLog "HTMLEntityEncode caught an error converting  '" + s + "'"
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HTMLEntityInitialize()
		  //++
		  // December 2006, Ed Palmer
		  //
		  // Support routine for HTMLEntityEncode
		  // See comments and credits there
		  // This is necessary since there isn't a way
		  // to do a compile-time initialization of an array
		  //--
		  If UBound(HTMLCodePoint) > 0 Then Return // Already done
		  
		  HTMLCodePoint = Array(_
		  34,_
		  38,_
		  60,_
		  62,_
		  160,_
		  161,_
		  162,_
		  163,_
		  164,_
		  165,_
		  166,_
		  167,_
		  168,_
		  169,_
		  170,_
		  171,_
		  172,_
		  173,_
		  174,_
		  175,_
		  176,_
		  177,_
		  178,_
		  179,_
		  180,_
		  181,_
		  182,_
		  183,_
		  184,_
		  185,_
		  186,_
		  187,_
		  188,_
		  189,_
		  190,_
		  191,_
		  192,_
		  193,_
		  194,_
		  195,_
		  196,_
		  197,_
		  198,_
		  199,_
		  200,_
		  201,_
		  202,_
		  203,_
		  204,_
		  205,_
		  206,_
		  207,_
		  208,_
		  209,_
		  210,_
		  211,_
		  212,_
		  213,_
		  214,_
		  215,_
		  216,_
		  217,_
		  218,_
		  219,_
		  220,_
		  221,_
		  222,_
		  223,_
		  224,_
		  225,_
		  226,_
		  227,_
		  228,_
		  229,_
		  230,_
		  231,_
		  232,_
		  233,_
		  234,_
		  235,_
		  236,_
		  237,_
		  238,_
		  239,_
		  240,_
		  241,_
		  242,_
		  243,_
		  244,_
		  245,_
		  246,_
		  247,_
		  248,_
		  249,_
		  250,_
		  251,_
		  252,_
		  253,_
		  254,_
		  255,_
		  338,_
		  339,_
		  352,_
		  353,_
		  376,_
		  402,_
		  710,_
		  732,_
		  913,_
		  914,_
		  915,_
		  916,_
		  917,_
		  918,_
		  919,_
		  920,_
		  921,_
		  922,_
		  923,_
		  924,_
		  925,_
		  926,_
		  927,_
		  928,_
		  929,_
		  931,_
		  932,_
		  933,_
		  934,_
		  935,_
		  936,_
		  937,_
		  945,_
		  946,_
		  947,_
		  948,_
		  949,_
		  950,_
		  951,_
		  952,_
		  953,_
		  954,_
		  955,_
		  956,_
		  957,_
		  958,_
		  959,_
		  960,_
		  961,_
		  962,_
		  963,_
		  964,_
		  965,_
		  966,_
		  967,_
		  968,_
		  969,_
		  977,_
		  978,_
		  982,_
		  8194,_
		  8195,_
		  8201,_
		  8204,_
		  8205,_
		  8206,_
		  8207,_
		  8211,_
		  8212,_
		  8216,_
		  8217,_
		  8218,_
		  8220,_
		  8221,_
		  8222,_
		  8224,_
		  8225,_
		  8226,_
		  8230,_
		  8240,_
		  8242,_
		  8243,_
		  8249,_
		  8250,_
		  8254,_
		  8260,_
		  8364,_
		  8472,_
		  8465,_
		  8476,_
		  8482,_
		  8501,_
		  8592,_
		  8593,_
		  8594,_
		  8595,_
		  8596,_
		  8629,_
		  8656,_
		  8657,_
		  8658,_
		  8659,_
		  8660,_
		  8704,_
		  8706,_
		  8707,_
		  8709,_
		  8711,_
		  8712,_
		  8713,_
		  8715,_
		  8719,_
		  8721,_
		  8722,_
		  8727,_
		  8730,_
		  8733,_
		  8734,_
		  8736,_
		  8743,_
		  8744,_
		  8745,_
		  8746,_
		  8747,_
		  8756,_
		  8764,_
		  8773,_
		  8776,_
		  8800,_
		  8801,_
		  8804,_
		  8805,_
		  8834,_
		  8835,_
		  8836,_
		  8838,_
		  8839,_
		  8853,_
		  8855,_
		  8869,_
		  8901,_
		  8968,_
		  8969,_
		  8970,_
		  8971,_
		  9001,_
		  9002,_
		  9674,_
		  9824,_
		  9827,_
		  9829,_
		  9830)
		  
		  HTMLEntity = Array(_
		  "quot",_
		  "amp",_
		  "lt",_
		  "gt",_
		  "nbsp",_
		  "iexcl",_
		  "cent",_
		  "pound",_
		  "curren",_
		  "yen",_
		  "brvbar",_
		  "sect",_
		  "uml",_
		  "copy",_
		  "ordf",_
		  "laquo",_
		  "not",_
		  "shy",_
		  "reg",_
		  "macr",_
		  "deg",_
		  "plusmn",_
		  "sup2",_
		  "sup3",_
		  "acute",_
		  "micro",_
		  "para",_
		  "middot",_
		  "cedil",_
		  "sup1",_
		  "ordm",_
		  "raquo",_
		  "frac14",_
		  "frac12",_
		  "frac34",_
		  "iquest",_
		  "Agrave",_
		  "Aacute",_
		  "Acirc",_
		  "Atilde",_
		  "Auml",_
		  "Aring",_
		  "AElig",_
		  "Ccedil",_
		  "Egrave",_
		  "Eacute",_
		  "Ecirc",_
		  "Euml",_
		  "Igrave",_
		  "Iacute",_
		  "Icirc",_
		  "Iuml",_
		  "ETH",_
		  "Ntilde",_
		  "Ograve",_
		  "Oacute",_
		  "Ocirc",_
		  "Otilde",_
		  "Ouml",_
		  "times",_
		  "Oslash",_
		  "Ugrave",_
		  "Uacute",_
		  "Ucirc",_
		  "Uuml",_
		  "Yacute",_
		  "THORN",_
		  "szlig",_
		  "agrave",_
		  "aacute",_
		  "acirc",_
		  "atilde",_
		  "auml",_
		  "aring",_
		  "aelig",_
		  "ccedil",_
		  "egrave",_
		  "eacute",_
		  "ecirc",_
		  "euml",_
		  "igrave",_
		  "iacute",_
		  "icirc",_
		  "iuml",_
		  "eth",_
		  "ntilde",_
		  "ograve",_
		  "oacute",_
		  "ocirc",_
		  "otilde",_
		  "ouml",_
		  "divide",_
		  "oslash",_
		  "ugrave",_
		  "uacute",_
		  "ucirc",_
		  "uuml",_
		  "yacute",_
		  "thorn",_
		  "yuml",_
		  "OElig",_
		  "oelig",_
		  "Scaron",_
		  "scaron",_
		  "Yuml",_
		  "fnof",_
		  "circ",_
		  "tilde",_
		  "Alpha",_
		  "Beta",_
		  "Gamma",_
		  "Delta",_
		  "Epsilon",_
		  "Zeta",_
		  "Eta",_
		  "Theta",_
		  "Iota",_
		  "Kappa",_
		  "Lambda",_
		  "Mu",_
		  "Nu",_
		  "Xi",_
		  "Omicron",_
		  "Pi",_
		  "Rho",_
		  "Sigma",_
		  "Tau",_
		  "Upsilon",_
		  "Phi",_
		  "Chi",_
		  "Psi",_
		  "Omega",_
		  "alpha",_
		  "beta",_
		  "gamma",_
		  "delta",_
		  "epsilon",_
		  "zeta",_
		  "eta",_
		  "theta",_
		  "iota",_
		  "kappa",_
		  "lambda",_
		  "mu",_
		  "nu",_
		  "xi",_
		  "omicron",_
		  "pi",_
		  "rho",_
		  "sigmaf",_
		  "sigma",_
		  "tau",_
		  "upsilon",_
		  "phi",_
		  "chi",_
		  "psi",_
		  "omega",_
		  "thetasym",_
		  "upsih",_
		  "piv",_
		  "ensp",_
		  "emsp",_
		  "thinsp",_
		  "zwnj",_
		  "zwj",_
		  "lrm",_
		  "rlm",_
		  "ndash",_
		  "mdash",_
		  "lsquo",_
		  "rsquo",_
		  "sbquo",_
		  "ldquo",_
		  "rdquo",_
		  "bdquo",_
		  "dagger",_
		  "Dagger",_
		  "bull",_
		  "hellip",_
		  "permil",_
		  "prime",_
		  "Prime",_
		  "lsaquo",_
		  "rsaquo",_
		  "oline",_
		  "frasl",_
		  "euro",_
		  "weierp",_
		  "image",_
		  "real",_
		  "trade",_
		  "alefsym",_
		  "larr",_
		  "uarr",_
		  "rarr",_
		  "darr",_
		  "harr",_
		  "crarr",_
		  "lArr",_
		  "uArr",_
		  "rArr",_
		  "dArr",_
		  "hArr",_
		  "forall",_
		  "part",_
		  "exist",_
		  "empty",_
		  "nabla",_
		  "isin",_
		  "notin",_
		  "ni",_
		  "prod",_
		  "sum",_
		  "minus",_
		  "lowast",_
		  "radic",_
		  "prop",_
		  "infin",_
		  "ang",_
		  "and",_
		  "or",_
		  "cap",_
		  "cup",_
		  "int",_
		  "there4",_
		  "sim",_
		  "cong",_
		  "asymp",_
		  "ne",_
		  "equiv",_
		  "le",_
		  "ge",_
		  "sub",_
		  "sup",_
		  "nsub",_
		  "sube",_
		  "supe",_
		  "oplus",_
		  "otimes",_
		  "perp",_
		  "sdot",_
		  "lceil",_
		  "rceil",_
		  "lfloor",_
		  "rfloor",_
		  "lang",_
		  "rang",_
		  "loz",_
		  "spades",_
		  "clubs",_
		  "hearts",_
		  "diams")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InchesToPoints(Inches As Double) As Double
		  //++
		  // Convert Inches to points
		  //
		  // Uses the value for point defined by Adobe
		  // This precisely converts 72 points to one inch
		  //
		  // Value obtained from www.onlineconversion.com
		  //
		  // Ed Palmer, May 2006
		  //--
		  
		  Return Inches / POINT_TO_INCH
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InchesToPoints(Inches As String) As String
		  //++
		  // Polymorphic version of InchesToPoints
		  //--
		  
		  Return CStr(InchesToPoints(CDbl(Inches)))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsCollapsed(Extends w As Window) As Boolean
		  #if TargetMacOS
		    #if TargetMachO
		      Declare Function IsWindowCollapsed Lib "Carbon" (window as WindowPtr) as Boolean
		    #else
		      Declare Function IsWindowCollapsed Lib "CarbonLib" (window as WindowPtr) as Boolean
		    #endif
		    Return IsWindowCollapsed(w)
		  #endif
		  // gets the rect and show state of the window in winHWND
		  // http://msdn.microsoft.com/library/psdk/winui/windows_79bo.htm
		  #if targetWin32
		    dim mb as memoryBlock
		    dim result as integer
		    Const SW_MINIMIZE = 6
		    
		    Declare Function GetWindowPlacement Lib "user32" (ByVal hwnd As integer, lpwndpl As ptr) As integer
		    
		    if w.Handle = 0 then
		      return False
		    end if
		    
		    mb = newMemoryBlock(44)
		    
		    mb.long(0) = 44
		    
		    result = GetWindowPlacement(w.Handle, mb)
		    
		    if result = 0 then
		      // failed
		      return False
		    end if
		    
		    Return (mb.long(8) = SW_MINIMIZE)
		    
		    return false
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsWindowVisible(Title As String) As Boolean
		  Dim i As Integer
		  For i = 0 To WindowCount - 1
		    If Window(i).Title = Title Then Return True
		  Next
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PageDown(Extends L As ListBox)
		  //++
		  // Perform a page down operation on a list box
		  // Assumes:
		  //    1. ListBox is single selection pointed to by ListIndex
		  //    2. Rows are of equal height
		  // Tries to keep the selected row in the same relative position
		  //
		  // Added because the page up/page down keys don't move the
		  // selection in a listbox.
		  //--
		  Dim SelectedRow As Integer
		  Dim TopRow As Integer
		  Dim VisibleRowCount As Integer
		  
		  If L.ListCount = 0 Then Return
		  
		  VisibleRowCount = L.Height \ L.RowHeight
		  SelectedRow = Min(L.ListCount - 1, L.ListIndex + VisibleRowCount)
		  TopRow = Min(L.ListCount - 1, L.ScrollPosition + VisibleRowCount)
		  L.ScrollPosition = TopRow
		  L.ListIndex = SelectedRow
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PageUp(Extends L As ListBox)
		  //++
		  // Perform a page up operation on a list box
		  // Assumes:
		  //    1. ListBox is single selection pointed to by ListIndex
		  //    2. Rows are of equal height
		  // Tries to keep the selected row in the same relative position
		  //
		  // Added because the page up/page down keys don't move the
		  // selection in a listbox.
		  //--
		  Dim SelectedRow As Integer
		  Dim TopRow As Integer
		  Dim VisibleRowCount As Integer
		  
		  If L.ListCount = 0 Then Return
		  
		  VisibleRowCount = L.Height \ L.RowHeight
		  SelectedRow = Max(0, L.ListIndex - VisibleRowCount)
		  TopRow = Max(0, L.ScrollPosition - VisibleRowCount)
		  L.ScrollPosition = TopRow
		  L.ListIndex = SelectedRow
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ParseTime(time As String, ByRef value As Date) As Boolean
		  //++JRC October 2008
		  //This function takes a time string and converts it to a Date structure
		  //
		  //Returns True if Successful
		  
		  Dim Pos As Integer
		  Dim hour As Integer
		  Dim s As String
		  
		  
		  Pos = InStr(0, time, ":")
		  If Pos = 0 Then Return False
		  
		  value = New Date
		  
		  'get hour
		  hour = Val(Left(time, Pos-1))
		  
		  s = Mid(time, Pos+1)
		  
		  Pos = InStr(0, s, ":")
		  If Pos = 0 Then
		    Pos  = InStr(0, s, " ")
		  End If
		  
		  'get minutes
		  value.Minute = Val(Left(s, Pos-1))
		  s = Mid(s, Pos+1)
		  
		  Pos = InStr(0, s, " ")
		  If Pos <> 0 Then
		    'get seconds
		    value.Second = Val(Left(s, Pos-1))
		    s = Mid(s, Pos+1)
		  End If
		  
		  If Left(s, Pos-1) = "PM" Then
		    hour = hour + 12
		  End If
		  
		  value.Hour = hour
		  
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PointsToCM(Points As Double) As Double
		  //++
		  //
		  // Convert points to centimeters.
		  // Uses the conversion value defined by Adobe
		  // This converts 72 points to precisely 2.54 cm
		  // Therefore, 72 pt = 2.54 cm = 1 in
		  //
		  // Value obtained from www.onlineconversion.com
		  //
		  // Ed Palmer, May 2006
		  //++
		  
		  Return Points * POINT_TO_CM
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PointsToCM(Points As String) As String
		  //++
		  // Polymorphic version of PointsToCM
		  //--
		  
		  Return CStr(PointsToCM(CDbl(Points)))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PointsToInches(Points As Double) As Double
		  //++
		  // Convert points to inches
		  //
		  // Uses the value for point defined by Adobe
		  // This precisely converts 72 points to one inch
		  //
		  // Value obtained from www.onlineconversion.com
		  //
		  // Ed Palmer, May 2006
		  //--
		  
		  Return Points * POINT_TO_INCH
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PointsToInches(Points As String) As String
		  //++
		  // Polymorphic version of PointsToInches
		  //--
		  
		  Return CStr(PointsToInches(CDbl(Points)))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowHeight(Extends L As ListBox) As Integer
		  //++
		  // Thanks to http://www.declaresub.com/Articles/HowDoI.html#listboxRowHeight
		  // for this code.
		  //--
		  
		  Dim p As Picture = New Picture(1, 1, 32)
		  
		  If L.DefaultRowHeight > -1 Then
		    Return L.DefaultRowHeight
		  Else
		    p.Graphics.TextFont = L.TextFont
		    p.Graphics.TextSize = L.TextSize
		    Return p.Graphics.TextHeight
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SaveDialog(Message As String = "", Explanation As String = "") As Integer
		  //++
		  // Provide a standardized dialog for prompting the user
		  // to save something.
		  //
		  // Return: -1 for Cancel, 0 for Don't Save, 1 for Save
		  //--
		  Dim Msg as MessageDialog
		  Dim Res As MessageDialogButton
		  Dim Ret As Integer
		  
		  '++JRC
		  msg = new MessageDialog
		  If Message <> "" Then
		    msg.Message = Message
		  Else
		    msg.Message = App.T.Translate("questions/generic_save/@caption")
		  End If
		  
		  msg.Title = App.T.Translate("shared/save/@caption")
		  msg.Icon = 3 'question
		  
		  If Explanation <> "" Then
		    msg.Explanation = Explanation
		  Else
		    #If TargetMacOS
		      msg.Explanation = App.T.Translate("questions/generic_save_explanation/@caption")
		    #endif
		  End If
		  
		  // Set buttons based on operating system preferences.
		  
		  #if Not TargetMacOS
		    msg.ActionButton.Caption = App.T.Translate("shared/yes/@caption")
		    msg.AlternateActionButton.Caption = App.T.Translate("shared/no/@caption")
		    msg.CancelButton.Caption = App.T.Translate("shared/cancel/@caption")
		  #else
		    msg.ActionButton.Caption = App.T.Translate("shared/save/@caption")
		    msg.AlternateActionButton.Caption = App.T.Translate("shared/nosave/@caption")
		    msg.CancelButton.Caption = App.T.Translate("shared/cancel/@caption")
		  #endif
		  
		  msg.AlternateActionButton.Visible = true
		  Msg.CancelButton.Visible = true
		  
		  Res = msg.ShowModal
		  If Res  = msg.ActionButton then
		    Ret = 1
		  ElseIf Res = msg.AlternateActionButton Then
		    Ret = 0
		  Else
		    Ret = -1
		  End If
		  '--
		  Return Ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SplitRE(source As String, delim As String) As String()
		  //++
		  // Split a string delimited by a regular expression.
		  // Will always return at least one element (empty string)
		  //
		  // Treats line endings as a part of the string to allow for
		  // multi-line strings.
		  //
		  // Use standard regular expression syntax for the delimiter
		  //
		  // Implicitly assumes single-character line endings (i.e., Unix-style)
		  //
		  // Ed Palmer, November 2006
		  //--
		  
		  Dim result(-1) As String
		  
		  Dim re As New RegEx
		  Dim reopts As New RegExOptions
		  Dim match As RegExMatch
		  
		  re.SearchPattern = "(.*)(" + delim + "|\Z)" // "\Z" matches the end of the search string or prior to final newline
		  reopts.DotMatchAll = True
		  reopts.Greedy = False
		  reopts.StringBeginIsLineBegin = True
		  reopts.StringEndIsLineEnd = True
		  reopts.MatchEmpty = True
		  
		  re.Options = reopts
		  
		  match = re.Search(source)
		  
		  While match <> Nil
		    If match.SubExpressionCount > 0 Then
		      result.Append Trim(match.SubExpressionString(1))
		      Try
		        If Len(match.SubExpressionString(2)) = 0 Then Exit
		      Catch ex As NilObjectException
		        Exit
		      End Try
		    Else
		      result.Append Trim(match.SubExpressionString(0))
		      Exit
		    End If
		    're.SearchStartPosition = re.SearchStartPosition + 1 // Get past the trailing \n
		    System.DebugLog "SplitRE: Starting at " + CStr(re.SearchStartPosition) + " with character  " + Cstr(Asc(Mid(source, re.SearchStartPosition, 1)))
		    match = re.Search
		  Wend
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString(Extends error As RuntimeException) As String
		  Dim msg As String
		  If error isA IllegalCastException Then
		    msg = "IllegalCastException"
		  ElseIf error isA KeyNotFoundException Then
		    msg = "KeyNotFoundException"
		  ElseIf error isA NilObjectException Then
		    msg = "NilObjectException"
		  ElseIf error isA OutOfBoundsException Then
		    msg = "OutOfBoundsException"
		  ElseIf error isA OutOfMemoryException Then
		    msg = "OutOfMemoryException"
		  ElseIf error isA RegExException Then
		    msg = "RegExException"
		  ElseIf error isA RegExSearchPatternException Then
		    msg = "RegExSearchPatternException"
		  ElseIf error isA ShellNotAvailableException Then
		    msg = "ShellNotAvailableException"
		  ElseIf error isA ShellNotRunningException Then
		    msg = "ShellNotRunningException"
		  ElseIf error isA stackOverflowException Then
		    msg = "stackOverflowException"
		  ElseIf error isA EndException Then
		    msg = "EndException"
		  ElseIf error isA InvalidParentException Then
		    msg = "InvalidParentException"
		  ElseIf error isA KeyChainException Then
		    msg = "KeyChainException"
		  ElseIf error isA NoOpenTransportException Then
		    msg = "NoOpenTransportException"
		  ElseIf error isA typeMismatchException Then
		    msg = "typeMismatchException"
		  ElseIf error isA UnsupportedFormatException Then
		    msg = "UnsupportedFormatException"
		  ElseIf error isA XmlDomException Then
		    msg = "XmlDomException"
		  ElseIf error isA XmlException Then
		    msg = "XmlException"
		  ElseIf error isA XmlReaderException Then
		    msg = "XmlReaderException"
		  ElseIf error isA FunctionNotFoundException Then
		    msg = "FunctionNotFoundException"
		  ElseIf error isA InvalidParentException Then
		    msg = "InvalidParentException"
		  ElseIf error isA OLEException Then
		    msg = "OLEException"
		  ElseIf error isA RbScriptAlreadyRunningException Then
		    msg = "RbScriptAlreadyRunningException"
		  ElseIf error isA RbScriptException Then
		    msg = "RbScriptException"
		  ElseIf error isA RegistryAccessErrorException Then
		    msg = "RegistryAccessErrorException"
		  ElseIf error isA ShellNotAvailableException Then
		    msg = "ShellNotAvailableException"
		  ElseIf error isA ShellNotRunningException Then
		    msg = "ShellNotRunningException"
		  ElseIf error isA SOAPException Then
		    msg = "SOAPException"
		  ElseIf error isA ThreadAlreadyRunningException Then
		    msg = "ThreadAlreadyRunningException"
		  ElseIf error isA SpotlightException Then
		    msg = "SpotlightException"
		  ElseIf error isA UnsupportedFormatException Then
		    msg = "UnsupportedFormatException"
		  ElseIf error isA MacOSException Then
		    msg = "MacOSException"
		  ElseIf error isA InvalidParameterException Then
		    msg = "InvalidParameterException"
		  Else
		    msg = "Unknown exception"
		  End If
		  
		  If error.Message <> "" Then
		    msg = msg + ", error is '" + error.Message + "'"
		    If error.ErrorNumber <> 0 Then
		      msg = msg + ", number = " + CStr(error.ErrorNumber)
		    End If
		  End If
		  Return msg
		End Function
	#tag EndMethod


	#tag Note, Name = Overview
		
		This module holds OpenSong specific methods that
		provide general functions for the program but cannot
		be classified in one of the other utility modules.
	#tag EndNote


	#tag Property, Flags = &h21
		#tag Note
			This array and the HTMLEntity array are complementary.
			The same element of one corresponds to the other.
			A UTF-8 character with the code point in this array
			translates to the string in HTMLEntity preceded by
			an ampersand (&) and terminated with a semicolon (;).
		#tag EndNote
		Private HTMLCodePoint() As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			See discussion under HTMLCodePoint
		#tag EndNote
		Private HTMLEntity() As String
	#tag EndProperty


	#tag Constant, Name = POINT_TO_CM, Type = Double, Dynamic = False, Default = \"0.035277778", Scope = Public
	#tag EndConstant

	#tag Constant, Name = POINT_TO_INCH, Type = Double, Dynamic = False, Default = \"0.013888889", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="2147483648"
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
End Module
#tag EndModule
