services
getAll
	| json |
	json := ZnClient new
			url: self urlBase , self serviceEndPoint;
			headerAt: 'Authorization' put: 'Bearer ' , self token;
			get.
	^ (STON fromString: json) at: 'data'