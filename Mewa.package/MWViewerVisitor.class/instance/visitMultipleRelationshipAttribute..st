visiting
visitMultipleRelationshipAttribute: aRelationshipAttribute
	| control |
	control := [ :html |
		aRelationshipAttribute value
			do: [ :each |
				self renderRelationshipItem: each of: aRelationshipAttribute on: html ]
			separatedBy: [ html break ] ].

	self
		renderLabel: aRelationshipAttribute label
		control: control
	