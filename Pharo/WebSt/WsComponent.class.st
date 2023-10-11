Class {
	#name : #WsComponent,
	#superclass : #WsStaticHtmlComponent,
	#category : #WebSt
}

{ #category : #'rendering private' }
WsComponent >> JavaScriptFileUrl [

	self pharoJsMainClass appJsSubFolder ifNil: [
		^ self pharoJsMainClass appJsFileName ].
	^ String streamContents: [ :str |
		  str
			  << self pharoJsMainClass appJsSubFolder;
			  << $/;
			  << self pharoJsMainClass appJsFileName ]
]

{ #category : #rendering }
WsComponent >> pharoJsMainClass [
	^self subclassResponsibility  
]

{ #category : #rendering }
WsComponent >> setUpRoot: root [

	super setUpRoot: root.
	root javascript
		defer;
		url: self JavaScriptFileUrl
]
