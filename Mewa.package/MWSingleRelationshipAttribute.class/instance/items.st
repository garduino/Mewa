accessing
items
	| items |
	items _ super items.
	^self hasNilItem
		ifTrue: [ items asOrderedCollection
			addFirst: nil;
			yourself ]
		ifFalse: [ items ]