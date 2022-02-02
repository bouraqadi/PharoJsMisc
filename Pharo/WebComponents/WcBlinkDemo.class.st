"
I am a demo of web components. I show how to use WcComponentFactory to make custom HTML tags <pj-blink>. 
This example has been introduced at https://github.com/vanillawc/wc-blink

"
Class {
	#name : #WcBlinkDemo,
	#superclass : #WcWebComponentsDemo,
	#category : #WebComponents
}

{ #category : #description }
WcBlinkDemo class >> appClasses [ 
	^super appClasses, { WcBlinkComponent }
]

{ #category : #initialization }
WcBlinkDemo >> blinkHTML [

	^ '<style> .blink { animation: 1s linear infinite condemned_blink_effect; } @keyframes condemned_blink_effect { 0% { visibility: visible; } 50% { visibility: hidden; } 100% { visibility: hidden; } } </style> <p class="blink" style="width: inherit;"><span><slot></slot></span></p>'
]

{ #category : #initialization }
WcBlinkDemo >> initialize [

	| blinkElement |
	super initialize.
	blinkElement := document createElement: 'pj-blink'.
	blinkElement textContent: 'Web Components with PharoJS'.
	document body appendChild: blinkElement
]
