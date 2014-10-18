testing
testPostgresAccesToTables
	
	| pgResult  count |
	pgResult := importer dbConnection execute: 'SELECT COUNT(*) as writtenQuestionsCount FROM written_question'.
	count := pgResult resultSets first dataRows first atName: #writtenquestionscount.
	self assert: count = 529