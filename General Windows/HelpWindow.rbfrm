#tag Window
Begin Window HelpWindow
   Placement       =   0
   Width           =   650
   Height          =   475
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   1
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Help Topics"
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
   Begin TabPanel nil_help_tabs
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   2
      Top             =   10
      Width           =   640
      Height          =   460
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Facing          =   0
      TabDefinition   =   "Presentation Keys\rLyrics/Chords\rPresentation Field\rClose"
      Panels          =   ""
      SmallTabs       =   "False"
      Value           =   1
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      TextFont        =   "Arial"
      TextSize        =   11
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   0
      Begin EditField edt_help_keys
         Index           =   -2147483648
         ControlOrder    =   2
         Left            =   9
         Top             =   40
         Width           =   620
         Height          =   420
         LockLeft        =   "True"
         LockTop         =   "True"
         LockRight       =   "True"
         LockBottom      =   "True"
         TabPanelIndex   =   1
         Border          =   "True"
         Multiline       =   "True"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "True"
         Password        =   "False"
         UseFocusRing    =   "True"
         TextColor       =   0
         BackColor       =   16777215
         Enabled         =   True
         Format          =   ""
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Courier New"
         TextSize        =   12
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Text            =   "<h1>Presentation Keys</h1>\r\n\r\nThe Presentation is controlled with the following keys:\r\n\r\nEsc Key: End the presentation.\r\nUp Arrow, 8 on Numpad, Backspace: Go to Previous Slide.\r\nDown Arrow, 2 on Numpad, Space Key: Go to Next Slide.\r\nLeft Arrow, 4 on Numpad: Go to Previous item in set.\r\nRight Arrow, 6 on Numpad: Go to Next item in set.\r\nQ Key: Insert a new song into the presentation.\r\nA Key: Insert a new Alert.\r\nS Key: Insert a new scripture into the presentation.\r\nW Key: Fade to White screen.\r\nK Key: Fade to Black screen.\r\nL Key: Display OpenSong Logo.\r\nH Key: Hide Text, Show Background image only.\r\nF Key: Freezes Presentation(i.e. prevents displaying new slide, allowing you to change current slide\r\nwithout affecting the presentation, press N to unfreeze).\r\nN Key: Normal mode(get out of black screen, etc.)\r\nB Key: Go to Bridge(as denoted by a [B#] in song\r\neditor). If there is more than one Bridge,\r\nthen pressing the B key will move to the next Bridge.\r\nC Key: Go to Chorus(as denoted by a [C#] in song editor). If there is more than one chorus,\r\nthen pressing the C key will move to the next chorus.\r\nT Key: Go to Tag(as denoted by a [T#] in song editor). If there is more than one Tag,\r\nthen pressing the T key will move to the next Tag.\r\nP Key: Go to Pre-Chorus(as denoted by a [P#] in song editor). If there is more than one Pre-Chorus,\r\nthen pressing the P key will move to the next Pre-Chorus.\r\n1-9 Key: Go to Verse#(as denoted by a [V#] in song editor).\r\n\r\nNote the Numpad keys function depends on the state of the NumLock key.\r\n"
         Mask            =   ""
         ReadOnly        =   "True"
         LimitText       =   0
         AcceptTabs      =   "False"
         Alignment       =   0
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "nil_help_tabs"
         BehaviorIndex   =   1
      End
      Begin EditField edt_help_presentation
         Index           =   -2147483648
         ControlOrder    =   3
         Left            =   8
         Top             =   39
         Width           =   620
         Height          =   420
         LockLeft        =   "True"
         LockTop         =   "True"
         LockRight       =   "True"
         LockBottom      =   "True"
         TabPanelIndex   =   3
         Border          =   "True"
         Multiline       =   "True"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "True"
         Password        =   "False"
         UseFocusRing    =   "True"
         TextColor       =   0
         BackColor       =   16777215
         Enabled         =   True
         Format          =   ""
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Courier New"
         TextSize        =   12
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Text            =   "<h1>OpenSong Presentation Field</h1>\r\n\r\nThe presentation field contains a list of sections from the song's lyrics/chords field. Each section is seperated by a space. For example:\r\n<b>\r\nV1 C V2 C V3 C\r\n</b>\r\nThis example would display the first verse on the first slide, the chorus on the second slide, the second verse on the third slide, and so on.\r\n\r\nKeep in mind that if your song uses multi-lyric lines for a single chord line, that each lyric line's prefix is appended to it's section. See the ""Lyric Lines"" section under the ""Lyrics / Chords Format"" help for more information.\r\n\r\n<h3>Empty Presentation Field</h3>\r\n\r\nIf the presentation field is empty, then the Presenter will order the slides based on the order in the Lyrics / Chords field."
         Mask            =   ""
         ReadOnly        =   "True"
         LimitText       =   0
         AcceptTabs      =   "False"
         Alignment       =   0
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "nil_help_tabs"
         BehaviorIndex   =   2
      End
      Begin EditField edt_help_lyrics
         Index           =   -2147483648
         ControlOrder    =   4
         Left            =   8
         Top             =   40
         Width           =   620
         Height          =   420
         LockLeft        =   "True"
         LockTop         =   "True"
         LockRight       =   "True"
         LockBottom      =   "True"
         TabPanelIndex   =   2
         Border          =   "True"
         Multiline       =   "True"
         ScrollbarHorizontal=   "False"
         ScrollbarVertical=   "True"
         Styled          =   "True"
         Password        =   "False"
         UseFocusRing    =   "True"
         TextColor       =   0
         BackColor       =   16777215
         Enabled         =   True
         Format          =   ""
         Visible         =   True
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "Courier New"
         TextSize        =   12
         Bold            =   "False"
         Italic          =   "False"
         Underline       =   "False"
         Text            =   "<h1>OpenSong Lyrics / Chords Format</h1>\r\n\r\nSongs are broken down into the following line types: Section lines, Chord lines, Lyric lines, and Comment lines. A simple song might look something like this:\r\n<pre><b>\r\n;Remember to sing the verse twice.\r\n[V]\r\n.G                C\r\n This is a verse, this is a verse.\r\n.D          G\r\n That is so cool.\r\n\r\n[C]\r\n.G               C/D  D     C\r\n Sing the chorus now, yeah, yeah,\r\n.G           C       D/F# G\r\n This is the dumbest song ever.</b></pre>\r\n\r\nLets look at each line type...\r\n\r\n<h2>Section Lines</h2>\r\n\r\nSection lines are delimited by braces: [ and ]. A ""section"" includes any lines following this section line until the next section line or the end of the song. Sections are not displayed in the Presenter, but they are used to determine the order of the slides. Any text inside the braces is acceptable, but the following have special effects:\r\n\r\n<b><i>[V]: </i></b>Verses. Lead sheets will automatically remove the ""V"" and print the remaining number with a circle around it. Examples: [V1], [V2], [V3].\r\n\r\n<b><i>[C]: </i></b>Chorus. Lead sheets will automatically display ""Chorus"" followed by any extra text (see examples). ""Chorus"" will be printed with a square around it. Examples: [C], [C2], [CModulation].\r\n\r\n<b><i>[P]: </i></b>Pre-chorus. Lead sheets will automatically display ""Pre-chorus"" followed by any extra text (see examples). ""Pre-chorus"" will be printed with horizontal lines above it and below it. Examples: [P], [P2].\r\n\r\n<b><i>[B]: </i></b>Bridge. Lead sheets will automatically display ""Bridge"" followed by any extra text (see examples). ""Bridge"" will be printed with a rounded square around it. Examples: [B], [B2].\r\n\r\n<b><i>[T]: </i></b>Tag. Lead sheets will automatically display ""Tag"" followed by any extra text (see examples). ""Tag"" will be printed with a rounded square around it. Examples: [T], [T2].\r\n\r\n<h2>Chord Lines</h2>\r\n\r\nChord lines start with a period: ""."". The first letter of each chord should line up with the lyrics under it. Chord lines don't display on the Presenter, only on lead sheets.\r\n\r\n<h2>Lyric Lines</h2>\r\n\r\nLyric lines start with a space: "" "". Lyrics generally line up with a previous chord line, but not necessarily.\r\n\r\n<b><i>""__""</i></b> If a word needs to be stretched to fit the chords, use underscores: ""_"". For example:\r\n<b><pre>\r\n.Gsus7 C    G\r\n Wel___come home.</pre></b>\r\n\r\nUnderscores are replaced by an appropriate ""-"" centered between the word parts. \r\n\r\n<b>""  ""</b> Multiple spaces between words are just fine. Underscores and multiple spaces are automatically removed in the Presenter. When printing lead sheets, both are dropped and dynamically adjusted to fit.\r\n\r\n<b>""|""</b> Vertical bars are replaced with spaces on lead sheets, and new lines in the Presenter.\r\n\r\n<b>""||""</b> Double vertical bars are replaced by ""new slide"" in the Presenter and ignored when printing lead sheets. Double vertical bars must be at the end of the line.\r\n\r\n<h3>Multiple Lyric Lines for One Chord Line!?</h3>\r\n\r\nMany songs have multiple verses which all share the same chords. Rather than repeat the chords in each verse section, we can group them by verse line rather than by verse number (like a hymnal). In this case, rather than start each lyric line with a space, start each lyric line with the verse number. Note that aligning multiple lyric lines with one chord line is a little trickier. It should look something like this:\r\n\r\n<b><i>(Don't try to sing it; the timing is terrible. *grin*)</i><pre>\r\n[V]\r\n.G     C               G\r\n1This  is verse        one;\r\n2This  is not verse    two;\r\n3Where did verse three go;\r\n4Ever__lasting is not  verse four;\r\n\r\n.G     D    C                D            G\r\n1Hear  my   song as I sing,  ""Mon_________key.""\r\n2Open  your ears to my       wonderful    song.\r\n3Why   are  we still         singing this song?\r\n4This  is   not the way that songs should sound.</pre>\r\n</b>\r\nAs far as the Presenter is concerned, the first character of each lyric line (i.e. 1, 2, 3, etc.) is appended to the section it is in. In other words, a section line of [V] with following lyric lines starting with 1, 2, 3, etc. would look like V1, V2, V3, etc.\r\n\r\n<h2>Comment Lines</h2>\r\n\r\nThere isn't much to a comment line. Comment lines are any lines that start with a semi-colon: "";"". Comment lines are skipped in the Presenter, and displayed using the Comment font in Lead Sheets.\r\n\r\n<h2>Column Breaks</h2>\r\n\r\nIf a line contains only three dashes (""---""), lyrics sheets will print with a second column starting at the column break."
         Mask            =   ""
         ReadOnly        =   "True"
         LimitText       =   0
         AcceptTabs      =   "False"
         Alignment       =   0
         DataSource      =   ""
         DataField       =   ""
         InitialParent   =   "nil_help_tabs"
         BehaviorIndex   =   3
      End
   End
   Begin PushButton btn_help_print
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   575
      Top             =   4
      Width           =   70
      Height          =   22
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Caption         =   "Print..."
      Default         =   "False"
      Cancel          =   "False"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "Arial"
      TextSize        =   11
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      BehaviorIndex   =   4
   End
End
#tag EndWindow

#tag WindowCode
#tag Event
	Sub Open()
	  nil_help_tabs.Value = 0
	  App.T.TranslateWindow Me, "help_topics", App.TranslationFonts
	  
	  HTMLFormatField edt_help_lyrics
	  HTMLFormatField edt_help_presentation
	  HTMLFormatField edt_help_keys
	  
	  App.MaximizeInControlScreen Me
	End Sub
#tag EndEvent


#tag Method, Flags = &h0
	Sub HTMLFormatField(field As EditField)
	  Dim i,j,k As Integer
	  Dim tag As String
	  
	  field.SelStart = 1
	  field.SelLength = Len(field.Text)
	  field.SelTextFont = "Arial"
	  
	  i = InStr(field.Text, "<")
	  While i >= 1
	    j = InStr(i, field.Text, ">")
	    If j >= 1 Then
	      tag = Lowercase(Mid(field.Text, i+1, j-i-1))
	      field.SelStart = i - 1
	      field.SelLength = j - i + 1
	      field.SelText = ""
	      
	      k = InStr(i, field.Text, "</" + tag + ">")
	      If k >= 1 Then
	        field.SelStart = k - 1
	        field.SelLength = Len(tag) + 3
	        field.SelText = ""
	        
	        field.SelStart = i - 1
	        field.SelLength = k - i
	        If tag = "b" Then
	          field.SelBold = True
	        ElseIf tag = "i" Then
	          field.SelItalic = True
	        ElseIf tag = "u" Then
	          field.SelUnderline = True
	        ElseIf tag = "l" Then
	          field.SelAlignment = 1
	        ElseIf tag = "c" Then
	          field.SelAlignment = 2
	        ElseIf tag = "r" Then
	          field.SelAlignment = 3
	        ElseIf tag = "h1" Then
	          field.SelBold = True
	          field.SelItalic = False
	          field.SelAlignment = 2
	          field.SelTextSize = field.TextSize * 2.5
	        ElseIf tag = "h2" Then
	          field.SelBold = True
	          field.SelItalic = True
	          field.SelAlignment = 2
	          field.SelTextSize = field.TextSize * 2
	        ElseIf tag = "h3" Then
	          field.SelBold = True
	          field.SelTextSize = field.TextSize * 1.5
	        ElseIf tag = "pre" Then
	          field.SelTextFont = "Courier New"
	        End If
	        
	        field.SelStart = 0
	        field.SelLength = 0
	        i = InStr(i, field.Text, "<")
	      Else
	        i = 0
	      End If
	    Else
	      i = 0
	    End If
	  Wend
	  
	End Sub
#tag EndMethod


#tag EndWindowCode

#tag Events nil_help_tabs
#tag Event
	Sub Change()
	  If Me.Value = 3 Then
	    Close
	  End If
	End Sub
#tag EndEvent
#tag EndEvents
#tag Events btn_help_print
#tag Event
	Sub Action()
	  Dim g As Graphics
	  Dim stp As StyledTextPrinter
	  
	  g = OpenPrinterDialog
	  If g <> Nil Then
	    If nil_help_tabs.Value = 0 Then
	      stp = edt_help_lyrics.StyledTextPrinter(g, 7 * 72)
	    ElseIf nil_help_tabs.Value = 1 Then
	      stp = edt_help_presentation.StyledTextPrinter(g, 7 * 72)
	    Else
	      Return
	    End If
	    stp.Width = 7 * 72
	    Do Until stp.EOF
	      stp.DrawBlock .75 * 72, .75 * 72, 9.5 * 72
	      If Not stp.EOF Then g.NextPage
	    Loop
	  End If
	End Sub
#tag EndEvent
#tag EndEvents
