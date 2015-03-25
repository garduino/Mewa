accessing
metaobject
	| metaobject |
	metaobject _ MWMetaobject for: self.

	metaobject textAttribute: #type do: [ :attribute |
		attribute
			label: 'Type';
			maxLength: 10;
			addRequiredRule ].

	metaobject textAttribute: #number do: [ :attribute |
		attribute
			label: 'Number';
			maxLength: 20;
			addRequiredRule ].

	^metaobject