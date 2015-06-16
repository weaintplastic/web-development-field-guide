### Split up your files

Structuring your Javascript basically means to split up your files and separate your own Javascript from the one that comes from others.

There are basically three categories we can assign Javascript code to:

* **Plugins** As jQuery is one of our most used Javascript Toolset, we are using jQuery plugins very often. Even your own jQuery Plugins fit into this category.
* **Vendor** All 3rd party Javascript code like Frameworks and Libraries ( jQuery, BackboneJS, ...) is assigned to this category.
* **Scripts** All scripts that are related to your websites logic are Javascripts that should fit in here.

### Outsource 3rd party dependencies
Including 3rd party code to the core files of your project doesn't just blow up your project repository, it is also hard to get an overview of which files are the ones that belong to the project core, an which ones are coming from others. Since we use [Bower](/Development/Frontend_Development/Setting_up_your_project/Setup_Dependency_Managers/Bower) for frontend dependency management, we keep 3rd party code outside the actual project scope and inject it using the power of concatenation and our [build script](/Development/Frontend_Development/Setting_up_your_project/Setup_Build_System).


### Use the power of concatenation

Instead of putting everything by yourself in one large javascript file, you should split up Javascript into files and include them automatically using the power of your [build script](/Development/Frontend_Development/Setting_up_your_project/Setup_Build_System).

A include of vendor files in your `vendor.js` could look something like this:

    //= include ../../../../bower_components/jquery/dist/jquery.js

Following the rules of Object Oriented Javascript makes it easy to decide how to split up your own javascript files: One file per Class (Object). Your project should end up with the most important three javscript files that need to be included in your code: vendor.min.js, plugins.min.js and scripts.min.js.

### Your folder structure


Following these simple rules your source folder structure could look like this:

    js
    |-- plugins
    |   `-- jquery.teaser.js
    |  
    |-- scripts
    |   |-- block--intro.js
    |   |-- block--products.js
    |   |-- teaser.js
    |   `-- main.js
    |  
    |-- plugins.js      // includes jquery.teaser.js and all further jQuery plugins
    |-- scripts.js      // includes block--intro.js, block--prodcuts.js, teaser.js, main.js and all other website scripts
    `-- vendor.js       // includes all 3rd-party Javascript


In comparison this is how your distribution folder structure will look like.

    js
    |-- plugins.min.js
    |-- scripts.min.js
    |-- vendor.min.js
    `-- modernizr.min.js    // Modernizr need to be included
                               at the top of your HTML. Therefore
                               it is excluded form vendor.js

Sometimes you need scripts to be included at the top of your HTML. To do so, it is no shame to exclude this particular script form concatenation and put it to the distribution folder by hand
