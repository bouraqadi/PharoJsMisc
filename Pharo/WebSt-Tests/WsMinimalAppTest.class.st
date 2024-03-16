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

	| allComponents component shadowRoot |
	allComponents := document querySelectorAll:
		                 WsMinimalComponent tagName.
	self assert: allComponents size equals: 1.
	component := allComponents first.
	self assert: component innerHTML isEmpty.
	shadowRoot := component at: #shadowRoot.
	self assert: shadowRoot notNil.
	self assert: shadowRoot innerHTML isEmpty
]
