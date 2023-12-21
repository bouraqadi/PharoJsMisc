Class {
	#name : #WsViewFactoryTest,
	#superclass : #TestCase,
	#category : #'WebSt-Tests-Factory'
}

{ #category : #tests }
WsViewFactoryTest >> testBodyBasic [

	self assert: WsBody html equals: '<body></body>'
]

{ #category : #tests }
WsViewFactoryTest >> testHeadBasic [

	self
		assert: WsHead html
		equals: '<head><meta charset="utf-8"/><title/></head>'
]

{ #category : #tests }
WsViewFactoryTest >> testHeadTitle [

	| head |
	head := WsHead new.
	head titleText: 'Short and Sweet'.
	self
		assert: head html
		equals: '<head><meta charset="utf-8"/><title>Short and Sweet</title></head>' 
]

{ #category : #tests }
WsViewFactoryTest >> testPageBasic [

	self
		assert: WsPage html
		equals: '<!doctype html><html><head><meta charset="utf-8"/><title/></head><body></body></html>'
]
