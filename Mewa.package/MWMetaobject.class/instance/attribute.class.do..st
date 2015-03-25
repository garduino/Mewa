convenience
attribute: aSymbol class: aAttributeClass do: aBlock
	| attribute |
	attribute := aAttributeClass for: aSymbol.
	aBlock value: attribute.
	self addAttribute: attribute