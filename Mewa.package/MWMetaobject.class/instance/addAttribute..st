accessing-attributes
addAttribute: anAttribute
	anAttribute metaObject: self.
	self removeAttributeOf: anAttribute selector ifAbsent: [ ].
	attributes add: anAttribute