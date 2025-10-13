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
Support to run system command lines via NodeJS.

#### Example 1: echo, pwd, ls, and more
1. In a playground perform: `SjDemo playground`, as a result, you get:
  + A terminal will open run node with `SjDemo` class. You'll see between communication logs, the result of `echo`, `pwd`, and `ls` called from the `start` method of `SjDemo`
  + A PharoJS playground opens where you can interact with the exported code runing on NodeJS
2. In PharoJS playground type `script := bridge evalBlock: [SjScript default']` to initialize `script` variable with a proxy to JS object `SjScript default`.
3. Now perform `script echo: 'Hello from Pharo']` with the `print It` menu. As a result, ou get the `'Hello from Pharo'` string displayed on the playground, and on the terminal
3. You can use the same approach and experiment with `pwd` or `ls`, as well as its variants such as `ls: '-l ~''.
4. You can run your custom command lines using `execSync:` such as `script execSync: 'ls -l ~ | wc'`

#### Example 2: Start pharo image from NodeJS
1. In a playground perform: `SjSmalltalkImageLaucher exportApp`
2. Close image
3. Navigate to the image folder
4. Go to subfolder `/pharo-local/iceberg/bouraqadi/PharoJsMisc/HTML/SmalltalkJsScripts`
5. Run command line `node index.js`. Your original Pharo image should restart :-)

## W
### WebST: WebComponents with Smalltalk
WebST is a framework for building Web Components using PharoJS.
This project moved to a [dedicated repository](https://github.com/bouraqadi/WebST/).
