accessing
disciplineId: id
	| dict |
	dict := self getById: id.
	^ Discipline newFromData: dict
		