Class {
	#name : #WsCustomViewTest,
	#superclass : #TestCase,
	#category : #'WebSt-Tests-Factory'
}

{ #category : #tests }
WsCustomViewTest >> assert: view html: expectedHtml title: expectedTitle [

	self
		assert: view
		html: expectedHtml
		title: expectedTitle
		resources: ''
]

{ #category : #tests }
WsCustomViewTest >> assert: view html: expectedHtml title: expectedTitle resources: expectedResourcesHtml [

	| expectedPageHtml |
	self assert: view html equals: expectedHtml.
	expectedPageHtml := self stringWithAll: {
			                    '<!doctype html><html><head><meta charset="utf-8"/><title>'.
			                    expectedTitle.
			                    '</title>'.
			                    expectedResourcesHtml.
			                    '</head><body>'.
			                    expectedHtml.
			                    '</body></html>' }.
	self assert: view pageHtml equals: expectedPageHtml
]

{ #category : #tests }
WsCustomViewTest >> stringWithAll: expectedEntries [

	| expectedHead |
	expectedHead := String streamContents: [ :str |
		                expectedEntries do: [ :entry | str << entry ] ].
	^ expectedHead
]

{ #category : #tests }
WsCustomViewTest >> testCompositeView [
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
WsCustomViewTest >> testCompositeViewTemplate [
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
WsCustomViewTest >> testLeafView [

	| view |
	view := WsLeafViewForTest new.
	self assert: view html: '<p></p>' title: WsLeafViewForTest name.
	view message: 'I am very basic'.
	self
		assert: view
		html: '<p>I am very basic</p>'
		title: WsLeafViewForTest name.
	view titleText: 'Yeees! Gooooal!!!'.
	self
		assert: view
		html: '<p>I am very basic</p>'
		title: 'Yeees! Gooooal!!!'
]

{ #category : #tests }
WsCustomViewTest >> testLeafViewResources [

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
