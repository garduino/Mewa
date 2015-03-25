configuration
addRequiredRule
	self
		addValidationRule: [ :value | (value isNil or: [
				value first isEmptyOrNil
				| value second isEmptyOrNil
				| value third isEmptyOrNil ]) not ]
		errorString: 'required'