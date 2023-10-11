Class {
	#name : #WsStaticHtmlComponentOLD,
	#superclass : #WAPainter,
	#category : #'WebSt-Kernel'
}

{ #category : #'instance creation' }
WsStaticHtmlComponentOLD class >> html [

	^ self new html
]

{ #category : #'instance creation' }
WsStaticHtmlComponentOLD class >> htmlPage [

	^ self new htmlPage
]

{ #category : #exporting }
WsStaticHtmlComponentOLD >> html [

	^ self renderFullDocument: false
]

{ #category : #exporting }
WsStaticHtmlComponentOLD >> htmlPage [

	^ self renderFullDocument: true
]

{ #category : #rendering }
WsStaticHtmlComponentOLD >> renderContentOn: html [
	^self
]

{ #category : #'rendering private' }
WsStaticHtmlComponentOLD >> renderFullDocument: isFullDoc [

	| builder |
	builder := self rendererClass builder.
	isFullDoc ifTrue: [self setUpFullDocBuilder: builder].
	^builder render: self
]

{ #category : #'rendering private' }
WsStaticHtmlComponentOLD >> rendererClass [

	^ WAHtmlCanvas
]

{ #category : #'rendering private' }
WsStaticHtmlComponentOLD >> scriptGeneratorClass [
	^WANullScriptGenerator
]

{ #category : #'rendering private' }
WsStaticHtmlComponentOLD >> setUpFullDocBuilder: builder [
	builder
		  fullDocument: true;
		  scriptGeneratorClass: self scriptGeneratorClass;
		  rootBlock: [ :root |
			  self setUpRoot: root ]
]

{ #category : #rendering }
WsStaticHtmlComponentOLD >> setUpRoot:  root [
			  root title: self title.
			  root beHtml5.
			  root meta charset: 'utf-8'
]

{ #category : #rendering }
WsStaticHtmlComponentOLD >> title [
	^self className
]
