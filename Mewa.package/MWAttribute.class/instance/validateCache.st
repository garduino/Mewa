validation
validateCache
	" validate cache and return nil if all rules hold or anErrorString of first broken rule "

	validationRules do: [ :association |
		(association key value: self cache)
			ifFalse: [ ^association value ] ].
	^nil