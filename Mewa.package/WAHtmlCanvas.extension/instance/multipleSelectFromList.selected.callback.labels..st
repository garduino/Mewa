*Mewa
multipleSelectFromList: list selected: aCollection callback: aBlock labels: labelsBlock
	| add  remove size |
"	add _ ValueHolder new.
	remove _ ValueHolder new.
	size _ (aCollection size max: (list size - aCollection size)) min: self maxSizeOfSelectBox.
	self layoutTable: [
		self tableRow: [
			self tableData: [
				self attributeAt: #size put: size.
				self
					selectFromList: aCollection
					selected: nil
					callback: [ :value | remove contents: value ]
					labels: labelsBlock].
			self tableData: [
				self submitButtonWithAction: [
					add contents ifNotNilDo: [ :item |
						aBlock value: (aCollection copyWith: item) ] ] text: ' < '.
				self break.
				self submitButtonWithAction: [
					remove contents ifNotNilDo: [ :item |
						aBlock value: (aCollection copyWithout: item)]] text: ' > ' ].
			self tableData: [
				self attributeAt: #size put: size.
				self
					selectFromList: (list copyWithoutAll: aCollection)
					selected: nil
					callback: [ :value | add contents: value ]
					labels: labelsBlock ] ] ]"