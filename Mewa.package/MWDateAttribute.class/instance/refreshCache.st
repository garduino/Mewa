caching
refreshCache
	" a date is represented as an array in cache to make it possible
	to cache invalid date data for editors "

	cache _ self value isNil
		ifFalse: [
			Array
				with: self value dayOfMonth
				with: self value monthIndex
				with: self value year ]
		ifTrue: [ Array new: 3 withAll: String new ].
	^cache