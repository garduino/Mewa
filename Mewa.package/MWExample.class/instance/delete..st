actions
delete: aPerson

"	(self confirm: 'Do you really want to delete ' , aPerson asString , '?')
		ifTrue: [ 
			self session domainmodel removePerson: aPerson.
			self initialize ]
	"	
	
	" Probé inform según http://book.seaside.st/book/components/calling/show-answer "
	
	"
		(self inform: 'Do you really want to delete ' , aPerson asString , '?')
		ifTrue: [ 
			self session domainmodel removePerson: aPerson.
			self initialize ]
		"