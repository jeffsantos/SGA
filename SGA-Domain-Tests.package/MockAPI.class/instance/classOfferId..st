accessing
classOfferId: aString
	^ classOffers detect: [ :class | (class at: 'sgaId') = aString ].