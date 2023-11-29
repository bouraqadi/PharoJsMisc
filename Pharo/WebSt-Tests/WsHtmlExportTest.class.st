Class {
	#name : #WsHtmlExportTest,
	#superclass : #TestCase,
	#category : #'WebSt-Tests'
}

{ #category : #tests }
WsHtmlExportTest >> assertHtmlFor: componentClass body: expectedBody [

	self
		assertHtmlFor: componentClass
		head: ''
		body: expectedBody

]

{ #category : #tests }
WsHtmlExportTest >> assertHtmlFor: componentClass head: expectedHead [

	self
		assertHtmlFor: componentClass
		head: expectedHead
		body: ''

]

{ #category : #tests }
WsHtmlExportTest >> assertHtmlFor: componentClass head: expectedHead body: expectedBody [

	self
		assertHtmlFor: componentClass
		head: expectedHead
		body: expectedBody
		title: componentClass name
]

{ #category : #tests }
WsHtmlExportTest >> assertHtmlFor: componentClass head: expectedHead body: expectedBody title: expectedTitle [

	| expectedHtml |
	self assert: componentClass html equals: expectedBody.
	expectedHtml := String streamContents: [ :str |
		                str
			                << '<!DOCTYPE html><html><head><title>';
			                << expectedTitle;
			                << '</title><meta charset="utf-8"/>';
			                << expectedHead;
			                << '</head><body>';
			                << expectedBody;
			                << '</body></html>' ].
	self assert: componentClass htmlPage equals: expectedHtml
]

{ #category : #tests }
WsHtmlExportTest >> leafComponentHeaderEntries [
	^#( '<script type="text/javascript" defer src="js/local.js"></script>'
		                   '<script type="text/javascript" defer src="https://serverForJs.org/lib/bundle.js"></script>'
		                   '<link rel="stylesheet" href="css/custom.css"/>'
		                   '<link rel="stylesheet" href="https://serverForCss.com/ui/theme.css"/>' )
]

{ #category : #tests }
WsHtmlExportTest >> setUp [

	super setUp.
	WsPharoJsClassForTest reset
]

{ #category : #tests }
WsHtmlExportTest >> stringWithAll: expectedEntries [

	| expectedHead |
	expectedHead := String streamContents: [ :str |
		                expectedEntries do: [ :entry | str << entry ] ].
	^ expectedHead
]

{ #category : #tests }
WsHtmlExportTest >> testComposite [
	"Ensure resources for subcomponents are exported, but without duplication"

	| expectedHead expectedBody |
	expectedHead := self stringWithAll: #(  ), self leafComponentHeaderEntries.
	expectedBody := self stringWithAll:
		                #( '<div>' '<h1>Child 1</h1>' '<p>Welcome!</p>'
		                   '<h1>Child 2</h1>' '<p>What a surprize!!!</p>'
		                   '</div>' ).

	self
		assertHtmlFor: WsCompositeForTest
		head: expectedHead
		body: expectedBody
]

{ #category : #tests }
WsHtmlExportTest >> testLeafComponent [

	| expectedHead |
	expectedHead := self stringWithAll:
		                self leafComponentHeaderEntries.
	self
		assertHtmlFor: WsLeafComponentForTest
		head: expectedHead
		body: '<p>Hello WWW!</p>'
]

{ #category : #tests }
WsHtmlExportTest >> testPharoJsComponentHtml [

	self
		assertHtmlFor: WsLeafComponentForTest
		head:
		'<script type="text/javascript" defer src="index.js"></script>'.
	WsPharoJsClassForTest appJsSubFolder: 'js'.
	self
		assertHtmlFor: WsLeafComponentForTest
		head:
		'<script type="text/javascript" defer src="js/index.js"></script>'.
	WsPharoJsClassForTest appJsSubFolder: 'otherFolder'.
	WsPharoJsClassForTest appJsFileName:  'differentFile.js'.
	self
		assertHtmlFor: WsLeafComponentForTest
		head:
		'<script type="text/javascript" defer src="otherFolder/differentFile.js"></script>'
]
