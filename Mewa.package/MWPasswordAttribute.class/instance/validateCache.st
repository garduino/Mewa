as yet unclassified
validateCache
	self cache = self cacheConfirmation ifFalse: [
		^'Confirmation of password is not correct.' ].
	^super validateCache