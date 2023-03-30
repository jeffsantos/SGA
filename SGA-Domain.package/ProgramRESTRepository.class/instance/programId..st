accessing
programId: id
	| dict |
	dict := self getById: id.
	^ Program newFromData: dict