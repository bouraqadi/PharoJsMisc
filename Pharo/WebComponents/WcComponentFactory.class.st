Class {
	#name : #WcComponentFactory,
	#superclass : #Object,
	#instVars : [
		'domClassName',
		'tagName',
		'innerHTML',
		'presenterClass'
	],
	#pools : [
		'PjBrowserGlobals'
	],
	#category : #WebComponents
}

{ #category : #building }
WcComponentFactory class >> buildWith: presenterClass [

	self new buildWith: presenterClass 
]

{ #category : #building }
WcComponentFactory >> build [

	self
		generateDomClass;
		defineTag
]

{ #category : #building }
WcComponentFactory >> buildWith: aPresenterClass [

	self presenterClass: aPresenterClass.
	self build
]

{ #category : #building }
WcComponentFactory >> defineTag [
	window customElements define: tagName domClass: self domClass
]

{ #category : #accessing }
WcComponentFactory >> domClass [

	^ window eval: domClassName
]

{ #category : #accessing }
WcComponentFactory >> domClassName [

	^ domClassName
]

{ #category : #accessing }
WcComponentFactory >> domClassName: anObject [

	domClassName := anObject
]

{ #category : #building }
WcComponentFactory >> generateDomClass [

	| jsCode jsScript |
	jsCode := String streamContents: [ :str | 
		          self writeClassJsCodeInto: str ].
	jsScript := document createElement: 'script'.
	jsScript type: 'text/javascript'.
	jsScript innerHTML: jsCode.
	document body appendChild: jsScript
]

{ #category : #accessing }
WcComponentFactory >> innerHTML [

	^ innerHTML
]

{ #category : #accessing }
WcComponentFactory >> innerHTML: anObject [

	innerHTML := anObject
]

{ #category : #accessing }
WcComponentFactory >> presenterClass [

	^ presenterClass
]

{ #category : #accessing }
WcComponentFactory >> presenterClass: aPresenterClass [

	presenterClass := aPresenterClass.
	self
		domClassName: presenterClass domClassName;
		tagName: presenterClass tagName;
		innerHTML: presenterClass viewInnerHTML
]

{ #category : #accessing }
WcComponentFactory >> tagName [

	^ tagName
]

{ #category : #accessing }
WcComponentFactory >> tagName: anObject [

	tagName := anObject
]

{ #category : #building }
WcComponentFactory >> writeClassJsCodeInto: stream [

	stream
		<< 'class ';
		<< domClassName;
		<< ' extends HTMLElement {';
		<< '
	constructor() {
    super();
    const template = document.createElement("template");
    template.innerHTML = ''';
		<< innerHTML;
		<< ''';
    this.attachShadow({mode: "open"});
    this.shadowRoot.appendChild(document.importNode(template.content, true));
	 this.presenter = ';
		<< presenterClass name;
		<< '.pj_view_(this);
  	}
}'
]
