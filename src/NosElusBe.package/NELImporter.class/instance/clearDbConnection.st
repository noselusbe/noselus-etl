actions
clearDbConnection
	pgDb notNil
		ifTrue: [pgDb terminate.
			pgDb := nil]