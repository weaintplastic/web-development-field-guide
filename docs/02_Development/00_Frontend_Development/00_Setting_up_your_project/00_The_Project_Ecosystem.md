The following folder structure is the result of combining different workflows, concepts and tools that will be introduced to you in the following chapters. But here's a basic overview of what is going on and what you can expect.

First of all your project root is **NOT** your webroot. There is a lot more happening in your web projects ecosystem that shouldn't be shipped to production. The root of your project has the following basic structure:

	project
	|
	|-- db
	|
	|-- source
	|
	|-- templates
	|	|
	|	|-- dist
	|	|
	|	`-- src
	|
	|-- bower.js
	|-- gulpfile.js
	|-- package.json
	`-- README.md


* ``db`` is used for keeping versions of your database. You'll find more about that in the chapters on how to [collaborate on projects](./Collaboration/Setup_Collaborative_Projects)
* ``source`` holds your source files. This is your project's webroot containing all files that your project needs to be able to run run. Usually this is where your server side system like a CMS or Web App is installed.
* ``templates`` The templates folder is where you basically will work as a Frontend Developer. It contains [just static files](./Development/Frontend_Development/Writing_HTML/Deliver_static_templates) without any dependencies on a feature rich server side system like a Content Management System or Web Application Framework. Your templates folder is subdivided into two main folders: ``src`` and ``dist``.
	* ``src`` folder holds all your frontend development files like [LESS/SASS files](./Development/Frontend_Development/Writing_CSS/Structure_your_CSS), your [structured Javascript](./Development/Frontend_Development/Writing_Javascript/Structure_your_Javascript), Fonts and Images and [HTML and HTML partials](./Development/Frontend_Development/Writing_HTML/Structure_your_HTML)
	* ``dist`` contains your [compiled and minified CSS](./Development/Frontend_Development/Writing_CSS/Use_preprocessors), your [optimized Javascript](./Development/Frontend_Development/Writing_Javascript/Optimize_your_Javascript) and Images, your Fonts and your [compiled HTML files](./Development/Frontend_Development/Writing_HTML/Structure_your_HTML).
* bower.js is the configuration file for your [frontend dependencies managed with Bower](./Development/Frontend_Development/Setting_up_your_project/Setup_Dependency_Managers/Bower)
* gulpfile.js is the description file for your [build task runner based on Gulp](./Development/Frontend_Development/Setting_up_your_project/Setup_Build_System)
* package.json is the dependency description file for [NodeJS packages](./Development/Frontend_Development/Setting_up_your_project/Setup_Dependency_Managers/Node_Package_Manager)
* README.md is the file to [document your project](./Documentation/Frontend_Documentation)

Following the guidelines of this documentation your project's setup will probably look something like this at the end:

	project
	|
	|-- db
	|
	|-- source
	|
	|-- templates
	|	|
	|	|-- dist
	|	|	`-- assets
	|	|	|	`-- web
	|	|	|		|-- css
	|	|	|		|	|-- styles.css
	|	|	|		|	`-- styles.min.css
	|	|	|		|
	|	|	|		|-- js
	|	|	|		|	|-- scripts.min.js
	|	|	|		|	|-- plugins.min.js
	|	|	|		|	|-- vendor.min.js
	|	|	|		|	`-- vendor
	|	|	|		|		`-- *.js
	|	|	|		|
	|	|	|		|-- fonts
	|	|	|		`-- img
	|	|	|
	|	|	`-- styleguide.html
	|	|	`-- index.html
	|	|
	|	`-- src
	|		|-- inc
	|		|	|-- *.inc.html
	|		|	`-- *.inc.php
	|		|
	|		|-- assets
	|		|	`-- web
	|		|		|-- fonts
	|		|		|-- sass
	|		|		|	|-- generic
	|		|		|	|	`-- *.scss
	|		|		|	|
	|		|		|	|-- specific
	|		|		|	|	`-- *.scss
	|		|		|	|
	|		|		|	|-- settings.scss
	|		|		|	`-- styles.scss
	|		|		|
	|		|		`-- js
	|		|		|	|-- scripts
	|		|		|	|	`-- *.js
	|		|		|	|
	|		|		|	|-- plugins
	|		|		|	|	`-- *.js
	|		|		|	|
	|		|		|	|-- scripts.js
	|		|		|	|-- plugins.js
	|		|		|	`-- vendor.js
	|		|		|
	|		|		`-- img
	|		|
	|		|-- styleguide.html
	|		`-- index.html
	|
	|-- bower.js
	|-- gulpfile.js
	|-- package.json
	`-- README.md
