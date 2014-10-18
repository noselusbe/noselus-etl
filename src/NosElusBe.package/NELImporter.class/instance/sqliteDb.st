accessing
sqliteDb

	^ db ifNil: [ 
		db := SQLiteConnection fileNamed: (FileSystem disk workingDirectory / 'datasources' / 'question.db') fullName.
		]

