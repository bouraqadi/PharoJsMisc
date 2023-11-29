Class {
	#name : #WsLeafComponentForTest,
	#superclass : #Object,
	#traits : 'WsTComponentOLD',
	#classTraits : 'WsTComponentOLD classTrait',
	#instVars : [
		'message'
	],
	#category : #'WebSt-Tests'
}

{ #category : #accessing }
WsLeafComponentForTest >> dependencies [

	^ {
		  (WsJavaScriptResource url: 'js/local.js').
		  (WsJavaScriptResource url: 'https://serverForJs.org/lib/bundle.js').
		(WsCssResource url: 'css/custom.css').
		  (WsCssResource url: 'https://serverForCss.com/ui/theme.css') }
]

{ #category : #accessing }
WsLeafComponentForTest >> javaScriptUrl [

	^ 'js/justForTest.js'
]

{ #category : #accessing }
WsLeafComponentForTest >> message [

	^ message ifNil: [ message :=  'Hello WWW!']
]

{ #category : #accessing }
WsLeafComponentForTest >> message: anObject [

	message := anObject
]

{ #category : #rendering }
WsLeafComponentForTest >> renderContentOn: html [

	^ html paragraph: [ html html: self message  ]
]
