Class {
	#name : #WsTemplateViewFactory,
	#superclass : #Object,
	#traits : 'WsTViewFactory',
	#classTraits : 'WsTViewFactory classTrait',
	#instVars : [
		'content'
	],
	#category : #'WebSt-Views'
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

{ #category : #rendering }
WsTemplateViewFactory >> renderContentOn: html [

	html template: [ html render: content ]
]
