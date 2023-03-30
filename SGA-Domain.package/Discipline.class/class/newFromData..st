instance creation
newFromData: rawData
	^ self new
		rawData: rawData;
		id: (rawData at: 'id');
		code: (rawData at: 'codigo');		
		name: (rawData at: 'nome');
		workload: (rawData at: 'cargaHoraria').