actions
addNew
	| newPerson |
	newPerson := self call: (MWEditorVisitor model: MWPerson new).
	newPerson ifNotNil: [
		self session domainmodel addPerson: newPerson.
		self initialize]