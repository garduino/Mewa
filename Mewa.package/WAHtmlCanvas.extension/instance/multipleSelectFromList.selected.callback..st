*Mewa
multipleSelectFromList: list selected: aCollection callback: aBlock
	self
		multipleSelectFromList: list
		selected: aCollection
		callback: aBlock
		labels: [ :object | object asString ]