accessing-attributes
attributeOf: aSelector ifAbsent: aBlock
	^attributes
		detect: [ :each | each selector = aSelector ]
		ifNone: aBlock