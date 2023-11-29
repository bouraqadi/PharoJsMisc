Class {
	#name : #WsStaticHtmlComponentForTest,
	#superclass : #Object,
	#traits : 'WsTComponentOLD',
	#classTraits : 'WsTComponentOLD classTrait',
	#category : #'WebSt-Tests'
}

{ #category : #rendering }
WsStaticHtmlComponentForTest >> renderContentOn: html [

	^ html paragraph: [ html html: 'Hello WebST!' ]
]
