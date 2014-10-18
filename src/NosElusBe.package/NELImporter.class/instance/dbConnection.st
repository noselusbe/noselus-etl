accessing
dbConnection
	pgDb isNil
		ifTrue: [pgDb := PGConnection new.
			pgDb connectionArgs: self dbConnectionArgs.
			pgDb trace: 3.
			pgDb startup].
	^ pgDb