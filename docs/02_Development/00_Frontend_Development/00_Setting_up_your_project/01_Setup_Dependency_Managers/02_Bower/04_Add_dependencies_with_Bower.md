When working on a project, you need to add new dependencies everytime you want to include third party code.

To find packages in bower you can simply use the built in search of bower by executing the following statement on your command line.

	bower search flexslider

This will list all registered packages with containing the name *flexslider*. When you find the library that your are searching for, you can easily install it by execting

	bower install flexslider --save-dev

This will install the latest version of a library to your project and add's the dependencies to the `bower.json` file. But sometimes you need a certain version of a library. Installing jQuery 1.11.1 via bower might look like this

	bower install jquery#1.11.1 --save-dev

If you are not sure which versions are available for a certain package, you can use

	bower info jquery --save-dev

to get all the available versions listed in your command line.


If the package you need is not registered in bower, you can still use `bower install` but instead of using the package name, you can use a Git endpoint, an URL or many more (http://bower.io/docs/api/#install)


	// registered package
	$ bower install jquery --save-dev
	// cetrtain version of a registered package
	$ bower install jquery#1.11.1 --save-dev
	// GitHub shorthand
	$ bower install desandro/masonry --save-dev
	// Git endpoint
	$ bower install git://github.com/user/package.git --save-dev
	// URL
	$ bower install http://example.com/script.js --save-dev
