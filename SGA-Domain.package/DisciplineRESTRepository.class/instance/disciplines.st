accessing
disciplines
	| array |
	array := self getAll.
			
	^ array
		collect: [ :each | Discipline newFromData: each ]
		