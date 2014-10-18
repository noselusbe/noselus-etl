testing
testQuestionsWithLimitDo
	
	 | limit |
	
	 limit := importer questionsCount.
	 (importer questionsWithLimit: limit) do: [ :aRecord |
		
		"aRecord explore.
		^self"
		
		aRecord
			answer_fr;
			answer_nl;
			delay_date;
			departement_fr;
			departement_nl;
			deposition_date;
			id;
			lachambre_id;
			language;
			publication_date;
			publication_question;
			publication_question_pdf_url;
			publication_reponse;
			publication_reponse_pdf_url;
			question_fr;
			question_nl;
			status_fr;
			status_nl;
			sub_departement_fr;
			sub_departement_nl;
			title_fr;
			title_nl;
			url.
			
			
		
		 ]