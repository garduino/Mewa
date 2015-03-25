initialization
initializeSubForms
	multipleAttributeEditors := Dictionary new.
	self metaobject multipleAttributes do: [ :each |
		multipleAttributeEditors at: each put: (MWMultipleAttributeContainer for: each) ]