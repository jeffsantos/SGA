accessing
programs
	| array |
	array := self getAll.

	^ array
		collect: [ :each | Program newFromData: each ]