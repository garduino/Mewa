rendering
renderContentOn: html
	components do: [ :each |
		(self isViewer: each)
			ifTrue: [
				html render: each.
				html submitButtonWithAction: [ self switchToEditMode: each ] text: 'edit'.
				html space.
				html submitButtonWithAction: [ self delete: each ] text: 'delete'.
				html break; break ]
			ifFalse: [
				html render: each.
				html break; break ] ] fixTemps