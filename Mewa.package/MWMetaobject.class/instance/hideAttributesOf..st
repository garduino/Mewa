accessing-attributes
hideAttributesOf: anArray
	anArray do: [ :each |
		self hideAttributeOf: each ]