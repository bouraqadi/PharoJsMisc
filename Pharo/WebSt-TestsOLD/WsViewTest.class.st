Class {
	#name : #WsViewTest,
	#superclass : #TestCase,
	#category : #'WebSt-TestsOLD-Views'
}

{ #category : #tests }
WsViewTest >> assert: view html: expectedHtml title: expectedTitle [

	self
		assert: view
		html: expectedHtml
		title: expectedTitle
		resources: ''
]

{ #category : #tests }
WsViewTest >> assert: view html: expectedHtml title: expectedTitle resources: expectedResourcesHtml [

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
WsViewTest >> stringWithAll: expectedEntries [

	| expectedHead |
	expectedHead := String streamContents: [ :str |
		                expectedEntries do: [ :entry | str << entry ] ].
	^ expectedHead
]

{ #category : #tests }
WsViewTest >> testBasic [

	self
		assert: WsMinimalViewForTest new
		html: ''
		title: WsMinimalViewForTest name.
	self
		assert: WsLeafViewForTest new
		html: '<p></p>'
		title: WsLeafViewForTest name.

]

{ #category : #tests }
WsViewTest >> testContent [

	| view |
	view := WsLeafViewForTest new.
	view message: 'I am very basic'.
	self
		assert: view
		html: '<p>I am very basic</p>'
		title: WsLeafViewForTest name.
	view title: 'Yeees! Gooooal!!!'.
	self
		assert: view
		html: '<p>I am very basic</p>'
		title: 'Yeees! Gooooal!!!'
]

{ #category : #tests }
WsViewTest >> testLocalResources [

	| view titleString messageString expectedHtml jsUrl cssUrl |
	view := WsLeafViewForTest new.
	titleString := 'New Shiny!'.
	messageString := 'Experimenting with a different message.'.
	jsUrl := 'path/file.js'.
	cssUrl := 'http://server.domain:port/ui/lib.css'.
	view
		title: titleString;
		message: messageString;
		addLocalJsAt: jsUrl;
		addLocalCssAt: cssUrl.
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
WsViewTest >> testPageResources [

	| view titleString messageString expectedHtml jsUrl cssUrl |
	view := WsLeafViewForTest new.
	titleString := 'New Shiny!'.
	messageString := 'Experimenting with a different message.'.
	jsUrl := 'path/file.js'.
	cssUrl := 'http://server.domain:port/ui/lib.css'.
	view
		title: titleString;
		message: messageString;
		addPageJsAt: jsUrl;
		addPageCssAt: cssUrl.
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

	self assert: view pageHtml equals: expectedHtml
]

{ #category : #tests }
WsViewTest >> testResources [

	| view titleString messageString expectedHtml jsUrl cssUrl |
	view := WsLeafViewForTest new.
	titleString := 'New Shiny!'.
	messageString := 'Experimenting with a different message.'.
	jsUrl := 'path/file.js'.
	cssUrl := 'http://server.domain:port/ui/lib.css'.
	view
		title: titleString;
		message: messageString;
		addJsAt: jsUrl;
		addCssAt: cssUrl.
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
