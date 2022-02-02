Class {
	#name : #WcBlinkComponent,
	#superclass : #WcWebComponent,
	#category : #WebComponents
}

{ #category : #initializing }
WcBlinkComponent class >> tagName [

	^'pj-blink'
]

{ #category : #initializing }
WcBlinkComponent class >> viewInnerHTML [

	^ '<style> .blink { animation: 1s linear infinite condemned_blink_effect; } @keyframes condemned_blink_effect { 0% { visibility: visible; } 50% { visibility: hidden; } 100% { visibility: hidden; } } </style> <p class="blink" style="width: inherit;"><span><slot></slot></span></p>'
]
