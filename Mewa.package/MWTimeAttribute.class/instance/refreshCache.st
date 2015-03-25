caching
refreshCache
	" a time is represented in cache as an array to make it possible
	to cache invalid date for editors "

	cache _ self value isNil
		ifFalse: [
			Array
				with: self value hours
				with: self value minutes ]
		ifTrue: [ Array new: 2 withAll: String new ].
	^cache