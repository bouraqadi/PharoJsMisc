Class {
	#name : #WsJsComponentForTest,
	#superclass : #Object,
	#traits : 'WsTComponent',
	#classTraits : 'WsTComponent classTrait',
	#category : #'WebSt-Tests'
}

{ #category : #accessing }
WsJsComponentForTest >> dependencies [

	^ {
		  (WsJavaScriptResource url: 'js/local.js').
		  (WsJavaScriptResource url: 'https://serverForJs.org/lib/bundle.js').
		(WsCssResource url: 'css/custom.css').
		  (WsCssResource url: 'https://serverForCss.com/ui/theme.css') }
]

{ #category : #accessing }
WsJsComponentForTest >> javaScriptUrl [

	^ 'js/justForTest.js'
]

{ #category : #rendering }
WsJsComponentForTest >> renderContentOn: html [

	^ html paragraph: [ html html: 'Hello WebST!' ]
]
