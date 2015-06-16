When you recently cloned a project that contains a `package.json`, you can be sure, that the project an its workflow depends on other libraries and scripts. To load all this dependencies open up your command line and navigate to the root of your project and execute:

	$ npm install

This command will read all the dependencies that were defined in the `package.json` file and automatically installs them for you.
