Use your Command Line and navigate to the root folder of your project and enter

    $ npm init

This command will ask you some questions to generate a `package.json`file in your project route that describes all the dependencies of your project. This file will be updated when adding further dependencies during the development process, for example when you [set up your build system](/Development/Frontend_Development/Setting_up_your_project/Setup_Build_System).

    name: (project-name) project-name
    version: (0.0.0) 0.0.1
    description: The Project Description
    entry point: //leave empty
    test command: //leave empty
    git repository: //the repositories url
    keywords: //leave empty
    author: // your name
    license: N/A

After you've finished the process of initializing your project using the Node Package Manager, node.js created a `package.json`file in your project's root direcotry similar to this one:

    {
      "name": "project-name",
      "version": "0.0.1",
      "description": "Project Description",
      "main": "index.js",
      "scripts": {
        "test": "echo \"Error: no test specified\" && exit 1"
      },
      "repository": {
        "type": "git",
        "url": "the repositories url"
      },
      "author": "your name",
      "license": "N/A"
    }

