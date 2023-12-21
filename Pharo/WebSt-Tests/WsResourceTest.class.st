Class {
	#name : #WsResourceTest,
	#superclass : #TestCase,
	#instVars : [
		'resource',
		'url'
	],
	#category : #'WebSt-Tests-FactoryOLD'
}

{ #category : #testing }
WsResourceTest class >> isAbstract [ 
	^self == WsResourceTest 
]

{ #category : #tests }
WsResourceTest >> assertHtml: expectedHtml [

	| renderer |
	renderer := resource  renderClass new.
	renderer
		render: resource;
		flush.
	self assert: renderer html equals: expectedHtml
]

{ #category : #tests }
WsResourceTest >> resourceClass [
	self subclassResponsibility 
]

{ #category : #tests }
WsResourceTest >> setUp [

	super setUp.
	url := 'https://site.domain/some/path/to/file'.
	resource := self resourceClass url: url
]
