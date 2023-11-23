Class {
	#name : #WsHtmlPageRenderer,
	#superclass : #WsHtmlRenderer,
	#category : #'WebSt-Kernel'
}

{ #category : #initialization }
WsHtmlPageRenderer >> initialize [

	super initialize.
	builder
		fullDocument: true;
		rootBlock: [ :root | self setUpRoot: root ]
]

{ #category : #rendering }
WsHtmlPageRenderer >> render: aComponent [

	builder scriptGeneratorClass: aComponent loadScriptGeneratorClass.
	^ super render: aComponent
]

{ #category : #rendering }
WsHtmlPageRenderer >> setUpRoot: root [

	^component setUpRoot: root
]
