Class {
	#name : #WsHtmlPageRenderer,
	#superclass : #WsHtmlRenderer,
	#category : #'WebSt-Kernel'
}

{ #category : #initialization }
WsHtmlPageRenderer >> initialize [
super initialize . 	builder
		fullDocument: true;
		scriptGeneratorClass: self scriptGeneratorClass;
		rootBlock: [ :root | self setUpRoot: root ]
]

{ #category : #initialization }
WsHtmlPageRenderer >> scriptGeneratorClass [
	^WANullScriptGenerator
]

{ #category : #rendering }
WsHtmlPageRenderer >> setUpRoot: root [

	^component setUpRoot: root
]
