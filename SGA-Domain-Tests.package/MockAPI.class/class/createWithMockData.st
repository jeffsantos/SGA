intance creation
createWithMockData

	| dictProgram1 dictProgram2 dictProgram3 dictCohort1 dictCohort2 dictCohort3 dictProfessor1 dictProfessor2  dictDiscipline1 dictDiscipline2 dictDiscipline3 dictStandardSchedule1 dictStandardSchedule2 dictSyncScheduleWen1 dictSyncScheduleWen2 dictSyncScheduleWen3 dictSyncScheduleMon1 dictSyncScheduleMon2 dictCalendar1 dictAsyncSchedule1 dictSyncSchedule1 dictSyncSchedule2 dictAsyncSchedule2 dictSyncSchedule3 dictSyncSchedule4 dictCalendar2 dictClassOffer1 dictClassOffer2 programs professors disciplines classOffers |
	dictProgram1 := {'id' -> 1.
					'nome' -> 'Mestrado Profissional Executivo em Gestão Empresarial'.
					'curso' -> 'MESTRADO'} asDictionary.
					
	dictProgram2 := {'id' -> 2.
					'nome' -> 'Mestrado Profissional em Administração Pública'.
					'curso' -> 'MESTRADO'} asDictionary.
					
	dictProgram3 := {'id' -> 3.
					'nome' -> 'Graduação'.
					'curso' -> 'GRAD'} asDictionary.
					
	dictCohort1 := {'id' -> 1.
					'nome' -> 'Mestrado Profissional Executivo em Gestão Empresarial 2018 (Regular)'.} asDictionary.
					
	dictCohort2 := {'id' -> 2.
					'nome' -> 'Mestrado Profissional Executivo em Gestão Empresarial 2018 (Intensiva)'.} asDictionary.
					
	dictCohort3 := {'id' -> 3.
					'nome' -> 'Graduação Botafogo 2023'.} asDictionary.
					
	dictProgram1 at: 'turmas' put: { dictCohort1.
				  				   dictCohort2 }.
	dictProgram1 at: 'convites' put: {}.
	
	
	dictProgram2 at: 'turmas' put: {}.
	dictProgram2 at: 'convites' put: {}.
	
	dictProgram3 at: 'turmas' put: { dictCohort3 }.
	dictProgram3 at: 'convites' put: {}.

	
	programs := { dictProgram1. dictProgram2. dictProgram3 }.
	
	dictProfessor1 := {'id' -> 1.
					   'nome' -> 'Jefferson Santos'.
					   'email' -> 'jefferson.santos@fgv.br'} asDictionary.
					   
	dictProfessor2 := {'id' -> 2.
					   'nome' -> 'Roberto Pimenta'.
					   'email' -> 'roberto.pimenta@fgv.br'} asDictionary.
					   
	professors := { dictProfessor1. dictProfessor2 }.
	
	dictDiscipline1 := {'id' -> 1.
					   'codigo' -> 'MAPTD01'.
					   'nome' -> 'Transformação Digital'.
					   'cargaHoraria' -> '30'} asDictionary.
					   
	dictDiscipline2 := {'id' -> 2.
					   'codigo' -> 'MAPTD02'.
					   'nome' -> 'Metodologia de Pesquisa'.
					   'cargaHoraria' -> '30'} asDictionary.
	
	dictDiscipline3 := {'id' -> 3.
					   'codigo' -> 'PROGAPLIC1'.
					   'nome' -> 'Programação Aplicada 1'.
					   'cargaHoraria' -> '30'} asDictionary.
					  
					   
	disciplines := { dictDiscipline1. dictDiscipline2. dictDiscipline3 }.
	
	"Turma de Graduação
	Horário padrão é opcional para a pós, obrigatório para a graduação"
	dictStandardSchedule1  := {'horaInicio' -> '09:20'.
					   		'horaFim' -> '11:00'.
					   		'diaDaSemana' -> 'SEGUNDA'} asDictionary.
					   		
	dictStandardSchedule2  := {'horaInicio' -> '09:20'.
					   		'horaFim' -> '11:00'.
					   		'diaDaSemana' -> 'QUARTA'} asDictionary.
					   		
	dictSyncScheduleWen1 :=  {'horaInicio' -> '09:20'.
					   	   'horaFim' -> '11:00'.
					   	   'data' -> '2023/03/08'} asDictionary.
					   	
	dictSyncScheduleWen2 :=  {'horaInicio' -> '09:20'.
					   	   'horaFim' -> '11:00'.
					   	   'data' -> '2023/03/15'} asDictionary.
					   	
	dictSyncScheduleWen3 :=  {'horaInicio' -> '09:20'.
					   	   'horaFim' -> '11:00'.
					   	   'data' -> '2023/03/22'} asDictionary.
					   	
	dictSyncScheduleMon1 :=  {'horaInicio' -> '09:20'.
					   	   'horaFim' -> '11:00'.
					   	   'data' -> '2023/03/13'} asDictionary.
					   	
	dictSyncScheduleMon2 :=  {'horaInicio' -> '09:20'.
					   	   'horaFim' -> '11:00'.
					   	   'data' -> '2023/03/27'} asDictionary.
					   	   
	dictCalendar1 := Dictionary new.
	dictCalendar1 at: 'horariosSincronos' put: { dictSyncScheduleWen1 .
												 dictSyncScheduleWen2 .
												 dictSyncScheduleWen3 .
												 dictSyncScheduleMon1 .
												 dictSyncScheduleMon2 }.
					   	   
	"Turma Intensiva Mestrado
	Somente as turmas intensivas dos programas de mestrado terão horários assíncronos"
	dictAsyncSchedule1 :=  {'dataInicio' -> '2023-02-13'.
					   	 'dataFim' -> '2023-02-24'} asDictionary.
					   	 
	dictSyncSchedule1 :=  {'horaInicio' -> '14:00'.
					   	'horaFim' -> '20:00'.
					   	'data' -> '2023/03/02'} asDictionary.
					   	
	dictSyncSchedule2 :=  {'horaInicio' -> '08:00'.
					   	'horaFim' -> '13:00'.
					   	'data' -> '2023/03/03'} asDictionary.
					   	 
	dictAsyncSchedule2 :=  {'dataInicio' -> '2023-03-17'.
					   	 'dataFim' -> '2023-03-28'} asDictionary.
					   	 
	dictSyncSchedule3 :=  {'horaInicio' -> '14:00'.
					   	'horaFim' -> '20:00'.
					   	'data' -> '2023/04/07'} asDictionary.
					   	
	dictSyncSchedule4 :=  {'horaInicio' -> '08:00'.
					   	'horaFim' -> '17:00'.
					   	'data' -> '2023/04/08'} asDictionary.
	
	dictCalendar2 := Dictionary new.
	dictCalendar2 at: 'horariosSincronos' put: { dictSyncSchedule1 .
												 dictSyncSchedule2 .
												 dictSyncSchedule3 .
												 dictSyncSchedule4 }.
												 
	dictCalendar2 at: 'intervalosAssincronos' put: { dictAsyncSchedule1 .
													 dictAsyncSchedule2 }.
													 
													 
	dictClassOffer1 := { 'sgaId' -> '35503045-2016-403e-8fab-36453f755d92'.
						 'idioma' -> 'pt-br'.
						 'calendario' -> dictCalendar1.
						 'fim' -> '2023-03-31'.
						 'trimestre' -> '1'.
						 'inicio' -> '2023-03-01'.
						 'turma' -> dictCohort3.
						 'semanaCiclo' -> 'SEGUNDA'.
						 'horarios' -> { dictStandardSchedule1 . dictStandardSchedule1 }.
						 'professor' -> dictProfessor1.
						 'disciplina' -> dictDiscipline3  } asDictionary.
						 
						 
	dictClassOffer2 := { 'sgaId' -> '35503045-2016-403e-8cde-36453f755d92'.
						 'idioma' -> 'pt-br'.
						 'calendario' -> dictCalendar2.
						 'fim' -> '2023-03-31'.
						 'trimestre' -> '1'.
						 'inicio' -> '2023-04-30'.
						 'turma' -> dictCohort3.
						 'semanaCiclo' -> 'SEXTA'.
						 'professor' -> dictProfessor1.
						 'disciplina' -> dictDiscipline1  } asDictionary.
						 
	classOffers := { dictClassOffer1 . dictClassOffer2 }.
					 
	^ self new
			programs: programs;
			professors: professors;
			disciplines: disciplines;
			classOffers: classOffers.
			
	