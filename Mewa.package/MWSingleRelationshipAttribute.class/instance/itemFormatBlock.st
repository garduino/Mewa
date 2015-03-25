accessing
itemFormatBlock
	^self hasNilItem
		ifTrue: [
			[ :item | item notNil
				ifTrue: [ itemFormatBlock value: item ]
				ifFalse: [ nilItemString ] ] ]
		ifFalse: [ itemFormatBlock ]