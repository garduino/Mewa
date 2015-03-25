accessing
domainmodel
	MWModel isNil ifTrue: [ MWModel := MWDomainModel new ].
	^MWModel