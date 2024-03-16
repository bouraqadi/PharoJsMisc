Class {
	#name : #WsDependentComponentTest,
	#superclass : #WsComponentTest,
	#category : #'WebSt-Tests-Components'
}

{ #category : #'suite parameters' }
WsDependentComponentTest class >> appClass [ 
	^WsDependencyApp 
]

{ #category : #tests }
WsDependentComponentTest >> assertComponent [

	| scripts jsDependency mainJs |
	self
		assert: shadowRoot innerHTML
		equals: '<link rel="stylesheet" href="dependencyCssUrl"/>'.
	self assert: (document head querySelectorAll: #link) isEmpty.
	scripts := document head querySelectorAll: #script.
	jsDependency := scripts first.
	self assert: jsDependency source equals: 'dependencyJsUrl'.
	self assert: jsDependency defer.
	mainJs := scripts last.
	self assert: mainJs source equals: 'index.js'.
	self assert: mainJs defer
]
