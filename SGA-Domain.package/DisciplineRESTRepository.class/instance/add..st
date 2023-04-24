action
add: dict
	| array |
	array := super add: dict.
	
	^ array
		collect: [ :each | Discipline newFromData: each ]