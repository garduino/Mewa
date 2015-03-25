visitor
accept: aVisitor
	(self attributes reject: [ :each | each isHidden ])
		do: [ :each | each accept: aVisitor ]