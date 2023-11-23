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
	^super render: aComponent.

]

{ #category : #rendering }
WsHtmlPageRenderer >> setUpRoot: root [

	root title: self title.
	root beHtml5.
	root meta charset: 'utf-8'.
	component dependencies do: [ : each | each setUpRoot: root ]
]

{ #category : #rendering }
WsHtmlPageRenderer >> title [
	^component title
]
