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

{ #category : 'executing Async' }
SjScript >> mergeThenExecAsync: strings [

	^ self execAsync: (self mergeWithSpacesStrings: strings)
]

{ #category : 'support' }
SjScript >> mergeWithSpacesStrings: strings [
	^String streamContents: [ : str |
		strings do: [ : each | str << each ] separatedBy: [ str space ] ]
]
