Class {
	#name : #WsTemplateView,
	#superclass : #Object,
	#traits : 'WsTView',
	#classTraits : 'WsTView classTrait',
	#instVars : [
		'content'
	],
	#category : #'WebSt-Views'
}

{ #category : #'instance creation' }
WsTemplateView class >> content: aView [

	^ self new
		  content: aView;
		  yourself 
]

{ #category : #accessing }
WsTemplateView >> content [

	^ content
]

{ #category : #accessing }
WsTemplateView >> content: anObject [

	content := anObject
]

{ #category : #rendering }
WsTemplateView >> renderContentOn: html [

	html template: [ html render: content ]
]
