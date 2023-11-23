Class {
	#name : #WsStaticHtmlComponentForTest,
	#superclass : #Object,
	#traits : 'WsTStaticHtmlComponent',
	#classTraits : 'WsTStaticHtmlComponent classTrait',
	#category : #'WebSt-Tests'
}

{ #category : #rendering }
WsStaticHtmlComponentForTest >> renderContentOn: html [

	^ html paragraph: [ html html: 'Hello WebST!' ]
]
