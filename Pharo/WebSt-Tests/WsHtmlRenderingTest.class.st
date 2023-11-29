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
WsHtmlRenderingTest >> testBasicComponentResources [

	| component titleString messageString expectedHtml jsUrl cssUrl |
	component := WsLeafComponentForTest new.
	titleString := 'New Shiny!'.
	messageString := 'Experimenting with a different message.'.
	jsUrl := 'path/file.js'.
	cssUrl := 'http://server.domain:port/ui/lib.css'.
	component
		title: titleString;
		message: messageString;
		useJsAt: jsUrl;
		useCssAt: cssUrl.
	expectedHtml := self stringWithAll: {
			                '<!doctype html><html><head><meta charset="utf-8"/><title>'.
			                titleString.
			                '</title><script defer type="text/javascript" src="'.
			                jsUrl.
			                '"></script><link rel="stylesheet" href="'.
			                cssUrl.
			                '"/></head><body><p>'.
			                messageString.
			                '</p></body></html>' }.

	self assert: component pageHtml equals: expectedHtml
]

{ #category : #tests }
WsHtmlRenderingTest >> testBodyBasicComponent [

	| body root rootHtml|
	body := WsHtmlBody new.
	root := WsLeafComponentForTest new.
	root message: 'I am very basic'.
	rootHtml := '<p>I am very basic</p>'.
	self assert: root html equals: rootHtml.
	body rootComponent: root.
	self assert: body html equals: '<body>',rootHtml,'</body>'
]

{ #category : #tests }
WsHtmlRenderingTest >> testBodyEmpty [

	self assert: WsHtmlBody html equals: '<body></body>'
]

{ #category : #tests }
WsHtmlRenderingTest >> testComposite [
	"Ensure resources for subcomponents are exported, but without duplication"

	| expectedHtml jsUrl cssUrl message1 message2 component |
	jsUrl := 'path/file.js'.
	cssUrl := 'http://server.domain:port/ui/lib.css'.
	message1 := 'Welcome!'.
	message2 := 'What a surprize!!!'.
	expectedHtml := self stringWithAll: {
			                '<!doctype html><html><head><meta charset="utf-8"/><title>'.
			                WsCompositeForTest name.
			                '</title><script defer type="text/javascript" src="'.
			                jsUrl.
			                '"></script><link rel="stylesheet" href="'.
			                cssUrl.
			                '"/></head><body><div><p>'.
			                message1.
			                '</p><p>'.
			                message2.
			                '</p></div></body></html>' }.
	component := WsCompositeForTest new.
	component child1 message: message1.
	component child2 message: message2.
	{
		component child1.
		component child2 } do: [ :each |
		each
			useJsAt: jsUrl;
			useCssAt: cssUrl ].
	self assert: component pageHtml equals: expectedHtml
]

{ #category : #tests }
WsHtmlRenderingTest >> testHeaderBasic [

	self assert: WsHtmlHead html equals: '<head><meta charset="utf-8"/></head>'
]

{ #category : #tests }
WsHtmlRenderingTest >> testHeaderTitle [

	| head |
	head := WsHtmlHead new.
	head title: 'Short and Sweet'.
	self assert: head html equals: '<head><meta charset="utf-8"/><title>Short and Sweet</title></head>'
]

{ #category : #tests }
WsHtmlRenderingTest >> testPageBasicComponent [

	| page root titleString messageString expectedHtml |
	page := WsHtmlPage new.
	root := WsLeafComponentForTest new.
	titleString := 'Default title'.
	messageString := 'Nice message'.
	page body rootComponent: root.
	expectedHtml := self stringWithAll: {
			                '<!doctype html><html><head><meta charset="utf-8"/><title>'.
			                titleString.
			                '</title></head><body><p>'.
			                messageString.
			                '</p></body></html>' }.
	self assert: page html equals: expectedHtml.
	self assert: WsLeafComponentForTest pageHtml equals: expectedHtml
]

{ #category : #tests }
WsHtmlRenderingTest >> testPageEmpty [

	self
		assert: WsHtmlPage new html
		equals:
		'<!doctype html><html><head><meta charset="utf-8"/></head><body></body></html>'
]
