rendering
renderContentOn: html
	

"	| attribute itemSelectedToEdit editForm |
	attribute cache do: [ :each | 
		(editors includesKey: each)
			ifFalse: [ self renderViewerFor: each ]
			ifTrue: [
				editForm _ (MWEditorVisitor model: each) subForm: true.
				editForm onAnswer: [ :value | itemSelectedToEdit _ nil ].
				html render: editForm ] ] fixTemps.
			html break.
			itemSelectedToEdit isNil ifTrue: [
				form _ (MWEditorVisitor model: attribute baseClass new) subForm: true.
				form onAnswer: [ :value |
					value ifNotNilDo: [ :newBaseObject | attribute addToCache: newBaseObject ] ].
					html render: form ] ] ]"