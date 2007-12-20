#tag Window
Begin Window ExportDialog
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   1
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   485
   ImplicitInstance=   "True"
   LiveResize      =   "False"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   "False"
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   "True"
   MinHeight       =   465
   MinimizeButton  =   "False"
   MinWidth        =   484
   Placement       =   0
   Resizeable      =   "True"
   Title           =   "Export"
   Visible         =   "True"
   Width           =   646
   Begin GroupBox grp_source
      AutoDeactivate  =   "True"
      Bold            =   ""
      Caption         =   "Source"
      ControlOrder    =   0
      Enabled         =   True
      Height          =   115
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   14
      Underline       =   ""
      Visible         =   True
      Width           =   606
      BehaviorIndex   =   0
      Begin RadioButton rad_source_song
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "Current Song"
         ControlOrder    =   1
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_source"
         Italic          =   ""
         Left            =   28
         LockBottom      =   ""
         LockLeft        =   "True"
         LockRight       =   ""
         LockTop         =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   35
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   127
         BehaviorIndex   =   1
      End
      Begin EditField edt_source_song
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   "True"
         ControlOrder    =   2
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   "False"
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_source"
         Italic          =   ""
         Left            =   167
         LimitText       =   0
         LockBottom      =   ""
         LockLeft        =   "True"
         LockRight       =   "True"
         LockTop         =   "True"
         Mask            =   ""
         Multiline       =   ""
         Password        =   ""
         ReadOnly        =   "True"
         Scope           =   0
         ScrollbarHorizontal=   ""
         ScrollbarVertical=   "True"
         Styled          =   ""
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         Top             =   35
         Underline       =   ""
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   450
         BehaviorIndex   =   2
      End
      Begin RadioButton rad_source_folder
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "Current Folder"
         ControlOrder    =   3
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_source"
         Italic          =   ""
         Left            =   28
         LockBottom      =   ""
         LockLeft        =   "True"
         LockRight       =   ""
         LockTop         =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   69
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   127
         BehaviorIndex   =   3
      End
      Begin EditField edt_source_folder
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   "True"
         ControlOrder    =   4
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   "False"
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_source"
         Italic          =   ""
         Left            =   167
         LimitText       =   0
         LockBottom      =   ""
         LockLeft        =   "True"
         LockRight       =   "True"
         LockTop         =   "True"
         Mask            =   ""
         Multiline       =   ""
         Password        =   ""
         ReadOnly        =   "True"
         Scope           =   0
         ScrollbarHorizontal=   ""
         ScrollbarVertical=   "True"
         Styled          =   ""
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         Top             =   69
         Underline       =   ""
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   450
         BehaviorIndex   =   4
      End
      Begin RadioButton rad_source_all
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "All Songs"
         ControlOrder    =   5
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_source"
         Italic          =   ""
         Left            =   28
         LockBottom      =   "False"
         LockLeft        =   "True"
         LockRight       =   ""
         LockTop         =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   103
         Underline       =   ""
         Value           =   "True"
         Visible         =   True
         Width           =   127
         BehaviorIndex   =   5
      End
   End
   Begin GroupBox grp_elements
      AutoDeactivate  =   "True"
      Bold            =   ""
      Caption         =   "Song elements"
      ControlOrder    =   6
      Enabled         =   True
      Height          =   79
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   141
      Underline       =   ""
      Visible         =   True
      Width           =   606
      BehaviorIndex   =   6
      Begin CheckBox chk_elem_order
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "Order"
         ControlOrder    =   11
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_elements"
         Italic          =   ""
         Left            =   140
         LockBottom      =   ""
         LockLeft        =   "True"
         LockRight       =   ""
         LockTop         =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   162
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   100
         BehaviorIndex   =   10
      End
      Begin CheckBox chk_elem_hymn_number
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "Hymn Number"
         ControlOrder    =   12
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_elements"
         Italic          =   ""
         Left            =   28
         LockBottom      =   ""
         LockLeft        =   "True"
         LockRight       =   ""
         LockTop         =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   162
         Underline       =   ""
         Value           =   "True"
         Visible         =   True
         Width           =   100
         BehaviorIndex   =   11
      End
      Begin CheckBox chk_elem_aka
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "AKA Title"
         ControlOrder    =   13
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_elements"
         Italic          =   ""
         Left            =   364
         LockBottom      =   ""
         LockLeft        =   "True"
         LockRight       =   ""
         LockTop         =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   162
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   100
         BehaviorIndex   =   12
      End
      Begin CheckBox chk_elem_ccli
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "CCLI#"
         ControlOrder    =   10
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_elements"
         Italic          =   ""
         Left            =   252
         LockBottom      =   ""
         LockLeft        =   "True"
         LockRight       =   ""
         LockTop         =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   162
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   100
         BehaviorIndex   =   9
      End
      Begin CheckBox chk_elem_user2
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "User Defined 2"
         ControlOrder    =   7
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_elements"
         Italic          =   ""
         Left            =   140
         LockBottom      =   ""
         LockLeft        =   "True"
         LockRight       =   ""
         LockTop         =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   194
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   100
         BehaviorIndex   =   7
      End
      Begin CheckBox chk_elem_user3
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "User Defined 3"
         ControlOrder    =   8
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_elements"
         Italic          =   ""
         Left            =   252
         LockBottom      =   ""
         LockLeft        =   "True"
         LockRight       =   ""
         LockTop         =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   194
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   100
         BehaviorIndex   =   8
      End
      Begin CheckBox chk_elem_user1
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "User Defined 1"
         ControlOrder    =   14
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_elements"
         Italic          =   ""
         Left            =   28
         LockBottom      =   ""
         LockLeft        =   "True"
         LockRight       =   ""
         LockTop         =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   194
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   100
         BehaviorIndex   =   13
      End
   End
   Begin GroupBox grp_destination
      AutoDeactivate  =   "True"
      Bold            =   ""
      Caption         =   "Destination"
      ControlOrder    =   9
      Enabled         =   True
      Height          =   80
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   ""
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   232
      Underline       =   ""
      Visible         =   True
      Width           =   606
      BehaviorIndex   =   14
      Begin EditField edt_dest_html_file_folder
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   "True"
         ControlOrder    =   16
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_destination"
         Italic          =   ""
         Left            =   167
         LimitText       =   0
         LockBottom      =   ""
         LockLeft        =   "True"
         LockRight       =   "True"
         LockTop         =   "True"
         Mask            =   ""
         Multiline       =   ""
         Password        =   ""
         ReadOnly        =   ""
         Scope           =   0
         ScrollbarHorizontal=   ""
         ScrollbarVertical=   "True"
         Styled          =   ""
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         Top             =   250
         Underline       =   ""
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   410
         BehaviorIndex   =   16
      End
      Begin CheckBox chk_dest_html_file_folder_structure
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "Maintain folder structure"
         ControlOrder    =   17
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_destination"
         Italic          =   ""
         Left            =   28
         LockBottom      =   ""
         LockLeft        =   "True"
         LockRight       =   ""
         LockTop         =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   284
         Underline       =   ""
         Value           =   "True"
         Visible         =   True
         Width           =   212
         BehaviorIndex   =   17
      End
      Begin CheckBox chk_dest_html_file_folder_sub_index
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "Separate index for subfolders"
         ControlOrder    =   18
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_destination"
         Italic          =   ""
         Left            =   252
         LockBottom      =   ""
         LockLeft        =   "True"
         LockRight       =   "True"
         LockTop         =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   284
         Underline       =   ""
         Value           =   ""
         Visible         =   True
         Width           =   365
         BehaviorIndex   =   18
      End
      Begin RadioButton rad_dest_html_file_folder
         AutoDeactivate  =   "True"
         Bold            =   ""
         Caption         =   "HTML file folder"
         ControlOrder    =   15
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_destination"
         Italic          =   ""
         Left            =   28
         LockBottom      =   ""
         LockLeft        =   "True"
         LockRight       =   ""
         LockTop         =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   252
         Underline       =   ""
         Value           =   "True"
         Visible         =   True
         Width           =   127
         BehaviorIndex   =   15
      End
      Begin PushButton btn_dest_file_folder_select
         AutoDeactivate  =   "True"
         Bold            =   ""
         Cancel          =   ""
         Caption         =   "..."
         ControlOrder    =   20
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_destination"
         Italic          =   ""
         Left            =   589
         LockBottom      =   ""
         LockLeft        =   ""
         LockRight       =   "True"
         LockTop         =   "True"
         Scope           =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   251
         Underline       =   ""
         Visible         =   True
         Width           =   28
         BehaviorIndex   =   19
      End
   End
   Begin PushButton btn_export
      AutoDeactivate  =   "True"
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Export"
      ControlOrder    =   19
      Default         =   ""
      Enabled         =   "False"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   ""
      LockTop         =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   442
      Underline       =   ""
      Visible         =   True
      Width           =   108
      BehaviorIndex   =   20
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   "True"
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Close"
      ControlOrder    =   21
      Default         =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   526
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "False"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   442
      Underline       =   ""
      Visible         =   True
      Width           =   100
      BehaviorIndex   =   21
   End
   Begin GroupBox grp_log
      AutoDeactivate  =   "True"
      Bold            =   ""
      Caption         =   "Log"
      ControlOrder    =   22
      Enabled         =   True
      Height          =   108
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      Scope           =   0
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   324
      Underline       =   ""
      Visible         =   True
      Width           =   606
      BehaviorIndex   =   22
      Begin EditField edt_log
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   "True"
         ControlOrder    =   23
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   79
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_log"
         Italic          =   ""
         Left            =   28
         LimitText       =   0
         LockBottom      =   "True"
         LockLeft        =   "True"
         LockRight       =   "True"
         LockTop         =   "True"
         Mask            =   ""
         Multiline       =   "True"
         Password        =   ""
         ReadOnly        =   "True"
         Scope           =   0
         ScrollbarHorizontal=   ""
         ScrollbarVertical=   "True"
         Styled          =   ""
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         Top             =   346
         Underline       =   ""
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   589
         BehaviorIndex   =   23
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  // initialize elements
		  edt_source_song.Text = MainWindow.lst_songs_songs.Text
		  edt_source_folder.Text = MainWindow.pop_songs_song_folders.Text
		  
		  updateExportPossible
		End Sub
	#tag EndEvent

	#tag Event
		Sub Close()
		  Dim ret As Boolean
		  
		  // clear reference and destroy parent class
		  myExport = Nil
		  ret = Export.DestroyInstance
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub updateExportPossible()
		  // perform checks and enable/disable Export button
		  Dim enable As Boolean = True
		  
		  If rad_dest_html_file_folder.Value And 0 = Len(edt_dest_html_file_folder.Text) Then
		    enable = False
		  End If
		  
		  If rad_source_song.Value And MainWindow.lst_songs_songs.ListIndex < 0 Then
		    enable = False
		  End If
		  
		  btn_export.Enabled = enable
		End Sub
	#tag EndMethod


	#tag Note, Name = Description
		This Dialog will be created together with an instance of the Export Class. This class is accessible via the myExport property.
	#tag EndNote


	#tag Property, Flags = &h0
		myExport As Export = Nil
	#tag EndProperty


#tag EndWindowCode

#tag Events rad_source_song
	#tag Event
		Sub Action()
		  updateExportPossible
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_source_folder
	#tag Event
		Sub Action()
		  updateExportPossible
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_source_all
	#tag Event
		Sub Action()
		  updateExportPossible
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_dest_html_file_folder
	#tag Event
		Sub Action()
		  updateExportPossible
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_dest_html_file_folder
	#tag Event
		Sub TextChange()
		  updateExportPossible
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_export
	#tag Event
		Sub Action()
		  myExport.StartExport
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_dest_file_folder_select
	#tag Event
		Sub Action()
		  'Dim expFolderDlg As New SelectFolderDialog
		  '
		  ''build dialog
		  'expFolderDlg.ActionButtonCaption = App.T.Translate("shared/ok/@caption")
		  'expFolderDlg.CancelButtonCaption = App.T.Translate("shared/cancel/@caption")
		  'expFolderDlg.InitialDirectory = DocumentsFolder
		  'expFolderDlg.PromptText = App.T.Translate("songs_mode/selected_song/export/to/@caption")
		  'expFolderDlg.Title = App.T.Translate("shared/browse_for/@caption")
		  'expFolder = expFolderDlg.ShowModal 'show dialog
		  
		  Dim expFolder As FolderItem
		  expFolder = SelectFolder
		  
		  If Nil <> expFolder Then
		    edt_dest_html_file_folder.Text = expFolder.AbsolutePath
		    updateExportPossible
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_cancel
	#tag Event
		Sub Action()
		  Me.Window.Close
		End Sub
	#tag EndEvent
#tag EndEvents
