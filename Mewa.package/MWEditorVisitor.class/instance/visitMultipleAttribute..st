visiting
visitMultipleAttribute: aMultipleAttribute
	aMultipleAttribute isReadOnly ifFalse: [
		self
			renderLabel: aMultipleAttribute label
			control: (self multipleAttributeEditors at: aMultipleAttribute) ]