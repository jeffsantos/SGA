accessing
professorId: anInteger
	^ professors detect: [ :prof | (prof at: 'id') = anInteger ].