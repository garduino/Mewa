configuration
trueItemString: aString falseItemString: anotherString
	self
		relationshipTo: [ OrderedCollection with: true with: false ]
		formatWith: [ :item | item
			ifTrue: [ aString ]
			ifFalse: [ anotherString ] ]