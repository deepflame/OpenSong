#tag Module
Module OpenSongUtils
	#tag Method, Flags = &h0
		Function CMtoPoints(CM As Double) As Double
		  //++
		  // Convert centimeters to points.
		  // Value obtained from www.onlineconversion.com
		  //
		  // Ed Palmer, May 2006
		  //++
		  
		  Return CM / CM_PER_INCH * POINTS_PER_INCH
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CMtoPoints(Points As String) As String
		  //++
		  // Polymorphic version of CMtoPoints
		  //--
		  
		  Return CStr(CMtoPoints(CDbl(Points)))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InchesToPoints(Inches As String) As String
		  //++
		  // Polymorphic version of InchesToPoints
		  //--
		  
		  Return CStr(InchesToPoints(CDbl(Inches)))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InchesToPoints(Inches As Double) As Double
		  //++
		  // Convert Inches to points
		  // Value obtained from www.onlineconversion.com
		  //
		  // Ed Palmer, May 2006
		  //--
		  
		  Return Inches * POINTS_PER_INCH
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PointsToCM(Points As Double) As Double
		  //++
		  // Convert points to centimeters.
		  // Value obtained from www.onlineconversion.com
		  //
		  // Ed Palmer, May 2006
		  //++
		  
		  Return Points / POINTS_PER_INCH * CM_PER_INCH
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PointsToCM(Points As String) As String
		  //++
		  // Polymorphic version of PointsToCM
		  //--
		  
		  Return CStr(PointsToCM(CDbl(Points)))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PointsToInches(Points As String) As String
		  //++
		  // Polymorphic version of PointsToInches
		  //--
		  
		  Return CStr(PointsToInches(CDbl(Points)))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PointsToInches(Points As Double) As Double
		  //++
		  // Convert points to inches
		  //
		  // Uses the value for point defined by Adobe
		  // This precisely converts 72 points to one inch
		  //
		  // Value obtained from www.onlineconversion.com
		  //
		  // Ed Palmer, May 2006
		  //--
		  
		  Return Points / POINTS_PER_INCH
		End Function
	#tag EndMethod


	#tag Note, Name = Overview
		This module holds OpenSong specific methods that
		provide general functions for the program but cannot
		be classified in one of the other utility modules.
	#tag EndNote


	#tag Constant, Name = CM_PER_INCH, Type = Double, Dynamic = False, Default = \"2.54", Scope = Public
	#tag EndConstant

	#tag Constant, Name = POINTS_PER_INCH, Type = Double, Dynamic = False, Default = \"72", Scope = Public
	#tag EndConstant


End Module
#tag EndModule
