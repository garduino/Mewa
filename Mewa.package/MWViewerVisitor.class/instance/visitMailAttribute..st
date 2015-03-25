visiting
visitMailAttribute: aMailAttribute
	self
		renderLabel: aMailAttribute label
		control: [ :html | html anchorWithMailto: aMailAttribute formatedValue ]