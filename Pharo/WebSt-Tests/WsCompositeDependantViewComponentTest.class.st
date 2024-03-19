Class {
	#name : #WsCompositeDependantViewComponentTest,
	#superclass : #WsDependantViewComponentTest,
	#category : #'WebSt-Tests-Components'
}

{ #category : #'suite parameters' }
WsCompositeDependantViewComponentTest class >> appClass [

	^ WsCompositeDependantViewApp
]

{ #category : #tests }
WsCompositeDependantViewComponentTest >> shadowHtml [

	^String streamContents: [: str |
		str << '<link rel="stylesheet" href="viewCss"><p>';
		<<
	  WsCompositeDependantView name ;
	<<'</p>'.
	2 timesRepeat: [
	str << '<p>'
	  ; << WsCompositeDependantIntermediateView name; <<'</p>'.
	 3 timesRepeat: [ str << '<p>'
	  ; << WsDependantView name; <<'</p>' ] ]
]
]
