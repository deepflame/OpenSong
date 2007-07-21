#tag Class
Class App
Inherits Application
	#tag Event
		Sub Activate()
		  '++JRC
		  DebugWriter.Write "Begin App.Activate"
		  
		  If Globals.Status_Presentation Then
		    #if Not TargetMacOS
		      App.MinimizeWindow(MainWindow)
		    #endif
		    
		    If PresentWindow.HelperActive Then
		      App.RestoreWindow(PresentHelperWindow)
		      App.SetForeground(PresentHelperWindow)
		      PresentHelperWindow.SetFocus
		    Else
		      App.RestoreWindow(PresentWindow)
		      App.SetForeground(PresentWindow)
		      PresentWindow.SetFocus
		    End If
		  End If
		  
		  DebugWriter.Write "End App.Activate"
		  '--
		End Sub
	#tag EndEvent

	#tag Event
		Sub Close()
		  
		  If App.MyPrintSettings <> Nil Then
		    If Not SmartML.XDocToFile(App.MyPrintSettings, App.DocsFolder.Child("Settings").Child("PrintSettings")) Then SmartML.DisplayError
		  End If
		  If App.MyMainSettings <> Nil Then
		    If Not SmartML.XDocToFile(App.MyMainSettings, App.DocsFolder.Child("Settings").Child("MainSettings")) Then SmartML.DisplayError
		  End If
		  If App.MyPresentSettings <> Nil Then
		    If Not SmartML.XDocToFile(App.MyPresentSettings, App.DocsFolder.Child("Settings").Child("PresentSettings")) Then SmartML.DisplayError
		  End If
		  
		  Globals.Status_Presentation = False
		  If MainPreferences <> Nil Then Call MainPreferences.Save
		  DebugWriter.Done
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim OK As Boolean
		  'Profiler.EnableProfiler
		  Profiler.BeginProfilerEntry "App::Open"
		  
		  DebugWriter = New DebugOutput
		  If System.EnvironmentVariable("OPENSONGDEBUG") = "" Then
		    '++JRC
		    DebugWriter.Enabled = True
		    DebugWriter.AppendLog = False
		    DebugWriter.Level = 3
		    '--
		  Else
		    DebugWriter.Enabled = (System.EnvironmentVariable("OPENSONGDEBUG") = "True")
		  End If
		  OK = DebugWriter.Init
		  DebugWriter.Write "-------------------- Begin Run ----------------------"
		  
		  Splash.Show
		  
		  SmartML.Init
		  LoadPreferences
		  
		  AppFolder = GetFolderItem("")
		  
		  '++JRC Moved translation init to beginning so we can translate error & status Msgs
		  Dim temp As String
		  
		  'Can't translate this until we've loaded the translator
		  'Splash.SetStatus "Loading global settings..."
		  MyGlobals = SmartML.XDocFromFile(AppFolder.Child("OpenSong Settings").Child("Globals"))
		  If MyGlobals = Nil Then
		    MsgBox SmartML.ErrorString + ": " + _
		    AppFolder.Child("OpenSong Settings").AbsolutePath + _
		    " (" + Str(SmartML.ErrorCode) + ")"
		    Quit
		    Return
		  End If
		  
		  'Can't translate this until we've loaded the translator
		  'Splash.SetStatus "Loading translation text..."
		  //++
		  // Updated March 2007: Try to prompt the user before giving up.
		  // Possibly avoids user having to manually update Globals or the preferences file.
		  //--
		  temp = MainPreferences.GetValue(Prefs.kLanguage, "") // Check the new location
		  if temp  = "" Then
		    temp = SmartML.GetValue(MyGlobals.DocumentElement, "language/@file") //Check the old location
		    If temp = "" Then // Prompt the user
		      temp = SelectLanguage
		      If temp = "" Then Quit // User cancelled
		    End If
		  End If
		  
		  T = New Translator(AppFolder.Child("OpenSong Languages").Child(temp))
		  If Not T.IsLoaded Then
		    '++JRC
		    App.MouseCursor = Nil
		    temp = SelectLanguage // Prompt for new selection
		    If temp = "" Then Quit
		    T = New Translator(AppFolder.Child("OpenSong Languages").Child(temp))
		    If Not T.IsLoaded Then //Bail out...something's wrong
		      'SmartML.DisplayError
		      InputBox.Message "Language file '" + AppFolder.Child("OpenSong Languages").Child(temp).AbsolutePath +_
		      "' was not found.  OpenSong must exit."
		      Quit
		    End If
		  End If
		  'moved to globals
		  'SmartML.SetValue MyGlobals.DocumentElement, "language/@file", temp
		  MainPreferences.SetValue(Prefs.kLanguage, temp)
		  
		  TranslateMe True
		  '--
		  
		  '++JRC translated
		  Splash.SetStatus T.Translate("load_settings/checking_folders") + "..."
		  '--
		  
		  Dim docsPath As String
		  Dim tmp As New FolderItem
		  
		  ' --- CREATE DOCUMENTS FOLDER ---
		  DocsFolder = GetDocsFolder
		  
		  ' Create whatever sub-folders are needed
		  '++JRC
		  If Not AppFolder.Child("OpenSong Scripture").Exists Then
		    App.MouseCursor = Nil
		    MsgBox T.Translate("errors/no_scripture_folder", AppFolder.Child("OpenSong Scripture").AbsolutePath)
		    Quit
		  End If
		  '--
		  //++EMP 11/27/05
		  If Not AppFolder.Child("OpenSong Defaults").Exists Then
		    App.MouseCursor = Nil
		    '++JRC Translated
		    MsgBox T.Translate("errors/no_defaults_folder", AppFolder.Child("OpenSong Defaults").AbsolutePath)
		    '--
		    Quit
		  End If
		  //--
		  If Not DocsFolder.Exists Then
		    If Not FileUtils.CopyPath(AppFolder.Child("OpenSong Defaults"), DocsFolder) Then
		      App.MouseCursor = Nil
		      '++JRC Translated
		      MsgBox T.Translate("errors/no_docs_folder", DocsFolder.AbsolutePath)
		      '--
		      Quit
		    End If
		  End If
		  //++EMP 11/27/05
		  If Not AppFolder.Child("OpenSong Defaults").Child("Settings").Exists Then
		    App.MouseCursor = Nil
		    '++JRC Translated
		    MsgBox  T.Translate("errors/no_settings_folder", AppFolder.Child("OpenSong Defaults").Child("Settings").AbsolutePath)
		    '--
		    Quit
		  End If
		  //--
		  If Not DocsFolder.Child("Settings").Exists Then
		    If Not FileUtils.CopyPath(AppFolder.Child("OpenSong Defaults").Child("Settings"), DocsFolder.Child("Settings")) Then
		      App.MouseCursor = Nil
		      '++JRC Translated
		      MsgBox T.Translate("errors/create_settings_folder", DocsFolder.Child("Settings").AbsolutePath)
		      '--
		      Quit
		    End If
		  End If
		  //++EMP 11/27/05
		  If Not AppFolder.Child("OpenSong Defaults").Child("Songs").Exists Then
		    App.MouseCursor = Nil
		    '++JRC Translated
		    MsgBox   T.Translate("errors/no_songs_folder",  AppFolder.Child("OpenSong Defaults").Child("Songs").AbsolutePath)
		    '--
		    Quit
		  End If
		  //--
		  If Not DocsFolder.Child("Songs").Exists Then
		    If Not FileUtils.CopyPath(AppFolder.Child("OpenSong Defaults").Child("Songs"), DocsFolder.Child("Songs")) Then
		      App.MouseCursor = Nil
		      '++JRC Translated
		      MsgBox T.Translate("errors/create_songs_folder",  DocsFolder.Child("Songs").AbsolutePath)
		      '--
		      Quit
		    End If
		  End If
		  //++EMP 11/27/05
		  If Not AppFolder.Child("OpenSong Defaults").Child("Sets").Exists Then
		    App.MouseCursor = Nil
		    '++JRC Translated
		    MsgBox T.Translate("errors/no_sets_folder",  AppFolder.Child("OpenSong Defaults").Child("Sets").AbsolutePath)
		    '--
		    Quit
		  End If
		  //--
		  If Not DocsFolder.Child("Sets").Exists Then
		    If Not FileUtils.CopyPath(AppFolder.Child("OpenSong Defaults").Child("Sets"), DocsFolder.Child("Sets")) Then
		      App.MouseCursor = Nil
		      '++JRC Translated
		      MsgBox T.Translate("errors/create_sets_folder",  DocsFolder.Child("Sets").AbsolutePath)
		      '--
		      Quit
		    End If
		  End If
		  '++JRC Checked these already
		  'If Not AppFolder.Child("OpenSong Defaults").Child("Settings").Exists Then
		  'App.MouseCursor = Nil
		  'MsgBox "Can't find default Settings folder: " + AppFolder.Child("OpenSong Defaults").Child("Settings").AbsolutePath
		  'Quit
		  'End If
		  
		  'If Not DocsFolder.Child("Settings").Exists Then
		  'If Not FileUtils.CopyPath(AppFolder.Child("OpenSong Defaults").Child("Settings"), DocsFolder.Child("Settings")) Then
		  'App.MouseCursor = Nil
		  'MsgBox "Could not create/edit Settings folder."
		  'Quit
		  'End If
		  'End If
		  
		  //++EMP 11/27/05
		  If Not AppFolder.Child("OpenSong Defaults").Child("Backgrounds").Exists Then
		    App.MouseCursor = Nil
		    '++JRC Translated
		    MsgBox  T.Translate("errors/no_backgrounds_folder",  AppFolder.Child("OpenSong Defaults").Child("Backgrounds").AbsolutePath)
		    '--
		    Quit
		  End If
		  //--
		  If Not DocsFolder.Child("Backgrounds").Exists Then
		    If Not FileUtils.CopyPath(AppFolder.Child("OpenSong Defaults").Child("Backgrounds"), DocsFolder.Child("Backgrounds")) Then
		      App.MouseCursor = Nil
		      '++JRC Translated
		      MsgBox T.Translate("errors/create_backgrounds_folder",  DocsFolder.Child("Backgrounds").AbsolutePath)
		      '--
		      Quit
		    End If
		  End If
		  
		  If (Not DocsFolder.Exists) Or _
		    (Not DocsFolder.Child("Songs").Exists) Or _
		    (Not DocsFolder.Child("Sets").Exists) Or _
		    (Not DocsFolder.Child("Settings").Exists) Or _
		    (Not DocsFolder.Child("Backgrounds").Exists) Then
		    App.MouseCursor = Nil
		    '++JRC Translated
		    MsgBox T.Translate("errors/folder_error")
		    '--
		    Quit
		  End If
		  
		  Dim xml As XmlDocument
		  Dim xnode As XmlNode
		  
		  ' --- LOAD SETTINGS ---
		  '++JRC translated
		  Splash.SetStatus T.Translate("load_settings/main") + "..."
		  '--
		  MyMainSettings = SmartML.XDocFromFile(DocsFolder.Child("Settings").Child("MainSettings"))
		  If MyMainSettings = Nil Then
		    SmartML.DisplayError
		    Quit
		  End If
		  
		  Splash.SetStatus T.Translate("load_settings/print") + "..."
		  MyPrintSettings = SmartML.XDocFromFile(DocsFolder.Child("Settings").Child("PrintSettings"))
		  If MyPrintSettings = Nil Then
		    SmartML.DisplayError
		    Quit
		  End If
		  // Update PritntSettings to use points instead of inches
		  UpdatePrintSettings
		  
		  Splash.SetStatus T.Translate("load_settings/presentation") + "..."
		  MyPresentSettings = SmartML.XDocFromFile(DocsFolder.Child("Settings").Child("PresentSettings"))
		  If MyPresentSettings = Nil Then
		    SmartML.DisplayError
		    Quit
		  End If
		  // Move some XML around in MyPresentSettings to align with V1.0 BL13 changes.
		  UpdateDefaultStyle
		  ' --- BUILD CAPO LIST ---
		  CapoList.Append "1"
		  CapoList.Append "2"
		  CapoList.Append "3"
		  CapoList.Append "4"
		  CapoList.Append "5"
		  
		  ' --- BUILD FONT LIST ---
		  Dim i, j As Integer
		  Splash.SetStatus T.Translate("load_settings/fonts") + "..."
		  j = FontCount - 1
		  For i = 0 to j
		    FontList.Append Font(i)
		  Next i
		  FontList.Sort
		  
		  UpdateTranslationFonts
		  
		  ' --- CHECK FOR LATEST SONG AND SET VERSIONS ---
		  Dim songVersion, setVersion As Double
		  songVersion = SmartML.GetValueN(MyMainSettings.DocumentElement, "version/@songs")
		  setVersion = SmartML.GetValueN(MyMainSettings.DocumentElement, "version/@sets")
		  
		  App.MouseCursor = Nil
		  Dim f As FolderItem
		  
		  GraphicsX.ThicknessFactor = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "style/@thickness")
		  
		  Profiler.EndProfilerEntry
		  
		  ' --- CHECK FOR A NEWER VERSION ---
		  
		  If Len(SmartML.GetValue(App.MyMainSettings.DocumentElement, "version/@check", False)) < 4 Then _
		  SmartML.SetValueB(App.MyMainSettings.DocumentElement, "version/@check", True)
		  
		  Dim checkVer As CheckVerThread
		  If SmartML.GetValueB(App.MyMainSettings.DocumentElement, "version/@check") Then
		    Splash.SetStatus T.Translate("load_settings/latest_version") + "..."
		    checkVer = new CheckVerThread
		    checkVer.Run
		  End If
		  
		  '
		  '++JRC
		  Globals.WhitespaceChars.Append " "
		  Globals.WhitespaceChars.Append Chr(ENTER)
		  '--
		  T.TranslateMenu("main_menu", MainMenu)
		  PlatformSpecific
		  MainWindow.Show
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(error As RuntimeException) As Boolean
		  Dim Popup As New ErrorPopup
		  Dim i As Integer
		  Dim StackTrace() As String
		  Dim errorType As String
		  
		  'workaround, RB starts whining when I refer to error.Stack(i) directly
		  StackTrace = error.Stack
		  
		  
		  'The exception's type is not part of the error message :(
		  errorType = error.ToString
		  
		  If errorType.Len > 0 Then
		    Popup.ErrorDescription.AppendText(errorType + ":")
		  End If
		  
		  'print stacktrace below error description
		  Popup.ErrorDescription.AppendText(EndOfLine + EndOfLine + "Stacktrace:")
		  For i = 0 To Ubound(error.Stack)
		    Popup.ErrorDescription.AppendText(EndOfLine + StackTrace(i))
		  Next
		  
		  Popup.ShowModal
		  
		  Quit
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CenterInControlScreen(win As Window)
		  Dim controlScreen As Integer
		  If App.MyPresentSettings <> Nil Then
		    controlScreen = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control") - 1
		    If controlScreen < 0 Or controlScreen + 1 > ScreenCount Then controlScreen = 0
		  Else
		    controlScreen = 0
		  End If
		  
		  // Do something reasonable for TwinView screens.
		  // Thanks, Jon!  EMP, June 2006
		  
		  #If TargetLinux
		    If (Screen(controlScreen).Width /2) > Screen(controlScreen).Height Then
		      win.Left = Screen(controlScreen).Left + (Screen(controlScreen).Width - win.Width) / 4
		    Else
		      win.Left = Screen(controlScreen).Left + (Screen(controlScreen).Width - win.Width) / 2
		    End If
		  #Else
		    win.Left = Screen(controlScreen).Left + (Screen(controlScreen).Width - win.Width) / 2
		  #EndIf
		  
		  win.Top = Screen(controlScreen).Top + (Screen(controlScreen).Height  - win.Height) / 2 + 10
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FriendlyXMLException(e As XMLException) As String
		  Return e.Message + EndOfLine + " (" + e.Node + ":" + e.Line + ") " + e.Token + " (E" + Str(e.ErrorNumber) + ")"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetDocsFolder() As FolderItem
		  //++
		  // Determine the proper folder for storing the documents (Songs, sets, etc.)
		  // The documents folder is determined as follows:
		  // 1. If there is a folder set in the user's preferences, use that if it exists.
		  // 2. If there is nothing in the user's preferences, check the OpenSong Globals
		  //     file.
		  //     a. If there is a relative path specified here, use the built-in DocumentsFolder
		  //         as the top folder.  Store the resultant folder in the user prefs.
		  //     b. If there is an absolute path, use it.  Do not store in the user prefs.
		  // 3. If the folder determined by #1 and #2 doesn't exist, or if the folder is the
		  //     empty string, prompt the user for the folder to use and store this in user prefs.
		  //--
		  
		  Dim f As FolderItem
		  Dim FolderName As String
		  Dim e As RuntimeException
		  Dim mb As SelectFolderDialog
		  Dim Folder As String
		  
		  f = MainPreferences.GetValueFI(Prefs.kDocumentsFolder, Nil, False)
		  If f = Nil Then
		    FolderName = Trim(SmartML.GetValue(MyGlobals.DocumentElement, "documents/@folder"))
		    
		    If FolderName <> "" Then
		      f = GetFolderItem(FolderName, FolderItem.PathTypeAbsolute)
		      If f = Nil Then
		        // Relative path
		        For Each Folder in Split(FolderName, FileUtils.AbsolutePathSeparator)
		          If Not FileUtils.CreateFolder(f.Child(Folder)) Then
		            e = New RuntimeException
		            e.Message = "GetDocsFolder: " + FileUtils.LastError
		            DebugWriter.Write "GetDocsFolder: Trying to create " + f.Child(Folder).AbsolutePath + " got " + FileUtils.LastError, 1
		            Raise e
		          End If
		          f = f.Child(Folder)
		        Next
		      End If
		      If Not f.Exists Then
		        Try
		          f = QueryDocsFolder(f)
		        Catch
		          System.DebugLog "OpenSong: user cancelled document folder selection"
		          Return Nil
		        End Try
		        MainPreferences.SetValueFI(prefs.kDocumentsFolder, f)
		      End If
		    Else // FolderItem in MainPreferences is Nil, FolderName = ""
		      // Nil folderitem in personal prefs, no path in Globals; prompt user
		      Try
		        f = QueryDocsFolder(Nil)
		      Catch
		        System.DebugLog "OpenSong: user cancelled document folder selection"
		        Return Nil
		      End Try
		      
		      If FileUtils.IsChild(f, AppFolder.Child("OpenSong Defaults")) Then
		        MsgBox(App.T.Translate("errors/docs_folder", FileUtils.GetDisplayFullPath(DocumentsFolder.Child("OpenSong"))))
		        f = DocumentsFolder.Child("OpenSong")
		      End If
		      MainPreferences.SetValueFI(Prefs.kDocumentsFolder, f)
		    End If //If FolderName <> ""
		  Else // folder found in MainPreferences, make sure it exists.
		    If Not f.exists Then
		      Try
		        f = QueryDocsFolder(Nil)
		      Catch
		        System.DebugLog "OpenSong: user cancelled document folder selection"
		        Return Nil
		      End Try
		      MainPreferences.SetValueFI(Prefs.kDocumentsFolder, f)
		    End If
		  End If //If MainPreferences.kDocumentsFolder = Nil
		  Return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFrontControlScreenWindow() As Window
		  // Returns the frontmost window on the control screen
		  // EMP 26 Feb 2006
		  //
		  Dim w As Window
		  Dim wc As Integer
		  Dim i As Integer
		  Dim cs As Integer
		  
		  wc = WindowCount - 1
		  cs = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control") - 1
		  
		  For i = 0 To wc
		    If Window(i).Visible Then
		      If Window(i).Left >= Screen(cs).Left _
		        And Window(i).Left < Screen(cs).Left + Screen(cs).Width _
		        And Window(i).Top >= Screen(cs).Top _
		        And Window(i).Top < Screen(cs).Top + Screen(cs).Height _
		        Then
		        Return Window(i)
		      End If
		    End If
		  Next i
		  Return Nil // Fell through, no one is on the control screen
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetPrefsFolder() As FolderItem
		  //++
		  // Return the appropriate folder for the platform.
		  // Necessary in order to create folder if needed
		  // Also necessary because the folder will have a different
		  // name on certain platforms.
		  //--
		  Dim f As FolderItem
		  Dim folder As String
		  
		  #if TargetLinux
		    f = PreferencesFolder.Child(".OpenSong")
		  #elseif TargetMacOS
		    f = PreferencesFolder
		  #elseif TargetWin32
		    f = PreferencesFolder.Child("OpenSong")
		  #endif
		  
		  If FileUtils.CreateFolder(f) Then
		    Return f
		  Else
		    App.DebugWriter.Write("GetPrefsFolder: Error in CreateFolder for " + f.AbsolutePath + ", " + FileUtils.LastError, 1)
		    Return Nil
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPrinterSetup(ShowDialog As Boolean = False, Wnd As Window = Nil) As PrinterSetup
		  //
		  // OpenSong maintains a single PrinterSetup object for the printer.  This routine controls
		  // access to that object.  If ShowDialog is True, then the PrinterSetup dialog will be shown.
		  // If Wnd is not Nil, that Dialog will be attached to the given window (Mac only).
		  //
		  // RealBasic for the Mac has an issue with the PrinterSetup object.  The one returned
		  // from PageSetupDialog is invalid.  It has to be copied into a new one to be used.  For
		  // this reason, a clone is returned on OS X.
		  //
		  // On Windows, a second call to OpenPrinterDialog with the same PrinterSetup object
		  // results in no dialog display and Nil returned for the Graphics object.  Copy it, and
		  // all works fine.  Go figure.
		  //
		  // TODO: Save SetupString across program invocations.  Issues to remember: SetupString is
		  // platform dependent.  SetupString on Windows can't just be sent to an XML file such as
		  // MyPrintSettings with SmartML.SetValue.  Use something like EncodeBase64 to store
		  // and retrieve.
		  // This will also need to include the RB version as an attribute, as SetupStrings changed
		  // format in RB 2006 r3.
		  //
		  // Finally, this needs a different approach for Linux since (as of RB2005R4) PrinterSetup
		  // doesn't do anything useful.
		  //
		  
		  Dim TempPS As PrinterSetup
		  Dim NewPS As PrinterSetup
		  
		  If MyPrinterSetup = Nil And Not ShowDialog Then Return Nil
		  
		  TempPS = New PrinterSetup
		  TempPS.MaxHorizontalResolution = -1
		  TempPS.MaxVerticalResolution = -1
		  
		  If MyPrinterSetup <> Nil Then
		    TempPS.SetupString = MyPrinterSetup.SetupString
		  End If
		  
		  If ShowDialog Then
		    If TempPS.PageSetupDialog(Wnd) Then
		      MyPrinterSetup = TempPS // Save the new settings
		      If SmartML.GetValueB(MyPrintSettings.DocumentElement, "page/@points") Then
		        SmartML.SetValueN(MyPrintSettings.DocumentElement, "page/@height",_
		        InchesToPoints(TempPS.PageHeight / TempPS.VerticalResolution))
		        SmartML.SetValueN(MyPrintSettings.DocumentElement, "page/@width",_
		        InchesToPoints(TempPs.PageWidth / TempPS.HorizontalResolution))
		      Else
		        SmartML.SetValueN(MyPrintSettings.DocumentElement, "page/@height", _
		        TempPS.PageHeight / TempPS.VerticalResolution)
		        SmartML.SetValueN(MyPrintSettings.DocumentElement, "page/@width", _
		        TempPS.PageWidth / TempPS.HorizontalResolution)
		      End If
		    Else
		      Return Nil // User cancelled dialog.
		    End If
		  Else // Don't show dialog
		    
		  End If
		  // We have a non-null MyPrinterSetup now.  Copy it and return
		  // Sadly, this has to be OS-specific, at least under RB5.5.
		  // If, on OS X, if you do a straight copy it bombs.  If you copy
		  // the setup string, it doesn't bomb but the horizontal and vertical resolutions
		  // are set to 72, which really does a number on things if it is reporting
		  // height and width at something other than 72dpi.
		  // Copying the setup string on Windows started off working, but
		  // then started returning an invalid pointer that would crash OS.
		  // This is insane...
		  // (September 2006: Curiouser and curiouser.  After taking another look
		  // at this problem, the same code appears to work for both Mac and Windows.
		  // Hopefully the printer fixes in RB 2006 r3 will let us put this to bed once
		  // and for all.)
		  
		  '#If TargetMacOS
		  NewPS = New PrinterSetup
		  NewPS.MaxHorizontalResolution = -1
		  NewPS.MaxVerticalResolution = -1
		  NewPS.SetupString = MyPrinterSetup.SetupString
		  Return NewPS
		  '#ElseIf TargetWin32
		  'Return MyPrinterSetup
		  '#EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub LoadPreferences()
		  //++
		  // Set up the preferences object to use for reference.
		  //
		  // Edit 21 Apr 2007
		  //    Change filename on non-Mac platforms to have .plist extension
		  //    If MainPreferences is non-Nil, treat this as a reload operation (was NOOP in RC2-16)
		  //--
		  Dim PrefFile As String
		  Dim v As String
		  Dim f As FolderItem
		  Dim e As RuntimeException
		  
		  #if TargetMacOS
		    f = GetPrefsFolder().Child("org.opensong.opensong.plist")
		  #else
		    //++
		    // Kluge alert! Fix V1.0 RC2-16 issue where the file doesn't have an extension
		    //--
		    PrefFile = "preferences.plist"
		    f = GetPrefsFolder().Child("preferences")
		    If f.exists Then
		      f.name = PrefFile
		    End If
		    f = GetPrefsFolder().Child(PrefFile)
		  #endif
		  
		  If MainPreferences <> Nil Then // Reloading
		    If Not prefsPlist(MainPreferences).Save Then Return
		    MainPreferences = Nil
		  End If
		  
		  MainPreferences = New prefsPlist
		  
		  If Not MainPreferences.Load(f) Then
		    e = New RuntimeException
		    e.Message = MainPreferences.ErrorString
		    MainPreferences = Nil
		    Raise e
		  End If
		  
		  //++
		  // Set the version of the file if it doesn't exist.  This will give us a way to
		  // determine if new content needs to be added as this list gets used more
		  //--
		  v = MainPreferences.GetValue("/@version", CStr(PREFERENCESVERSION), True)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MaximizeInControlScreen(win As Window)
		  Dim controlScreen As Integer
		  If App.MyPresentSettings <> Nil Then
		    controlScreen = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control") - 1
		    If controlScreen < 0 Or controlScreen + 1 > ScreenCount Then controlScreen = 0
		  Else
		    controlScreen = 0
		  End If
		  
		  // Added to support TwinView displays under Linux
		  // Thanks, Jon!  EMP, June 2006
		  
		  #If TargetLinux
		    If (Screen(controlScreen).Width /2) > Screen(controlScreen).Height Then
		      win.Width = (Screen(controlScreen).Width /2) - 40
		    else
		      win.Width = Screen(controlScreen).Width - 40
		    End If
		  #Else
		    win.Width = Screen(controlScreen).Width - 40
		  #EndIf
		  
		  win.Height = Screen(controlScreen).Height - 115
		  
		  win.Top = Screen(controlScreen).Top + (Screen(controlScreen).Height  - win.Height) / 2 + 10
		  win.Left = Screen(controlScreen).Left + (Screen(controlScreen).Width - win.Width) / 2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MinimizeWindow(Wnd As Window)
		  //++
		  // Provides functionality to minimize a window to the taskbar on Windows or Mac
		  // No functionality yet on Linux (due to testing constraints)
		  //
		  // This routine can be replaced for all platforms by the Window.Minimize method when OpenSong moves
		  // to RealBasic 2006 or later.
		  //
		  // Ed Palmer, May 2006
		  //--
		  
		  Dim status As Integer
		  
		  #If TargetWin32 Then
		    Dim lparam As New MemoryBlock(4)
		    Dim hwnd As Integer
		    Const WM_SYSCOMMAND = 274
		    Const SC_MINIMIZE = 61472
		    
		    Declare Function SendMessageA Lib "user32" (ByVal hwnd as Integer, ByVal msg as Integer, ByVal wParam as Integer, ByVal lParam as Ptr) as Integer
		    
		    hwnd = Wnd.WinHWND
		    
		    status = SendMessageA(wnd.WinHWND, WM_SYSCOMMAND, SC_MINIMIZE, lparam)
		    
		    Return
		    
		  #ElseIf TargetCarbon
		    Const COLLAPSEWIN = 1
		    Const RESTOREWIN = 0
		    #If TargetMachO
		      Declare Function CollapseWindow Lib "Carbon" (window As Integer, collapse As Integer) As Integer
		    #else
		      Declare Function CollapseWindow Lib "CarbonLib" (window As Integer, collapse As Integer) As Integer
		    #endif
		    
		    status = CollapseWindow(Wnd.Handle, COLLAPSEWIN)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PlatformSpecific()
		  //++
		  // PlatformSpecific is used to do anything that might be specific to
		  // the operating system OpenSong is running under.
		  //--
		  #If TargetWin32
		    // Windows items go here
		    mnu_file_quit.CommandKey = ""
		  #elseif TargetMacOS
		    // Macintosh items go here
		    mnu_help_help_topics.CommandKey = "?"
		  #elseif TargetLinux
		    // Linux items go here
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function QueryDocsFolder(path As FolderItem, suggested As String = "OpenSong") As FolderItem
		  Dim mb as SelectFolderDialog
		  Dim f, f1, defaultsFolder As FolderItem
		  Dim e As RuntimeException
		  Dim ask As Boolean = True
		  
		  defaultsFolder = AppFolder.Child("OpenSong Defaults")
		  If path = Nil Then path = DocumentsFolder
		  If Not path.Exists Then path = DocumentsFolder
		  mb = New SelectFolderDialog
		  mb.InitialDirectory = path.Child(suggested)
		  While ask
		    If T <> Nil Then// Can we translate?
		      mb.ActionButtonCaption = T.Translate("shared/select/@caption")
		      mb.CancelButtonCaption = T.Translate("shared/exit_program/@caption")
		      mb.Title = T.Translate("questions/select_docs_folder/@caption")
		      mb.PromptText = T.Translate("questions/select_docs_folder")
		    Else
		      mb.ActionButtonCaption = "Select"
		      mb.CancelButtonCaption = "Exit Program"
		      mb.Title = "Select an OpenSong documents folder"
		      mb.PromptText = "Please choose a location to store OpenSong songs and sets"
		    End If
		    f = mb.ShowModal
		    If f = Nil Then
		      e = New RuntimeException
		      If T <> Nil Then
		        e.Message = T.Translate("errors/no_docs_folder", "User canceled selection in GetDocsFolder")
		      Else
		        e.Message = "A folder to store OpenSong documents must be selected.  OpenSong must shut down."
		      End If
		      Raise e
		    End If
		    //++
		    // Bug 1204048: DocsPath needs to be somewhere other than under OpenSong Defaults.
		    //--
		    f1 = f
		    ask = False
		    While f1 <> Nil
		      If f1.AbsolutePath = defaultsFolder.AbsolutePath Then
		        MsgBox T.Translate("errors/docs_folder", f.AbsolutePath)
		        ask = True
		        Exit
		      End If
		      f1 = f1.Parent
		    Wend
		  Wend
		  Return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RemoveNode(root As XmlNode, childname As String)
		  Dim ChildNode As XmlNode
		  Dim ChildPath() As String
		  Dim CurChild As String
		  
		  If root = Nil Then Return
		  
		  ChildPath = Split(childname, "/")
		  If UBound(ChildPath) = -1 Then Return
		  
		  CurChild = ChildPath(0)
		  ChildPath.Remove 0
		  
		  // Are we looking for an attribute or a node?
		  If Left(CurChild,1) = "@" Then
		    CurChild = Mid(CurChild, 2)
		    If Ubound(ChildPath) > -1 Then Return // Illegal path passed (can't have /something/@att/something)
		    XmlElement(root).RemoveAttribute CurChild
		    Return
		  End If
		  
		  ChildNode = root.FirstChild
		  
		  While ChildNode <> Nil
		    If ChildNode.Name = CurChild Then // We've found it
		      If UBound(ChildPath) > -1 Then // But we have more to go
		        App.RemoveNode(ChildNode, Join(ChildPath, "/"))
		        Return
		      Else
		        root.RemoveChild ChildNode
		        Return
		      End If // If Ubound...
		    End If // If ChildNode.Name ...
		    ChildNode = ChildNode.NextSibling
		  Wend
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RestoreWindow(Wnd As Window)
		  
		  Dim hwnd As Integer
		  Dim status As Integer
		  Dim lparam As New MemoryBlock(4)
		  Const WM_SYSCOMMAND = 274
		  Const SC_MINIMIZE = 61472
		  Const SC_RESTORE = &HF120
		  
		  #If TargetWin32 Then
		    Declare Function SendMessageA Lib "user32" (ByVal hwnd as Integer, ByVal msg as Integer, ByVal wParam as Integer, ByVal lParam as Ptr) as Integer
		    
		    hwnd = Wnd.WinHWND
		    
		    status = SendMessageA(wnd.WinHWND, WM_SYSCOMMAND, SC_RESTORE, lparam)
		    
		    Return
		    
		  #ElseIf TargetCarbon
		    Const COLLAPSEWIN = 1
		    Const RESTOREWIN = 0
		    #If TargetMachO
		      Declare Function CollapseWindow Lib "Carbon" (window As Integer, collapse As Integer) As Integer
		    #else
		      Declare Function CollapseWindow Lib "CarbonLib" (window As Integer, collapse As Integer) As Integer
		    #endif
		    
		    status = CollapseWindow(Wnd.Handle, RESTOREWIN)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SelectLanguage() As String
		  //++
		  // Allow the user to select a language file from the available translations
		  //--
		  Dim options() As String
		  Dim i As Integer
		  Dim d As FolderItem
		  Dim f As FolderItem
		  
		  d = AppFolder.Child("OpenSong Languages")
		  If Not d.Exists Then Return "" //Bad installation
		  If Not d.Directory Then Return ""
		  
		  options.Append "" // Open dialog with nothing selected
		  
		  For i = 1 To d.Count
		    f = d.Item(i)
		    If f.IsFileVisible And Not f.Directory Then
		      options.Append f.Name
		    End If
		  Next
		  
		  Return InputBox.Pick("Select a language", options)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetForeground(Wnd As Window)
		  '++JRC
		  #If TargetWin32 Then
		    
		    Declare Sub SetForegroundWindow Lib "user32" (ByVal hwnd as Integer)
		    
		    SetForegroundWindow(wnd.WinHWND)
		  #ElseIf TargetCarbon Then
		    Dim Status As Integer
		    #If TargetMachO
		      Declare Function SelectWindow Lib "Carbon" (window As Integer) As Integer
		    #else
		      Declare Function SelectWindow Lib "CarbonLib" (window As Integer) As Integer
		    #endif
		    
		    Status = SelectWindow(wnd.Handle)
		  #Endif
		  '--
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowWin(Wnd As Window, Cmd As Integer)
		  '++JRC
		  #If TargetWin32 Then
		    Declare Sub ShowWindow Lib "user32" (ByVal hwnd as Integer, ByVal nCmdShow as Integer)
		    
		    ShowWindow(wnd.WinHWND, Cmd)
		  #Endif
		  '--
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SmartVersion() As String
		  Dim t As String
		  
		  t = "v" +  Str(App.MajorVersion) + "." + Str(App.MinorVersion)
		  If App.BugVersion > 0 Then t = t + "." + Str(App.BugVersion)
		  //++
		  // If compiled with rb2006r4 or higher, this is likely a Universal Binary.
		  // Identify the target.
		  // There's probably a gestalt that would be a better way to do this so we can
		  // identify a true UB vs. a target-specific binary or an Intel Mac running the UB under Rosetta.
		  // This identifies the processor architecture the executable was built for, which is still useful.
		  //--
		  #If TargetMacOS
		    If RBVersion >= 2006.04 Then
		      #If TargetPPC
		        t = t + " (PPC)"
		      #else
		        t = t + " (X86)"
		      #endif
		    End If
		  #endif
		  Return t
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TranslateMe(splashShowing As Boolean = False)
		  Dim xnode As XmlNode
		  Dim i As Integer
		  
		  StylePreview = T.GetNode("style_preview")
		  
		  ' --- BUILD TEMPO LIST ---
		  If splashShowing Then Splash.SetStatus T.Translate("load_settings/tempos") + "..."
		  xnode = T.GetNode("tempo_list").FirstChild
		  For i = UBound(TempoList) DownTo 1
		    TempoList.Remove i
		  Next i
		  While xnode <> Nil
		    TempoList.Append SmartML.GetValue(xnode, "@name")
		    xnode = xnode.NextSibling
		  Wend
		  
		  ' --- BUILD THEME LIST ---
		  If splashShowing Then Splash.SetStatus T.Translate("load_settings/themes") + "..."
		  xnode = T.GetNode("theme_list").FirstChild
		  For i = UBound(ThemeList) DownTo 1
		    ThemeList.Remove i
		  Next i
		  While xnode <> Nil
		    ThemeList.Append SmartML.GetValue(xnode, "@name")
		    xnode = xnode.NextSibling
		  Wend
		  
		  ' --- BUILD TIME SIG LIST ---
		  If splashShowing Then Splash.SetStatus T.Translate("load_settings/time_signatures") + "..."
		  xnode = T.GetNode("time_sig_list").FirstChild
		  For i = UBound(TimeSigList) DownTo 1
		    TimeSigList.Remove i
		  Next i
		  While xnode <> Nil
		    TimeSigList.Append SmartML.GetValue(xnode, "@name")
		    xnode = xnode.NextSibling
		  Wend
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub UpdateDefaultStyle()
		  //++
		  // Ed Palmer, November 2006 (V1.0 BL13)
		  //
		  // Change the layout of the PresentSettings XML to move certain slide-level
		  // elements (subtitles, descriptive captions, emphasize choruses) to the
		  // <default_style> section of the XML document.
		  //
		  // This helps fix a problem with song-level styles not properly displaying
		  // the subtitles selected for the song instead of the default style.
		  // Actually, it makes the code easier to deal with by making <default_style>
		  // look like any other <style> section, simplifying those areas of the code.
		  //
		  // Also, insert a document-level version number to flag that this is updated.
		  //
		  //--
		  Dim settings As XmlElement
		  
		  If MyPresentSettings.DocumentElement = Nil Then Return
		  
		  settings = MyPresentSettings.DocumentElement // save typing
		  
		  If SmartML.GetValueN(settings, "@version") >= 1.0 Then Return // Already at current version
		  
		  If SmartML.GetValue(settings, "style/@song_subtitles", False) <> "" Then
		    SmartML.SetValue(settings, "default_style/song_subtitle", SmartML.GetValue(settings, "style/@song_subtitles"))
		    App.RemoveNode(settings, "style/@song_subtitles")
		  End If
		  
		  If SmartML.GetValue(settings, "style/@descriptive_subtitle_info", False) <> "" Then
		    SmartML.SetValue(settings, "default_style/subtitle/@descriptive", SmartML.GetValue(settings, "style/@descriptive_subtitle_info", False))
		    App.RemoveNode(settings, "style/@descriptive_subtitle_info")
		  End If
		  
		  If SmartML.GetValue(settings, "style/@highlight_chorus") <> "" Then
		    SmartML.SetValue(settings, "default_style/body/@highlight_chorus", SmartML.GetValue(settings, "style/@highlight_chorus"))
		    App.RemoveNode(settings, "style/@highlight_chorus")
		  End If
		  
		  SmartML.SetValueN(settings, "@version", 1.0)
		  
		  SmartML.SetValueB(MyPresentSettings.DocumentElement, "song_style_preferred", True)
		  
		  If Not SmartML.XDocToFile(App.MyPresentSettings, App.DocsFolder.Child("Settings").Child("PresentSettings")) Then SmartML.DisplayError
		  
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub UpdatePrintSettings()
		  //++
		  // Convert the PrintSettings XML file
		  // Update inches (from versions below 1.0 Beta 2 BL10)
		  // to points.
		  //--
		  Dim value As Double, newvalue As Double
		  Dim attributes() As String
		  Dim attribute As String
		  Dim inches As Boolean
		  Dim points As Boolean
		  Dim settings As XmlNode
		  
		  settings = MyPrintSettings.DocumentElement
		  points = SmartML.GetValueB(settings, "page/@points", True, False)
		  If points Then Return
		  
		  inches = SmartML.GetValueB(settings, "page/@inches", True, True)
		  
		  attributes = Split("top,bottom,left,right,height,width", ",")
		  
		  For Each attribute in attributes
		    value = CDbl(SmartML.GetValue(settings, "page/@" + attribute))
		    If inches Then
		      newvalue = InchesToPoints(value)
		    Else
		      newvalue = CMtoPoints(value)
		    End If
		    SmartML.SetValueN(settings, "page/@" + attribute, Round(newvalue))
		  Next
		  
		  SmartML.SetValueB(settings, "page/@points", True)
		  SmartML.SetValueB(settings, "page/@inches", inches)
		  
		  // Write out the converted file
		  MyPrintSettings.SaveXml DocsFolder.Child("Settings").Child("PrintSettings")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateTranslationFonts()
		  Dim i As Integer
		  For i = UBound(TranslationFonts) DownTo 1
		    TranslationFonts.Remove i
		  Next i
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/headings")
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/labels")
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/text_fields")
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/large_headings")
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/buttons")
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/fixed_width")
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AppFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		CapoList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DebugWriter As DebugOutput
	#tag EndProperty

	#tag Property, Flags = &h0
		DocsFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		FontList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Holds the main preferences for the application.
			This is the target for all future preferences instead
			of the My...Settings XML documents.
			
			MainPreferences should go in the appropriate location
			for the operating system instead of in the application directory.
			This will typically be in a directory or file under PreferencesFolder
		#tag EndNote
		MainPreferences As IPreferences
	#tag EndProperty

	#tag Property, Flags = &h0
		MyBible As Bible
	#tag EndProperty

	#tag Property, Flags = &h0
		MyFontChooser As FontChooser
	#tag EndProperty

	#tag Property, Flags = &h0
		MyGlobals As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h0
		MyMainSettings As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h0
		MyPresentSettings As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Global printer settings.
		#tag EndNote
		MyPrinterSetup As PrinterSetup
	#tag EndProperty

	#tag Property, Flags = &h0
		MyPrintSettings As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h0
		SplashShowing As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		StylePreview As XmlNode
	#tag EndProperty

	#tag Property, Flags = &h0
		T As Translator
	#tag EndProperty

	#tag Property, Flags = &h0
		TempoList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ThemeList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TimeSigList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TranslationFonts(0) As FontFace
	#tag EndProperty


	#tag Constant, Name = POINT_TO_CM, Type = Double, Dynamic = False, Default = \"0.035277778", Scope = Public
	#tag EndConstant

	#tag Constant, Name = PREFERENCESVERSION, Type = Double, Dynamic = False, Default = \"1.0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SW_NORMAL, Type = Integer, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SW_SHOW, Type = Integer, Dynamic = False, Default = \"5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SW_SHOWMINNOACTIVE, Type = Integer, Dynamic = False, Default = \"7", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SW_SHOWNA, Type = Integer, Dynamic = False, Default = \"8", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SW_SHOWNOACTIVATE, Type = Integer, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SW_SHOWNORMAL, Type = Integer, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="SplashShowing"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
