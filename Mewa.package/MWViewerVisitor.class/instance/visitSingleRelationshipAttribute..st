visiting
visitSingleRelationshipAttribute: aRelationshipAttribute
	self
		renderLabel: aRelationshipAttribute label
		control: [ :html |
			self
				renderRelationshipItem: aRelationshipAttribute value
				of: aRelationshipAttribute
				on: html ]