Class {
	#name : #WsCompositeViewComponentApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Examples-CompositeViews'
}

{ #category : #rendering }
WsCompositeViewComponentApp class >> rootComponentClass [

	<pharoJsSkip>
	^WsCompositeViewComponent 
]
