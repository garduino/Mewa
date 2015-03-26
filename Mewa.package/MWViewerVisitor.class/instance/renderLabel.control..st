rendering
renderLabel: aString control: aBlock
	renderer
		tableRow: [ aBlock value: renderer ] asString.

"		
		renderer
		tableRowWith: aString
		with: [ aBlock value: renderer ]"