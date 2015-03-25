visiting
callDateSelectorFor: aDateAttribute
	| date calendar newDate |
	date _ aDateAttribute dateFromCache ifNil: [ Date today ].
	newDate _ self call: (calendar _ WAMiniCalendar new
		date: date;
		month: date month;
		canSelectBlock: [ :d | true ];
		selectBlock: [ :d | calendar answer: d ]).
	newDate ifNotNil: [
		aDateAttribute cache: (Array
			with: newDate dayOfMonth
			with: newDate monthIndex
			with: newDate year) ]

		