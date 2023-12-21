Class {
	#name : #WsBasicViewTest,
	#superclass : #TestCase,
	#category : #'WebSt-Tests-Factory'
}

{ #category : #tests }
WsBasicViewTest >> testBodyBasic [

	self assert: WsBody html equals: '<body></body>'
]

{ #category : #tests }
WsBasicViewTest >> testHeadBasic [

	self
		assert: WsHead html
		equals: '<head><meta charset="utf-8"/><title/></head>'
]

{ #category : #tests }
WsBasicViewTest >> testHeadTitle [

	| head |
	head := WsHead new.
	head titleText: 'Short and Sweet'.
	self
		assert: head html
		equals: '<head><meta charset="utf-8"/><title>Short and Sweet</title></head>' 
]

{ #category : #tests }
WsBasicViewTest >> testPageBasic [

	self
		assert: WsPage html
		equals: '<!doctype html><html><head><meta charset="utf-8"/><title/></head><body></body></html>'
]

{ #category : #tests }
WsBasicViewTest >> testPageTitle [

	| page |
	page := WsPage new.
	page titleText: 'Nice title'.
	self
		assert: page html
		equals:
		'<!doctype html><html><head><meta charset="utf-8"/><title>Nice title</title></head><body></body></html>'
]
