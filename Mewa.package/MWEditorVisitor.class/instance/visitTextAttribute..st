visiting
visitTextAttribute: aTextAttribute
	aTextAttribute isReadOnly ifFalse: [
		self
			renderLabel: aTextAttribute label
			control: [ :html | 
				aTextAttribute isMultiLine
					ifFalse: [
						aTextAttribute maxLength ifNotNilDo: [ :num | html attributes maxlength: num ].
						html cssClass: aTextAttribute formCssClass.
						html
							textInputWithValue: (aTextAttribute cache)
							callback: [ :value | aTextAttribute cache: value ]
							maxLength: aTextAttribute maxLength ]
					ifTrue: [ 
						html attributes cols: 80; rows: 10.
						html cssClass: aTextAttribute formCssClass.
						html
							textAreaWithValue: (aTextAttribute cache)
							callback: [ :value | aTextAttribute cache: value ] ] ] ]