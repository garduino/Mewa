actions
createEmptyEditor	
	^(MWEditorVisitor model: attribute baseClass new)
		subForm: true;
		onAnswer: [ :value |
			value ifNotNilDo: [ :newBaseObject |
				attribute addToCache: newBaseObject.
				components removeLast.
				components add: (MWViewerVisitor model: newBaseObject).
				components add: self createEmptyEditor ] ];
		yourself