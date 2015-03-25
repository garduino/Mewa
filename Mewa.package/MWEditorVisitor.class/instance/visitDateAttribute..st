visiting
visitDateAttribute: aDateAttribute
	| fieldValues |
	aDateAttribute isReadOnly ifFalse: [
		self
			renderLabel: aDateAttribute label
			control: [ :html |
				fieldValues _ aDateAttribute cache.
				html
					attributeAt: #size put: 2; attributeAt: #maxlength put: 2;
					textInputWithValue: fieldValues first asString
					callback: [ :day | fieldValues at: 1 put: day ].
				html
					attributeAt: #size put: 2; attributeAt: #maxlength put: 2;
					textInputWithValue: fieldValues second asString
					callback: [ :month | fieldValues at: 2 put: month ].
				html
					attributeAt: #size put: 4; attributeAt: #maxlength put: 4;
					textInputWithValue: fieldValues third asString
					callback: [ :year |
						fieldValues at: 3 put: year.
						aDateAttribute cache: fieldValues ].
				html
					submitButtonWithAction: [ self callDateSelectorFor: aDateAttribute ]
					text: 'calendar' ] fixTemps ]