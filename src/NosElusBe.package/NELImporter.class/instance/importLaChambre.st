jobs-import
importLaChambre
	| out |
	out := VTermOutputDriver stdout.
	out green: 'Import La Chambre Job.'; lf.
	self generateQuestionsInsertSqlFile.
	out green: 'Done.'; lf