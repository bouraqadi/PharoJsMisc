Class {
	#name : #WcBlinkDemo,
	#superclass : #PjFileBasedWebApp,
	#instVars : [
		'factory'
	],
	#category : #WebComponents
}

{ #category : #initialization }
WcBlinkDemo >> blinkHTML [

	^ '<style> .blink { animation: 2s linear infinite condemned_blink_effect; } @keyframes condemned_blink_effect { 0% { visibility: hidden; } 50% { visibility: hidden; } 100% { visibility: visible; } } </style> <p class="blink" style="width: inherit;"><span><slot></slot></span></p>'
]

{ #category : #initialization }
WcBlinkDemo >> initialize [

	| blinkElement |
	super initialize.
	factory := WcComponentFactory new.
	factory
		domClassName: #PjBlink;
		tagName: 'pj-blink';
		innerHTML: self blinkHTML ;
		build.
	blinkElement := document createElement: 'pj-blink'.
	blinkElement textContent: 'Web Components with PharoJS'.
	document body appendChild: blinkElement
]
