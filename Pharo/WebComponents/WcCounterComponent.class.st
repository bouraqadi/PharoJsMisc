Class {
	#name : #WcCounterComponent,
	#superclass : #WcWebComponent,
	#instVars : [
		'display',
		'incrementButton',
		'decrementButton',
		'resetButton',
		'count'
	],
	#category : #WebComponents
}

{ #category : #accessing }
WcCounterComponent class >> tagName [
	^'pj-counter'
]

{ #category : #initializing }
WcCounterComponent class >> viewInnerHTML [

	^ '<style>\
    .container {\
        padding: 4px;\
        background-color: rgb(240,240,240) ;\
        border-radius: 5px;\
        text-align: center;\
    }\
\
    .display {\
       font-size: 30mm;\
    }\
    .display,.buttonsColumn{\
        vertical-align: middle;\
        display: inline-block;\
    }\
\
    .btn {\
        display: block;\
        width: 40px;\
        height: 40px;\
    }\
    .btn:active{\
        border: solid 2px gray;\
    }\
    .increment {\
        background-color: lightgreen;\
    }\
\
    .decrement {\
        background-color: skyblue;\
    }\
\
    .reset {\
        background-color: salmon;\
    }\
</style>\
<div class="container">\
    <div class="display">0</div>\
    <div class="buttonsColumn">\
    <button class="btn increment">+</button>\
    <button class="btn decrement">-</button>\
    <button\
        class="btn reset">x</button>\
    </div>\
</div>'
]

{ #category : #accessing }
WcCounterComponent >> count [
	^count
]

{ #category : #accessing }
WcCounterComponent >> count: newCount [

	count := newCount. 
	display textContent: count asString
]

{ #category : #actions }
WcCounterComponent >> decrement [

	self count: self count - 1
]

{ #category : #actions }
WcCounterComponent >> increment [
	self count: self count + 1
]

{ #category : #initialization }
WcCounterComponent >> initView [

	display := shadowDomRoot querySelector: '.display'.
	incrementButton := shadowDomRoot querySelector: '.increment'.
	self onClickElement: incrementButton do: [ self increment ].
	decrementButton := shadowDomRoot querySelector: '.decrement'.
	self onClickElement: decrementButton do: [ self decrement ].
	resetButton := shadowDomRoot querySelector: '.reset'.
	self onClickElement: resetButton do: [ self reset ].

]

{ #category : #initialization }
WcCounterComponent >> initialize [
	super initialize.
	count := 0
]

{ #category : #actions }
WcCounterComponent >> reset [

	self count: 0
]
