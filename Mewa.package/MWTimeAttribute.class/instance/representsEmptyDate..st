private
representsEmptyDate: anArray
	^anArray isNil
		or: [
			anArray first isEmptyOrNil
				and: [ anArray second isEmptyOrNil ]
				and: [ anArray third isEmptyOrNil ] ]
			