Class {
	#name : #WsBootstrapResources,
	#superclass : #SharedPool,
	#classVars : [
		'Bootstrap502'
	],
	#category : #'WebSt-ExamplesOLD-Bootstrap'
}

{ #category : #accesing }
WsBootstrapResources class >> bootstrap502 [

	^ Bootstrap502
]

{ #category : #'class initialization' }
WsBootstrapResources class >> initialize [

	Bootstrap502 := WsCompositeElement withAll: 
	{WsCssLink new
		          url:
			          'https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css';
		          integrity:
			          'sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC';
		          crossoriginAnonymous;
		          yourself.
 WsJsScript new
		         url:
			         'https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js';
		         integrity:
			         'sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM';
		         crossoriginAnonymous;
		         yourself}
]
