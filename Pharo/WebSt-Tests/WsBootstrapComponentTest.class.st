Class {
	#name : #WsBootstrapComponentTest,
	#superclass : #WsComponentTest,
	#instVars : [
		'root'
	],
	#category : #'WebSt-Tests-Examples'
}

{ #category : #testing }
WsBootstrapComponentTest class >> isAbstract [ 
	^self == WsBootstrapComponentTest 
]

{ #category : #tests }
WsBootstrapComponentTest >> assertBehavior [

	self subclassResponsibility
]

{ #category : #tests }
WsBootstrapComponentTest >> assertBehavior: component [

	root := component shadowRoot.
	self assertBehavior
]

{ #category : #tests }
WsBootstrapComponentTest >> resourceHtmls [

	^ { '<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"'.
	  '<script defer="" type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"' }
]
