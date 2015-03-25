initialization
initializeWith: aMetaobject
	super initializeWith: aMetaobject.
	self metaobject refreshCache.
	self subForm: false.
	self initializeSubForms