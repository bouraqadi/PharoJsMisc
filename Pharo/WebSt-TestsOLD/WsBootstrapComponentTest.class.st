Class {
	#name : #WsBootstrapComponentTest,
	#superclass : #WsMvcComponentTest,
	#category : #'WebSt-TestsOLD-Examples'
}

{ #category : #testing }
WsBootstrapComponentTest class >> isAbstract [ 
	^self == WsBootstrapComponentTest 
]

{ #category : #tests }
WsBootstrapComponentTest >> resourceHtmls [

	^ { '<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"'.
	  '<script defer="" type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"' }
]
