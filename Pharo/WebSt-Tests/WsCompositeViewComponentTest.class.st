Class {
	#name : #WsCompositeViewComponentTest,
	#superclass : #WsComponentTest,
	#category : #'WebSt-Tests-Components'
}

{ #category : #'suite parameters' }
WsCompositeViewComponentTest class >> appClass [

	^ WsCompositeViewComponentApp
]

{ #category : #tests }
WsCompositeViewComponentTest >> assertComponent [

	| allLinks allScripts linkHrefs |
	self assert: (document body querySelectorAll: #script) isEmpty.
	allScripts := document head querySelectorAll: #script.
	allScripts asLocalObject
		with:
		#( 'jsABCD' 'jsA' 'jsY' 'jsA+B' 'jsX' 'jsC+D' 'jsC' 'index.js' )
		do: [ :script :expectedSrc |
			self assert: (script src endsWith: expectedSrc).
			self assert: script defer ].
	self assert: (document querySelectorAll: #link) isEmpty.
	allLinks := shadowRoot querySelectorAll: #link.
	linkHrefs := #( 'cssABCD' 'cssA' 'cssY' 'cssA+B' 'cssX' 'cssC+D'
	                'cssC' ).
	self assert: allLinks size equals: linkHrefs size.
	allLinks asLocalObject with: linkHrefs do: [ :link :expectedHref |
		self assert: (link href endsWith: expectedHref).
		self assert: link rel equals: 'stylesheet' ].
	self assert: (shadowRoot innerHTML endsWith: self displayHtml).

]

{ #category : #tests }
WsCompositeViewComponentTest >> displayHtml [

	^ String streamContents: [ :str |
		  #( 
		     '<h1>ABCD</h1>' '<h2>A+B</h2>' '<p>a</p>' '<p>b</p>' '<h2>C+D</h2>'
		     '<p>c</p>' '<p>d</p>' ) do: [ :each | str << each ] ]
]
