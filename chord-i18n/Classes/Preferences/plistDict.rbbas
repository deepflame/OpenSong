#tag Class
Class plistDict
	#tag Method, Flags = &h0
		Function AbsolutePath() As string
		  path=":"+name
		  BuildPath(parent,path)
		  return path
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AddArray(name As string) As boolean
		  dim index As integer
		  
		  SetError(false,"")
		  if types.HasKey(name) then
		    SetError(true,"Array exists: "+name+" already exists")
		    return false
		  end
		  types.value(name)=kTypeArray
		  childrenNames.append name
		  children.append new plistDict
		  index=ubound(children)
		  children(index).name=name
		  children(index).isArray=true
		  children(index).parent=me
		  children(index).rootClass=rootClass
		  searched.Value(name)=false
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddChild(name As string)
		  dim index As integer
		  
		  SetError(false,"")
		  if types.HasKey(name) then
		    SetError(true,"Child exists: "+name+" already exists")
		  else
		    types.value(name)=kTypeDict
		    childrenNames.append name
		    children.append new plistDict
		    index=ubound(children)
		    children(index).name=name
		    children(index).isArray=false
		    children(index).parent=me
		    children(index).rootClass=rootClass
		    searched.Value(name)=false
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendArray()
		  dim index as integer
		  
		  if CheckArray then
		    indexOf=types.count
		    types.value(str(indexOf))=kTypeArray
		    childrenNames.append str(indexOf)
		    children.append new plistDict
		    index=ubound(children)
		    children(index).name=str(indexOf)
		    children(index).isArray=true
		    children(index).parent=me
		    children(index).rootClass=rootClass
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendBoolean(value As boolean)
		  if CheckArray then
		    indexOf=types.count
		    types.value(str(indexOf))=kTypeBoolean
		    if value then
		      values.value(str(indexOf))=kValueTrue
		    else
		      values.value(str(indexOf))=kValueFalse
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendColor(v as color)
		  dim value as string
		  
		  if CheckArray then
		    indexOf=types.count
		    value=hex(v.red)+hex(v.green)+hex(v.blue)
		    types.value(str(indexOf))=kTypeString
		    values.value(str(indexOf))=value
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendData(value As string)
		  if CheckArray then
		    indexOf=types.count
		    types.value(str(indexOf))=kTypeData
		    values.value(str(indexOf))=value
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendDate(dt As date)
		  dim value As string
		  
		  if CheckArray then
		    indexOf=types.count
		    types.value(str(indexOf))=kTypeDate
		    
		    value=str(dt.year)+"-"
		    value=value+MakeTwo(dt.month)+"-"
		    value=value+MakeTwo(dt.day)+"T"
		    value=value+MakeTwo(dt.hour)+":"
		    value=value+MakeTwo(dt.minute)+":"
		    value=value+MakeTwo(dt.second)+"Z"
		    values.value(str(indexOf))=value
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendDict()
		  dim index as integer
		  
		  if CheckArray then
		    indexOf=types.count
		    types.value(str(indexOf))=kTypeDict
		    childrenNames.append str(indexOf)
		    children.append new plistDict
		    index=ubound(children)
		    children(index).isArray=false
		    children(index).parent=me
		    children(index).rootClass=rootClass
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendDouble(value As double)
		  if CheckArray then
		    indexOf=types.count
		    types.value(str(indexOf))=kTypeDouble
		    values.value(str(indexOf))=str(value)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendInteger(value As integer)
		  if CheckArray then
		    indexOf=types.count
		    types.value(str(indexOf))=kTypeInteger
		    values.value(str(indexOf))=str(value)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendList(items() as string, startIndex as integer, endIndex as integer)
		  dim count,si,ei,idx as Integer
		  
		  if CheckArray then
		    si=startIndex
		    ei=endIndex
		    if si>UBound(items) then
		      si=0
		    end
		    if ei>UBound(items) then
		      ei=UBound(items)
		    end
		    AppendArray
		    idx=count-1
		    for count=si to ei
		      child(str(idx)).AppendString items(count)
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendListbox(list as listbox)
		  if CheckArray then
		    SetListbox(list)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendPopup(list as popupmenu)
		  if CheckArray then
		    SetPopup(list)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendString(value As string)
		  if CheckArray then
		    indexOf=types.count
		    types.value(str(indexOf))=kTypeString
		    values.value(str(indexOf))=value
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendWindow(win as window)
		  dim i As integer
		  dim key As string
		  
		  if CheckArray then
		    AppendDict
		    key=str(count-1)
		    child(key).SetString("windowName",win.title)
		    child(key).AddChild("WindowPos")
		    child(key).child("WindowPos").SetInteger("left",win.left)
		    child(key).child("WindowPos").SetInteger("top",win.top)
		    child(key).child("WindowPos").SetInteger("width",win.width)
		    child(key).child("WindowPos").SetInteger("height",win.height)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BracketsToCode(s As string) As string
		  dim temp As string
		  
		  temp=s
		  temp=ReplaceAll(temp,"<","&lt;")
		  temp=ReplaceAll(temp,">","&gt;")
		  return temp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub BuildPath(parent as plistDict, p as string)
		  if parent.name<>"root" then
		    path=":"+parent.name+path
		    BuildPath(parent.parent,path)
		  else
		    path=":root"+path
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CheckArray() As boolean
		  SetError(false,"")
		  if isArray then
		    return true
		  else
		    SetError(true, name+" is not an array")
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CheckType(key As string, type As string) As integer
		  dim result As integer
		  
		  SetError(false,"")
		  // Check for correct type 0=incorrect type, 1=correct type, 2=does not exist
		  if types.HasKey(key) then
		    if types.value(key)=type then
		      result=1
		    end
		  else
		    result=2
		  end
		  if result=0 then
		    SetError(true,"Type Mismatch: "+key+" is a "+types.value(key))
		  end
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function child(name As string) As plistDict
		  dim count As integer
		  
		  for count=1 to ubound(children)
		    if childrenNames(count)=name then
		      return children(count)
		    end
		  next
		  AddChild(name)
		  return child(name)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CodeToBrackets(s As string) As string
		  dim temp As string
		  
		  temp=s
		  temp=ReplaceAll(temp,"&lt;","<")
		  temp=ReplaceAll(temp,"&gt;",">")
		  return temp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Copy(key as string, dest as plistDict)
		  Move(key,dest,false,"")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function count() As integer
		  return types.count
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentKey() As string
		  if currentIndex<=types.count-1 then
		    return types.key(currentIndex)
		  else
		    eof=true
		    currentIndex=0
		    return ""
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dump(level As integer)
		  dim count,count2 As integer
		  dim key,type,value,tabs As string
		  dim s,cr As string
		  dim c As clipboard
		  
		  cr=chr(13)
		  for count=1 to level
		    tabs=tabs+chr(9)
		  next
		  for count=0 to types.count-1
		    key=types.key(count)
		    type=types.value(key)
		    if type<>"dict" and type<>"array" then
		      value=BracketsToCode(values.value(key))
		    end
		    if not isArray then
		      s=s+tabs+"<key>"+key+"</key>"+cr
		      if searched.HasKey(key) then
		        s=s+tabs+"<search/>"+cr
		      else
		        s=s+tabs+"<nosearch/>"+cr
		      end
		    end
		    if type="data" then
		      s=s+tabs+"<data>"+cr
		      s=s+tabs+value+cr
		      s=s+tabs+"</data>"+cr
		    elseif type="dict" then
		      for count2=1 to ubound(childrenNames)
		        if childrenNames(count2)=key then
		          if children(count2).count>0 then
		            s=s+tabs+"<dict>"+cr
		            children(count2).Dump(level+1)
		            s=s+tabs+"</dict>"+cr
		          else
		            s=s+tabs+"<dict/>"+cr
		          end
		        end
		      next
		    elseif type="array" then
		      for count2=1 to ubound(childrenNames)
		        if childrenNames(count2)=key then
		          if children(count2).count>0 then
		            s=s+tabs+"<array>"+cr
		            children(count2).Dump(level+1)
		            s=s+tabs+"</array>"+cr
		          else
		            s=s+tabs+"<array/>"+cr
		          end
		        end
		      next
		    elseif type="boolean" then
		      if value="true" then
		        s=s+tabs+"<true/>"+cr
		      else
		        s=s+tabs+"<false/>"+cr
		      end
		    else
		      s=s+tabs+"<"+type+">"+value+"</"+type+">"+cr
		    end
		  next
		  c=new clipboard
		  c.text=c.text+s
		  c.close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Exists(key As string) As boolean
		  return types.HasKey(key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBoolean(key As string, default As boolean) As boolean
		  dim value As boolean
		  
		  if not Exists(key) then
		    SetBoolean(key,default)
		  end
		  if types.value(key)<>kTypeBoolean then
		    SetError(true,"Type Mismatch: "+key+" is a "+types.value(key))
		  elseif values.value(key)=kValueTrue then
		    value=true
		  end
		  return value
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBoolean(key As string) As boolean
		  return GetBoolean(key,true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetCheckbox(box as Checkbox)
		  box.value=GetBoolean(box.name,box.Value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetColor(key As string) As color
		  return GetColor(key,RGB(0,0,0))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetColor(key As string, default As color) As color
		  dim c As color
		  dim value As string
		  
		  if not Exists(key) then
		    SetColor(key,default)
		  end
		  if types.value(key)<>kTypeString then
		    SetError(true,"Type Mismatch: "+key+" is a "+types.value(key))
		  else
		    value=GetValue(key)
		    c=RGB(cdbl("&h"+left(value,2)),cdbl("&h"+mid(value,3,2)),cdbl("&h"+right(value,2)))
		    return c
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetData(key As string) As string
		  return GetData(key,"")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetData(key As string, default As string) As string
		  return GetValue(key,default)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDate(key As string, default As date) As date
		  dim dt As Date
		  dim value,datePart,timePart,month,day,year As string
		  dim f As integer
		  
		  if not Exists(key) then
		    SetDate(key,default)
		  end
		  if TypeOK(key) then
		    dt=new Date
		    value=GetValue(key)
		    f=instr(value,"T")
		    if f>0 then
		      datePart=left(value,f-1)
		      timePart=right(value,len(value)-f)
		      if right(timePart,1)="Z" then
		        timePart=left(timePart,len(timePart)-1)
		      end
		    else
		      datePart=value
		    end
		    year=NthField(datePart,"-",1)
		    month=NthField(datePart,"-",2)
		    day=NthField(datePart,"-",3)
		    datePart=month+"/"+day+"/"+year
		    if ParseDate(datePart,dt) then
		      if timePart<>"" then
		        dt.hour=cdbl(NthField(timePart,":",1))
		        dt.minute=cdbl(NthField(timePart,":",2))
		        dt.second=cdbl(NthField(timePart,":",3))
		      end
		    else
		      SetError(true,"Could not create date object from "+key+"("+value+")")
		    end
		  end
		  return dt
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDate(key As string) As date
		  dim dt As date
		  
		  dt=new date
		  return GetDate(key,dt)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDouble(key As string, default As double) As double
		  dim value As double
		  
		  if not Exists(key) then
		    SetDouble(key,default)
		  end
		  if TypeOK(key) then
		    if types.value(key)=kTypeDate then
		      SetError(true,"Type Mismatch: "+key+" is a date")
		      value=-1
		    else
		      value=cdbl(GetValue(key))
		    end
		  end
		  return value
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDouble(key As string) As double
		  return GetDouble(key,0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetEditField(field as EditField)
		  field.Text=GetString(field.Name,field.text)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetInteger(key As string, default As integer) As integer
		  dim value As integer
		  
		  if not Exists(key) then
		    SetInteger(key,default)
		  end
		  if TypeOK(key) then
		    if types.value(key)=kTypeDate then
		      SetError(true,"Type Mismatch: "+key+" is a date")
		      value=-1
		    else
		      value=cdbl(GetValue(key))
		    end
		  end
		  return value
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetInteger(key As string) As integer
		  return GetInteger(key,0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetList(key as string, byref items() as string, indexStart as integer)
		  dim count As integer
		  dim newArray(0) as string
		  
		  if indexStart=0 then
		    redim newArray(-1)
		  end
		  for count=0 to child(key).count-1
		    newArray.Append child(key).GetString(str(count))
		  next
		  items=newArray
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetListbox(list as ListBox, setDefault as boolean)
		  dim row,column as integer
		  dim key,value,default,idx As string
		  
		  key=list.Name
		  idx=str(list.Index)
		  if instr(idx,".")=0 then
		    key=key+"."+idx
		  end
		  if not Exists(key) then
		    SetListbox(list)
		  end
		  default=child(key).GetString("default")
		  for row=0 to child(key).child("elements").count-1
		    if list.ColumnCount>1 then
		      list.AddRow ""
		      for column=0 to child(key).child("elements").index(row).count-1
		        if column<list.ColumnCount then
		          list.Cell(row,column)=child(key).child("elements").index(row).GetString(str(column))
		        end
		      next
		    else
		      value=child(key).child("elements").GetString(str(row))
		      list.AddRow value
		    end
		    if value=default and setDefault then
		      list.ListIndex=row
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPopup(list as popupmenu, setDefault as boolean)
		  dim count as integer
		  dim key,value,default,idx As string
		  
		  key=list.Name
		  idx=str(list.Index)
		  if instr(idx,".")=0 then
		    key=key+"."+idx
		  end
		  if not Exists(key) then
		    SetPopup(list)
		  end
		  default=child(key).GetString("default")
		  for count=0 to child(key).child("elements").count-1
		    value=child(key).child("elements").GetString(str(count))
		    list.AddRow value
		    if value=default and setDefault then
		      list.ListIndex=count
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetRadio(radio as RadioButton)
		  radio.value=GetBoolean(radio.name,radio.Value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetReal(key As string) As double
		  return GetReal(key,0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetReal(key As string, default As double) As double
		  dim value As double
		  
		  if not Exists(key) then
		    SetReal(key,default)
		  end
		  if TypeOK(key) then
		    if types.value(key)=kTypeDate then
		      SetError(true,"Type Mismatch: "+key+" is a date")
		      value=-1
		    else
		      value=cdbl(GetValue(key))
		    end
		  end
		  return value
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetStaticText(txt as StaticText)
		  txt.Caption=GetString(txt.Name,txt.Caption)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetString(key As string, default As string) As string
		  return GetValue(key,default)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetString(key As string) As string
		  return GetString(key,"")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetType(key As string) As string
		  return types.value(key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValue(key As string, default As string) As string
		  dim result As string
		  
		  if not Exists(key) then
		    SetString(key,default)
		  end
		  if rootClass<>nil then
		    SetError(false,"")
		  end
		  if values.HasKey(key) then
		    if TypeOK(key) then
		      result=values.value(key)
		    end
		  else
		    SetError(true,"Key "+key+" does not exist")
		  end
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetValue(key As string) As string
		  return GetValue(key,"")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetWindow(key As string, win As window)
		  if not Exists(key) then
		    SetWindow(key,win)
		  end
		  win.title=child(key).GetString("windowName")
		  win.left=child(key).child("WindowPos").GetInteger("left")
		  win.top=child(key).child("WindowPos").GetInteger("top")
		  win.width=child(key).child("WindowPos").GetInteger("width")
		  win.height=child(key).child("WindowPos").GetInteger("height")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function index(index As integer) As plistDict
		  dim count As integer
		  
		  for count=1 to ubound(children)
		    if childrenNames(count)=str(index) then
		      return children(count)
		    end
		  next
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load(t As TextInputStream, n As string, ia As boolean, pr As plistDict, rt As plist, loadDict As boolean)
		  dim s,key,type,value,tag,endTag,tagValue,line As string
		  dim f,count,i As integer
		  dim inTag,placeHolder As boolean
		  
		  
		  values=new dictionary
		  types=new dictionary
		  name=n
		  parent=pr
		  rootClass=rt
		  indexOf=-1
		  
		  isArray=ia
		  if isArray then
		    endTag="</array>"
		  else
		    endTag="</dict>"
		  end
		  if loadDict then
		    while not t.eof and s<>endTag and s<>"<dict/>"
		      if isArray and not inTag then
		        indexOf=indexOf+1
		        key=str(indexOf)
		      end
		      line=StripAll(t.ReadLine)
		      line=replaceAll(line,"><",">"+chr(13)+"<")
		      line=ReplaceAll(line,">"+chr(13)+"</","></")
		      for i=1 to CountFields(line,chr(13))
		        s=NthField(line,chr(13),i)
		        if left(s,5)="<key>"  then
		          s=right(s,len(s)-5)
		          if right(s,6)="</key>" then
		            s=left(s,len(s)-6)
		          end
		          key=s
		        elseif s<>endTag then
		          if inTag and s<>"</"+tag+">" then
		            f=instr(s,"</"+tag+">")
		            if f>0 then
		              s=left(s,f-1)
		              inTag=false
		            end
		            value=value+CodeToBrackets(s)
		            if tag<>"data" then
		              value=value+chr(13)
		            end
		            if not inTag then
		              values.value(key)=CodeToBrackets(value)
		            end
		          else
		            f=instr(s,">")
		            if f>0 then
		              tag=left(s,f-1)
		              if left(tag,1)="<" then
		                tag=right(tag,len(tag)-1)
		              end
		              if tag="false/" then
		                types.value(key)="boolean"
		                values.value(key)="false"
		                type=kTypeBoolean
		              elseif tag="true/" then
		                types.value(key)="boolean"
		                values.value(key)="true"
		                type=kTypeBoolean
		              elseif tag="/"+type or tag="/key" then
		                inTag=false
		                values.value(key)=CodeToBrackets(value)
		                value=""
		              else
		                type=tag
		                if right(type,1)="/" then
		                  type=left(type,len(type)-1)
		                  placeHolder=true
		                else
		                  placeHolder=false
		                end
		                types.value(key)=type
		                if type<>"array" and type<>"dict" and type<>"dict/" then
		                  s=right(s,len(s)-f)
		                  f=instr(s,"</"+type)
		                  if f>0 then
		                    value=left(s,f-1)
		                    values.value(key)=CodeToBrackets(value)
		                  else
		                    inTag=true
		                    f=instr(s,">")
		                    if f=0 then
		                      value=ReplaceAll(s,"&lt;","<")
		                      value=ReplaceAll(value,"&gt;",">")
		                      if type<>kTypeData then
		                        value=value+chr(13)
		                      end
		                    else
		                      value=""
		                    end
		                  end
		                end
		              end
		              if type=kTypeDict  then
		                children.append new plistDict
		                childrenNames.append key
		                children(ubound(children)).Load(t,key,false,me,rootClass,not placeHolder)
		                if placeHolder then
		                  s=""
		                end
		              elseif type=kTypeArray then
		                children.append new plistDict
		                childrenNames.append key
		                children(ubound(children)).Load(t,key,true,me,rootClass,not placeHolder)
		              end
		            end
		          end
		        end
		      next
		    wend
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MakeTwo(value As integer) As string
		  if value>9 then
		    return str(value)
		  else
		    return "0"+str(value)
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Move(key as string, dest as plistDict, deleteSrc as boolean, newName as string)
		  dim value as Variant
		  dim type,nm,ck,targetName As string
		  dim dst as plistDict
		  
		  SetError(false,"")
		  if dest<>nil then
		    if Exists(key) then
		      type=types.Value(key)
		      if newName="" then
		        targetName=key
		      else
		        targetName=newName
		      end
		      select case type
		      case kTypeArray
		        if dest.isArray then
		          dest.AppendDict
		          nm=str(dest.count)
		          dst=dest.child(nm)
		        else
		          nm=key
		          dest.AddChild(targetName)
		          dst=dest.child(targetName)
		        end
		        child(key).MoveFirst
		        while not child(key).eof
		          ck=child(key).CurrentKey
		          child(key).Move(ck,dst,false,"")
		          child(key).MoveNext
		        wend
		      case kTypeDict
		        if dest.isArray then
		          dest.AppendDict
		          nm=str(dest.count)
		          dst=dest.child(nm)
		        else
		          nm=key
		          dest.AddChild(targetName)
		          dst=dest.child(targetName)
		        end
		        child(key).MoveFirst
		        while not child(key).eof
		          ck=child(key).CurrentKey
		          child(key).Move(ck,dst,false,"")
		          child(key).MoveNext
		        wend
		        
		      case kTypeString
		        value=GetString(key)
		        if dest.isArray then
		          dest.AppendString value
		        else
		          dest.SetString(targetName,value)
		        end
		        
		      case kTypeBoolean
		        value=GetBoolean(key)
		        if dest.isArray then
		          dest.AppendBoolean value
		        else
		          dest.SetBoolean(targetName,value)
		        end
		        
		      case kTypeReal
		        value=GetDouble(key)
		        if dest.isArray then
		          dest.AppendDouble value
		        else
		          dest.SetDouble(targetName,value)
		        end
		        
		      case kTypeInteger
		        value=GetInteger(key)
		        if dest.isArray then
		          dest.AppendInteger value
		        else
		          dest.SetInteger(targetName,value)
		        end
		        
		      case kTypeData
		        value=GetString(key)
		        if dest.isArray then
		          dest.AppendData value
		        else
		          dest.SetData(targetName,value)
		        end
		        
		      case kTypeDate
		        value=GetDate(key)
		        if dest.isArray then
		          dest.AppendDate value
		        else
		          dest.SetDate(targetName,value)
		        end
		      end
		      
		      if deleteSrc then
		        Remove(key)
		      end
		      
		    else
		      SetError(true,"Source does not exist.")
		    end
		  else
		    SetError(true,"Destination is nil")
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Move(key as string, dest as plistDict)
		  Move(key,dest,true,"")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveFirst()
		  currentIndex=0
		  eof=false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveLast()
		  currentIndex=types.count-1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveNext()
		  currentIndex=currentIndex+1
		  if currentIndex>types.count-1 then
		    currentIndex=0
		    eof=true
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub plistDict()
		  values=new dictionary
		  types=new dictionary
		  searched=new Dictionary
		  indexOf=-1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Remove(toRemove As variant)
		  dim i,index,which,cnt As integer
		  dim value,key,type As string
		  
		  if toRemove.isNumeric then
		    index=toRemove.IntegerValue
		    if CheckArray then
		      cnt=types.count-1
		      if index>count-1 or index<0 then
		        SetError(true,"Subscript out of range")
		      end
		      key=str(index)
		      type=types.value(key)
		      if type="dict" or type="array" then
		        childrenNames.Remove(index+1)
		        children.Remove(index+1)
		      end
		      if values.hasKey(key) then
		        values.Remove(key)
		      end
		      types.Remove(key)
		      for i=index+1 to cnt
		        key=str(i)
		        if types.HasKey(key) then
		          type=types.value(key)
		          if values.hasKey(key) then
		            value=values.value(key)
		          end
		          key=str(i-1)
		          types.value(key)=type
		          if type<>kTypeDict and type<>kTypeArray then
		            values.value(key)=value
		          end
		        end
		      next
		      key=str(cnt)
		      if types.hasKey(key) then
		        types.remove(key)
		        if values.hasKey(key) then
		          values.Remove(key)
		        end
		      end
		    end
		  else
		    key=toRemove.StringValue
		    if values.HasKey(key) then
		      values.Remove(key)
		    end
		    types.Remove(key)
		    for i=1 to ubound(childrenNames)
		      if key=childrenNames(i) then
		        which=i
		      end
		    next
		    if which>0 then
		      childrenNames.Remove(which)
		      children.Remove(which)
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Rename(key as string, newName as string)
		  SetError(false,"")
		  if Exists(newName) then
		    SetError(true,"Key "+newName+" already exists.")
		  else
		    Move(key,me,true,newName)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBoolean(key As string, v As boolean)
		  dim result As integer
		  dim value As string
		  
		  result=CheckType(key,kTypeBoolean)
		  if result<>0 then
		    if v then
		      value=kValueTrue
		    else
		      value=kValueFalse
		    end
		    values.value(key)=value
		    types.value(key)=kTypeBoolean
		    searched.Value(key)=false
		  end
		  indexOf=-1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetCheckbox(box as Checkbox)
		  SetBoolean(box.Name,box.value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetColor(key as string, v as color)
		  dim result As integer
		  dim value As string
		  
		  result=CheckType(key,kTypeString)
		  if result<>0 then
		    value=hex(v.red)+hex(v.green)+hex(v.blue)
		    values.value(key)=value
		    types.value(key)=kTypeString
		    searched.Value(key)=false
		    indexOf=-1
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetData(key As string, v As string)
		  values.value(key)=v
		  types.value(key)=kTypeData
		  searched.Value(key)=false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDate(key As string, dt As date)
		  dim result As integer
		  dim value As string
		  
		  result=CheckType(key,kTypeDate)
		  if result<>0 then
		    value=str(dt.year)+"-"
		    value=value+MakeTwo(dt.month)+"-"
		    value=value+MakeTwo(dt.day)+"T"
		    value=value+MakeTwo(dt.hour)+":"
		    value=value+MakeTwo(dt.minute)+":"
		    value=value+MakeTwo(dt.second)+"Z"
		    values.value(key)=value
		    types.value(key)=kTypeDate
		    searched.Value(key)=false
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDouble(key As string, v As double)
		  dim result As integer
		  dim value As string
		  
		  result=CheckType(key,kTypeDouble)
		  if result<>0 then
		    values.value(key)=str(v)
		    types.value(key)=kTypeDouble
		    searched.Value(key)=false
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetEditField(field as EditField)
		  SetString(field.name,field.Text)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetError(value As boolean, msg As string)
		  if rootClass<>nil then
		    rootClass.error=value
		    rootClass.errorMessage=msg
		    if value and rootClass.debug then
		      MsgBox msg
		    end
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetInteger(key As string, v As double)
		  dim result As integer
		  dim value As string
		  
		  result=CheckType(key,kTypeInteger)
		  if result<>0 then
		    values.value(key)=format(v,"-#")
		    types.value(key)=kTypeInteger
		    searched.Value(key)=false
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetList(key as string, items() as string, startIndex as integer, endIndex as integer)
		  dim count,si,ei as Integer
		  
		  if exists(key) then
		    Remove(key)
		  end
		  si=startIndex
		  ei=endIndex
		  if si>UBound(items) then
		    si=0
		  end
		  if ei>UBound(items) then
		    ei=UBound(items)
		  end
		  if AddArray(key) then
		    searched.Value(key)=false
		    for count=si to ei
		      child(key).AppendString items(count)
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetListbox(list as listbox)
		  dim row,column as integer
		  dim key,idx as string
		  
		  key=list.Name
		  idx=str(list.Index)
		  if instr(idx,".")=0 then
		    key=key+"."+idx
		  end
		  if Exists(key) then
		    Remove(key)
		  end
		  AddChild(key)
		  searched.Value(key)=false
		  child(key).SetString("default",list.text)
		  
		  if child(key).AddArray("elements") then
		    for row=0 to list.ListCount-1
		      if list.ColumnCount>1 then
		        child(key).child("elements").AppendArray
		        for column=0 to list.ColumnCount-1
		          child(key).child("elements").index(row).AppendString list.cell(row,column)
		        next
		      else
		        child(key).child("elements").AppendString list.List(row)
		      end
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPopup(list as popupmenu)
		  dim count as integer
		  dim key,idx as string
		  
		  key=list.Name
		  idx=str(list.Index)
		  if instr(idx,".")=0 then
		    key=key+"."+idx
		  end
		  if Exists(key) then
		    Remove(key)
		  end
		  AddChild(key)
		  searched.Value(key)=false
		  child(key).SetString("default",list.text)
		  
		  if child(key).AddArray("elements") then
		    for count=0 to list.ListCount-1
		      child(key).child("elements").AppendString list.List(count)
		    next
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRadio(radio as RadioButton)
		  SetBoolean(radio.Name,radio.value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetReal(key As string, v As double)
		  dim result As integer
		  dim value As string
		  
		  result=CheckType(key,kTypeReal)
		  if result<>0 then
		    values.value(key)=str(v)
		    types.value(key)=kTypeReal
		    searched.Value(key)=false
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetStaticText(txt as StaticText)
		  SetString(txt.Name,txt.Caption)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetString(key As string, v As string)
		  dim result As integer
		  
		  result=CheckType(key,kTypeString)
		  if result<>0 then
		    values.value(key)=v
		    types.value(key)=kTypeString
		    searched.Value(key)=false
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetWindow(key as string, win As window)
		  if not Exists(key) then
		    AddChild(key)
		  end
		  searched.Value(key)=false
		  child(key).SetString("windowName",win.title)
		  if not child(key).Exists("WindowPos") then
		    child(key).AddChild("WindowPos")
		  end
		  child(key).child("WindowPos").SetInteger("left",win.left)
		  child(key).child("WindowPos").SetInteger("top",win.top)
		  child(key).child("WindowPos").SetInteger("width",win.width)
		  child(key).child("WindowPos").SetInteger("height",win.height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function StripAll(s As string) As string
		  dim temp As string
		  
		  if s<>"" then
		    temp=s
		    while asc(left(temp,1))<32
		      temp=right(temp,len(temp)-1)
		    wend
		  end
		  return temp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TypeOK(key As string) As boolean
		  dim type As string
		  
		  type=types.value(key)
		  if type=kTypeDict or type=kTypeArray then
		    if rootClass<>nil then
		      SetError(true,"Illegal Type: "+key+" is a "+type)
		    end
		    return false
		  else
		    return true
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Write(o As TextOutputStream, level As integer)
		  dim count,count2 As integer
		  dim key,type,value,tabs As string
		  
		  for count=1 to level
		    tabs=tabs+chr(9)
		  next
		  for count=0 to types.count-1
		    key=types.key(count)
		    type=types.value(key)
		    if type<>kTypeDict and type<>kTypeArray then
		      value=BracketsToCode(values.value(key))
		    end
		    if not isArray then
		      o.WriteLine tabs+"<key>"+key+"</key>"
		    end
		    if type=kTypeData then
		      o.WriteLine tabs+"<data>"
		      o.WriteLine tabs+value
		      o.WriteLine tabs+"</data>"
		    elseif type=kTypeDict then
		      for count2=1 to ubound(childrenNames)
		        if childrenNames(count2)=key then
		          if children(count2).count>0 then
		            o.WriteLine tabs+"<dict>"
		            children(count2).Write(o,level+1)
		            o.WriteLine tabs+"</dict>"
		          else
		            o.WriteLine tabs+"<dict/>"
		          end
		        end
		      next
		    elseif type=kTypeArray then
		      for count2=1 to ubound(childrenNames)
		        if childrenNames(count2)=key then
		          if children(count2).count>0 then
		            o.WriteLine tabs+"<array>"
		            children(count2).Write(o,level+1)
		            o.WriteLine tabs+"</array>"
		          else
		            o.WriteLine tabs+"<array/>"
		          end
		        end
		      next
		    elseif type=kTypeBoolean then
		      if value="true" then
		        o.WriteLine tabs+"<true/>"
		      else
		        o.WriteLine tabs+"<false/>"
		      end
		    else
		      o.WriteLine tabs+"<"+type+">"+value+"</"+type+">"
		    end
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected children(0) As plistDict
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected childrenNames(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		currentIndex As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		eof As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		indexOf As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		isArray As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		parent As plistDict
	#tag EndProperty

	#tag Property, Flags = &h21
		Private path As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected rootClass As plist
	#tag EndProperty

	#tag Property, Flags = &h0
		searched As dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		types As dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		values As dictionary
	#tag EndProperty


	#tag Constant, Name = kTypeArray, Type = String, Dynamic = False, Default = \"array", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeBoolean, Type = String, Dynamic = False, Default = \"boolean", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeString, Type = String, Dynamic = False, Default = \"string", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeData, Type = String, Dynamic = False, Default = \"data", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeDate, Type = String, Dynamic = False, Default = \"date", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeDict, Type = String, Dynamic = False, Default = \"dict", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeDouble, Type = String, Dynamic = False, Default = \"double", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTypeInteger, Type = String, Dynamic = False, Default = \"integer", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kValueTrue, Type = String, Dynamic = False, Default = \"true", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kValueFalse, Type = String, Dynamic = False, Default = \"false", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTypeReal, Type = String, Dynamic = False, Default = \"real", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="currentIndex"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="eof"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="indexOf"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isArray"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
