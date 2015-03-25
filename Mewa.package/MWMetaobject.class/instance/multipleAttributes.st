accessing
multipleAttributes
	^self attributes select: [ :each | each isMultipleAttribute ]