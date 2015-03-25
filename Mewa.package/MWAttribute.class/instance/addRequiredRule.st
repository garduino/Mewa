validation
addRequiredRule
	self
		addValidationRule: [ :value | value notNil ]
		errorString: 'required'