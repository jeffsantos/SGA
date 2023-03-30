accessing
getById: id
	| json |
	json := ZnClient new
			url: self urlBase , self serviceEndPoint , '/' , id printString;
			headerAt: 'Authorization' put: 'Bearer ' , self token;
			get.
	^ (STON fromString: json) at: 'data'