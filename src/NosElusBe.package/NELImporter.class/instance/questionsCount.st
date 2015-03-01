services
questionsCount
	^(self sqliteDb executeQuery: 'SELECT COUNT(*) as questionsCount FROM writtenquestion') first at: #questionsCount
	

