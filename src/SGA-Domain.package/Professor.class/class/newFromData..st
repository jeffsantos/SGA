instance creation
newFromData: rawData
	^ self new
		rawData: rawData;
		id: (rawData at: 'id');
		name: (rawData at: 'nome');
		email: (rawData at: 'email')