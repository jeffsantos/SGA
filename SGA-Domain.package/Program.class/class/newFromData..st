instance creation
newFromData: rawData
	| program |
	program := self new
					rawData: rawData;
					id: (rawData at: 'id');
					name: (rawData at: 'nome');
					type: (rawData at: 'curso').
					
	program cohorts addAll: ((rawData at: 'turmas') 
					collect: [ :each | Cohort newFromData: each ]).
					
	program invitations addAll: ((rawData at: 'convites') 
					collect: [ :each | Invitation newFromData: each ]).
						
	^ program
	