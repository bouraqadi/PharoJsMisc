Class {
	#name : 'SjDemo',
	#superclass : 'SjScript',
	#category : 'SmalltalkJsScripts',
	#package : 'SmalltalkJsScripts'
}

{ #category : 'start-stop' }
SjDemo >> start [
	super start.
	self echo: 'Welcome to SmalltalkJS Scripts Demo';
		pwd;
		ls: '-la'
]
