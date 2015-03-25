private
representsEmptyTime: anArray
	^anArray isNil
		or: [
			anArray first isEmptyOrNil
				and: [ anArray second isEmptyOrNil ] ]
			