accessing
workload: anInteger
	workload := anInteger.
	rawData at: 'cargaHoraria' put: (workload asString)