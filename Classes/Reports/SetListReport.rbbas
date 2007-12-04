#tag Class
Protected Class SetListReport
Inherits LeadSheetReport
	#tag Method, Flags = &h0
		Function AddSet(SetName As String, Set As XmlDocument) As Boolean
		  //
		  // Setup the report.  Basically, this involves taking the set
		  // that is passed in and converting it to Song format for use
		  // by the LeadSheetReport superclass.  Most of this code was originally
		  // in MainWindow.ActionSetPrintList
		  //
		  // Ed Palmer, February 2006
		  //
		  Dim node, slide As XmlNode
		  Dim r As New Random
		  Dim TempFileName As String
		  Dim CurrentSetItem As XmlNode
		  Dim ItemName As String
		  Dim ItemType As String
		  Dim slidecount As Integer
		  
		  App.DebugWriter.Write "SetListReport.AddSet: Enter"
		  LeadSheetDoc = New XmlDocument
		  node = LeadSheetDoc.AppendChild(LeadSheetDoc.CreateElement("song"))
		  
		  SmartML.SetValue node, "title", SetName + " " + App.T.Translate("print/setlist/@caption")
		  
		  Dim d As New Date
		  SmartML.SetValue node, "author", App.T.Translate("print/setlist/date/@caption") + " " + d.LongDate
		  
		  Dim body As String
		  
		  CurrentSetItem = SetML.GetSetItem(Set, 1)
		  
		  While CurrentSetItem <> Nil
		    ItemName = SmartML.GetValue(CurrentSetItem, "@name")
		    ItemType = SmartML.GetValue(CurrentSetItem, "@type")
		    ItemName = ItemName + " " + App.T.Translate("sets_mode/items/" + ItemType + "/@caption")
		    If ItemName = "" Then ItemName = Encodings.UTF8.Chr(160)  // prevents "Verse" being printed for an unnamed item
		    If Left(ItemName, 2) <> "--" And _
		      SmartML.GetValueB(CurrentSetItem, "@print", True, True) Then
		      body = body + Chr(10) + "[V" + ItemName + "]" + Chr(10)
		      If InStr(ItemType, "scripture") > 0 Or InStr(ItemType, "custom") > 0 Then
		        slide = SmartML.GetNode(CurrentSetItem, "slides/slide")
		        slidecount = 1
		        While slide <> Nil
		          If slidecount > 1 Then // Test for not the first slide
		            body = body + "-__" + Chr(10) // Add a separator
		          End If
		          body = body + " " + SmartML.GetValue(slide, "body") + Chr(10)
		          slide = slide.NextSibling
		          slidecount = slidecount + 1
		        Wend
		      End If
		    End If
		    CurrentSetItem = CurrentSetItem.NextSibling
		  Wend
		  SmartML.SetValue node, "lyrics", body
		  
		  // Generate temporary file to offer to AddSong
		  
		  TempFileName = "_tmp" + Format(r.InRange(0000, 9999), "0000")
		  LeadSheetFile = App.DocsFolder.Child("Songs").Child(TempFileName)
		  
		  While LeadSheetFile.Exists
		    TempFileName = "_tmp" + Format(r.InRange(0000, 9999), "0000")
		    LeadSheetFile = App.DocsFolder.Child("Songs").Child(TempFileName)
		  Wend
		  
		  If Not SmartML.XDocToFile(LeadSheetDoc, LeadSheetFile) Then
		    InputBox.Message App.T.Translate("errors/internal")
		    App.DebugWriter.Write "SetListReport.AddSet: XDocToFile failed on " + TempFileName, 1
		    App.DebugWriter.Write "SetListReport.AddSet: Exit"
		    Return False
		  End If
		  
		  AddSong TempFileName
		  App.DebugWriter.Write "SetListReport.AddSet: Exit"
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  //
		  // Delete the temporary file we created
		  //
		  If LeadSheetFile <> Nil Then
		    If LeadSheetFile.Exists Then LeadSheetFile.Delete
		  End If
		Catch ex
		  App.DebugWriter.Write "~SetListReport: Exception caught"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetSong()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetSongCount()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveSong()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		#tag Note
			This holds the XML for the dummy song used to build the report through
			the LeadSheetReport interfaces.
		#tag EndNote
		Protected LeadSheetDoc As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Points to the temporary file created in AddSet so it can be removed in the destructor
		#tag EndNote
		Protected LeadSheetFile As FolderItem
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="LeadSheetReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="LeadSheetReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="LeadSheetReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="LeadSheetReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="LeadSheetReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LeftMargin"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="LeadSheetReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrintableHeight"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="LeadSheetReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrintableWidth"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="LeadSheetReport"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TopMargin"
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			InheritedFrom="LeadSheetReport"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
