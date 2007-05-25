#tag Menu
Begin Menu MainMenu
   Begin MenuItem UntitledMenu8
      SpecialMenu = 1
      Text = ""
      Index = -2147483648
      AutoEnable = True
   End
   Begin MenuItem mnu_bar_file
      SpecialMenu = 0
      Text = "&File"
      Index = -2147483648
      AutoEnable = True
      Begin MenuItem mnu_file_new
         SpecialMenu = 0
         Text = "New..."
         Index = -2147483648
         ShortcutKey = "N"
         Shortcut = "Cmd+N"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem mnu_file_save
         SpecialMenu = 0
         Text = "Save"
         Index = -2147483648
         ShortcutKey = "S"
         Shortcut = "Cmd+S"
         MenuModifier = True
         AutoEnable = False
      End
      Begin MenuItem UntitledMenu7
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem mnu_file_present
         SpecialMenu = 0
         Text = "Present"
         Index = -2147483648
         AutoEnable = True
         SubMenu = True
         Begin MenuItem mnu_file_single_screen
            SpecialMenu = 0
            Text = "Single Screen"
            Index = -2147483648
            ShortcutKey = "1"
            Shortcut = "Cmd+1"
            MenuModifier = True
            AutoEnable = False
         End
         Begin MenuItem mnu_file_dual_screen
            SpecialMenu = 0
            Text = "Dual Screen"
            Index = -2147483648
            ShortcutKey = "2"
            Shortcut = "Cmd+2"
            MenuModifier = True
            AutoEnable = False
         End
         Begin MenuItem UntitledMenu6
            SpecialMenu = 0
            Text = "-"
            Index = -2147483648
            AutoEnable = True
         End
         Begin MenuItem mnu_file_preview_dual_screen
            SpecialMenu = 0
            Text = "Preview Dual Screen"
            Index = -2147483648
            ShortcutKey = "3"
            Shortcut = "Cmd+3"
            MenuModifier = True
            AutoEnable = False
         End
         Begin MenuItem 
            SpecialMenu = 2
            Text = ""
            Index = -2147483648
            AutoEnable = True
         End
      End
      Begin MenuItem mnu_file_pagesetup
         SpecialMenu = 0
         Text = "Page Setup..."
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem mnu_file_print
         SpecialMenu = 0
         Text = "Print..."
         Index = -2147483648
         ShortcutKey = "P"
         Shortcut = "Cmd+P"
         MenuModifier = True
         AutoEnable = False
      End
      Begin MenuItem UntitledMenu5
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem mnu_file_print_alphabetical_toc
         SpecialMenu = 0
         Text = "Print Alphabetical TOC..."
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem mnu_file_print_categorical_toc
         SpecialMenu = 0
         Text = "Print Categorized TOC..."
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem UntitledMenu4
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
      End
      Begin QuitMenuItem mnu_file_quit
         SpecialMenu = 0
         Text = "E&xit"
         Index = -2147483648
         ShortcutKey = "Q"
         Shortcut = "Cmd+Q"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem 
         SpecialMenu = 2
         Text = ""
         Index = -2147483648
         AutoEnable = True
      End
   End
   Begin MenuItem mnu_bar_edit
      SpecialMenu = 0
      Text = "&Edit"
      Index = -2147483648
      AutoEnable = True
      Begin MenuItem mnu_edit_undo
         SpecialMenu = 0
         Text = "&Undo"
         Index = -2147483648
         ShortcutKey = "Z"
         Shortcut = "Cmd+Z"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem UntitledMenu3
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem mnu_edit_selall
         SpecialMenu = 0
         Text = "Select All"
         Index = -2147483648
         ShortcutKey = "A"
         Shortcut = "Cmd+A"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem mnu_edit_cut
         SpecialMenu = 0
         Text = "Cu&t"
         Index = -2147483648
         ShortcutKey = "X"
         Shortcut = "Cmd+X"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem mnu_edit_copy
         SpecialMenu = 0
         Text = "&Copy"
         Index = -2147483648
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem mnu_copy_paste
         SpecialMenu = 0
         Text = "&Paste"
         Index = -2147483648
         ShortcutKey = "V"
         Shortcut = "Cmd+V"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem mnu_edit_clear
         SpecialMenu = 0
         Text = "C&lear"
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem UntitledMenu2
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem mnu_edit_find
         SpecialMenu = 0
         Text = "Find..."
         Index = -2147483648
         ShortcutKey = "F"
         Shortcut = "Cmd+F"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem mnu_edit_find_next
         SpecialMenu = 0
         Text = "Find Next"
         Index = -2147483648
         ShortcutKey = "G"
         Shortcut = "Cmd+G"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem 
         SpecialMenu = 2
         Text = ""
         Index = -2147483648
         AutoEnable = True
      End
   End
   Begin MenuItem mnu_bar_mode
      SpecialMenu = 0
      Text = "Mode"
      Index = -2147483648
      AutoEnable = True
      Begin MenuItem mnu_mode_songs
         SpecialMenu = 0
         Text = "Songs Mode"
         Index = -2147483648
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem mnu_mode_sets
         SpecialMenu = 0
         Text = "Sets Mode"
         Index = -2147483648
         ShortcutKey = "="
         Shortcut = "Cmd+="
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem 
         SpecialMenu = 2
         Text = ""
         Index = -2147483648
         AutoEnable = True
      End
   End
   Begin MenuItem mnu_bar_settings
      SpecialMenu = 0
      Text = "Sett&ings"
      Index = -2147483648
      AutoEnable = True
      Begin PrefsMenuItem mnu_settings_general
         SpecialMenu = 0
         Text = "&General Settings..."
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem mnu_settings_presentation
         SpecialMenu = 0
         Text = "P&resentation Settings..."
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem mnu_settings_print
         SpecialMenu = 0
         Text = "&Print Settings..."
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem UntitledMenu1
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem mnu_settings_refresh_songs
         SpecialMenu = 0
         Text = "&Refresh Songs Folder"
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem mnu_settings_refresh_sets
         SpecialMenu = 0
         Text = "R&efresh Sets Folder"
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem mnu_settings_install_module
         SpecialMenu = 0
         Text = "Install &Module..."
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem 
         SpecialMenu = 2
         Text = ""
         Index = -2147483648
         AutoEnable = True
      End
   End
   Begin MenuItem mnu_bar_help
      SpecialMenu = 0
      Text = "&Help"
      Index = -2147483648
      AutoEnable = True
      Begin MenuItem mnu_help_help_topics
         SpecialMenu = 0
         Text = "Help Topics..."
         Index = -2147483648
         ShortcutKey = "H"
         Shortcut = "Cmd+H"
         MenuModifier = True
         AutoEnable = True
      End
      Begin MenuItem mnu_help_translating
         SpecialMenu = 0
         Text = "Translating OpenSong..."
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem UntitledMenu0
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
      End
      Begin AppleMenuItem mnu_help_about
         SpecialMenu = 0
         Text = "&About OpenSong..."
         Index = -2147483648
         AutoEnable = True
      End
      Begin MenuItem 
         SpecialMenu = 2
         Text = ""
         Index = -2147483648
         AutoEnable = True
      End
      Begin AppleMenuItem 
         SpecialMenu = 2
         Text = ""
         Index = -2147483648
         AutoEnable = True
      End
      Begin AppleMenuItem 
         SpecialMenu = 2
         Text = ""
         Index = -2147483648
         AutoEnable = True
      End
   End
   Begin MenuItem 
      SpecialMenu = 2
      Text = ""
      Index = -2147483648
      AutoEnable = True
   End
End
#tag EndMenu
