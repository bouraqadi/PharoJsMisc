Class {
	#name : #WsCounterModel,
	#superclass : #Object,
	#instVars : [
		'count',
		'countPort'
	],
	#category : #'WebSt-Examples-Counter'
}

{ #category : #accessing }
WsCounterModel >> count [
	^ count
]

{ #category : #accessing }
WsCounterModel >> count: anInteger [

	count := anInteger.
	countPort notifyWith: count
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
