accessing
classOfferId: id
	| dict |
	dict := self getById: id.
	^ ClassOffer newFromData: dict