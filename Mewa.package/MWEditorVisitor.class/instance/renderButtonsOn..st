rendering
renderButtonsOn: html
	html submitButtonWithAction: [ self save ] text: 'save'.
	html space.
	html submitButtonWithAction: [ self cancel ] text: 'cancel' 