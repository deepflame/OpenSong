#tag Class
Class plist
	#tag Method, Flags = &h0
		Sub Cleanup()
		  if isBinary then
		    savePath.Delete
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearSearch(dict as plistDict)
		  Dim key,type,value as string
		  dim ok As Boolean
		  
		  dict.MoveFirst
		  While not dict.eof
		    key=dict.CurrentKey
		    type=dict.GetType(key)
		    If type="dict" or type="array" then
		      ClearSearch(dict.child(key))
		    else
		      dict.searched.Value(key)=false
		    end
		    dict.MoveNext
		  Wend
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(f As FolderItem)
		  Load(f,f)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(f As folderItem, template As FolderItem)
		  Load(f,template)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dump()
		  dim c As clipboard
		  dim count As integer
		  dim s As string
		  
		  c=new clipboard
		  c.Text=""
		  
		  for count=1 to ubound(headers)
		    s=s+headers(count)+chr(13)
		  next
		  c.text=s
		  c.close
		  root.Dump(1)
		  c=new clipboard
		  s=s+"</dict>"+chr(13)
		  s=s+"</plist>"+chr(13)
		  c.text=c.text+s
		  c.close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Find(searchText as string) As boolean
		  foundDict=nil
		  foundKey=""
		  foundValue=""
		  foundType=""
		  ClearSearch(root)
		  lastSearch=searchText
		  Return ReadStructure(root,searchText,"valueSearch")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FindNext(searchText as string) As boolean
		  if searchText<>lastSearch then
		    ClearSearch(root)
		  end
		  Return ReadStructure(root,searchText,"valueSearch")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load(f As folderItem, template As folderItem)
		  dim t As textInputStream
		  dim s,path,command As string
		  dim copyTo As FolderItem
		  dim sh As shell
		  
		  root=new plistDict
		  
		  savePath=f
		  if not f.exists then
		    f=template
		  end
		  if f.exists then
		    t=TextInputStream.Open(f)
		    s=t.ReadLine
		    if left(s,6)="bplist" then
		      isBinary=true
		      t.Close
		      copyTo=f.Parent.Child(f.Name+" temp")
		      if copyTo.Exists then
		        copyTo.Delete
		      end
		      f.CopyFileTo copyTo
		      path=copyTo.ShellPath
		      sh=new shell
		      command="plutil -convert xml1 "+path
		      sh.Execute command
		      org=f
		      f=copyTo
		      t=TextInputStream.Open(f)
		      savePath=f
		    else
		      t.Close
		      t=TextInputStream.Open(f)
		    end
		    while not t.eof and s<>"<dict>"
		      s=t.ReadLine
		      headers.append s
		    wend
		    if s<>"<dict>" then
		      error=true
		      errorMessage="Not a plist file"
		    else
		      root.Load(t,"root",false,nil,me,true)
		    end
		    t.close
		  else
		    'error=true
		    'errorMessage=f.AbsolutePath+" does not exist"
		    headers.append "<?xml version="+chr(34)+"1.0"+chr(34)+" encoding="+chr(34)+"UTF-8"+chr(34)+"?>"
		    headers.append  "<!DOCTYPE plist PUBLIC "+chr(34)+"-//Apple Computer//DTD PLIST 1.0//EN"+chr(34)+" "+chr(34)+"http://www.apple.com/DTDs/PropertyList-1.0.dtd"+chr(34)+">"
		    headers.append "<plist version="+chr(34)+"1.0"+chr(34)+">"
		    headers.append "<dict>"
		    root.load(t,"root",false,nil,me,false)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ReadStructure(dict as plistDict, searchText as string, searchType as string) As boolean
		  Dim key,type,value as string
		  dim ok As Boolean
		  
		  dict.MoveFirst
		  While not dict.eof
		    key=dict.CurrentKey
		    type=dict.GetType(key)
		    If type="dict" or type="array" then
		      if ReadStructure(dict.child(key),searchText,searchType) then
		        return true
		      end
		    else
		      value=dict.GetValue(key)
		      if (instr(value,searchText)>0 and searchType="valueSearch") or (instr(key,searchText)>0 and searchType="keySearch") then
		        if not dict.searched.HasKey(key) then
		          dict.searched.Value(key)=false
		        end
		        if not dict.searched.Value(key) then
		          foundDict=dict
		          foundKey=key
		          foundType=type
		          foundValue=value
		          dict.searched.Value(key)=true
		          Return true
		        end
		      end
		    end
		    dict.MoveNext
		  Wend
		  return false
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  Save(false)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save(clean as boolean)
		  dim o As TextOutputStream
		  dim count As integer
		  dim path As string
		  dim sh As shell
		  
		  o=TextOutputStream.Create(savePath)
		  if o<>nil then
		    for count=1 to ubound(headers)
		      o.WriteLine headers(count)
		    next
		    root.Write(o,1)
		    o.WriteLine "</dict>"
		    o.WriteLine "</plist>"
		    o.close
		  else
		    error=true
		    errorMessage="Could not open file for saving"
		  end
		  if isBinary then
		    path=savePath.ShellPath
		    sh=new shell
		    sh.Execute "plutil -convert binary1 "+path
		    org.Delete
		    savePath.CopyFileTo org
		  end
		  if clean then
		    Cleanup
		  end
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		brk As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		debug As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		error As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		errorMessage As string
	#tag EndProperty

	#tag Property, Flags = &h0
		findingNext As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		foundDict As plistDict
	#tag EndProperty

	#tag Property, Flags = &h0
		foundKey As string
	#tag EndProperty

	#tag Property, Flags = &h0
		foundType As string
	#tag EndProperty

	#tag Property, Flags = &h0
		foundValue As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected headers(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		isBinary As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastSearch As string
	#tag EndProperty

	#tag Property, Flags = &h0
		org As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		root As plistDict
	#tag EndProperty

	#tag Property, Flags = &h0
		savePath As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		untitled As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="brk"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="debug"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="error"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="errorMessage"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="findingNext"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="foundKey"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="foundType"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="foundValue"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isBinary"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
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
		#tag ViewProperty
			Name="untitled"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
