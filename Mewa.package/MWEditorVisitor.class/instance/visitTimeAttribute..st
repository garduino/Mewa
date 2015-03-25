visiting
visitTimeAttribute: aTimeAttribute
	| fieldValues |
	aTimeAttribute isReadOnly ifFalse: [
		self
			renderLabel: aTimeAttribute label
			control: [ :html | 
				fieldValues _ aTimeAttribute cache.
				html
					attributeAt: #size put: 2; attributeAt: #maxlength put: 2;
					textInputWithValue: fieldValues first asString
					callback: [ :hour | fieldValues at: 1 put: hour ].
				html render: ' : '.
				html
					attributeAt: #size put: 2; attributeAt: #maxlength put: 2;
					textInputWithValue: fieldValues second asString
					callback: [ :minutes |
						fieldValues at: 2 put: minutes.
						aTimeAttribute cache: fieldValues ] ] fixTemps ]
						