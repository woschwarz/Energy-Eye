#tag Class
Protected Class MeterValueChart
Inherits MobileChart
	#tag Method, Flags = &h0
		Function CalculateMonthlyConsumption(dates() As DateTime, values() As Double) As Dictionary
		  Var result As New Dictionary
		  
		  If dates.Count <> values.Count Or dates.Count = 0 Then Return result
		  
		  Var i As Integer
		  
		  // Calculate start and end time for each month
		  Var monthData As New Dictionary // key: "YYYY-MM", value: Pair(DateTime, DateTime)
		  
		  For i = 0 To dates.LastIndex
		    Var mKey As String = Str(dates(i).Year) + "-" + ("0" + Str(dates(i).Month).Right(2))
		    
		    If Not monthData.HasKey(mKey) Then
		      Var firstDay As New DateTime(dates(i).Year, dates(i).Month, 1, 0, 0, 0)
		      Var lastDay As New DateTime(dates(i).Year, dates(i).Month, DaysInMonth(dates(i).Year, dates(i).Month), 23, 59, 59)
		      monthData.Value(mKey) = New Dictionary("start" : firstDay, "end" : lastDay)
		    End If
		  Next
		  
		  // Calculate the consumption for each month now
		  For Each mKey As String In monthData.Keys
		    Var monthDict As Dictionary = monthData.Value(mKey)
		    Var startDate As DateTime = monthDict.Value("start")
		    Var endDate As DateTime = monthDict.Value("end")
		    
		    // Calculate interpolated values
		    Var startValue As Double = InterpolateValueAt(dates, values, startDate)
		    Var endValue As Double = InterpolateValueAt(dates, values, endDate)
		    
		    result.Value(mKey) = endValue - startValue
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreateChart(months() As String, consumption() As Double)
		  Self.RemoveAllDatasets
		  Self.RemoveAllLabels
		  
		  Self.Title = "Monthly Consumption" 'Title 
		  Self.Mode = MobileChart.Modes.Bar 'Diagramm-Type
		  
		  Var monthValue() As Double
		  
		  // Summarize data as an array
		  For i As Integer = 0 To months.Count - 1
		    monthValue.AddRow(consumption(i) )
		    Self.AddLabel(months(i))
		  Next
		  
		  Var energyDS As New ChartLinearDataset("Consumption", Color.Blue, True, monthValue)
		  
		  // Add DataSet to chart
		  Self.AddDatasets(energyDS)
		  
		  Self.Refresh 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DaysInMonth(year As Integer, month As Integer) As Integer
		  Select Case month
		  Case 1, 3, 5, 7, 8, 10, 12
		    Return 31
		  Case 4, 6, 9, 11
		    Return 30
		  Case 2
		    If (year Mod 4 = 0 And (year Mod 100 <> 0 Or year Mod 400 = 0)) Then
		      Return 29
		    Else
		      Return 28
		    End If
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ForecastCurrentMonth(dates() As DateTime, values() As Double) As Double
		  // ForeCast not yet used, for future development
		  
		  If dates.Count < 2 Then Return 0.0
		  
		  Var today As DateTime = DateTime.Now
		  Var thisMonthStart As New DateTime(today.Year, today.Month, 1, 0, 0, 0)
		  
		  // Find measured values in the current month
		  Var monthDates() As DateTime
		  Var monthValues() As Double
		  
		  For i As Integer = 0 To dates.LastIndex
		    If dates(i) >= thisMonthStart And dates(i) <= today Then
		      monthDates.Add(dates(i))
		      monthValues.Add(values(i))
		    End If
		  Next
		  
		  If monthDates.Count < 2 Then
		    Return 0.0 // No meaningful forecast possible
		  End If
		  
		  // Consumption from the first to the last measured value
		  Var startValue As Double = monthValues(0)
		  Var endValue As Double = monthValues(monthValues.LastIndex)
		  Var usedSoFar As Double = endValue - startValue
		  
		  // Days between readings
		  Var daysSoFar As Double = monthDates(monthDates.LastIndex).SecondsFrom1970 - monthDates(0).SecondsFrom1970
		  daysSoFar = daysSoFar / (60 * 60 * 24) // in Days
		  
		  If daysSoFar <= 0 Then Return 0.0
		  
		  // Extrapolation
		  Var totalDays As Integer = DaysInMonth(today.Year, today.Month)
		  Var estimatedTotal As Double = usedSoFar / daysSoFar * totalDays
		  
		  Return estimatedTotal
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InterpolateValueAt(dates() As DateTime, values() As Double, targetDate As DateTime) As Double
		  If targetDate <= dates(0) Then Return values(0)
		  If targetDate >= dates(dates.LastIndex) Then Return values(values.LastIndex)
		  
		  For i As Integer = 0 To dates.LastIndex - 1
		    If dates(i) <= targetDate And dates(i+1) >= targetDate Then
		      Var totalSeconds As Double = dates(i+1).SecondsFrom1970 - dates(i).SecondsFrom1970
		      Var partSeconds As Double = targetDate.SecondsFrom1970 - dates(i).SecondsFrom1970
		      Var fraction As Double = partSeconds / totalSeconds
		      Return values(i) + fraction * (values(i+1) - values(i))
		    End If
		  Next
		  
		  Return values(values.LastIndex)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadValues()
		  If App.mdb.Connect Then
		    Try
		      // Get All measurements from Database
		      Var rs As RowSet = App.mdb.SelectSQL("SELECT mDate, mValue FROM measurements ORDER BY mDate")
		      
		      Var data() As DateTime
		      Var values() As Double
		      
		      While Not rs.AfterLastRow
		        data.Add(DateTime.FromString(rs.Column("mDate").StringValue))
		        values.Add(rs.Column("mValue").DoubleValue)
		        rs.MoveToNextRow
		      Wend
		      rs.Close
		      
		      Var monthlyConsumption As Dictionary = CalculateMonthlyConsumption(data, values)
		      
		      Var month() As String
		      Var consumption() As Double
		      
		      For Each key As String In monthlyConsumption.Keys
		        month.Add(key)
		        consumption.Add(monthlyConsumption.Value(key))
		      Next
		      
		      // Create chart, but only if there is enough data
		      If month.Count >= 2 Then
		        CreateChart(month, consumption)
		      Else
		        MessageBox("Not enough data!")
		      End If
		      
		    Catch e As DatabaseException
		      MessageBox("DB error: " + e.Message)
		    End Try
		  End If
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="_ClosingFired"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowKeyEvents"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintColor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ColorGroup"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Behavior"
			InitialValue="200"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Behavior"
			InitialValue="200"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityHint"
			Visible=false
			Group="UI Control"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Visible=false
			Group="UI Control"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="UI Control"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="UI Control"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DatasetCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasLegend"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mCircularLegendsRedraw"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mLegendsHeight"
			Visible=false
			Group="Behavior"
			InitialValue="12"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="MobileChart.Modes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Line"
				"1 - Bar"
				"2 - Radar"
				"3 - Pie"
				"4 - Doughnut"
				"5 - PolarArea"
				"6 - Bubble"
				"7 - Scatter"
				"8 - Stacked"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundColor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ColorGroup"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridColor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ColorGroup"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PopoverBackgroundColor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ColorGroup"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PopoverTextColor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ColorGroup"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ColorGroup"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowPopover"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoCalculateYAxis"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LegendColor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ColorGroup"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LegendFontSize"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TitleColor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ColorGroup"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TitleFontSize"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Format"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LabelCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DatasetLastIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LabelLastIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsGridVisible"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsXAxisVisible"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsYAxisVisible"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mIsXAxisVisible"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mIsYAxisVisible"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
