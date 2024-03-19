Class {
	#name : #WsDependantViewApp,
	#superclass : #PjWebApplication,
	#traits : 'WsTComponentApp',
	#classTraits : 'WsTComponentApp classTrait',
	#category : #'WebSt-Examples-Dependency'
}

{ #category : #accessing }
WsDependantViewApp class >> rootComponentClass [ 
	^WsDependantViewComponent 
]
