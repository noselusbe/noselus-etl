services
connectToPostgres
	
	[ self clearDbConnection.
	  self dbConnection ] ensure: [  self clearDbConnection ]	
