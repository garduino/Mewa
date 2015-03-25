rendering
renderLabel: aString control: aBlock
	renderer
		tableRowWith: aString
		with: [ aBlock value: renderer ]