visiting
visitPasswordAttribute: aPasswordAttribute
	aPasswordAttribute isReadOnly ifFalse: [
		self
			renderLabel: aPasswordAttribute label
			control: [ :html | 
				aPasswordAttribute maxLength ifNotNilDo: [ :num |
					html attributes maxlength: num ].
				html cssClass: aPasswordAttribute formCssClass.
				html passwordInputWithCallback: [ :pw1 |
					pw1 isEmptyOrNil ifFalse: [ aPasswordAttribute cache: pw1 ] ] ].
		self
			renderLabel: 'Confirmation'
			control: [ :html | 
				aPasswordAttribute maxLength ifNotNilDo: [ :num |
					html attributes maxlength: num ].
				html cssClass: aPasswordAttribute formCssClass.
				html passwordInputWithCallback: [ :pw2 |
					pw2 isEmptyOrNil ifFalse: [ aPasswordAttribute cacheConfirmation: pw2 ] ] ] ]