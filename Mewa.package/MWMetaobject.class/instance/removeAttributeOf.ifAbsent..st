accessing-attributes
removeAttributeOf: aSelector ifAbsent: aBlock
	attributes remove: (self attributeOf: aSelector ifAbsent: [ ^aBlock value ])