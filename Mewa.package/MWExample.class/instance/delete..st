actions
delete: aPerson
	(self confirm: 'Do you really want to delete ' , aPerson asString , '?')
		ifTrue: [ 
			self session domainmodel removePerson: aPerson.
			self initialize ]