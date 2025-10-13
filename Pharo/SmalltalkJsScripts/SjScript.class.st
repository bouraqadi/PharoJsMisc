Class {
	#name : 'SjScript',
	#superclass : 'PjNodeApplication',
	#instVars : [
		'isLoggingResults'
	],
	#classVars : [
		'ChildProcessModule'
	],
	#classInstVars : [
		'default'
	],
	#category : 'SmalltalkJsScripts',
	#package : 'SmalltalkJsScripts'
}

{ #category : 'default instance' }
SjScript class >> default [
	^default ifNil: [ default := self new ]
]

{ #category : 'class initialization' }
SjScript class >> javascriptInitialize [ 
	ChildProcessModule := PjCore require: 'child_process'
]

{ #category : 'default instance' }
SjScript class >> resetDefault [
	^default := nil
]

{ #category : 'executing Sync' }
SjScript >> basicExecSync: commandString options: associationsOrNil [
	"See https://nodejs.org/api/child_process.html#child_processexecsynccommand-options"
	"Arguments doc:
    - command <string> The command to run.
    - options <Object>
        + cwd <string> | <URL> Current working directory of the child process.
        + input <string> | <Buffer> | <TypedArray> | <DataView> The value which will be passed as stdin to the spawned process. If stdio[0] is set to 'pipe', Supplying this value will override stdio[0].
        + stdio <string> | <Array> Child's stdio configuration. See child_process.spawn()'s stdio. stderr by default will be output to the parent process' stderr unless stdio is specified. Default: 'pipe'.
        + env <Object> Environment key-value pairs. Default: process.env.
        + shell <string> Shell to execute the command with. See Shell requirements and Default Windows shell. Default: '/bin/sh' on Unix, process.env.ComSpec on Windows.
        + uid <number> Sets the user identity of the process. (See setuid(2)).
        + gid <number> Sets the group identity of the process. (See setgid(2)).
        + timeout <number> In milliseconds the maximum amount of time the process is allowed to run. Default: undefined.
        + killSignal <string> | <integer> The signal value to be used when the spawned process will be killed. Default: 'SIGTERM'.
        + maxBuffer <number> Largest amount of data in bytes allowed on stdout or stderr. If exceeded, the child process is terminated and any output is truncated. See caveat at maxBuffer and Unicode. Default: 1024 * 1024.
        + encoding <string> The encoding used for all stdio inputs and outputs. Default: 'buffer'.
        + windowsHide <boolean> Hide the subprocess console window that would normally be created on Windows systems. Default: false.
    - Returns: <Buffer> | <string> The stdout from the command."

	^ChildProcessModule execSync: commandString options: associationsOrNil asJsObject.

]

{ #category : 'utilities' }
SjScript >> echo: aString [

	^self mergeThenExecSync: {
			#echo.
			aString }
]

{ #category : 'executing Async' }
SjScript >> execAsync: commandLineString [

	^ self
		  execAsync: commandLineString
		  stdOutBlock: [ :stdout | console log: stdout ]
		  stdErrBlock: [ :stderr | console log: stderr ]
]

{ #category : 'executing Async' }
SjScript >> execAsync: commandLineString callback: aBlock [
	^self execAsync: commandLineString options: nil callback: aBlock 

]

{ #category : 'executing Async' }
SjScript >> execAsync: commandLineString options: associations callback: aBlock [
	"See https://nodejs.org/api/child_process.html#child_processexeccommand-options-callback"
	"Arguments doc:
	- command <string> The command to run, with space-separated arguments.
	- options <Object>
        + cwd <string> | <URL> Current working directory of the child process. Default: process.cwd().
        + env <Object> Environment key-value pairs. Default: process.env.
        + encoding <string> Default: 'utf8'
        + shell <string> Shell to execute the command with. See Shell requirements and Default Windows shell. Default: '/bin/sh' on Unix, process.env.ComSpec on Windows.
        + signal <AbortSignal> allows aborting the child process using an AbortSignal.
        + timeout <number> Default: 0
        + maxBuffer <number> Largest amount of data in bytes allowed on stdout or stderr. If exceeded, the child process is terminated and any output is truncated. See caveat at maxBuffer and Unicode. Default: 1024 * 1024.
        + killSignal <string> | <integer> Default: 'SIGTERM'
        + uid <number> Sets the user identity of the process (see setuid(2)).
        + gid <number> Sets the group identity of the process (see setgid(2)).
        + windowsHide <boolean> Hide the subprocess console window that would normally be created on Windows systems. Default: false.
	- callback <Function> called with the output when process terminates.
        + error <Error>
        + stdout <string> | <Buffer>
        + stderr <string> | <Buffer>
	- Returns <ChildProcess>
	"
	
	^ChildProcessModule exec: commandLineString options: associations asJsObject callback: aBlock
]

{ #category : 'executing Async' }
SjScript >> execAsync: commandLineString stdOutBlock: stdOutBlock stdErrBlock: stdErrBlock [

	^ self execAsync: commandLineString callback: [ :error :stdout :stderr |
		  error
			  ifNil: stdOutBlock
			  ifNotNil: stdErrBlock ]
]

{ #category : 'executing Sync' }
SjScript >> execSync: commandString [
	^self execSync: commandString options: nil

]

{ #category : 'executing Sync' }
SjScript >> execSync: commandString options: associationsOrNil [
	^self execSync: commandString options: associationsOrNil logResult: self isLoggingResults 
]

{ #category : 'executing Sync' }
SjScript >> execSync: commandString options: associationsOrNil logResult: logResultFlag [ 
	| result |
	result := (self basicExecSync: commandString options: associationsOrNil) toLocaleString.
	logResultFlag ifTrue: [ console log: result ].
	^result
]

{ #category : 'initialization' }
SjScript >> initialize [ 
	super initialize.
	isLoggingResults := true
]

{ #category : 'accessing' }
SjScript >> isLoggingResults [

	^ isLoggingResults
]

{ #category : 'accessing' }
SjScript >> isLoggingResults: anObject [

	isLoggingResults := anObject
]

{ #category : 'utilities' }
SjScript >> ls [

	^ self ls: ''
]

{ #category : 'utilities' }
SjScript >> ls: aString [

	^ self mergeThenExecSync: {#ls. aString}
]

{ #category : 'executing Async' }
SjScript >> mergeThenExecAsync: strings [

	^ self execAsync: (self mergeWithSpacesStrings: strings)
]

{ #category : 'executing Sync' }
SjScript >> mergeThenExecSync: strings [

	^ self execSync: (self mergeWithSpacesStrings: strings)
]

{ #category : 'support' }
SjScript >> mergeWithSpacesStrings: strings [
	^String streamContents: [ : str |
		strings do: [ : each | str << each ] separatedBy: [ str space ] ]
]

{ #category : 'utilities' }
SjScript >> pwd [

	^ self execSync: #pwd
]
