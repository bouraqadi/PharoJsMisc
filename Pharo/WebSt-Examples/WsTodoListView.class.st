Class {
	#name : #WsTodoListView,
	#superclass : #WsView,
	#traits : 'WsTBootstrapView',
	#classTraits : 'WsTBootstrapView classTrait',
	#category : #'WebSt-Examples-TodoList'
}

{ #category : #rendering }
WsTodoListView >> renderContentOn: html [

	html render: WsListComponent.
	html button 
		text: 'Add';
		class: 'btn btn-primary'
		
]
