Class {
	#name : #WsViewForTestOLD,
	#superclass : #Object,
	#traits : 'WsTViewFactoryOLD + WsTResourceFactory',
	#classTraits : 'WsTViewFactoryOLD classTrait + WsTResourceFactory classTrait',
	#instVars : [
		'externalResources'
	],
	#category : #'WebSt-Tests-FactoryOLD'
}

{ #category : #accessing }
WsViewForTestOLD >> externalResources: anObject [

	externalResources := anObject
]
