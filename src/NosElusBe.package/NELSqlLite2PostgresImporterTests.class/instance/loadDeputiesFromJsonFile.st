testing
loadDeputiesFromJsonFile

	| fileRef jsonContents jsonDeputy |
	fileRef := FileSystem disk workingDirectory / 'datasources' / 'deputy'.
	jsonContents := fileRef readStream upToEnd.

	jsonContents size.

	jsonContents first: 100.

	jsonDeputy := Json readFrom: jsonContents readStream.

	jsonDeputy value size.

	jsonDeputy first cv fr.

	(jsonDeputy 
		select: [ :jsonobject | jsonobject sex isNil]
		thenCollect: [ :each | each full_name ]) 
			asSet asSortedCollection
			
	