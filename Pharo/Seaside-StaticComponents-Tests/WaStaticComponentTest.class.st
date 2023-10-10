Class {
	#name : #WaStaticComponentTest,
	#superclass : #TestCase,
	#category : #'Seaside-StaticComponents-Tests'
}

{ #category : #tests }
WaStaticComponentTest >> assertHtml: componentClass body: expectedBody [

	self assert: componentClass html equals: expectedBody 
]

{ #category : #tests }
WaStaticComponentTest >> assertHtmlPage: componentClass title: expectedTitle head: expectedHead body: expectedBody [

	| expectedHtml |
	expectedHtml := String streamContents: [ :str |
		                str
			                <<
				                '<!DOCTYPE html><html><head><title>';
			                << expectedTitle;
			                << '</title>';
			                << expectedHead;
			                << '<meta charset="utf-8"/></head><body>';
			                << expectedBody;
			                << '</body></html>' ].
	self assert: componentClass htmlPage equals: expectedHtml
]

{ #category : #tests }
WaStaticComponentTest >> testNullComponentHtml [

	self assertHtml: WaNullStaticComponent body: ''.
	self
		assertHtmlPage: WaNullStaticComponent
		title: WaNullStaticComponent name
		head: ''
		body: ''
]
