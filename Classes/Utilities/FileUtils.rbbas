#tag Module
Module FileUtils
	#tag Method, Flags = &h1
		Protected Function AbsolutePathToFolderItem(path As String) As FolderItem
		  Dim i, l As Integer
		  Dim f As FolderItem
		  path = ReplaceAll(path, "\", "/")
		  l = CountFields(path, "/")
		  f = GetFolderItem(NthField(path, "/", 1))
		  For i = 2 To l
		    If f <> Nil Then f = f.Child(NthField(path, "/", i))
		  Next i
		  Return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CopyPath(fromFolder As FolderItem, toFolder As FolderItem, overwrite As String = "NEVER") As Boolean
		  Dim i As Integer
		  Dim fromItem, toItem As FolderItem
		  
		  If toFolder = Nil Then Return False
		  
		  If Not toFolder.Exists Then toFolder.CreateAsFolder
		  
		  If Not toFolder.Exists Then Return False
		  
		  For i = 1 To fromFolder.Count
		    fromItem = fromFolder.Item(i)
		    toItem = toFolder.Child(fromItem.Name)
		    
		    If fromItem.Directory Then
		      If Left(fromItem.Name, 1) <> "." Then
		        If Not toItem.Exists Then toItem.CreateAsFolder
		        If Not toItem.Exists Then Return False
		        If Not CopyPath(fromItem, toItem) Then Return False
		      End If
		    Else ' not a directory
		      If Left(fromItem.Name, 1) <> "." Then
		        If _
		          (overwrite = "ALWAYS") Or _
		          (overwrite = "NEVER" And Not toItem.Exists) Or _
		          (overwrite = "NEWER" And ((Not toItem.Exists) Or toItem.ModificationDate.TotalSeconds < fromItem.ModificationDate.TotalSeconds)) Then
		          If toItem.Exists Then toItem.Delete
		          If toItem.Exists Then Return False
		          fromItem.CopyFileTo toFolder
		          If Not toItem.Exists Then Return False
		        End If
		      End If
		    End If
		  Next i
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsSafeFileName(name As String) As Boolean
		  Dim c As String
		  Dim i, leng As Integer
		  leng = Len(name)
		  For i = 1 To leng
		    c = Mid(name, i, 1)
		    If InStr("\/:*?""<>|", c) <> 0 Then Return False
		  Next
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MakeSafeFileName(name As String) As String
		  Dim c, ret As String
		  Dim i, leng As Integer
		  leng = Len(name)
		  
		  For i = 1 To leng
		    c = Mid(name, i, 1)
		    If c = "\" Or c = "/" Or c = ":" Or c = "*" Or c = "?" Or c = """" Or c = "<" Or c = ">" Or c = "|" Then
		    Else
		      ret = ret + c
		    End If
		  Next
		  
		  Return Trim(ret)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MakeSafeURLName(name As String) As String
		  Return Lowercase(ReplaceAll(name, " ", "_"))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function RelativePathToFolderItem(parent As FolderItem, path As String) As FolderItem
		  Dim i, count As Integer
		  Dim folder As String
		  
		  path = ReplaceAll(path, "\", "/")
		  count = CountFields(path, "/")
		  
		  For i = 1 To count
		    folder = NthField(path, "/", i)
		    If folder.Len > 0 Then
		      parent = parent.Child(folder)
		      If parent = Nil Then Return Nil
		    End If
		  Next i
		  
		  Return parent
		End Function
	#tag EndMethod


End Module
#tag EndModule
