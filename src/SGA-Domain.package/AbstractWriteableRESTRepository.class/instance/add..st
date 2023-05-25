action
add: dict
	| json |
	json := ZnClient new
			"logToTranscript;"
			url: self urlBase , self serviceEndPoint;
			headerAt: 'Authorization' put: 'Bearer ' , self token;
			formAddAll: dict;
			post.
	"Halt now."
	^ (STON fromString: json) at: 'data'