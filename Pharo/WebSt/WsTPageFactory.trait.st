Trait {
	#name : #WsTPageFactory,
	#category : #'WebSt-Views'
}

{ #category : #rendering }
WsTPageFactory >> pageHtml [
<pharoJsSkip>
	^ WsHtmlPage new
		  rootView: self;
		  html
]
