convenience
attribute: aSymbol class: aAttributeClass do: aBlock
	| attribute |
	attribute _ aAttributeClass for: aSymbol.
	aBlock value: attribute.
	self addAttribute: attribute