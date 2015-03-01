services
generateQuestionsInsertSqlFile
	| outputFile converter importStatement limit importer |
	
	importer := self.
	[ 
	converter := UTF8TextConverter new.
	outputFile := FileSystem disk workingDirectory / 'import_questions.sql'.
	outputFile exists
		ifTrue: [ outputFile delete ].
	outputFile asFileReference
		writeStreamDo: [ :outputStream | 
			limit := self isDebug ifTrue: [ 10 ] ifFalse: [ importer questionsCount ].

			(importer questionsWithLimit: limit)
				do: [ :aRecord | 
					"aRecord
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
						url."	
							"
			id								seq
			session						deposition_date
			year							year(depositionDate) - first: 4
			number							?	id pour le moment
			date_asked					deposition_date
			date_answer					publication_date
			title							title_fr
			question_text				question_fr
			answer_text					answer_fr
			asked_by						'0' cf ???? nouvelle structure
			asked_to						departement_fr
			assembly_ref					lachambre_id
			assembly_id					2
			answered_by					departement_fr			
			"
					importStatement := 'INSERT INTO written_question ( '
						,
							' ''session'',	''year'',	''number'', ''date_asked'', ''date_answer'', ''title'',	''question_text'', ''answer_text'',	''asked_by'',	''asked_to'',	''assembly_ref'',	''assembly_id'',	''answered_by'' ) values (  	''{1}'', 	''{2}'', 	''{3}'', 	''{4}'', 	''{5}'', 	''{6}'',	''{7}'',	''{8}'',	''{9}'',	''{10}'',	''{11}'',	''{12}'', 	''{13}''	);'
						format:
							{(aRecord deposition_date).
							(aRecord deposition_date first: 4).
							(aRecord id).
							(aRecord deposition_date).
							(aRecord publication_date).
							((aRecord title_fr convertFromWithConverter: converter) withoutHtmlTags withEscapedQuotes).
							((aRecord question_fr convertFromWithConverter: converter) withoutHtmlTags withEscapedQuotes).
							((aRecord answer_fr convertFromWithConverter: converter) withoutHtmlTags withEscapedQuotes).
							'0'.
							'0'. "((aRecord departement_fr convertFromWithConverter: converter) withoutHtmlTags withEscapedQuotes)"	"pk de ceci dans une autre table"
							(aRecord lachambre_id withoutHtmlTags withEscapedQuotes).
							'2'.	"Assembly"
							'0' "((aRecord departement_fr convertFromWithConverter: converter) withoutHtmlTags withEscapedQuotes)"}.
					outputStream
						<< importStatement;
						lf.
						"importer dbConnection execute: importStatement." ] ] ]
		ensure: [ 
			importer clearDbConnection.
			importer closeSqlite  ]