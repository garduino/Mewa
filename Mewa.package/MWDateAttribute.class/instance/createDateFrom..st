private
createDateFrom: anArray
	^(self representsEmptyDate: anArray)
		ifFalse: [
			Date
				newDay: anArray first asNumber
				month: anArray second asNumber
				year: anArray third asNumber ]
		ifTrue: [ nil ]