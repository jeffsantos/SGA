tests
testProgramWithoutCohortsWithoutInvitations
	| prog |
	prog := Program newFromData: (mockAPI programId: 2).
	
	self assert: prog cohorts size equals: 0.
	
	self assert: prog invitations size equals: 0.