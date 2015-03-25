rendering
isViewer: aComponent
	aComponent visiblePresentersDo: [ :each |
		each isDecoration ifFalse: [ ^each isViewer ] ].
	self error: 'there should be at least one visible presenter for aComponent'