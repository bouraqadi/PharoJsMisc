Class {
	#name : #WaStaticComponent,
	#superclass : #WAPainter,
	#category : #'Seaside-StaticComponents'
}

{ #category : #'instance creation' }
WaStaticComponent class >> html [

	^ self new html
]

{ #category : #'instance creation' }
WaStaticComponent class >> htmlPage [

	^ self new htmlPage
]

{ #category : #rendering }
WaStaticComponent >> html [

	^ self renderFullDocument: false
]

{ #category : #rendering }
WaStaticComponent >> htmlPage [

	^ self renderFullDocument: true
]

{ #category : #rendering }
WaStaticComponent >> renderContentOn: html [
	^self
]

{ #category : #rendering }
WaStaticComponent >> renderFullDocument: isFullDoc [

	| builder |
	builder := self rendererClass builder.
	isFullDoc ifTrue: [self setUpFullDocBuilder: builder].
	^builder render: self
]

{ #category : #rendering }
WaStaticComponent >> rendererClass [

	^ WAHtmlCanvas
]

{ #category : #rendering }
WaStaticComponent >> scriptGeneratorClass [
	^WANullScriptGenerator
]

{ #category : #rendering }
WaStaticComponent >> setUpFullDocBuilder: builder [
	builder
		  fullDocument: true;
		  scriptGeneratorClass: self scriptGeneratorClass;
		  rootBlock: [ :root |
			  self setUpRoot: root ]
]

{ #category : #rendering }
WaStaticComponent >> setUpRoot:  root [
			  root title: self title.
			  root beHtml5.
			  root meta charset: 'utf-8'
]

{ #category : #rendering }
WaStaticComponent >> title [
	^self className
]
