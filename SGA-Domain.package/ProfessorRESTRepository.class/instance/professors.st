accessing
professors
	| array |
	array := self getAll.

	^ array
		collect: [ :each | Professor newFromData: each ]