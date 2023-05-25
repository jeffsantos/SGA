instance creation
newFromData: rawData
	| invitation |
	invitation := self new
				rawData: rawData;
				id: (rawData at: 'sgaId');
				dueDate: (rawData at: 'dataLimite').
				
	invitation classOffers addAll: ((rawData at: 'classes') 
				collect: [ :each | ClassOffer newFromData: each ]).
							
	invitation professor: (Professor newFromData: (rawData at: 'professor')).
		
	^ invitation