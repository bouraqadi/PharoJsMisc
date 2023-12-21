Class {
	#name : #WsTemplateViewFactory,
	#superclass : #Object,
	#traits : 'WsTViewFactoryOLD',
	#classTraits : 'WsTViewFactoryOLD classTrait',
	#instVars : [
		'content'
	],
	#category : #'WebSt-ViewsOLD'
}

{ #category : #'instance creation' }
WsTemplateViewFactory class >> content: aView [

	^ self new
		  content: aView;
		  yourself 
]

{ #category : #converting }
WsTemplateViewFactory >> asTemplate [

	^  self
]

{ #category : #accessing }
WsTemplateViewFactory >> content [

	^ content
]

{ #category : #accessing }
WsTemplateViewFactory >> content: anObject [

	content := anObject
]

{ #category : #'as yet unclassified' }
WsTemplateViewFactory >> renderContentOn: html [

	html template: [ html render: content ]
]
