services
questionsWithLimit: aRowCount do: aBlock
	"Performs aBloc for each record of the first aRowCount rows"

	^self sqliteDb execute: 'SELECT * FROM writtenquestion LIMIT ?' args: {aRowCount} do: aBlock.
