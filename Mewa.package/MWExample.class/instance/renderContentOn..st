rendering
renderContentOn: html
	html h1: self class.
	html cssClass: 'TABLE-LIST'.
	html table: [
		batcher batch do: [ :viewer | html tableRow: [
			html render: viewer.
			html tableData: [
				html
					anchorWithAction: [ self edit: viewer metaobject baseobject ]
					text: 'edit'; space;
					anchorWithAction: [ self delete: viewer metaobject baseobject ]
					text: 'delete' ] ] ].
		html attributeAt: #align put: #center.
		html tableRowWith: batcher span: 8 ].
		html break.
		html anchorWithAction: [ self addNew ] text: 'create new person'
