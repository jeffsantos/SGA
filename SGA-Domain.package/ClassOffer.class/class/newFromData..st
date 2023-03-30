instance creation
newFromData: rawData
	| class |
	class := self new
				rawData: rawData;
				id: (rawData at: 'sgaId');
				startDate: (rawData at: 'inicio');
				endDate: (rawData at: 'fim');
				language: (rawData at: 'idioma');
				trimester: (rawData at: 'trimestre').
				
	class discipline: (Discipline newFromData: (rawData at: 'disciplina')).
							
	class professor: (Professor newFromData: (rawData at: 'professor')).
	
	class cohort: (Cohort newFromData: (rawData at: 'turma')).
		
	^ class
		