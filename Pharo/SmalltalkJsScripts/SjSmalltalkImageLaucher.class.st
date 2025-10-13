Class {
	#name : 'SjSmalltalkImageLaucher',
	#superclass : 'SjScript',
	#category : 'SmalltalkJsScripts',
	#package : 'SmalltalkJsScripts'
}

{ #category : 'utilities' }
SjSmalltalkImageLaucher >> currentImagePathString [

	<jsLiteralGenerator>
	^ Smalltalk imagePath
]

{ #category : 'utilities' }
SjSmalltalkImageLaucher >> currentVmPathString [

	<jsLiteralGenerator>
	^ Smalltalk vm fullPath
]

{ #category : 'utilities' }
SjSmalltalkImageLaucher >> start [
	super start.
	self withVm: self currentVmPathString startImage: self currentImagePathString 
]

{ #category : 'utilities' }
SjSmalltalkImageLaucher >> withVm: vmPathString startImage: imagePathString [

	^ self mergeThenExecAsync: {
			  vmPathString.
			  imagePathString}
]
