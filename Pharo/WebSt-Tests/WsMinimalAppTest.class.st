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
WsMinimalAppTest >> testStaticComponentCreation [
	"Component is defined using HTML tags. See WsTComponentApp >> #newPage."

	| child shadowRoot |
	child := document querySelector: WsMinimalComponent tagName.
	self deny: child isNil.
	self assert: child innerHTML isEmpty.
	shadowRoot := child at: #shadowRoot.
	self assert: shadowRoot notNil.
	self assert: shadowRoot innerHTML isEmpty
]
