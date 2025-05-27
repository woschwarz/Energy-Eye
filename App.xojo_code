#tag Class
Protected Class App
Inherits MobileApplication
	#tag CompatibilityFlags = TargetIOS
	#tag Event
		Sub Opening()
		  imcDB = New SQLiteDatabase
		  imcDB.DatabaseFile = SpecialFolder.Documents.Child("energyeye.sqlite")
		  
		  If Not imcDB.DatabaseFile.Exists Then
		    
		    Try
		      imcDB.CreateDatabase
		      imcDB.ExecuteSQL(kCreateDatabase)
		      imcDB.ExecuteSQL(kSampleData)
		    Catch e As DatabaseException
		      Break
		    End Try
		    
		    
		  End If
		End Sub
	#tag EndEvent


	#tag Note, Name = ReadMe
		Energy Eye - Developed by Wolfgang Schwarz, Germany
		
		A program for recording energy consumption data
		
		Written in Xojo (https://www.xojo.com)
		
		For more information, visit: https://github.com/woschwarz
	#tag EndNote

	#tag Note, Name = ToDo
		- Record several consumption meters
		- Chart optimization
		- Multi-language support
		- Layout optimization (e.g. for iPad)
		
	#tag EndNote


	#tag Property, Flags = &h0
		imcDB As SQLiteDatabase
	#tag EndProperty


	#tag Constant, Name = kCreateDatabase, Type = String, Dynamic = False, Default = \"CREATE TABLE measurements (id INTEGER PRIMARY KEY AUTOINCREMENT\x2C meter_id INTEGER\x2C reading_date TEXT\x2C meter_value REAL);\nCREATE TABLE meters (id INTEGER PRIMARY KEY AUTOINCREMENT\x2C meter_name TEXT\x2C meter_place TEXT\x2C meter_number TEXT\x2C meter_unit TEXT);", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSampleData, Type = String, Dynamic = False, Default = \"INSERT INTO meters (id\x2C meter_name\x2C meter_place\x2C meter_number\x2C meter_unit) VALUES (1\x2C \"Electricity\"\x2C \"Sweet Home\"\x2C \"A-1234-567\"\x2C \"kWh\");", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
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
			Name="_LaunchOptionsHandled"
			Visible=false
			Group="Behavior"
			InitialValue="False"
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
			Name="NonReleaseVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MajorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IconBadgeNumber"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BugVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
