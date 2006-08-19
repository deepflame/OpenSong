#tag Class
Class SlideStyle
	#tag Method, Flags = &h0
		Function Background() As Picture
		  Return Background
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Background(Assigns bg As Picture)
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
		Sub BodyAlign(Assigns Align As String)
		  BodyAlign = Align
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BodyAlign() As String
		  Dim A As String
		  A = Lowercase(BodyAlign)
		  Return A
		End Function
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
		Function BodyVAlign() As String
		  Dim VA As String
		  VA = Lowercase(BodyVAlign)
		  Return VA
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BodyVAlign(Assigns VAlign As String)
		  BodyVAlign = VAlign
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(xStyle As XmlNode)
		  Dim foo As Boolean
		  
		  BodyFont = SmartML.GetValueF(xStyle, "body")
		  BodyAlign = SmartML.GetValue(xStyle, "body/@align")
		  BodyVAlign = SmartML.GetValue(xStyle, "body/@valign")
		  
		  TitleFont = SmartML.GetValueF(xStyle, "title")
		  TitleAlign = SmartML.GetValue(xStyle, "title/@align")
		  TitleVAlign = SmartML.GetValue(xStyle, "title/@valign")
		  
		  SubtitleFont = SmartML.GetValueF(xStyle, "subtitle")
		  SubtitleAlign = SmartML.GetValue(xStyle, "subtitle/@align")
		  SubtitleVAlign = SmartML.GetValue(xStyle, "subtitle/@valign")
		  
		  Background = SmartML.GetValueP(xstyle, "background", False)
		  foo = SmartML.GetValueC(xstyle, "background/@color", BGColor, False)
		  StripFooter = SmartML.GetValueN(xStyle, "background/@strip_footer")
		  
		  Position = SmartML.GetValueN(xstyle, "background/@position", False)
		  If Position < POS_STRETCH Or Position > POS_CENTER Then
		    Position = POS_STRETCH
		  End If
		  
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
		Sub SubtitleFont(Assigns NewFont As FontFace)
		  SubtitleFont = NewFont
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SubtitleFont() As FontFace
		  Return SubtitleFont.Clone
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
		Sub TitleAlign(Assigns Align As String)
		  TitleAlign = Align
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TitleAlign() As String
		  Dim A As String
		  A = Lowercase(TitleAlign)
		  Return A
		End Function
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
		  Dim CurrChild As XmlNode
		  
		  XmlDoc = New XmlDocument
		  
		  root = XmlDoc.AppendChild(XmlDoc.CreateElement("style"))
		  
		  CurrChild = root.AppendChild(XmlDoc.CreateElement("title"))
		  CurrChild.SetAttribute "valign", TitleVAlign
		  CurrChild.SetAttribute "align", TitleAlign
		  SmartML.SetValueF(CurrChild, "", TitleFont)
		  
		  CurrChild = root.AppendChild(XmlDoc.CreateElement("subtitle"))
		  CurrChild.SetAttribute "valign", SubtitleVAlign
		  CurrChild.SetAttribute "align", SubtitleAlign
		  SmartML.SetValueF(CurrChild, "", SubtitleFont)
		  
		  CurrChild = root.AppendChild(XmlDoc.CreateElement("body"))
		  CurrChild.SetAttribute "valign", BodyVAlign
		  CurrChild.SetAttribute "align", BodyAlign
		  SmartML.SetValueF(CurrChild, "", BodyFont)
		  
		  CurrChild = root.AppendChild(XmlDoc.CreateElement("background"))
		  CurrChild.SetAttribute "strip_footer", str(StripFooter)
		  SmartML.SetValueC(CurrChild, "/@color", BGColor)
		  SmartML.SetValueN(CurrChild, "/@position", Position)
		  
		  Dim r As New Random
		  Dim f As FolderItem
		  
		  If Background <> Nil Then
		    f = PreferencesFolder.Child(Str(r.InRange(100000, 999999)) + ".jpg")
		    If f <> Nil Then
		      f.SaveAsPicture Background
		      SmartML.SetValueP(CurrChild, "", f)
		      f.Delete
		    End If
		  End If
		  Return XmlDoc
		End Function
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
		Private Background As Picture
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

	#tag Property, Flags = &h21
		Private SubtitleFont As FontFace
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


	#tag Constant, Name = POS_CENTER, Type = Integer, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = POS_STRETCH, Type = Integer, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = POS_TILE, Type = Integer, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant


End Class
#tag EndClass
