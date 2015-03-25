accessing-attributes
attributeOf: aSelector
	^self
		attributeOf: aSelector
		ifAbsent: [ self error: 'attribute not found' ]