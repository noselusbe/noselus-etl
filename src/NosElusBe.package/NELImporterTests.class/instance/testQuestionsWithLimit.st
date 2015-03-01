testing
testQuestionsWithLimit
	
	 self assert: ((importer questionsWithLimit:10) first deposition_date) = '1999-09-08 00:00:00'.