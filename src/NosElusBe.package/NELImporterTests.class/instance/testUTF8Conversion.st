testing
testUTF8Conversion

	| string converter decodedString |
	string := 'La problÃ©matique Ã©voquÃ©e relÃ¨ve des compÃ©tences du secrÃ©taire d''Ãtat Ã  l''IntÃ©gration sociale (question nÂ° 17 du 23 septembre 2010).'.
	converter := UTF8TextConverter new.
	decodedString := string convertFromWithConverter: converter.
	self assert: decodedString = 'La problématique évoquée relève des compétences du secrétaire d''État à l''Intégration sociale (question n° 17 du 23 septembre 2010).'