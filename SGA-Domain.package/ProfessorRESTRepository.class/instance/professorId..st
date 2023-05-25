accessing
professorId: id
	| dict |
	dict := self getById: id.
	^ Professor newFromData: dict