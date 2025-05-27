#tag MobileScreen
Begin MobileScreen ConfigScreen
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 7
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   ScaleFactor     =   0.0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c000000
   Title           =   "#Strings.Settings"
   Top             =   0
   Begin MobileLabel lblMeterPlace
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblMeterPlace, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblMeterPlace, 1, <Parent>, 1, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblMeterPlace, 3, <Parent>, 3, False, +1.00, 4, 1, 120, , True
      AutoLayout      =   lblMeterPlace, 7, , 0, False, +1.00, 4, 1, 100, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   30
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "#Strings.MeterPlace"
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   120
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileLabel lblMeterName
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblMeterName, 1, lblMeterPlace, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblMeterName, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   lblMeterName, 3, <Parent>, 3, False, +1.00, 4, 1, 177, , True
      AutoLayout      =   lblMeterName, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   30
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "#Strings.MeterName"
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   177
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileTextField edtMeterPlace
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   edtMeterPlace, 7, , 0, False, +1.00, 4, 1, 193, , True
      AutoLayout      =   edtMeterPlace, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   edtMeterPlace, 11, lblMeterPlace, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   edtMeterPlace, 8, , 0, False, +1.00, 4, 1, 34, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   False
      Height          =   34
      Hint            =   ""
      InputType       =   0
      Left            =   162
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   118
      Visible         =   True
      Width           =   193
      _ClosingFired   =   False
   End
   Begin MobileTextField edtMeterName
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   edtMeterName, 1, edtMeterPlace, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   edtMeterName, 7, , 0, False, +1.00, 4, 1, 193, , True
      AutoLayout      =   edtMeterName, 11, lblMeterName, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   edtMeterName, 8, , 0, False, +1.00, 4, 1, 34, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   False
      Height          =   34
      Hint            =   ""
      InputType       =   0
      Left            =   162
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   175
      Visible         =   True
      Width           =   193
      _ClosingFired   =   False
   End
   Begin MobileTextField edtMeterUnit
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   edtMeterUnit, 1, edtMeterName, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   edtMeterUnit, 7, , 0, False, +1.00, 4, 1, 193, , True
      AutoLayout      =   edtMeterUnit, 3, <Parent>, 3, False, +1.00, 4, 1, 237, , True
      AutoLayout      =   edtMeterUnit, 8, , 0, False, +1.00, 4, 1, 34, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   False
      Height          =   34
      Hint            =   ""
      InputType       =   0
      Left            =   162
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   237
      Visible         =   True
      Width           =   193
      _ClosingFired   =   False
   End
   Begin MobileLabel lblMeterUnit
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblMeterUnit, 1, lblMeterName, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblMeterUnit, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   lblMeterUnit, 11, edtMeterUnit, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblMeterUnit, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   30
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "#Strings.MeterUnit"
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   239
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileLabel lblCopyright
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      AutoLayout      =   lblCopyright, 4, lblMadewithXojo, 3, False, +1.00, 4, 1, 5, , True
      AutoLayout      =   lblCopyright, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblCopyright, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   lblCopyright, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
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
      Text            =   "Energy Eye by Wolfgang Schwarz"
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   749
      Visible         =   True
      Width           =   335
      _ClosingFired   =   False
   End
   Begin MobileLabel lblMadeWithXojo
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      AutoLayout      =   lblMadeWithXojo, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, -*kStdControlGapV, , True
      AutoLayout      =   lblMadeWithXojo, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblMadeWithXojo, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   lblMadeWithXojo, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
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
      Text            =   "Written with Xojo"
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   774
      Visible         =   True
      Width           =   335
      _ClosingFired   =   False
   End
   Begin MobileLabel lblMeterNumber
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblMeterNumber, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblMeterNumber, 1, lblMeterUnit, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblMeterNumber, 3, <Parent>, 3, False, +1.00, 4, 1, 296, , True
      AutoLayout      =   lblMeterNumber, 7, , 0, False, +1.00, 4, 1, 100, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   30
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "#Strings.MeterNumber"
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   296
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileTextField edtMeterNumber
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   edtMeterNumber, 1, edtMeterUnit, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   edtMeterNumber, 7, , 0, False, +1.00, 4, 1, 193, , True
      AutoLayout      =   edtMeterNumber, 3, lblMeterNumber, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   edtMeterNumber, 8, , 0, False, +1.00, 4, 1, 34, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   False
      Height          =   34
      Hint            =   ""
      InputType       =   0
      Left            =   162
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   296
      Visible         =   True
      Width           =   193
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  Var button As MobileToolbarButton
		  
		  // Set up title bar buttons
		  button = New MobileToolbarButton(MobileToolbarButton.Types.Done, Strings.Edit)
		  RightNavigationToolbar.AddButton(button)
		  
		  LoadData
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarButtonPressed(button As MobileToolbarButton)
		  Select Case button.Caption
		    
		  Case Strings.Edit
		    edtMeterPlace.Enabled = True
		    edtMeterName.Enabled = True
		    edtMeterUnit.Enabled = True
		    edtMeterNumber.Enabled = True
		    
		    button.Caption = Strings.Done
		    
		  Case Strings.Done
		    edtMeterPlace.Enabled = False
		    edtMeterName.Enabled = False
		    edtMeterUnit.Enabled = False
		    edtMeterNumber.Enabled = False
		    
		    SaveData
		    
		    button.Caption = Strings.Edit
		    
		  End Select
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub LoadData()
		  If App.imcDB.Connect Then
		    Var sql As String = "SELECT * FROM meters WHERE id = 1;"
		    Var rs As RowSet = App.imcDB.SelectSQL(sql)
		    
		    Try
		      rs = App.imcDB.SelectSQL(sql)
		    Catch e As DatabaseException
		      Break
		    End Try
		    
		    If rs <> Nil Then 
		      Try
		        While Not rs.AfterLastRow
		          edtMeterPlace.Text = rs.Column("meter_place").StringValue
		          edtMeterName.Text = rs.Column("meter_name").StringValue
		          edtMeterUnit.Text = rs.Column("meter_unit").StringValue
		          edtMeterNumber.Text = rs.Column("meter_number").StringValue
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
		Private Sub SaveData()
		  Var rs As RowSet
		  
		  Try
		    rs = App.imcDB.SelectSQL("SELECT * FROM meters WHERE id = 1;")
		    rs.EditRow
		    rs.Column("meter_place").StringValue = edtMeterPlace.Text
		    rs.Column("meter_name").StringValue = edtMeterName.Text
		    rs.Column("meter_unit").StringValue = edtMeterUnit.Text
		    rs.Column("meter_number").StringValue = edtMeterNumber.Text
		    rs.SaveRow
		    rs.Close
		  Catch error As DatabaseException
		    MessageBox(error.Message)
		  End Try
		  
		  
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

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
