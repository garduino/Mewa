initialization
initialize
	super initialize.
	self formatWith: [ :item |
		item isNil ifTrue: [ ' - ' ] ifFalse: [ item asString ] ].
	self
		addValidationRule: [ :value |  (self representsEmptyTime: value)
			or: [ [ self createTimeFrom: value. true ] on: Error do: [ :err | false ] ] ]
		errorString: 'not valid'.