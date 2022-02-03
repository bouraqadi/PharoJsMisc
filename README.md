# PharoJsMisc

A collection of experiments and small libraries related to [PharoJS](https://github.com/PharoJS/PharoJS).

To install any of the projects below evaluate the following expression in a Playground, where `PROJECT_NAME` is replaced by the project you want to install.
```Smalltalk
Metacello new
  baseline: 'PROJECT_NAME';
  repository: 'github://bouraqadi/PharoJsMisc:main';
  load
 ```

# Projects
## W
### WebComponents
Framework for building [Web Components](https://www.webcomponents.org/) using PharoJS. 
Each web component can be used via a custom HTML tag (e.g. <pj-counter>). When you use that tag in the HTML code, it creates DOM object that is an instance of a custom class which provides the appearance and the behavior provided by the developer.

To create a subcomponent, define a subclass of `WcWebComponent`. Some examples are provided. You can se them in action using the `demo` message as in the following example. It will transpile the code to JS and open a web browser and display running the demo.
  ```smalltalk
WcCounterDemo demo.
```
Both rely on the same HTML file. Their code is straight forward with 2 methods :
- Instance side `initialize` method: Creates a DOM element with a custom tag and appends it to the document.
 ```Smalltalk
  initialize

	| counterElement |
	super initialize.
	counterElement := document createElement: 'pj-counter'.
	document body appendChild: counterElement
  ```
  - Classe side `appClasses`: Ensures that all needed component classes are transpiled to JS.
  ```Smalltalk
  appClasses 
	^super appClasses, { WcCounterComponent }
  ```
