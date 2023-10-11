Class {
	#name : #WsComponentOLD,
	#superclass : #WsStaticHtmlComponentOLD,
	#category : #'WebSt-Kernel'
}

{ #category : #'rendering private' }
WsComponentOLD >> JavaScriptFileUrl [

	self pharoJsMainClass appJsSubFolder ifNil: [
		^ self pharoJsMainClass appJsFileName ].
	^ String streamContents: [ :str |
		  str
			  << self pharoJsMainClass appJsSubFolder;
			  << $/;
			  << self pharoJsMainClass appJsFileName ]
]

{ #category : #rendering }
WsComponentOLD >> pharoJsMainClass [
	^self subclassResponsibility  
]

{ #category : #rendering }
WsComponentOLD >> setUpRoot: root [

	super setUpRoot: root.
	root javascript
		defer;
		url: self JavaScriptFileUrl
]
