Class {
	#name : #HjComponentTest,
	#superclass : #PjAppTestCase,
	#traits : 'PjTAppRunsInJS',
	#classTraits : 'PjTAppRunsInJS classTrait',
	#category : #'HydrogenComponentsJS-Tests'
}

{ #category : #'suite parameters' }
HjComponentTest class >> appClass [
	^HjAppForTest
]

{ #category : #tests }
HjComponentTest >> testAdapter [
	app setUpAdapterTest.
	self assert: app isAdapterSuccess.
]

{ #category : #tests }
HjComponentTest >> testAdapterWith1Arg [

	app setUpAdapterWith1ArgTest.
	self assert: app isAdapterWith1ArgSuccess
]

{ #category : #tests }
HjComponentTest >> testAdapterWithFiltering [
	app setUpAdapterWithFilteringTest.
	self assert: app isAdapterWithFilteringSuccessForB.
	self assert: app isAdapterWithFilteringSuccessForC.
]

{ #category : #tests }
HjComponentTest >> testAdapterWithSimplifiedFiltering [
	app setUpAdapterWithSimplifiedFilteringTest.
	self assert: app isAdapterWithSimplifiedFilteringSuccess.

]

{ #category : #tests }
HjComponentTest >> testConnecting [
	app setUpConnectionTest.
	self assert: app isIncrementNotified.
	self assert: app isDecrementNotified.
]

{ #category : #tests }
HjComponentTest >> testConnectingMulipleComponents [
	app setUpConnectMultipleComponentsTest.
	self assert: app isMultiConnectionIncrementNotified.
	self assert: app isMultiConnectionDecrementNotified.
]

{ #category : #tests }
HjComponentTest >> testDisconnecting [

	app setUpConnectionTest.
	self assert: app isIncrementNotified.
	app disconnectCfromAIncrement.
	self assert: app isPostDisconnectIncrementNotified.
	self assert: app isPostDisconnectDecrementNotified
]

{ #category : #tests }
HjComponentTest >> testDisconnecting1Block [

	app setUpBlockDisconnectTest.
	app disconnectBBlock.
	app a triggerIncrement.
	self deny: app b.
	self assert: app c.
	self assert: app d.
]

{ #category : #tests }
HjComponentTest >> testDisconnectingBlockBlockCollection [

	app setUpBlockDisconnectTest.
	app disconnectCDBlockCollection .
	app a triggerIncrement.
	self assert: app b.
	self deny: app c.
	self deny: app d
]

{ #category : #tests }
HjComponentTest >> testLifeCycle [
	app setUpLifeCycleTest.
	self assert: app isStartIfAllStarted.
	self assert: app isStopIfOneStopped.
]
