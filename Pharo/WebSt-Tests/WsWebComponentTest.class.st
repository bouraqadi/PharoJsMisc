Class {
	#name : #WsWebComponentTest,
	#superclass : #PjWebAppTestCase,
	#category : #'WebSt-Tests-WebComponents'
}

{ #category : #'suite parameters' }
WsWebComponentTest class >> appClass [

	^ WsAppForTest 
]

{ #category : #tests }
WsWebComponentTest >> testHtml [
	| elements |
	elements := document querySelectorAll: 'ws-counter'.
	self assert: elements size equals: 2.
	self assert: elements first parentNode identicalTo: document body.
	self assert: elements second parentNode tagName equals: 'template' asUppercase
]
