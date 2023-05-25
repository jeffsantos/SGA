action
add: dict
	| returnedDict |
	returnedDict := super add: dict.
	
	^ Discipline newFromData: returnedDict