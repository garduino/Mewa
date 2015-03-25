initialization
initializeWithAttribute: aMultipleAttribute
	components _ OrderedCollection new.
	attribute _ aMultipleAttribute.
	aMultipleAttribute cache do: [ :each |
		components add: (self viewerFor: each metaobject) ].
	components add: self createEmptyEditor