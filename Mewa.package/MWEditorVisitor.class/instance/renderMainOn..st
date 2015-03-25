rendering
renderMainOn: html
	html cssClass: 'TABLE-EDITOR'.
	html table: [
		self renderValidationErrorsOn: html.
		self renderFieldsOn: html.
		html tableRowWith: [ self renderButtonsOn: html ] span: 2 ]