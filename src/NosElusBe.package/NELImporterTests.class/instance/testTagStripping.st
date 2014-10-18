testing
testTagStripping

	| source cleaned |

	source := '<td>blah<p>blih</p></td>'.
	
	cleaned := source withoutHtmlTags.
	
	self assert: cleaned = ('blah', Character lf asString , 'blih').