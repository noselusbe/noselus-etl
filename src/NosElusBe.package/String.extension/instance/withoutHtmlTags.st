*noselusbe
withoutHtmlTags
   "strip all tags, replace <br> and <p> with cr"
   | in out tag |
   in := self readStream.
   out := WriteStream on: String new.
   [in atEnd] 
		whileFalse: [
			out nextPutAll: (in upTo: $<).
       	in atEnd ifFalse: [tag := in upTo: $>].
       	(tag = 'br') | (tag = 'p') ifTrue: [ out nextPut: Character lf ]
			].
   ^out contents 