instance creation
createRESTRepository
	^ self new
			urlBase: self defaultURL;
			authEndPoint: 'Auth';
			initializeEndPoint;
			authenticate.
