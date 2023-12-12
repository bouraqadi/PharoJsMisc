Class {
	#name : #WsResource,
	#superclass : #Object,
	#traits : 'WsTHtmlElementFactory',
	#classTraits : 'WsTHtmlElementFactory classTrait',
	#category : #'WebSt-Views'
}

{ #category : #rendering }
WsResource >> renderOn: aRenderer [

	aRenderer renderResource: self
]
