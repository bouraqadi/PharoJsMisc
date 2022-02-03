Class {
	#name : #WcCounterDemo,
	#superclass : #WcWebComponentsDemo,
	#category : #WebComponents
}

{ #category : #description }
WcCounterDemo class >> appClasses [ 
	^super appClasses, { WcCounterComponent }
]

{ #category : #initialization }
WcCounterDemo >> initialize [

	| counterElement |
	super initialize.
	counterElement := document createElement: 'pj-counter'.
	document body appendChild: counterElement
]
