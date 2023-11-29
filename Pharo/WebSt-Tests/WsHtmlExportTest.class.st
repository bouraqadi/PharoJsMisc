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
WsHtmlExportTest >> setUp [

	super setUp.
	WsPharoJsClassForTest reset
]

{ #category : #tests }
WsHtmlExportTest >> testJsComponentHtml [

	| expectedEntries expectedHead |
	expectedEntries := #( '<script type="text/javascript" defer src="js/local.js"></script>'
	                      '<script type="text/javascript" defer src="https://serverForJs.org/lib/bundle.js"></script>'
	                      '<link rel="stylesheet" href="css/custom.css"/>'
	                      '<link rel="stylesheet" href="https://serverForCss.com/ui/theme.css"/>' ).
	expectedHead := String streamContents: [ :str |
		                expectedEntries do: [ :entry | str << entry ] ].
	self assertHtmlFor: WsJsComponentForTest head: expectedHead body: '<p>Hello WebST!</p>'
]

{ #category : #tests }
WsHtmlExportTest >> testJsCompositeHtml [

	self fail: 'Ensure dependencies from subcomponents are met too'.
	self
		assertHtmlFor: WsJsComponentForTest
		head:
		'<script type="text/javascript" defer src="js/justForTest.js"></script>'
]

{ #category : #tests }
WsHtmlExportTest >> testPharoJsComponentHtml [

	self
		assertHtmlFor: WsJsComponentForTest
		head:
		'<script type="text/javascript" defer src="index.js"></script>'.
	WsPharoJsClassForTest appJsSubFolder: 'js'.
	self
		assertHtmlFor: WsJsComponentForTest
		head:
		'<script type="text/javascript" defer src="js/index.js"></script>'.
	WsPharoJsClassForTest appJsSubFolder: 'otherFolder'.
	WsPharoJsClassForTest appJsFileName:  'differentFile.js'.
	self
		assertHtmlFor: WsJsComponentForTest
		head:
		'<script type="text/javascript" defer src="otherFolder/differentFile.js"></script>'
]
