Class {
	#name : #WsStaticHtmlComponent,
	#superclass : #WAPainter,
	#category : #WebSt
}

{ #category : #'instance creation' }
WsStaticHtmlComponent class >> html [

	^ self new html
]

{ #category : #'instance creation' }
WsStaticHtmlComponent class >> htmlPage [

	^ self new htmlPage
]

{ #category : #exporting }
WsStaticHtmlComponent >> html [

	^ self renderFullDocument: false
]

{ #category : #exporting }
WsStaticHtmlComponent >> htmlPage [

	^ self renderFullDocument: true
]

{ #category : #rendering }
WsStaticHtmlComponent >> renderContentOn: html [
	^self
]

{ #category : #'rendering private' }
WsStaticHtmlComponent >> renderFullDocument: isFullDoc [

	| builder |
	builder := self rendererClass builder.
	isFullDoc ifTrue: [self setUpFullDocBuilder: builder].
	^builder render: self
]

{ #category : #'rendering private' }
WsStaticHtmlComponent >> rendererClass [

	^ WAHtmlCanvas
]

{ #category : #'rendering private' }
WsStaticHtmlComponent >> scriptGeneratorClass [
	^WANullScriptGenerator
]

{ #category : #'rendering private' }
WsStaticHtmlComponent >> setUpFullDocBuilder: builder [
	builder
		  fullDocument: true;
		  scriptGeneratorClass: self scriptGeneratorClass;
		  rootBlock: [ :root |
			  self setUpRoot: root ]
]

{ #category : #rendering }
WsStaticHtmlComponent >> setUpRoot:  root [
			  root title: self title.
			  root beHtml5.
			  root meta charset: 'utf-8'
]

{ #category : #rendering }
WsStaticHtmlComponent >> title [
	^self className
]
