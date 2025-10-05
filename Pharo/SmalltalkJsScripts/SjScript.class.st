Class {
	#name : 'SjScript',
	#superclass : 'PjNodeApplication',
	#classVars : [
		'ChildProcessModule'
	],
	#category : 'SmalltalkJsScripts',
	#package : 'SmalltalkJsScripts'
}

{ #category : 'utilities' }
SjScript class >> echo: aString [
	self exec: 'echo ', aString
	
	
]

{ #category : 'executing' }
SjScript class >> exec: commandLineString [ 
	^self exec: commandLineString options: nil callback: nil
]

{ #category : 'executing' }
SjScript class >> exec: commandLineString options: associations callback: aBlock [
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
	
	ChildProcessModule exec: commandLineString options: associations asJsObject callback: aBlock
]

{ #category : 'class initialization' }
SjScript class >> initialize [ 
	ChildProcessModule := self require: 'child_proccess'
]

{ #category : 'executing' }
SjScript >> exec: commandLineString [ 
	self class exec: commandLineString 
]

{ #category : 'executing' }
SjScript >> exec: commandLineString options: associations callback: aBlock [
	self class exec: commandLineString options: associations callback: aBlock
]
