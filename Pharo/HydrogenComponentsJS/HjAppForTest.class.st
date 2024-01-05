Class {
	#name : #HjAppForTest,
	#superclass : #PjWebApplication,
	#instVars : [
		'observer',
		'counter',
		'a',
		'b',
		'c',
		'd',
		'bBlock',
		'cBlock',
		'dBlock'
	],
	#category : #'HydrogenComponentsJS-Tests'
}

{ #category : #running }
HjAppForTest >> disconnectBBlock [
	(a -@ #portA) disconnect: bBlock
	
]

{ #category : #running }
HjAppForTest >> disconnectCDBlockCollection [

	a -@ #portA disconnect: {cBlock. dBlock}
]

{ #category : #running }
HjAppForTest >> disconnectCfromAIncrement [

	a -@ #portA disconnect: c
]

{ #category : #running }
HjAppForTest >> isAdapterSuccess [
	a triggerIncrement.
	^self subjects allSatisfy: [ : each | each = true].
	

]

{ #category : #running }
HjAppForTest >> isAdapterWith1ArgSuccess [

	| initCondition |
	initCondition := self subjects allSatisfy: [ :each | each = nil ].
	initCondition ifFalse: [ ^false ].
	a triggerSetCount: 123.
	^ self subjects allSatisfy: [ :each | each = 123 ]
]

{ #category : #running }
HjAppForTest >> isAdapterWithFilteringSuccessForB [
	b := false.
	c := false.
	d := false.
	a triggerIncrement: #b.
	^{b. c not. d not} allSatisfy: [ : each | each = true].
	

]

{ #category : #running }
HjAppForTest >> isAdapterWithFilteringSuccessForC [
	b := false.
	c := false.
	d := false.
	a triggerIncrement: #c.
	^{b not. c. d} allSatisfy: [ : each | each = true].
	

]

{ #category : #running }
HjAppForTest >> isAdapterWithSimplifiedFilteringSuccess [
	b := false.
	c := false.
	d := false.
	#(b c d) do: [: each | a triggerIncrement: each].
	^{b. c. d} allSatisfy: [ : each | each = true].
	

]

{ #category : #running }
HjAppForTest >> isDecrementNotified [
	| initialCount |
	initialCount := b count.
	2 timesRepeat: [a triggerDecrement].
	^{b. c. d} allSatisfy: [: each | 
		each count = (initialCount - 2)].

]

{ #category : #running }
HjAppForTest >> isIncrementNotified [
	| initialCount |
	initialCount := b count.
	a triggerIncrement.
	^{b. c. d} allSatisfy: [: each | each count = (initialCount + 1)].

]

{ #category : #running }
HjAppForTest >> isMultiConnectionDecrementNotified [
	| initialCount |
	initialCount := c count.
	{a. b} do: [: each | each triggerDecrement].
	^{c. d} allSatisfy: [: each | each count = (initialCount - 2)].

]

{ #category : #running }
HjAppForTest >> isMultiConnectionIncrementNotified [
	| initialCount |
	initialCount := c count.
	{a. b} do: [: each | each triggerIncrement].
	^{c. d} allSatisfy: [: each | each count = (initialCount + 2)].

]

{ #category : #running }
HjAppForTest >> isPostDisconnectDecrementNotified [

	| bInitialCount cInitialCount |
	bInitialCount := b count.
	cInitialCount := c count.
	a triggerDecrement.
	^ c count = (cInitialCount - 1) and: [ b count = (bInitialCount - 1) ]
]

{ #category : #running }
HjAppForTest >> isPostDisconnectIncrementNotified [

	| bInitialCount cInitialCount |
	bInitialCount := b count.
	cInitialCount := c count.
	a triggerIncrement.
	^ c count = cInitialCount and: [b count = (bInitialCount + 1) ]
]

{ #category : #running }
HjAppForTest >> isStartIfAllStarted [
	self subjects do: [ : each | each start ].
	^(counter startCount = 1) and: [counter stopCount = 0].
]

{ #category : #running }
HjAppForTest >> isStopIfOneStopped [
	self subjects do: [ : each | each start ].
	b stop.
	^(counter startCount = 1) and: [counter stopCount = 1].
]

{ #category : #running }
HjAppForTest >> setUpAdapterTest [
	a :=  HyComponentForCollectionPortTest new.
	b := false.
	c := false.
	d := false.
	a -@ #portA notificationSelector: #incrementCount.
	a -@ #portA
		=> [b := true];
		=> {[c := true].  [d := true].}.
	

]

{ #category : #running }
HjAppForTest >> setUpAdapterWith1ArgTest [

	a := HyComponentForCollectionPortTest new.
	b := nil.
	c := nil.
	d := nil.
	(a -@ #portA)
		notificationSelector: #count:;
		=> [: newCount | b := newCount ];
		=> { 
				[: newCount | c := newCount ].
				[: newCount | d := newCount ] }
]

{ #category : #running }
HjAppForTest >> setUpAdapterWithFilteringTest [
	a :=  HyComponentForIdFilteringCollectionPortTest new.
	a -@ #portA notificationSelector: #incrementCount.
	a -@ #portA
		add: [b := true] id: #b;
		add: {[c := true].  [d := true].} id: #c.
	

]

{ #category : #running }
HjAppForTest >> setUpAdapterWithSimplifiedFilteringTest [
	a :=  HyComponentForIdFilteringCollectionPortTest new.
	a -@ #portA notificationSelector: #incrementCount.
	a -@ #portA -@ #b => [b := true].
	a -@ #portA => {#c -> [c := true].  
								#d ->[d := true].}.
	

]

{ #category : #running }
HjAppForTest >> setUpBlockDisconnectTest [

	a := HyComponentForCollectionPortTest new.
	b := false.
	c := false.
	d := false.
	bBlock := [ b := true ].
	cBlock := [ c := true ].
	dBlock :=	 [ d := true ].
	a -@ #portA notificationSelector: #incrementCount.
	(a -@ #portA)
		=> bBlock;
		=> { 
				cBlock.
				dBlock }
]

{ #category : #running }
HjAppForTest >> setUpConnectMultipleComponentsTest [
	a :=  HyComponentForCollectionPortTest new.
	b := HyComponentForCollectionPortTest new.
	c := HyComponentForCollectionPortTest new.
	d := HyComponentForCollectionPortTest new.
	{a. b} -@ #portA notificationSelector: #incrementCount.
	{a. b} -@ #portB notificationSelector: #decrementCount.
	{a. b} -@ #(portA portB) => {c. d}.


]

{ #category : #running }
HjAppForTest >> setUpConnectionTest [
	a :=  HyComponentForCollectionPortTest new.
	b := HyComponentForCollectionPortTest new.
	c := HyComponentForCollectionPortTest new.
	d := HyComponentForCollectionPortTest new.
	a -@ #portA notificationSelector: #incrementCount.
	a -@ #portB notificationSelector: #decrementCount.
	a -@ #(portA portB) => b.
	a -@ #(portA portB) => {c. d}.


]

{ #category : #running }
HjAppForTest >> setUpLifeCycleTest [
	b := HyStartableComponent new.
	c := HyStartableComponent new.
	d  := HyStartableComponent new.
	observer := HyLifeCycleFusion new.
	observer observe: b.
	observer observeAll: {c. d}.
	counter := HyStartStopCounterForTest new.
	observer -@ #(startPort stopPort) => counter.
]

{ #category : #running }
HjAppForTest >> subjects [
	^{b. c. d}
]
