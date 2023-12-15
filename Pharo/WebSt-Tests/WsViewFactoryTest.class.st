Class {
	#name : #WsViewFactoryTest,
	#superclass : #TestCase,
	#category : #'WebSt-Tests-Views'
}

{ #category : #tests }
WsViewFactoryTest >> stringWithAll: expectedEntries [

	| expectedHead |
	expectedHead := String streamContents: [ :str |
		                expectedEntries do: [ :entry | str << entry ] ].
	^ expectedHead
]

{ #category : #tests }
WsViewFactoryTest >> testBodyEmpty [

	self assert: WsHtmlBody html equals: '<body></body>'
]

{ #category : #tests }
WsViewFactoryTest >> testBodyLeafView [

	| body root rootHtml|
	body := WsHtmlBody new.
	root := WsLeafViewForTest new.
	root message: 'I am very basic'.
	rootHtml := '<p>I am very basic</p>'.
	self assert: root html equals: rootHtml.
	body rootView: root.
	self assert: body html equals: '<body>',rootHtml,'</body>'
]

{ #category : #tests }
WsViewFactoryTest >> testCompositeView [
	"Ensure resources for subviews are exported, but without duplication"

	| expectedHtml jsUrl cssUrl message1 message2 view |
	jsUrl := 'path/file.js'.
	cssUrl := 'http://server.domain:port/ui/lib.css'.
	message1 := 'Welcome!'.
	message2 := 'What a surprize!!!'.
	expectedHtml := self stringWithAll: {
			                '<!doctype html><html><head><meta charset="utf-8"/><title>'.
			                WsCompositeViewForTest name.
			                '</title></head><body><script defer type="text/javascript" src="'.
			                jsUrl.
			                '"></script><link rel="stylesheet" href="'.
			                cssUrl.
			                '"/><div><p>'.
			                message1.
			                '</p><p>'.
			                message2.
			                '</p></div></body></html>' }.
	view := WsCompositeViewForTest new.
	view child1 message: message1.
	view child2 message: message2.
	{
		view child1.
		view child2 } do: [ :each |
		each
			useJsAt: jsUrl;
			useCssAt: cssUrl ].
	self assert: view pageHtml equals: expectedHtml
]

{ #category : #tests }
WsViewFactoryTest >> testCompositeViewTemplate [
	"Ensure resources for subviews are exported, but without duplication"

	| expectedHtml jsUrl cssUrl message1 message2 view |
	jsUrl := 'path/file.js'.
	cssUrl := 'http://server.domain:port/ui/lib.css'.
	message1 := 'Welcome!'.
	message2 := 'What a surprize!!!'.
	expectedHtml := self stringWithAll: {
			                '<!doctype html><html><head><meta charset="utf-8"/><title>'.
			                WsTemplateViewFactory name.
			                '</title></head><body><script defer type="text/javascript" src="'.
			                jsUrl.
			                '"></script><link rel="stylesheet" href="'.
			                cssUrl.
			                '"/><template><div><p>'.
			                message1.
			                '</p><p>'.
			                message2.
			                '</p></div></template></body></html>' }.
	view := WsCompositeViewForTest new.
	view child1 message: message1.
	view child2 message: message2.
	{
		view child1.
		view child2 } do: [ :each |
		each
			useJsAt: jsUrl;
			useCssAt: cssUrl ].
	self assert: view asTemplate pageHtml equals: expectedHtml
]

{ #category : #tests }
WsViewFactoryTest >> testHeadBasic [

	self
		assert: WsHtmlHead html
		equals: '<head><meta charset="utf-8"/></head>'
]

{ #category : #tests }
WsViewFactoryTest >> testHeadTitle [

	| head |
	head := WsHtmlHead new.
	head title: 'Short and Sweet'.
	self
		assert: head html
		equals:
		'<head><meta charset="utf-8"/><title>Short and Sweet</title></head>'
]

{ #category : #tests }
WsViewFactoryTest >> testLeafViewResources [

	| view titleString messageString expectedHtml jsUrl cssUrl |
	view := WsLeafViewForTest new.
	titleString := 'New Shiny!'.
	messageString := 'Experimenting with a different message.'.
	jsUrl := 'path/file.js'.
	cssUrl := 'http://server.domain:port/ui/lib.css'.
	view
		title: titleString;
		message: messageString;
		useJsAt: jsUrl;
		useCssAt: cssUrl.
	expectedHtml := self stringWithAll: {
			                '<!doctype html><html><head><meta charset="utf-8"/><title>'.
			                titleString.
			                '</title></head><body><script defer type="text/javascript" src="'.
			                jsUrl.
			                '"></script><link rel="stylesheet" href="'.
			                cssUrl.
			                '"/><p>'.
			                messageString.
			                '</p></body></html>' }.

	self assert: view pageHtml equals: expectedHtml
]

{ #category : #tests }
WsViewFactoryTest >> testLeafViewTemplate [

	| template leafView |
	leafView := WsLeafViewForTest new.
	leafView message: 'I am very basic'.
	template := leafView asTemplate.
	self
		assert: template html
		equals: '<template><p>I am very basic</p></template>'
]

{ #category : #tests }
WsViewFactoryTest >> testPageBasicComponent [

	| root titleString messageString expectedHtml |
	root := WsLeafViewForTest new.
	titleString := 'Default title'.
	root title: titleString.
	messageString := 'Nice message'.
	root message: messageString.
	expectedHtml := self stringWithAll: {
			                '<!doctype html><html><head><meta charset="utf-8"/><title>'.
			                titleString.
			                '</title></head><body><p>'.
			                messageString.
			                '</p></body></html>' }.
	self assert: root pageHtml equals: expectedHtml.
	self assert: WsLeafViewForTest pageHtml equals: expectedHtml
]

{ #category : #tests }
WsViewFactoryTest >> testPageEmpty [

	self
		assert: WsHtmlPage new html
		equals:
		'<!doctype html><html><head><meta charset="utf-8"/></head><body></body></html>'
]
