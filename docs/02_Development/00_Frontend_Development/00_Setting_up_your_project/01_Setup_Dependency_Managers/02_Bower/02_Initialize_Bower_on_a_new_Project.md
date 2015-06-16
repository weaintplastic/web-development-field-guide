Use your command line and navigate to the root folder of your project and enter

	$ bower init

After that you'll get some questions ask in order to generate bower's configuration file `bower.json``

	name: project-name
	version: 0.0.1
	description: Project Description
	main file: index.html
	what types of modules does this package expose?: //leave empty
	keywords: //leave empty
	authors: Roland Lösslein <info@weaintplastic.com>
	license: MIT
	homepage: //leave empty
	set currently installed components as dependencies?: Yes
	add commonly ignored files to ignore list?: Yes
	would you like to mark this package as private which prevents it from being accidentally published to the registry?: Yes


> **Make sure you don't commit and push your dependencies source files to the repository but exclude them using .gitignore when [setting up your collaborative project](/Collaboration/Setup_Collaborative_Projects) **

You are now ready to manage dependencies on third party libraries, frameworks and such using bower. Therefore you use your command line and the command `bower install`

You can install any kind of package, from a listed bower packet, to a github repository as well as a resource that is defined through a specific URL. The `--save-dev` attribute makes sure, that these dependencies will be listed in the `bower.json`file.

	// registered package
	$ bower install jquery --save
	// cetrtain version of a registered package
	$ bower install jquery#1.11.1 --save
	// GitHub shorthand
	$ bower install desandro/masonry --save
	// Git endpoint
	$ bower install git://github.com/user/package.git --save
	// URL
	$ bower install http://example.com/script.js --save

The installed packages are saved in your projects root folder named `bower_components`. Usually this components contain more than just the ressource you need. jQuery for example holds all the source files and you'll find the compiled jquery source in the `dist` folder of the package. To use it in your project you need to [include this files in your javascript](/Development/Frontend_Development/Writing_maintainable_and_modular_Javascript) workflow and make sure, that your [build system](/Development/Frontend_Development/Setting_up_your_project/Setup_Build_System) is aware of including it.
