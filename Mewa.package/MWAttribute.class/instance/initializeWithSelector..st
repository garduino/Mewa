initialization
initializeWithSelector: aSymbol
	self selector: aSymbol.
	validationRules := OrderedCollection new.
	self label: self selector asString.
	readOnly := false.
	hidden := false.
	self formatWith: [ :item | item ifNotNil: [ item asString ] ].
	formCssClass := 'FORM-' , self selector asUppercase .
	self initialize.