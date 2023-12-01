Class {
	#name : #WsCounterDisplay,
	#superclass : #Object,
	#traits : 'WsTBootstrapComponent',
	#classTraits : 'WsTBootstrapComponent classTrait',
	#category : #'WebSt-Examples'
}

{ #category : #rendering }
WsCounterDisplay >> renderContentOn: html [

				html div
				class: 'text-center fs-1';
				with: [ html text: 0 ].

]
