Class {
	#name : #WsBootrstrapResourceTest,
	#superclass : #PjWebAppTestCase,
	#traits : 'PjTAppRunsInJS',
	#classTraits : 'PjTAppRunsInJS classTrait',
	#category : #'WebSt-TestsOLD-Examples'
}

{ #category : #'suite parameters' }
WsBootrstrapResourceTest class >> appClass [

	^ WsCounterApp
]

{ #category : #tests }
WsBootrstrapResourceTest >> testInstallSingletonJsResource [

	| resource domElements resourceElements |
	resource := self evalBlock: [
		            WsSingletonResourceInstaller jsSource: 'urlToJs' ].
	3 timesRepeat: [ resource install ].
	domElements := (document querySelectorAll: #script) asLocalObject.
	resourceElements := domElements select: [ :script |
		                    script source = 'urlToJs' ].
	self assert: resourceElements size equals: 1 
]

{ #category : #tests }
WsBootrstrapResourceTest >> testJsScriptIsAtTopLevel [
	| headScripts bodyScripts allScripts |
	headScripts := (document head querySelectorAll: #script) asLocalObject.
	bodyScripts :=  (document body querySelectorAll: #script) asLocalObject.
	allScripts := headScripts, bodyScripts.
]
