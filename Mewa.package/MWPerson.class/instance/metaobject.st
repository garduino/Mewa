accessing
metaobject
	| metaobject |
	metaobject := MWMetaobject for: self.

	metaobject textAttribute: #firstname do: [ :attribute | 
		attribute
			label: 'Name';
			maxLength: 30;
			addRequiredRule ].

	metaobject dateAttribute: #birthday do: [ :attribute | 
		attribute
			label: 'Birthday';
			addRequiredRule ].

	metaobject textAttribute: #age do: [ :attribute | 
		attribute
			label: 'Age';
			readOnly ].

	metaobject booleanAttribute: #male do: [ :attribute | 
		attribute
			label: 'Sex';
			trueItemString: 'male' falseItemString: 'female' ].

	metaobject singleRelationshipAttribute: #father do: [ :attribute | 
		attribute
			label: 'Father';
			relationshipTo: [ WACurrentSession value domainmodel malePersons ]
				formatWith: [ :each | each firstname , ' (' , each sex , ')'];
			nilItemString: 'unknown' ].

	metaobject singleRelationshipAttribute: #mother do: [ :attribute | 
		attribute
			label: 'Mother';
			relationshipTo: [ WACurrentSession value domainmodel femalePersons ]
				formatWith: [ :each | each firstname , ' (' , each sex , ')' ];
			nilItemString: 'unknown' ].

	metaobject multipleRelationshipAttribute: #interests do: [ :attribute | 
		attribute
			label: 'Interests';
			relationshipTo: [ self class interests ] formatWith: [ :value | value , '!' ];
			addValidationRule: [ :collection | collection size > 1 ]
				errorString: 'Select at least two interest items' ].

	metaobject multipleAttribute: #phoneNumbers do: [ :attribute | 
		attribute
			label: 'Phone Numbers';
			baseClass: MWPhoneNumber
				formatBlock: [ :item | item type , ': ' , item number] ].
	^metaobject