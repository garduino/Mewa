visiting
visitSingleRelationshipAttribute: aRelationshipAttribute
	aRelationshipAttribute isReadOnly ifFalse: [
		self
			renderLabel: aRelationshipAttribute label
			control: [ :html |
				html cssClass: aRelationshipAttribute formCssClass.
				html
					selectFromList: aRelationshipAttribute items
					selected: aRelationshipAttribute cache
					callback: [ :value | aRelationshipAttribute cache: value ]
					labels: aRelationshipAttribute itemFormatBlock ] ]