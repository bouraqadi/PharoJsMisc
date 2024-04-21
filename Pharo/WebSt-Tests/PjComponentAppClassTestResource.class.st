Class {
	#name : #PjComponentAppClassTestResource,
	#superclass : #TestResource,
	#instVars : [
		'classFactory',
		'appClassesDict'
	],
	#category : #'WebSt-Tests-Support'
}

{ #category : #creating }
PjComponentAppClassTestResource >> appClassSuperclass: appSuperclass traits: appTraits componentClass: componentClass [

	| descriptor |
	descriptor := self
		              descriptorForSuperclass: appSuperclass
		              traits: appTraits
		              componentClass: componentClass.
	^ appClassesDict at: descriptor ifAbsentPut: [
		  self
			  newAppClassSuperclass: appSuperclass
			  traits: appTraits
			  componentClass: componentClass ]
]

{ #category : #creating }
PjComponentAppClassTestResource >> descriptorForSuperclass: appSuperclass traits: appTraits componentClass: componentClass [

	^PjComponentAppForTestDescriptor new
		 superclass: appSuperclass;
		traits: appTraits;
		componentClass: componentClass 
]

{ #category : #creating }
PjComponentAppClassTestResource >> newAppClassSuperclass: appSuperclass
			  traits: appTraits
			  componentClass: componentClass [
	| appClass |
	appClass := classFactory
		            newSubclassOf: appSuperclass
		            using: appTraits.
	appClass rootComponentClass: componentClass.
	^ appClass
]

{ #category : #running }
PjComponentAppClassTestResource >> setUp [

	super setUp.
	classFactory := ClassFactoryForTestCase new.
	appClassesDict := Dictionary new
]

{ #category : #running }
PjComponentAppClassTestResource >> tearDown [ 

	super tearDown.
	classFactory cleanUp
]
