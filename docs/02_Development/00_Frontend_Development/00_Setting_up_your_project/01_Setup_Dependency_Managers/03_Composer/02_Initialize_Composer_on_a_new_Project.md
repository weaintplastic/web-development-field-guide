Use your command line and navigate to the root folder of your project and enter

	$ composer init

After that you'll get some questions ask in order to generate composers's configuration file `composer.json``

	Package name (<vendor>/<name>): vendor/name
	Description []: // leave empty
	Author: Roland Loesslein <info@weaintplastic.com>
	Minimum Stability []: // leave empty if not specified
	License []: // leave empty if not specified
	Would you like to define your dependencies (require) interactively [yes]? no
	Would you like to define your dev dependencies (require-dev) interactively [yes]? no
	Do you confirm generation [yes]? yes

To specify a directory where the composer libraries are saved to, please open up your `composer.json`and add the following line. I just tend to rename the default `vendor-dir` `vendor` to `composer_vendor` to follow the naming scheme that is used by Bower and NPM.

	"config": {
        "vendor-dir": "composer_vendor"
    }


You are now ready to install your third party libraries, frameworks and such using composer. Therefore you use your command line and the command `composer require`

	$ composer require erusev/parsedown:~1.0

The installed packages are saved in your projects root folder named `composer_vendor`. While your frontend dependencies are usually not needed during runtimem but compiled for shipping, your composer dependencies are most likely used during runtime. Make sure to **NOT** exclude your `composer_vendor` folder from being tracked by git.



> **Make sure you don't commit and push your dependencies source files to the repository but exclude them using .gitignore when [setting up your collaborative project](/Collaboration/Setup_Collaborative_Projects) **
