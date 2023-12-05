Class {
	#name : #WsCounterComponent,
	#superclass : #Object,
	#traits : 'WsTViewFactory',
	#classTraits : 'WsTViewFactory classTrait',
	#category : #'WebSt-Examples'
}

{ #category : #accessing }
WsCounterComponent >> externalResources [

	^ { WsBootstrapResources bootstrap502 }
]

{ #category : #rendering }
WsCounterComponent >> renderContentOn: html [

	html div
		class: 'd-flex flex-column align-items-center p-1';
		with: [
			html div
				class: 'me-1 text-center fs-1';
				with: [ html text: 0 ].
			html div
				class: 'btn-group';
				with: [
					html button
						bePush;
						class: 'btn btn-primary';
						value: '+'.
					html button
						bePush;
						class: 'btn btn-info';
						value: '-'.
					html button
						bePush;
						class: 'btn btn-danger';
						value: 'x' ] ]
]

{ #category : #accessing }
WsCounterComponent >> title [
	^#Counter
]
