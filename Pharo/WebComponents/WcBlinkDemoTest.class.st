Class {
	#name : #WcBlinkDemoTest,
	#superclass : #PjWebAppTestCase,
	#traits : 'PjTAppRunsInJS',
	#classTraits : 'PjTAppRunsInJS classTrait',
	#category : #WebComponents
}

{ #category : #'suite parameters' }
WcBlinkDemoTest class >> appClass [
	^WcBlinkDemo 
]

{ #category : #tests }
WcBlinkDemoTest >> testBlinkElementCreated [
	| blinkElement |
	blinkElement := document querySelector: 'pj-blink'.
	self deny: blinkElement isNil.
]
