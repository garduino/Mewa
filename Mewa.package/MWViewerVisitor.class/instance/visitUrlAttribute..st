visiting
visitUrlAttribute: aUrlAttribute
	self
		renderLabel: aUrlAttribute label
		control: [ :html | html
			anchorWithUrl: 'http://' , aUrlAttribute value
			do: aUrlAttribute formatedValue ]