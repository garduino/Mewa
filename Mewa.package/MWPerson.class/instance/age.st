accessing
age
	^self birthday isNil
		ifFalse: [ (Date today subtractDate: self birthday) // 365 ]
		ifTrue: [ String new ]