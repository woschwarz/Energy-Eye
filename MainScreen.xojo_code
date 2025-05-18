#tag MobileScreen
Begin MobileScreen MainScreen Implements iOSMobileTableDataSource
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 9
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   ScaleFactor     =   0.0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c000000
   Title           =   "Energy Eye"
   Top             =   0
   Begin MobileDateTimePicker edtDate
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   edtDate, 8, , 0, False, +1.00, 4, 1, 52, , True
      AutoLayout      =   edtDate, 2, <Parent>, 2, False, +1.00, 4, 1, -5, , True
      AutoLayout      =   edtDate, 3, <Parent>, 3, False, +1.00, 4, 1, 167, , True
      AutoLayout      =   edtDate, 7, , 0, False, +1.00, 4, 1, 134, , True
      ControlCount    =   0
      DisplayMode     =   1
      DisplayStyle    =   1
      Enabled         =   True
      Height          =   52
      Left            =   289
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   &c000000
      Top             =   167
      Visible         =   True
      Width           =   134
      _ClosingFired   =   False
   End
   Begin MobileTextField edtValue
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   edtValue, 7, , 0, False, +1.00, 4, 1, 122, , True
      AutoLayout      =   edtValue, 2, <Parent>, 2, False, +1.00, 4, 1, -13, , True
      AutoLayout      =   edtValue, 11, lblValue, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   edtValue, 8, , 0, False, +1.00, 4, 1, 34, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   34
      Hint            =   ""
      InputType       =   4
      Left            =   293
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   0
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   230
      Visible         =   True
      Width           =   122
      _ClosingFired   =   False
   End
   Begin iOSMobileTable DataTable
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowRefresh    =   False
      AllowSearch     =   False
      AutoLayout      =   DataTable, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, -*kStdControlGapV, , True
      AutoLayout      =   DataTable, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   DataTable, 2, <Parent>, 2, False, +1.00, 4, 1, -13, , True
      AutoLayout      =   DataTable, 3, btnAdd, 4, False, +1.00, 4, 1, 35, , True
      ControlCount    =   0
      EditingEnabled  =   False
      EditingEnabled  =   False
      Enabled         =   True
      EstimatedRowHeight=   -1
      Format          =   0
      Height          =   581
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      TintColor       =   &c000000
      Top             =   337
      Visible         =   True
      Width           =   415
      _ClosingFired   =   False
      _OpeningCompleted=   False
   End
   Begin MobileLabel lblDate
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblDate, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblDate, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   lblDate, 3, edtMeterName, 4, False, +1.00, 4, 1, 25, , True
      AutoLayout      =   lblDate, 7, , 0, False, +1.00, 4, 1, 100, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   0
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Date"
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   177
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileLabel lblValue
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblValue, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblValue, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   lblValue, 2, edtValue, 1, False, +1.00, 4, 1, -*kStdControlGapH, , True
      AutoLayout      =   lblValue, 3, lblDate, 4, False, +1.00, 4, 1, 25, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   0
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Current Meter Reading"
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   232
      Visible         =   True
      Width           =   265
      _ClosingFired   =   False
   End
   Begin MobileSharingPanel SharingPanelMeasuredData
      Left            =   0
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Scope           =   0
      Top             =   0
   End
   Begin MobileButton btnAdd
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btnAdd, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   btnAdd, 2, <Parent>, 2, False, +1.00, 4, 1, -13, , True
      AutoLayout      =   btnAdd, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btnAdd, 3, edtValue, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      Caption         =   "Save"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   False
      Height          =   30
      Left            =   315
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   272
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileLabel lblBuilding
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblBuilding, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   lblBuilding, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   lblBuilding, 3, <Parent>, 3, False, +1.00, 4, 1, 84, , True
      AutoLayout      =   lblBuilding, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Building"
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   84
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileLabel lblMeterName
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblMeterName, 1, lblBuilding, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblMeterName, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   lblMeterName, 3, lblBuilding, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   lblMeterName, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Meter Name"
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   122
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileLabel edtBuilding
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   edtBuilding, 2, <Parent>, 2, False, +1.00, 4, 1, -13, , True
      AutoLayout      =   edtBuilding, 7, , 0, False, +1.00, 4, 1, 155, , True
      AutoLayout      =   edtBuilding, 11, lblBuilding, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   edtBuilding, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   260
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   84
      Visible         =   True
      Width           =   155
      _ClosingFired   =   False
   End
   Begin MobileLabel edtMeterName
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   edtMeterName, 1, edtBuilding, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   edtMeterName, 7, , 0, False, +1.00, 4, 1, 155, , True
      AutoLayout      =   edtMeterName, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   edtMeterName, 11, lblMeterName, 11, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   260
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   122
      Visible         =   True
      Width           =   155
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Activated()
		  LoadMeterData
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  // Navigation Toolbar on Top
		  
		  // left Icons
		  Var addIcon As Picture = Picture.SystemImage("plus", 16)
		  Var addItem As New MobileToolbarButton(MobileToolbarButton.Types.Plain, "Add", addIcon)
		  
		  Var chartIcon As Picture = Picture.SystemImage("chart.bar", 16)
		  Var chartItem As New MobileToolbarButton(MobileToolbarButton.Types.Plain, "Chart", chartIcon)
		  
		  LeftNavigationToolbar.AddButton(addItem)
		  LeftNavigationToolbar.AddButton(chartItem)
		  
		  // right Icons
		  Var shareIcon As Picture = Picture.SystemImage("square.and.arrow.up", 16)
		  Var shareItem As New MobileToolbarButton(MobileToolbarButton.Types.Plain, "Share", shareIcon)
		  
		  Var configIcon As Picture = Picture.SystemImage("gearshape", 16)
		  Var configItem As New MobileToolbarButton(MobileToolbarButton.Types.Plain, "Settings", configIcon)
		  
		  
		  RightNavigationToolbar.AddButton(configItem)
		  RightNavigationToolbar.AddButton(shareItem)
		  
		  // Load Values
		  LoadData
		  DataTable.DataSource = Self
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarButtonPressed(button As MobileToolbarButton)
		  Select Case button.Caption
		  Case "Add"
		    Var v As New MainScreen
		    'Self.PushTo(Screen1)
		  Case "Chart"
		    Var v As New ChartScreen
		    Self.PushTo(v)
		    
		  Case "Share"
		    ExportCSV
		    
		  Case "Settings"
		    Var v As New ConfigScreen
		    Self.PushTo(v)
		    
		  End Select
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddToDatabase()
		  If App.mdb.Connect Then
		    Var datum As String = edtDate.SelectedDate.SQLDate 'DateTime.Now.SQLDate 'Current date in SQL format
		    Var zaehlerstand As Double = Val(edtValue.Text) 'Input from Textfield
		    
		    Var sql As String = "INSERT INTO measurements (mDate, mValue) VALUES (?, ?)"
		    Try
		      App.mdb.ExecuteSQL(sql, datum, zaehlerstand)
		      'MessageBox ("Measured Value successfully saved!")
		    Catch e As DatabaseException
		      MessageBox("Error: " + e.Message)
		    End Try
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ExportCSV()
		  // Database Export to CSV
		  
		  If Not App.mdb.Connect Then
		    'MessageBox("Database connection failed: " + db.ErrorMessage)
		    Return
		  End If
		  
		  // Prepare CSV file
		  Var csvData As String
		  csvData = "Date,Value" + EndOfLine // Column Heading
		  
		  // Read Data
		  Var sql As String = "SELECT mDate, mValue FROM measurements"
		  Var rs As RowSet = App.mdb.SelectSQL(sql)
		  
		  If rs <> Nil Then
		    For Each row As DatabaseRow In rs
		      csvData = csvData + row.Column("mDate").StringValue + "," + row.Column("mValue").StringValue + EndOfLine
		    Next
		    rs.Close
		  Else
		    MessageBox("No Data found.")
		    Return
		  End If
		  
		  SharingPanelMeasuredData.ShareText(csvData, Self)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadData()
		  MeterValues.RemoveAllRows
		  
		  If App.mdb.Connect Then
		    Var sql As String = "SELECT mDate, mValue FROM measurements ORDER BY mdate DESC"
		    Var rs As RowSet = App.mdb.SelectSQL(sql)
		    
		    Try
		      rs = App.mdb.SelectSQL(sql)
		    Catch e As DatabaseException
		      Break
		    End Try
		    
		    If rs <> Nil Then 
		      Try
		        While Not rs.AfterLastRow
		          Var v As New MeterData
		          v.mDate = rs.Column("mDate").DateTimeValue
		          v.mValue = rs.Column("mValue").IntegerValue
		          
		          MeterValues.Add(v)
		          
		          rs.MoveToNextRow
		        Wend
		      Catch e As DatabaseException
		        Break
		      End Try
		      
		      //rs.Close
		    End If
		    
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadMeterData()
		  If App.mdb.Connect Then
		    Var sql As String = "SELECT * FROM settings WHERE ID = 1;"
		    Var rs As RowSet = App.mdb.SelectSQL(sql)
		    
		    Try
		      rs = App.mdb.SelectSQL(sql)
		    Catch e As DatabaseException
		      Break
		    End Try
		    
		    If rs <> Nil Then 
		      Try
		        While Not rs.AfterLastRow
		          edtBuilding.Text = rs.Column("sBuilding").StringValue
		          edtMeterName.Text = rs.Column("sMeterName").StringValue
		          rs.MoveToNextRow
		        Wend
		      Catch e As DatabaseException
		        Break
		      End Try
		      
		      //rs.Close
		    End If
		    
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RowCount(table As iOSMobileTable, section As Integer) As Integer
		  // Part of the iOSMobileTableDataSource interface.
		  
		  Return MeterValues.LastIndex + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RowData(table As iOSMobileTable, section As Integer, row As Integer) As MobileTableCellData
		  // Part of the iOSMobileTableDataSource interface.
		  
		  Var cell As MobileTableCellData 
		  cell = table.CreateCustomCell(GetTypeInfo(TwoColumnCell))
		  Var customCell As TwoColumnCell = TwoColumnCell(cell.Control) 
		  
		  customCell.SetValues(MeterValues(row).mDate, MeterValues(row).mValue.ToString)
		  
		  Return cell
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SectionCount(table As iOSMobileTable) As Integer
		  // Part of the iOSMobileTableDataSource interface.
		  
		  Return 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SectionTitle(table As iOSMobileTable, section As Integer) As String
		  // Part of the iOSMobileTableDataSource interface.
		  
		  Return "Historical Meter Readings"
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private MeterValues() As MeterData
	#tag EndProperty


#tag EndWindowCode

#tag Events edtValue
	#tag Event
		Sub TextChanged()
		  If Me.Text = "" Then
		    btnAdd.Enabled = False
		  Else
		    btnAdd.Enabled = True
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnAdd
	#tag Event
		Sub Pressed()
		  AddToDatabase
		  edtValue.Text = ""
		  LoadData
		  DataTable.ReloadDataSource
		  Me.Enabled = False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
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
		Name="BackButtonCaption"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasNavigationBar"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LargeTitleDisplayMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="MobileScreen.LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabBarVisible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
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
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ScaleFactor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Double"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
