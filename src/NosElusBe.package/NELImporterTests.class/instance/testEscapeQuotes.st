testing
testEscapeQuotes
	| in |
	in := 'il est l''heure'.
	self assert: in withEscapedQuotes = 'il est l''''heure'.
