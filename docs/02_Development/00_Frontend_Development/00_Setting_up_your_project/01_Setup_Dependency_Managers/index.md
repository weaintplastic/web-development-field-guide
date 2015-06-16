Web development projects became pretty complex in the last few years. Each project has its own ecosystem and workflow, which is pretty hard to describe and document and even harder to overlook when you overtake responsibilities from another developer. Managing dependencies to different third party code like framworks, plugins, libraries and assests manually can be a huge pain in the ass. To keep track on project dependencies and stay up to date, we use the advantage of package managers.

> <h3>4 Reasons why we use package managers for our work</h3>
> 1. Easy and consistent way to describe dependencies
> 2. Simple way of managing dependency files and different versions
> 3. Simple hunting, finding, downloading and saving of third party stuff
> 4. Clean project repository, since the dependencie's source files won't be commited


Usually I use three different package managers. [Bower](http://bower.io) is used to manage frontend dependencies like jQuery plugins and third party libraries, [Composer](https://getcomposer.org/) keeps track on PHP dependencies and NPM (Node Package Manger) is our tool to manage the dependencies for [Node.js](http://nodejs.org/) which will be used to setup our build automation.
