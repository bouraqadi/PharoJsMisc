Class {
	#name : #WsCounterModel,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #'WebSt-Example'
}

{ #category : #accessing }
WsCounterModel >> count [
	^ count
]

{ #category : #accessing }
WsCounterModel >> count: anObject [
	count := anObject
]

{ #category : #operations }
WsCounterModel >> decrement [

	self decrement: 1
]

{ #category : #operations }
WsCounterModel >> decrement: amount [

	self count: self count - amount
]

{ #category : #operations }
WsCounterModel >> increment [

	self increment: 1
]

{ #category : #operations }
WsCounterModel >> increment: amount [

	self count: self count + amount
]

{ #category : #'initialize - release' }
WsCounterModel >> initialize [
	super initialize.
	self reset
]

{ #category : #operations }
WsCounterModel >> reset [
	self count: 0
]
