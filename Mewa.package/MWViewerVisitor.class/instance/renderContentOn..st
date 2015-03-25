rendering
renderContentOn: html
	html cssClass: 'TABLE-VIEWER'.
	html table: [ self renderFieldsOn: html ]