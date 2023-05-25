default values
defaultURL
	| stream env url prefix version envKey |
	
	stream := 'sga-settings.json' asFileReference readStream.
	env := STON fromStream: stream.
	
	envKey := env at: 'current'.
	
	url := (env at: envKey) at: 'url'.
	prefix := (env at: envKey) at: 'prefix'.
	version := (env at: envKey) at: 'version'.
	
	(prefix ~= '') ifTrue: [ url := url,'/',prefix ].
	
	(version ~= '') ifTrue: [ url := url,'/',version ].

	^ url,'/'