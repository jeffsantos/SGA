accessing
getById: id
	| json |
	json := ZnClient new
			url: self urlBase , 
				   self serviceEndPoint , '/' , 
				   (id isString ifTrue: [id] ifFalse: [id printString]);
			headerAt: 'Authorization' put: 'Bearer ' , self token;
			get.
	Halt now.
	^ (STON fromString: json) at: 'data'