visiting
renderRelationshipItem: anObject of: aRelationshipAttribute on: html
	| linkAction text |
	text _ aRelationshipAttribute itemFormatBlock value: anObject.
	(linkAction _ aRelationshipAttribute linkAction) isNil
		ifFalse: [
			html
				anchorWithAction: [
					self targetSend: (Message
						selector: linkAction
						argument: anObject) ]
				text: text ]
		ifTrue: [ html render: text ] 