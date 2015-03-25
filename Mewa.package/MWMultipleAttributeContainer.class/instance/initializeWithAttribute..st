initialization
initializeWithAttribute: aMultipleAttribute
	components := OrderedCollection new.
	attribute := aMultipleAttribute.
	aMultipleAttribute cache do: [ :each |
		components add: (self viewerFor: each metaobject) ].
	components add: self createEmptyEditor