tests
testProgramWithCohortsWithoutInvitations
	| prog |
	prog := Program newFromData: (mockAPI programId: 1).
	
	self assert: prog id equals: 1.
	self assert: prog name equals: 'Mestrado Profissional Executivo em Gestão Empresarial'.
	self assert: prog type equals: 'MESTRADO'.
	
	self assert: prog cohorts size equals: 2.
	
	self assert: prog invitations size equals: 0.
	