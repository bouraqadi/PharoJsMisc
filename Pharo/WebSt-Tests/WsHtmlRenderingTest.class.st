Class {
	#name : #WsHtmlRenderingTest,
	#superclass : #TestCase,
	#category : #'WebSt-Tests'
}

{ #category : #tests }
WsHtmlRenderingTest >> stringWithAll: expectedEntries [

	| expectedHead |
	expectedHead := String streamContents: [ :str |
		                expectedEntries do: [ :entry | str << entry ] ].
	^ expectedHead
]

{ #category : #tests }
WsHtmlRenderingTest >> testHeaderBasic [
	| expectedHtml |
	expectedHtml := self stringWithAll: #(
	'<head>'
	'<meta charset="utf-8"/>'
	'</head>'
	).
	self assert: WsHtmlHead html equals: expectedHtml.

]

{ #category : #tests }
WsHtmlRenderingTest >> testHeaderTitle [

	| expectedHtml head |
	expectedHtml := self stringWithAll:
		                #( '<head>' '<meta charset="utf-8"/>'
		                   '<title>Short and Sweet</title>'
		                   '</head>' ).
	head := WsHtmlHead new.
	head title: 'Short and Sweet'.
	self assert: head html equals: expectedHtml
]
