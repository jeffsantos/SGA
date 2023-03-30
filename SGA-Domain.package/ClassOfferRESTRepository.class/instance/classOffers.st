accessing
classOffers
	| array |
	array := self getAll.
			
	^ array
		collect: [ :each | ClassOffer newFromData: each ]