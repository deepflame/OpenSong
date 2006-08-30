#tag Class
Class TreeNode
	#tag Method, Flags = &h0
		Sub delete(word as String, parent as TreeNode = nil)
		  dim node as TreeNode
		  
		  if (entry.word=word) then 'found word
		    if (left=nil AND right=nil) then
		      if (parent <> nil) then
		        if (parent.left= Me) then
		          parent.left=nil
		        else
		          parent.right=nil
		        end if
		      end if
		      
		    elseif (left=nil) then
		      entry=right.entry
		      left=right.left
		      right=right.right
		      
		    elseif left.right=nil then
		      entry=left.entry
		      right=left.right
		      left=left.left
		      
		    else
		      node=left
		      
		      while node.right.right <> nil
		        node= node.right
		      wend
		      
		      entry=node.right.entry
		      
		      node.right=nil
		    end if
		    
		    
		  elseif (word<entry.word) then
		    if (left=nil) then
		      return'word not found
		    end if
		    
		    left.delete(word, Me)
		  else
		    if (right=nil) then
		      return'word not found
		    end if
		    
		    right.delete(word, Me)
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function find(word as String) As TreeNode
		  'method recusively searches the tree for the word.  If the word isn't in the tree then it is added
		  
		  if (entry.word=word) then
		    return Me
		  elseif (word<entry.word) then
		    if (left=nil) then
		      left= new TreeNode(new IndexEntry(word))
		      return left
		    end if
		    
		    return left.find(word)
		  else
		    if (right=nil) then
		      right= new TreeNode(new IndexEntry(word))
		      return right
		    end if
		    
		    return right.find(word)
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub inorderTraverse(list() as IndexEntry)
		  dim rlist() as IndexEntry
		  dim x as Integer
		  
		  if (left<> nil) then
		    left.inorderTraverse(list)
		  end if
		  
		  list.Append(entry)
		  
		  if (right<> nil) then
		    right.inorderTraverse(rlist)
		  end if
		  
		  for x=0 to UBound(rlist)
		    list.Append(rlist(x))
		  next x
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TreeNode(tentry As IndexEntry, tleft As TreeNode = nil, tright As TreeNode = nil)
		  entry=tentry
		  left=tleft
		  right= tright
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		entry As IndexEntry
	#tag EndProperty

	#tag Property, Flags = &h0
		left As TreeNode
	#tag EndProperty

	#tag Property, Flags = &h0
		right As TreeNode
	#tag EndProperty


End Class
#tag EndClass
