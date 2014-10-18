services
questionsWithLimit: aRowCount

	 | result |
result := self sqliteDb execute: 'SELECT * FROM writtenquestion LIMIT ?' args: {aRowCount}.
	^result.
