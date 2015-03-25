caching
cache
	^super cache isNil
		ifTrue: [ String new ]
		ifFalse: [ super cache ]