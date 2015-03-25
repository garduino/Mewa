actions
addNew
	| newPerson |
	newPerson _ self call: (MWEditorVisitor model: MWPerson new).
	newPerson ifNotNil: [
		self session domainmodel addPerson: newPerson.
		self initialize]