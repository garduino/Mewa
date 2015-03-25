caching
commitCache
	self isReadOnly ifFalse: [
		self metaObject baseobject
			perform: (self selector,':') asSymbol
			with: self cache ]