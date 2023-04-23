accessing
disciplineId: anInteger
	^ disciplines detect: [ :disc | (disc at: 'id') = anInteger ].