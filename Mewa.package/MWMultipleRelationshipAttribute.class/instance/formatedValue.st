accessing
formatedValue
	^self value collect: [ :each |
		self itemFormatBlock value: each ]