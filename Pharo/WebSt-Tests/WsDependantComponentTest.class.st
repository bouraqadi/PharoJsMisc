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
	scripts := document head querySelectorAll: #script.
	jsDependency := scripts first.
	self assert: jsDependency src equals: 'viewJs'.
	self assert: jsDependency defer.
	mainJs := scripts last.
	self assert: mainJs source equals: 'index.js'.
	self assert: mainJs defer
]
