Class {
	#name : #WsPharoJsComponentForTest,
	#superclass : #Object,
	#traits : 'WsTPharoJsComponent',
	#classTraits : 'WsTPharoJsComponent classTrait',
	#category : #'WebSt-Tests'
}

{ #category : #accessing }
WsPharoJsComponentForTest >> pharoJsMainClass [

	^ PjMinimalWebApplication 
]

{ #category : #rendering }
WsPharoJsComponentForTest >> renderContentOn: html [

	^ self
]

{ #category : #accessing }
WsPharoJsComponentForTest >> script [

	^ 'let pi = 3.14159'
]
