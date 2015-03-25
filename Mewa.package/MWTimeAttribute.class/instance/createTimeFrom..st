private
createTimeFrom: anArray
	^(self representsEmptyTime: anArray)
		ifFalse: [ Time fromSeconds: (anArray first * 3600 + (anArray second * 60)) ]
		ifTrue: [ nil ]