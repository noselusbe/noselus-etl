testing
testQuestionsWithLimitShowRecordSample
	
	 | limit |
	
	 limit := importer questionsCount.
	 (importer questionsWithLimit: limit) do: [ :aRecord |
		
		"aRecord explore."
		^self

		 ]