Class {
	#name : #WsJsComponentForTest,
	#superclass : #Object,
	#traits : 'WsTJsComponent',
	#classTraits : 'WsTJsComponent classTrait',
	#category : #'WebSt-Tests'
}

{ #category : #accessing }
WsJsComponentForTest >> javaScriptUrl [

	^ 'js/justForTest.js'
]

{ #category : #rendering }
WsJsComponentForTest >> renderContentOn: html [

	^ self
]
