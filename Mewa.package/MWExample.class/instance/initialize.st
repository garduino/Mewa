initialization
initialize
	| views |
	super initialize.
	views := self session domainmodel persons asOrderedCollection collect: [ :each |
		MWListItemViewer metaobject: (
			each metaobject
				hideAttributeOf: #interests;
				hideAttributeOf: #phoneNumbers;
				yourself) ].

	batcher := WABatchedList new
		items: views;
		batchSize: 5;
		yourself.
	
	children := OrderedCollection new.
	views do: [ :each | children add: each ].
     children add: batcher