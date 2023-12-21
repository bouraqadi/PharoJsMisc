Class {
	#name : #WsResource,
	#superclass : #Object,
	#traits : 'WsTHtmlElementFactoryOLD',
	#classTraits : 'WsTHtmlElementFactoryOLD classTrait',
	#category : #'WebSt-ViewsOLD'
}

{ #category : #'as yet unclassified' }
WsResource >> renderOn: aRenderer [

	aRenderer renderResource: self
]
