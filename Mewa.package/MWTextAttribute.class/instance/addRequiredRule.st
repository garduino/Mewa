validation
addRequiredRule
	self
		addValidationRule: [ :value | value isEmptyOrNil not  ]
		errorString: 'required'