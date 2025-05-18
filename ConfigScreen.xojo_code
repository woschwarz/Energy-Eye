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
   Title           =   "Settings"
   Top             =   0
   Begin MobileLabel lblBuilding
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblBuilding, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblBuilding, 1, <Parent>, 1, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblBuilding, 3, <Parent>, 3, False, +1.00, 4, 1, 120, , True
      AutoLayout      =   lblBuilding, 7, , 0, False, +1.00, 4, 1, 100, , True
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
      Text            =   "Building"
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
      AutoLayout      =   lblMeterName, 1, lblBuilding, 1, False, +1.00, 4, 1, 0, , True
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
      Text            =   "Meter Name"
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   177
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileTextField edtBuilding
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   edtBuilding, 7, , 0, False, +1.00, 4, 1, 193, , True
      AutoLayout      =   edtBuilding, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   edtBuilding, 11, lblBuilding, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   edtBuilding, 8, , 0, False, +1.00, 4, 1, 34, , True
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
      AutoLayout      =   edtMeterName, 1, edtBuilding, 1, False, +1.00, 4, 1, 0, , True
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
      Text            =   "Meter Unit"
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
      AutoLayout      =   lblCopyright, 1, lblMeterUnit, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblCopyright, 7, , 0, False, +1.00, 4, 1, 308, , True
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
      Text            =   "Energy Eye by Wolfgang Schwarz"
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   749
      Visible         =   True
      Width           =   308
      _ClosingFired   =   False
   End
   Begin MobileLabel lblMadeWithXojo
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      AutoLayout      =   lblMadeWithXojo, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, -*kStdControlGapV, , True
      AutoLayout      =   lblMadeWithXojo, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblMadeWithXojo, 1, lblCopyright, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblMadeWithXojo, 7, , 0, False, +1.00, 4, 1, 308, , True
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
      Text            =   "Written with Xojo"
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   774
      Visible         =   True
      Width           =   308
      _ClosingFired   =   False
   End
   Begin MobileLabel lblMeterID
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblMeterID, 1, lblMadewithXojo, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblMeterID, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   lblMeterID, 3, <Parent>, 3, False, +1.00, 4, 1, 296, , True
      AutoLayout      =   lblMeterID, 8, , 0, False, +1.00, 4, 1, 30, , True
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
      Text            =   "Meter ID"
      TextColor       =   LabelColor
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   296
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileTextField edtMeterID
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   edtMeterID, 1, edtMeterUnit, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   edtMeterID, 7, , 0, False, +1.00, 4, 1, 193, , True
      AutoLayout      =   edtMeterID, 3, lblMeterID, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   edtMeterID, 8, , 0, False, +1.00, 4, 1, 34, , True
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
		  button = New MobileToolbarButton(MobileToolbarButton.Types.Done, "Edit")
		  RightNavigationToolbar.AddButton(button)
		  
		  LoadData
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarButtonPressed(button As MobileToolbarButton)
		  Select Case button.Caption
		    
		  Case "Edit"
		    edtBuilding.Enabled = True
		    edtMeterName.Enabled = True
		    edtMeterUnit.Enabled = True
		    edtMeterID.Enabled = True
		    
		    button.Caption = "Done"
		    
		  Case "Done"
		    edtBuilding.Enabled = False
		    edtMeterName.Enabled = False
		    edtMeterUnit.Enabled = False
		    edtMeterID.Enabled = False
		    
		    SaveData
		    
		    button.Caption = "Edit"
		    
		  End Select
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub LoadData()
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
		          edtMeterUnit.Text = rs.Column("sMeterUnit").StringValue
		          edtMeterID.Text = rs.Column("sMeterID").StringValue
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
		    rs = App.mdb.SelectSQL("SELECT * FROM settings WHERE ID = 1;")
		    rs.EditRow
		    rs.Column("sBuilding").StringValue = edtBuilding.Text
		    rs.Column("sMeterName").StringValue = edtMeterName.Text
		    rs.Column("sMeterUnit").StringValue = edtMeterUnit.Text
		    rs.Column("sMeterID").StringValue = edtMeterID.Text
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
