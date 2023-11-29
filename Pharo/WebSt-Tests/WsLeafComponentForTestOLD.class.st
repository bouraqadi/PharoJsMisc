Class {
	#name : #WsLeafComponentForTestOLD,
	#superclass : #Object,
	#traits : 'WsTComponentOLD',
	#classTraits : 'WsTComponentOLD classTrait',
	#instVars : [
		'message'
	],
	#category : #'WebSt-Tests'
}

{ #category : #'as yet unclassified' }
WsLeafComponentForTestOLD >> dependencies [

	^ {
		  (WsJavaScriptResource url: 'js/local.js').
		  (WsJavaScriptResource url: 'https://serverForJs.org/lib/bundle.js').
		(WsCssResource url: 'css/custom.css').
		  (WsCssResource url: 'https://serverForCss.com/ui/theme.css') }
]

{ #category : #accessing }
WsLeafComponentForTestOLD >> javaScriptUrl [

	^ 'js/justForTest.js'
]

{ #category : #accessing }
WsLeafComponentForTestOLD >> message [

	^ message ifNil: [ message :=  'Hello WWW!']
]

{ #category : #accessing }
WsLeafComponentForTestOLD >> message: anObject [

	message := anObject
]

{ #category : #rendering }
WsLeafComponentForTestOLD >> renderContentOn: html [

	^ html paragraph: [ html html: self message  ]
]
