Class {
	#name : #WsDependantComponentTest,
	#superclass : #WsComponentTest,
	#category : #'WebSt-Tests-Components'
}

{ #category : #'suite parameters' }
WsDependantComponentTest class >> appClass [ 
	^WsDependencyApp 
]

{ #category : #tests }
WsDependantComponentTest >> assertComponent [

	| scripts jsDependency mainJs |
	self
		assert: shadowRoot innerHTML
		equals: '<link rel="stylesheet" href="viewCss">'.
	self assert: (document head querySelectorAll: #link) isEmpty.
	self assert: (document body querySelectorAll: #script) isEmpty.
	scripts := document head querySelectorAll: #script.
	self assert: scripts size equals: 2.
	jsDependency := scripts first.
	self assert: (jsDependency src endsWith: 'viewJs').
	self assert: jsDependency defer.
	mainJs := scripts last.
	self assert: (mainJs src endsWith: 'index.js').
	self assert: mainJs defer
]
