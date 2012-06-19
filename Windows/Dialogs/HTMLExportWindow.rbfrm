#tag Window
Begin Window HTMLExportWindow
   BackColor       =   16777215
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   351
   ImplicitInstance=   False
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "HTML Export Options"
   Visible         =   False
   Width           =   600
   Begin GroupBox grp_css_handling
      AutoDeactivate  =   True
      Bold            =   ""
      Caption         =   "CSS Style Sheet Handling"
      Enabled         =   True
      Height          =   87
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   19
      Underline       =   ""
      Visible         =   True
      Width           =   560
      Begin RadioButton rad_css_link
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Link to style sheet"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_css_handling"
         Italic          =   ""
         Left            =   34
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   48
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   532
      End
      Begin RadioButton rad_css_embed
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Embed style sheet"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_css_handling"
         Italic          =   ""
         Left            =   34
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   73
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   532
      End
   End
   Begin GroupBox grp_css_options
      AutoDeactivate  =   True
      Bold            =   ""
      Caption         =   "CSS Style Sheet Options"
      Enabled         =   True
      Height          =   87
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   117
      Underline       =   ""
      Visible         =   True
      Width           =   560
      Begin RadioButton rad_css_print
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Use style sheet based on print settings"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_css_options"
         Italic          =   ""
         Left            =   34
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   172
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   532
      End
      Begin RadioButton rad_css_default
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Use specified style sheet"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_css_options"
         Italic          =   ""
         Left            =   34
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   147
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   532
      End
   End
   Begin GroupBox grp_multiple_export
      AutoDeactivate  =   True
      Bold            =   ""
      Caption         =   "Multiple Export"
      Enabled         =   True
      Height          =   87
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   653
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   1
      Underline       =   ""
      Visible         =   False
      Width           =   266
      Begin RadioButton rad_single
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Single file for all songs"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_multiple_export"
         Italic          =   ""
         Left            =   667
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   31
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   229
      End
      Begin RadioButton rad_unique
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Unique file per song"
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_multiple_export"
         Italic          =   ""
         Left            =   667
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   56
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   229
      End
   End
   Begin Label lbl_cssfile
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      Text            =   "Style Sheet:"
      TextAlign       =   2
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   229
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   160
   End
   Begin PushButton btn_ok
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "OK"
      Default         =   True
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   500
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   311
      Underline       =   ""
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   408
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   311
      Underline       =   ""
      Visible         =   True
      Width           =   80
   End
   Begin Label lbl_outdir
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      Text            =   "Output folder:"
      TextAlign       =   2
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   261
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   160
   End
   Begin SPopupMenu pop_cssfile
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   ""
      Left            =   192
      ListIndex       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   228
      Underline       =   ""
      Visible         =   True
      Width           =   388
   End
   Begin SPopupMenu pop_outdir
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   ""
      Left            =   192
      ListIndex       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   261
      Underline       =   ""
      Visible         =   True
      Width           =   388
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  If prefs= Nil Then
		    Dim r As New NilObjectException
		    Raise r
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  App.T.TranslateWindow(Self, kTranslationRoot, App.TranslationFonts)
		  prefs = Nil
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub EnableOkIfAble()
		  Dim b As Boolean
		  If prefs <> Nil Then
		    b = (prefs.StyleSheet <> Nil)
		    b = b Or prefs.PrintStyle
		    b = b And (prefs.OutputFolder <> Nil)
		    btn_ok.Enabled = ((prefs.StyleSheet <> Nil) Or prefs.PrintStyle) And (prefs.OutputFolder <> Nil)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowDialog(exportPrefs As HTMLExportOptions, within As Window = Nil) As Boolean
		  If exportPrefs = Nil Then
		    Dim r As New NilObjectException
		    r.Message = "No HTMLExportOptions specified to HTMLExportWindow"
		    Raise r
		    Return True 'Cancelled
		  End If
		  
		  prefs = exportPrefs.Clone
		  '#if DebugBuild
		  'prefs.StyleSheet = Nil
		  'prefs.OutputFolder = Nil
		  '#endif
		  
		  rad_css_embed.Value = prefs.EmbedCSS
		  rad_css_link.Value = Not prefs.EmbedCSS
		  
		  rad_css_print.Value = prefs.PrintStyle
		  rad_css_default.Value = Not prefs.PrintStyle
		  
		  rad_unique.Value = prefs.UniqueFiles
		  rad_single.Value = Not prefs.UniqueFiles
		  
		  
		  pop_outdir.Changing = True
		  If pop_outdir.ListCount > 2 Then pop_outdir.RemoveRow 0
		  If prefs.OutputFolder <> Nil Then
		    pop_outdir.InsertRow (0, prefs.OutputFolder.DisplayName)
		  Else
		    pop_outdir.InsertRow (0, App.T.Translate(kTranslationRoot + kNoFile))
		  End If
		  pop_outdir.ListIndex = 0
		  pop_outdir.Changing = False
		  
		  pop_cssfile.Changing = True
		  If pop_cssfile.ListCount > 2 Then pop_cssfile.RemoveRow 0
		  If prefs.StyleSheet <> Nil Then
		    pop_cssfile.InsertRow(0, prefs.StyleSheet.DisplayName)
		  Else
		    pop_cssfile.InsertRow(0, App.T.Translate(kTranslationRoot + kNoFile))
		  End If
		  pop_cssfile.ListIndex = 0
		  pop_cssfile.Changing = False
		  
		  Cancelled = False
		  
		  EnableOkIfAble
		  
		  If within = Nil Then
		    ShowModal
		  Else
		    ShowModalWithin(within)
		  End If
		  
		  If Not Cancelled Then
		    exportPrefs.CopyFrom(prefs)
		  End If
		  
		  Return Cancelled
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Cancelled As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private prefs As HTMLExportOptions
	#tag EndProperty


	#tag Constant, Name = kCancel, Type = String, Dynamic = False, Default = \"/shared/cancel/@caption", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kCssFile, Type = String, Dynamic = False, Default = \"/cssfile", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kFilterCSS, Type = String, Dynamic = False, Default = \"/filter_css", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kNoFile, Type = String, Dynamic = False, Default = \"/nofile", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOK, Type = String, Dynamic = False, Default = \"/shared/ok/@caption", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOutDir, Type = String, Dynamic = False, Default = \"/outdir", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOutFile, Type = String, Dynamic = False, Default = \"/outfile", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTranslationRoot, Type = String, Dynamic = False, Default = \"export_options", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events rad_css_link
	#tag Event
		Sub Action()
		  prefs.EmbedCSS = Not Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_css_embed
	#tag Event
		Sub Action()
		  prefs.EmbedCSS = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_css_print
	#tag Event
		Sub Action()
		  pop_cssfile.Enabled = Not me.Value
		  prefs.PrintStyle = me.Value
		  EnableOkIfAble
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_css_default
	#tag Event
		Sub Action()
		  pop_cssfile.Enabled = Me.Value
		  prefs.PrintStyle = Not Me.Value
		  EnableOkIfAble
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_single
	#tag Event
		Sub Action()
		  prefs.UniqueFiles = Not Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_unique
	#tag Event
		Sub Action()
		  prefs.UniqueFiles = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_ok
	#tag Event
		Sub Action()
		  Self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_cancel
	#tag Event
		Sub Action()
		  Cancelled = True
		  Self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_cssfile
	#tag Event
		Sub Change()
		  //++
		  // Assuming "Select" is the last entry
		  //--
		  
		  If Me.ListIndex = Me.ListCount - 1 Then
		    Dim f As FolderItem
		    Dim dlg As New OpenDialog
		    Dim cssFilter As FileType
		    dlg.ActionButtonCaption = App.T.Translate(kTranslationRoot + kOK)
		    dlg.CancelButtonCaption = App.T.Translate(kTranslationRoot + kCancel)
		    dlg.Title = App.T.Translate(kTranslationRoot + kCssFile +"/@caption")
		    dlg.PromptText = App.T.Translate(kTranslationRoot + kCssFile)
		    cssFilter = FileTypes.CSSFiles
		    cssFilter.Name = App.T.Translate(kTranslationRoot + kFilterCSS)
		    dlg.Filter = cssFilter
		    If prefs.StyleSheet <> Nil Then
		      dlg.InitialDirectory = prefs.StyleSheet.Parent
		    Else
		      dlg.InitialDirectory = App.AppFolder.Child("OpenSong Settings")
		    End If
		    f = dlg.ShowModalWithin(Self)
		    If f <> Nil Then
		      prefs.StyleSheet = f
		      Me.RemoveRow(0)
		      Me.InsertRow(0,f.Name)
		    End If
		    Me.ListIndex = 0
		  End If
		  EnableOkIfAble
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.Changing = True
		  Me.AddSeparator
		  Me.AddRow(App.T.Translate("shared/select/@caption") + "...")
		  Me.ListIndex = Me.ListCount - 1
		  Me.Changing = False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_outdir
	#tag Event
		Sub Open()
		  Me.Changing = True
		  Me.AddSeparator
		  Me.AddRow(App.T.Translate("shared/select/@caption") + "...")
		  Me.ListIndex = Me.ListCount - 1
		  Me.Changing = False
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  //++
		  // Assuming "Select" is the last entry
		  //--
		  
		  If Me.ListIndex = Me.ListCount - 1 Then
		    Dim f As FolderItem
		    Dim dlg As New SelectFolderDialog
		    dlg.ActionButtonCaption = App.T.Translate(kTranslationRoot + kOK)
		    dlg.CancelButtonCaption = App.T.Translate(kTranslationRoot + kCancel)
		    dlg.PromptText = App.T.Translate(kTranslationRoot + kOutDir)
		    dlg.Title = App.T.Translate(kTranslationRoot + kOutDir + "/@caption")
		    If prefs.OutputFolder <> Nil Then
		      dlg.InitialDirectory = prefs.OutputFolder
		    Else
		      dlg.InitialDirectory = SpecialFolder.Documents
		    End If
		    
		    f = dlg.ShowModalWithin(Self)
		    If f <> Nil Then
		      prefs.OutputFolder = f
		      Me.RemoveRow(0)
		      Me.InsertRow(0,f.Name)
		    End If
		    Me.ListIndex = 0
		  End If
		  
		  EnableOkIfAble
		End Sub
	#tag EndEvent
#tag EndEvents
