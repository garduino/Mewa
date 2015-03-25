validation
addRequiredRule
	self
		addValidationRule: [ :value | value isEmpty not ]
		errorString: 'required'