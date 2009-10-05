#tag Class
Protected Class SlideStyle
	#tag Method, Flags = &h0
		Function Background() As StyleImage
		  Return Background
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Background(Assigns bg As StyleImage)
		  Background = bg
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BGColor(Assigns bg As Color)
		  BGColor = bg
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BGColor() As Color
		  Dim C As Color
		  C = BGColor
		  Return C
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BodyAlign() As String
		  Dim A As String
		  A = Lowercase(BodyAlign)
		  Return A
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BodyAlign(Assigns Align As String)
		  BodyAlign = Align
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BodyFont() As FontFace
		  Return BodyFont.Clone
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BodyFont(Assigns NewFont As FontFace)
		  BodyFont = NewFont
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BodyVAlign(Assigns VAlign As String)
		  BodyVAlign = VAlign
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BodyVAlign() As String
		  Dim VA As String
		  VA = Lowercase(BodyVAlign)
		  Return VA
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(xStyle As XmlNode)
		  Me.defaultBGColor = LightBevelColor
		  Me.Background = new StyleImage()
		  
		  FromXML(xStyle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DescriptiveSubtitles(Assigns Value As Boolean)
		  SubtitleDescriptiveText = Value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DescriptiveSubtitles() As Boolean
		  Return SubtitleDescriptiveText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HighlightChorus() As Boolean
		  Return Highlight
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightChorus(Assigns Value As Boolean)
		  Highlight = Value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Position(Assigns pos As Integer)
		  If pos < 0 or pos > 2 Then pos = POS_STRETCH ' Defaults to Stretch if invalid
		  Position = pos
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Position() As Integer
		  Return Position
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StripFooter(Assigns Strip As Integer)
		  StripFooter = Strip
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StripFooter() As Integer
		  Dim I As Integer
		  I = StripFooter
		  Return I
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SubtitleAlign(Assigns Align As String)
		  SubtitleAlign = Align
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SubtitleAlign() As String
		  Dim A As String
		  A = Lowercase(SubtitleAlign)
		  Return A
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SubtitleFont() As FontFace
		  Return SubtitleFont.Clone
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SubtitleFont(Assigns NewFont As FontFace)
		  SubtitleFont = NewFont
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SubtitleList(Assigns SubList As String)
		  //++
		  // Set the list of subtitles.
		  // This needs to be reworked at some point
		  // It's too dependent on a non-opaque set of
		  // options and there's no easy way to validate this
		  // list.
		  //--
		  
		  Subtitles = SubList
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SubtitleList() As String
		  //++
		  // Returns the list of subtitles.
		  // See comments under the Setter subroutine
		  //--
		  
		  Return Subtitles
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SubtitleVAlign(Assigns VAlign As String)
		  SubtitleVAlign = VAlign
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SubtitleVAlign() As String
		  Dim VA As String
		  VA = Lowercase(SubtitleVAlign)
		  Return VA
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TitleAlign() As String
		  Dim A As String
		  A = Lowercase(TitleAlign)
		  Return A
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TitleAlign(Assigns Align As String)
		  TitleAlign = Align
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TitleFont(Assigns NewFont As FontFace)
		  TitleFont = NewFont
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TitleFont() As FontFace
		  Return TitleFont.Clone
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TitleVAlign() As String
		  Dim VA As String
		  VA = Lowercase(TitleVAlign)
		  Return VA
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TitleVAlign(Assigns VAlign As String)
		  TitleVAlign = VAlign
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Dim XmlDoc As XmlDocument
		  Dim root As XmlNode
		  
		  XmlDoc = ToXML
		  root = XmlDoc.DocumentElement
		  
		  Return root.ToString
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToXML() As XmlDocument
		  Dim XmlDoc As XmlDocument
		  Dim root As XmlNode
		  Dim CurrChild, tabsChild As XmlNode
		  Dim thisNode As String
		  Dim i As Integer
		  Dim tab As StyleTabsType
		  
		  XmlDoc = New XmlDocument
		  XmlDoc.PreserveWhitespace = True
		  
		  root = XmlDoc.AppendChild(XmlDoc.CreateElement("style"))
		  
		  thisNode = "title"
		  CurrChild = root.AppendChild(XmlDoc.CreateElement(thisNode))
		  '++JRC
		  SmartML.SetValueB(CurrChild, "@enabled", TitleEnable)
		  '--
		  SmartML.SetValue(CurrChild, "@valign", TitleVAlign)
		  SmartML.SetValue(CurrChild, "@align", TitleAlign)
		  SmartML.SetValueB(CurrChild, "@include_verse", TitleIncludeVerse)
		  SmartML.SetValueN(CurrChild, "@margin-left", TitleMargins.Left)
		  SmartML.SetValueN(CurrChild, "@margin-right", TitleMargins.Right)
		  SmartML.SetValueN(CurrChild, "@margin-top", TitleMargins.Top)
		  SmartML.SetValueN(CurrChild, "@margin-bottom", TitleMargins.Bottom)
		  SmartML.SetValueF(root, thisNode, TitleFont)
		  
		  thisNode = "subtitle"
		  CurrChild = root.AppendChild(XmlDoc.CreateElement(thisNode))
		  '++JRC
		  SmartML.SetValueB(CurrChild, "@enabled", SubtitleEnable)
		  '--
		  SmartML.SetValue(CurrChild, "@valign", SubtitleVAlign)
		  SmartML.SetValue(CurrChild, "@align", SubtitleAlign)
		  SmartML.SetValueB(CurrChild, "@descriptive", SubtitleDescriptiveText)
		  SmartML.SetValueN(CurrChild, "@margin-left", SubtitleMargins.Left)
		  SmartML.SetValueN(CurrChild, "@margin-right", SubtitleMargins.Right)
		  SmartML.SetValueN(CurrChild, "@margin-top", SubtitleMargins.Top)
		  SmartML.SetValueN(CurrChild, "@margin-bottom", SubtitleMargins.Bottom)
		  SmartML.SetValueF(root, thisNode, SubtitleFont)
		  
		  thisNode = "song_subtitle"
		  SmartML.SetValue(root, thisNode, Subtitles)
		  
		  thisNode = "body"
		  CurrChild = root.AppendChild(XmlDoc.CreateElement(thisNode))
		  '++JRC
		  SmartML.SetValueB(CurrChild, "@enabled", BodyEnable)
		  '--
		  SmartML.SetValue(CurrChild, "@valign", BodyVAlign)
		  SmartML.SetValue(CurrChild, "@align", BodyAlign)
		  SmartML.SetValueB(CurrChild, "@highlight_chorus", Highlight)
		  SmartML.SetValueN(CurrChild, "@margin-left", BodyMargins.Left)
		  SmartML.SetValueN(CurrChild, "@margin-right", BodyMargins.Right)
		  SmartML.SetValueN(CurrChild, "@margin-top", BodyMargins.Top)
		  SmartML.SetValueN(CurrChild, "@margin-bottom", BodyMargins.Bottom)
		  SmartML.SetValueF(root, thisNode, BodyFont)
		  
		  tabsChild = CurrChild.AppendChild(XmlDoc.CreateElement("tabs"))
		  For i = 0 To UBound(BodyTabs)
		    CurrChild = tabsChild.AppendChild(XmlDoc.CreateElement("tab"))
		    tab = BodyTabs(i)
		    SmartML.SetValueN(CurrChild, "@position", tab.Position)
		    
		    Select Case tab.align
		    Case StyleHAlignEnum.Left
		      SmartML.SetValue(CurrChild, "@align", "left")
		    Case StyleHAlignEnum.Middle
		      SmartML.SetValue(CurrChild, "@align", "middle")
		    Case StyleHAlignEnum.Right
		      SmartML.SetValue(CurrChild, "@align", "right")
		    Case StyleHAlignEnum.Char
		      SmartML.SetValue(CurrChild, "@align", "char")
		      SmartML.SetValue(CurrChild, "@char", tab.alignChar)
		    End Select
		  Next
		  
		  thisNode = "background"
		  CurrChild = root.AppendChild(XmlDoc.CreateElement(thisNode))
		  Static r As New Random
		  Dim f As FolderItem
		  SmartML.SetValue(CurrChild, "@bgvalign", BackgroundVAlign)'gp
		  SmartML.SetValue(CurrChild, "@bgalign", BackgroundAlign)'gp
		  SmartML.SetValueN(CurrChild, "@bgmaxsize", bgMaxSize)'gp
		  SmartML.SetValueN(CurrChild, "@strip_footer", StripFooter)
		  SmartML.SetValueC(CurrChild, "@color", BGColor)
		  SmartML.SetValueN(CurrChild, "@position", Position)
		  If background.GetImageFilename().StartsWith(App.DocsFolder.Child("Backgrounds").AbsolutePath) And App.ExcludeBackgroundsImages() Then
		    SmartML.SetValue(CurrChild, "@filename", background.GetImageFilename().Mid(App.DocsFolder.Child("Backgrounds").AbsolutePath().Len()+1))
		  Else
		    SmartML.SetValue(root, thisNode, Background.GetImageAsString())
		  End If
		  
		  Return XmlDoc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TitleMargins() As StyleMarginType
		  Return TitleMargins
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SubtitleMargins() As StyleMarginType
		  Return SubtitleMargins
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BodyMargins() As StyleMarginType
		  Return BodyMargins
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BodyTabAdd(Position As Integer, Alignment As StyleHAlignEnum, alignCharacter As String = "")
		  Dim tab as StyleTabsType
		  
		  tab.Position = Position
		  tab.Align = Alignment
		  If tab.Align = StyleHAlignEnum.Char Then
		    tab.AlignChar = Left(alignCharacter, 1)
		  Else
		    tab.AlignChar = ""
		  End If
		  
		  'Insert new tab at the first position; it will be relocated to the correct position by BodyTabsSort()
		  bodytabs.Insert(0, tab)
		  
		  BodyTabsSort()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BodyTabCount() As Integer
		  Return UBound(BodyTabs)+1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BodyTabGet(Index as Integer) As StyleTabsType
		  Dim result as StyleTabsType
		  
		  result.Position = 0
		  result.Align = StyleHAlignEnum.Left
		  result.AlignChar = ""
		  
		  If Index >= 0 And Index <= Ubound(BodyTabs) Then
		    result = BodyTabs(Index)
		  End If
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BodyTabRemove(Index as Integer)
		  If Index >= 0 And Index < UBound(BodyTabs) Then
		    BodyTabs.Remove Index
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BodyTabItems() As StyleTabsType()
		  Dim tabs() as StyleTabsType
		  Dim i As Integer
		  
		  //create a copy of the tabs list to prevent returning by reference
		  For i = 0 to UBound(self.BodyTabs)
		    tabs.Append(self.BodyTabs(i))
		  Next i
		  
		  return tabs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub BodyTabsSort()
		  Dim i As Integer
		  Dim tmpTab As StyleTabsType
		  Dim changed As Boolean
		  
		  Do
		    changed = false
		    
		    For i = 0 to UBound(self.BodyTabs) - 1
		      
		      If self.BodyTabs(i).Position > self.BodyTabs(i + 1).Position Then
		        
		        tmpTab = self.BodyTabs(i)
		        self.BodyTabs(i) = self.BodyTabs(i + 1)
		        self.BodyTabs(i + 1) = tmpTab
		        changed = true
		        
		      End If
		      
		    Next i
		    
		  Loop Until changed = false
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FromXML(xStyle As XmlNode)
		  Dim tabsNode As XmlNode
		  Dim tabNode as XmlNode
		  Dim i As Integer
		  Dim tmpVal as String
		  Dim tab As StyleTabsType
		  Dim tabs() As StyleTabsType
		  Dim fileName As String
		  
		  BodyFont = SmartML.GetValueF(xStyle, "body")
		  BodyAlign = SmartML.GetValue(xStyle, "body/@align")
		  BodyVAlign = SmartML.GetValue(xStyle, "body/@valign")
		  if bgMaxSize< 1 then
		    bgMaxSize= 100
		  end if
		  Highlight = SmartML.GetValueB(xStyle, "body/@highlight_chorus")
		  BodyMargins.Left = SmartML.GetValueN(xStyle, "body/@margin-left")
		  BodyMargins.Right = SmartML.GetValueN(xStyle, "body/@margin-right")
		  BodyMargins.Top = SmartML.GetValueN(xStyle, "body/@margin-top")
		  BodyMargins.Bottom = SmartML.GetValueN(xStyle, "body/@margin-bottom")
		  '++JRC
		  BodyEnable = SmartML.GetValueB(xStyle, "body/@enabled", true, true)
		  '--
		  
		  tabsNode = SmartML.GetNode(xStyle, "body/tabs")
		  If tabsNode <> Nil Then
		    For i = 0 to tabsNode.ChildCount() - 1
		      tabNode = tabsNode.Child(i)
		      
		      If tabNode <> Nil Then
		        tab.Position = SmartML.GetValueN(tabNode, "@position")
		        tmpVal = SmartML.GetValue(tabNode, "@align")
		        If tmpVal = "left" Then
		          tab.align = StyleHAlignEnum.Left
		        ElseIf tmpVal = "middle" Then
		          tab.align = StyleHAlignEnum.Middle
		        ElseIf tmpVal = "right" Then
		          tab.align = StyleHAlignEnum.Right
		        ElseIf tmpVal = "char" Then
		          tab.align = StyleHAlignEnum.Char
		          tmpVal = SmartML.GetValue(tabNode, "@char")
		          tab.alignChar = Left(tmpVal, 1)
		        End If
		        
		        tabs.Append(tab)
		      End If
		    Next
		    
		    self.BodyTabs = tabs
		    BodyTabsSort()
		  End If
		  
		  TitleFont = SmartML.GetValueF(xStyle, "title")
		  TitleAlign = SmartML.GetValue(xStyle, "title/@align")
		  TitleVAlign = SmartML.GetValue(xStyle, "title/@valign")
		  TitleMargins.Left = SmartML.GetValueN(xStyle, "title/@margin-left")
		  TitleMargins.Right = SmartML.GetValueN(xStyle, "title/@margin-right")
		  TitleMargins.Top = SmartML.GetValueN(xStyle, "title/@margin-top")
		  TitleMargins.Bottom = SmartML.GetValueN(xStyle, "title/@margin-bottom")
		  TitleIncludeVerse = SmartML.GetValueB(xStyle, "title/@include_verse", True, False)
		  
		  '++JRC
		  TitleEnable = SmartML.GetValueB(xStyle, "title/@enabled", true, true)
		  '--
		  
		  SubtitleFont = SmartML.GetValueF(xStyle, "subtitle")
		  SubtitleAlign = SmartML.GetValue(xStyle, "subtitle/@align")
		  SubtitleVAlign = SmartML.GetValue(xStyle, "subtitle/@valign")
		  SubtitleMargins.Left = SmartML.GetValueN(xStyle, "subtitle/@margin-left")
		  SubtitleMargins.Right = SmartML.GetValueN(xStyle, "subtitle/@margin-right")
		  SubtitleMargins.Top = SmartML.GetValueN(xStyle, "subtitle/@margin-top")
		  SubtitleMargins.Bottom = SmartML.GetValueN(xStyle, "subtitle/@margin-bottom")
		  Subtitles = SmartML.GetValue(xStyle, "song_subtitle")
		  SubtitleDescriptiveText = SmartML.GetValueB(xStyle, "subtitle/@descriptive", True, False)
		  '++JRC
		  SubtitleEnable = SmartML.GetValueB(xStyle, "subtitle/@enabled", true, true)
		  '--
		  
		  fileName = SmartML.GetValue(xstyle, "background/@filename", False)
		  If fileName <> "" Then
		    If Not Background.SetImageFromFileName( App.DocsFolder.Child("Backgrounds").AbsolutePath + fileName ) Then
		      Call Background.SetImageAsString(SmartML.GetValue(xstyle, "background", False))
		    End If
		  Else
		    Call Background.SetImageAsString(SmartML.GetValue(xstyle, "background", False))
		  End If
		  If Not SmartML.GetValueC(xstyle, "background/@color", BGColor, False) Then
		    BGColor = defaultBGColor
		  End If
		  BackgroundAlign = SmartML.GetValue(xStyle, "background/@bgalign")'gp
		  BackgroundVAlign = SmartML.GetValue(xStyle, "background/@bgvalign")'gp
		  bgMaxSize = SmartML.GetValueN(xStyle, "background/@bgmaxsize")'gp
		  
		  StripFooter = SmartML.GetValueN(xStyle, "background/@strip_footer")
		  
		  Position = SmartML.GetValueN(xstyle, "background/@position", False)
		  If Position < POS_STRETCH Or Position > POS_CENTER Then 'gp
		    Position = POS_CENTER
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(xStyle As SlideStyle)
		  //++
		  // This isn't the most efficient clone constructor, but
		  // since we don't create and destroy these at a high
		  // rate it should be sufficient.
		  //--
		  Me.defaultBGColor = LightBevelColor
		  Me.Background = new StyleImage()
		  
		  If xStyle Is Nil Then
		    Dim e As New NilObjectException
		    e.Message = "SlideStyle.Constructor: style to clone is Nil"
		    Raise e
		  End If
		  
		  Dim xStyleNode As XmlNode
		  
		  xStyleNode = xStyle.ToXML.DocumentElement
		  
		  
		  FromXML(xStyleNode)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BodyMargins(newMargins As StyleMarginType)
		  BodyMargins = newMargins
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TitleMargins(newMargins As StyleMarginType)
		  TitleMargins = newMargins
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SubtitleMargins(newMargins As StyleMarginType)
		  SubtitleMargins = newMargins
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BodyTabClear()
		  Redim self.BodyTabs(-1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BodyTabAdd(tab As StyleTabsType)
		  'Insert new tab at the first position; it will be relocated to the correct position by BodyTabsSort()
		  self.bodytabs.Insert(0, tab)
		  
		  BodyTabsSort()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TitleIncludeVerse(Assigns value As Boolean)
		  TitleIncludeVerse = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TitleIncludeVerse() As Boolean
		  Return TitleIncludeVerse
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackgroundAlign() As string
		  Dim A As String
		  'gp
		  A = Lowercase(BackgroundAlign)
		  Return A
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackgroundVAlign() As string
		  Dim A As String
		  'gp
		  A = Lowercase(BackgroundVAlign)
		  Return A
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Backgroundalign(Assigns Align As String)
		  'gp
		  Backgroundalign = align
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgroundvAlign(Assigns VAlign As String)
		  'gp
		  BackgroundvAlign = valign
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BGMaxSize() As Integer
		  Dim I As Integer
		  I = BGMaxSize
		  Return I
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BGMaxSize(Assigns MaxSize As Integer)
		  BGMaxSize = MaxSize
		End Sub
	#tag EndMethod


	#tag Note, Name = Overview
		September 2005
		Ed Palmer (swampcat@users.sourceforge.net)
		
		This is a new class, post V0.9.9.
		
		One of the biggest complaints about 0.9.9 was the time required to draw a slide.  In investigating the issue,
		I discovered that since there was no pre-processing being done, a new Picture object was being generated
		for the Background each time the slide changed.  Because the easiest way in RB to change a string-encoded JPG
		into a Picture is through the use of an intermediate file, a new temporary file was being created, written, read and
		destroyed with each slide change.  If the background was exceptionally big, that's a lot of data that moves around
		in a short space of time.
		
		This class is to help that problem.  My general idea as of this writing is to pre-process the XML for the Set and
		change the XML for the style into one of these objects.  The object will be named the same as the slide group,
		and a small collection class will manage the SlideStyle objects.  Still TBD is how to handle certain things like
		blank slides and the concept of a "reverting" style -- changing a temporary style back into its predecessor.
		
		09/16/05: Here's an interesting revelation that is probably an RTFM: Returning an object (i.e., the Get method)
		returns the pointer, not a copy of the object.  Created an "interesting" display the first time I debugged this.
	#tag EndNote


	#tag Property, Flags = &h21
		Private Background As StyleImage
	#tag EndProperty

	#tag Property, Flags = &h21
		Private BGColor As Color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private BodyAlign As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private BodyFont As FontFace
	#tag EndProperty

	#tag Property, Flags = &h21
		Private BodyVAlign As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Highlight As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Defines the treatment of the background image. Valid values are the
			constants that start with POS_
		#tag EndNote
		Protected Position As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private StripFooter As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SubtitleAlign As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SubtitleDescriptiveText As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SubtitleFont As FontFace
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Subtitles As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SubtitleVAlign As String
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Horizontal alignment
		#tag EndNote
		Private TitleAlign As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TitleFont As Fontface
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Vertical alignment of the title
		#tag EndNote
		Private TitleVAlign As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TitleMargins As StyleMarginType
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SubtitleMargins As StyleMarginType
	#tag EndProperty

	#tag Property, Flags = &h21
		Private BodyMargins As StyleMarginType
	#tag EndProperty

	#tag Property, Flags = &h21
		Private BodyTabs() As StyleTabsType
	#tag EndProperty

	#tag Property, Flags = &h21
		Private defaultBGColor As Color
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected TitleIncludeVerse As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		BodyEnable As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		TitleEnable As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		SubtitleEnable As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private BackgroundAlign As string'gp
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			'gp
		#tag EndNote
		Private BackgroundVAlign As string'gp
	#tag EndProperty

	#tag Property, Flags = &h0
		bgMaxSize As Integer
	#tag EndProperty


	#tag Constant, Name = POS_CENTER, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = POS_STRETCH, Type = Integer, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = POS_TILE, Type = Double, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant


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
		#tag ViewProperty
			Name="BodyEnable"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TitleEnable"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SubtitleEnable"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="bgMaxSize"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="verse_as_image"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
