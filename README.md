# PharoJsMisc

A collection of experiments and small libraries related to [PharoJS](https://github.com/PharoJS/PharoJS).

To install any of the projects below evaluate the following expression in a Playground, where `PROJECT_NAME` is replaced by the project you want to install.
```Smalltalk
Metacello new
  baseline: 'PROJECT_NAME';
  repository: 'github://bouraqadi/PharoJsMisc:pharoXX';
  load
 ```
Where XX is the Pharo image version number.

# Projects
## H
### HydrogenComponentsJS
Port to PharoJS of the [Hydrogen Component framework](https://github.com/bouraqadi/Components).
## S
### SmalltalkJsScripts
Support to run command lines via NodeJS.

Example: Start pharo image from NodeJS
1. In a playground run: `SjSmalltalkImageLaucher exportApp`
2. Close image
3. Go to image folder
4. Go to subfolder `/pharo-local/iceberg/bouraqadi/PharoJsMisc/HTML/SmalltalkJsScripts`
5. Run command line `node index.js`. Your original Pharo image should restart :-)

## W
### WebST: WebComponents with Smalltalk
WebST is a framework for building Web Components using PharoJS.
This project moved to a [dedicated repository](https://github.com/bouraqadi/WebST/).
