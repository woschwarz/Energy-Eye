#tag Class
Protected Class App
Inherits MobileApplication
	#tag CompatibilityFlags = TargetIOS
	#tag Event
		Sub Opening()
		  mdb = New SQLiteDatabase
		  mdb.DatabaseFile = SpecialFolder.Documents.Child("energyeye.sqlite")
		  
		  If Not mdb.DatabaseFile.Exists Then
		    
		    Try
		      mdb.CreateDatabase
		      mdb.ExecuteSQL(kCreateDatabase)
		      mdb.ExecuteSQL(kSampleData)
		    Catch e As DatabaseException
		      Break
		    End Try
		    
		    
		  End If
		End Sub
	#tag EndEvent


	#tag Note, Name = ReadMe
		Energy Eye by Wolfgang Schwarz, Donauwoerth, Germany 
		
		A program for recording energy consumption data
		
		Programmed with Xojo (https://www.xojo.com)
		
		
	#tag EndNote

	#tag Note, Name = ToDo
		- Record several consumption meters
		- Chart optimization
		- Multi-language support
		- Layout optimization (e.g. for iPad)
		
	#tag EndNote


	#tag Property, Flags = &h0
		mDB As SQLiteDatabase
	#tag EndProperty


	#tag Constant, Name = kCreateDatabase, Type = String, Dynamic = False, Default = \"CREATE TABLE measurements (id INTEGER PRIMARY KEY AUTOINCREMENT\x2C mDate TEXT\x2C mValue REAL);\nCREATE TABLE settings (id INTEGER PRIMARY KEY AUTOINCREMENT\x2C sBuilding TEXT\x2C sMeterName TEXT\x2C sMeterUnit TEXT\x2C sMeterID TEXT);", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSampleData, Type = String, Dynamic = False, Default = \"INSERT INTO settings (id\x2C sBuilding\x2C sMeterName\x2C sMeterUnit) VALUES (1\x2C \"Sweet Home\"\x2C \"Electricity\"\x2C \"kWh\");", Scope = Public
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
