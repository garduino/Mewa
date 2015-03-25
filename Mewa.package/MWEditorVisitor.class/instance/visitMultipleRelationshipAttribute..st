visiting
visitMultipleRelationshipAttribute: aRelationshipAttribute
	| items |
	aRelationshipAttribute isReadOnly ifFalse: [
		self
			renderLabel: aRelationshipAttribute label
			control: [ :html |
				items _ aRelationshipAttribute items.
				items size > self maxMultiRelationshipListSizeForRadioButtons
					ifTrue: [
						html
							multipleSelectFromList: items
							selected: aRelationshipAttribute cache
							callback: [:list |
								(aRelationshipAttribute cache: list) ]
							labels: aRelationshipAttribute itemFormatBlock ]
					ifFalse: [
						items do: [ :each |
							html cssClass: aRelationshipAttribute formCssClass.
							html
								checkboxWithValue: (aRelationshipAttribute cache includes: each)
								callback: [ :selected |
									selected
										ifTrue: [ aRelationshipAttribute addToCache: each ]
										ifFalse: [ aRelationshipAttribute removeFromCache: each ] ].
						html
							render: (aRelationshipAttribute itemFormatBlock value: each);
							break ] ] ] ]