Class {
	#name : #WsStaticHtmlComponentForTest,
	#superclass : #Object,
	#traits : 'WsTComponent',
	#classTraits : 'WsTComponent classTrait',
	#category : #'WebSt-Tests'
}

{ #category : #rendering }
WsStaticHtmlComponentForTest >> renderContentOn: html [

	^ html paragraph: [ html html: 'Hello WebST!' ]
]
