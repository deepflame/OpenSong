#tag Class
Protected Class bindSColorCanvasAndSImageCanvas
Implements BindingInterface,ActionNotificationReceiver
	#tag Method, Flags = &h0
		Sub Bind(Source As Object, Target As Object)
		  #pragma BindingSpecification sColorCanvas, SImageCanvas, "Update %2 with background color from %1"
		  
		  SourceControl = SColorCanvas(Source)
		  TargetControl = SImageCanvas(Target)
		  
		  SourceControl.AddActionNotificationReceiver self
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PerformAction()
		  // Update the SStyleCanvas with the color
		  // selected by SColorCanvas
		  Dim c As Color
		  If SourceControl.GetColor(c) Then
		    TargetControl.bgColor = c
		  Else
		    TargetControl.bgColor = FillColor
		  End If
		  
		  TargetControl.Repaint
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected SourceControl As sColorCanvas
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected TargetControl As sImageCanvas
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
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
	#tag EndViewBehavior
End Class
#tag EndClass
