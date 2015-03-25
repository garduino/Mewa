convenience
passwordAttribute: aSymbol do: aBlock
	self attribute: aSymbol class: MWPasswordAttribute do: aBlock