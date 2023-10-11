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
WsHtmlExportTest >> testBasicComponentHtml [

	self assertHtmlFor: WsStaticHtmlComponentForTest body: ''
]

{ #category : #tests }
WsHtmlExportTest >> testBasicPharoJsComponentHtml [

	self
		assertHtmlFor: WsComponentForTest
		head:
		'<script type="text/javascript" defer src="index.js"></script>'.
	WsPharoJsClassForTest appJsSubFolder: 'js'.
	self
		assertHtmlFor: WsComponentForTest
		head:
		'<script type="text/javascript" defer src="js/index.js"></script>'.
	WsPharoJsClassForTest appJsSubFolder: 'otherFolder'.
	WsPharoJsClassForTest appJsFileName:  'differentFile.js'.
	self
		assertHtmlFor: WsComponentForTest
		head:
		'<script type="text/javascript" defer src="otherFolder/differentFile.js"></script>'
]
