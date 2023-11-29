Class {
	#name : #WsHtmlRendererOLD,
	#superclass : #WAPainter,
	#instVars : [
		'component',
		'builder'
	],
	#category : #'WebSt-KernelOLDOLD'
}

{ #category : #rendering }
WsHtmlRendererOLD class >> render: component [

	^ self new render: component
]

{ #category : #initialization }
WsHtmlRendererOLD >> initialize [ 
	super initialize.
	builder := self rendererClass builder.

]

{ #category : #rendering }
WsHtmlRendererOLD >> render: aComponent [

	component := aComponent.
	^builder render: self
]

{ #category : #rendering }
WsHtmlRendererOLD >> renderContentOn: html [

	^ component renderContentOn: html
]

{ #category : #initialization }
WsHtmlRendererOLD >> rendererClass [

	^ WAHtmlCanvas
]
