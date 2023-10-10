Class {
	#name : #WaStaticComponentTest,
	#superclass : #TestCase,
	#category : #'Seaside-StaticComponents-Tests'
}

{ #category : #tests }
WaStaticComponentTest >> assertHtmlFor: componentClass body: expectedBody [
self assertHtmlFor: componentClass body: expectedBody head: '' title: componentClass name

]

{ #category : #tests }
WaStaticComponentTest >> assertHtmlFor: componentClass body: expectedBody head: expectedHead title: expectedTitle [

	| expectedHtml |
	self assert: componentClass html equals: expectedBody.
	expectedHtml := String streamContents: [ :str |
		                str
			                << '<!DOCTYPE html><html><head><title>';
			                << expectedTitle;
			                << '</title>';
			                << expectedHead;
			                << '<meta charset="utf-8"/></head><body>';
			                << expectedBody;
			                << '</body></html>' ].
	self assert: componentClass htmlPage equals: expectedHtml
]

{ #category : #tests }
WaStaticComponentTest >> testBasicComponentHtml [

	self
		assertHtmlFor: WaStaticComponent
		body: ''

]

{ #category : #tests }
WaStaticComponentTest >> testBasicPharoJsComponentHtml [

	self
		assertHtmlFor: WaStaticComponent
		body: '<script type="text/javascript" src="index.js"></script>'

]
