action
add: dict
	| json |
	json := ZnClient new
			url: self urlBase , self serviceEndPoint;
			headerAt: 'Authorization' put: 'Bearer ' , self token;
			formAddAll: dict;
			post.
	^ (STON fromString: json) at: 'data'