Class {
	#name : #WsHtmlPageRendererOLD,
	#superclass : #WsHtmlRendererOLD,
	#category : #'WebSt-KernelOLDOLD'
}

{ #category : #initialization }
WsHtmlPageRendererOLD >> initialize [

	super initialize.
	builder
		fullDocument: true;
		rootBlock: [ :root | self setUpRoot: root ]
]

{ #category : #rendering }
WsHtmlPageRendererOLD >> render: aComponent [

	builder scriptGeneratorClass: aComponent loadScriptGeneratorClass.
	^super render: aComponent.

]

{ #category : #rendering }
WsHtmlPageRendererOLD >> setUpRoot: root [

	root title: self title.
	root beHtml5.
	root meta charset: 'utf-8'.
	component externalResources do: [ : each | each setUpRoot: root ]
]

{ #category : #rendering }
WsHtmlPageRendererOLD >> title [
	^component title
]
