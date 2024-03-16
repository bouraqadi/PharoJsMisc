Class {
	#name : #WsMinimalAppTest,
	#superclass : #PjWebAppTestCase,
	#traits : 'PjTAppRunsInJS',
	#classTraits : 'PjTAppRunsInJS classTrait',
	#category : #'WebSt-Tests-Minimal'
}

{ #category : #'suite parameters' }
WsMinimalAppTest class >> appClass [ 
	^WsMinimalApp 
]

{ #category : #tests }
WsMinimalAppTest >> testHtmlBodyContainsComponentOnly [

	| child |
	child := document querySelector: WsMinimalComponent tagName.
	self deny: child isNil.
	self assert: child innerHTML isEmpty.
	self assert: (child at: #shadowRoot) isNil
]
