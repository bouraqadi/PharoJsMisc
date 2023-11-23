Class {
	#name : #WsHtmlRenderer,
	#superclass : #WAPainter,
	#instVars : [
		'component',
		'builder'
	],
	#category : #'WebSt-Kernel'
}

{ #category : #rendering }
WsHtmlRenderer class >> render: component [

	^ self new render: component
]

{ #category : #initialization }
WsHtmlRenderer >> initialize [ 
	super initialize.
	builder := self rendererClass builder.

]

{ #category : #rendering }
WsHtmlRenderer >> render: aComponent [

	component := aComponent.
	^builder render: self
]

{ #category : #rendering }
WsHtmlRenderer >> renderContentOn: html [

	^ component renderContentOn: html
]

{ #category : #initialization }
WsHtmlRenderer >> rendererClass [

	^ WAHtmlCanvas
]
