initialization
initialize
	super initialize.
	self formatWith: [ :item |
		item isNil ifTrue: [ ' - ' ] ifFalse: [ item asString ] ].
	self
		addValidationRule: [ :value |  (self representsEmptyDate: value)
			or: [ [ self createDateFrom: value. true ] on: Error do: [ :err | false ] ] ]
		errorString: 'not valid'.