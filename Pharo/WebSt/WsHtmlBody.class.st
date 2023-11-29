Class {
	#name : #WsHtmlBody,
	#superclass : #Object,
	#traits : 'WsTBasicComponent',
	#classTraits : 'WsTBasicComponent classTrait',
	#instVars : [
		'rootComponent'
	],
	#category : #'WebSt-Kernel'
}

{ #category : #rendering }
WsHtmlBody >> renderContentOn: html [

	html body: [ 
		html render: rootComponent ]
]
