accessing
programId: anInteger
	^ programs detect: [ :prog | (prog at: 'id') = anInteger ].