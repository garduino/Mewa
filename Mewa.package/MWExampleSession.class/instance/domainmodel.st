accessing
domainmodel
	MWModel isNil ifTrue: [ MWModel _ MWDomainModel new ].
	^MWModel