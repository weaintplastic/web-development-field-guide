> ### Good reasons why you should deliver static templates
> * Independent from any template language and therefore reusable in other systems
> * Good overview of the used component strategy and easy to read
> * Easy to refactor and clean up
> * Enable Automatic Testing
> * Easy to maintain and bugfix since you don't have to setup the whole system
> * Your teammates will love you

### Dynamic vs Static

Projects are usually based on feature-rich applications like a Content Management System, a Backend Framework or any other System. Working out templates for projects like this means you need to prepare your templates to work with the systems template engine.

Coding your template directly in the system's template language, creates a strong dependency of your template with the used system which makes it impossible to use the same template on another system with a different template language.

Heavily split up files and template-engine syntax throughout your HMTL makes your templates hard to read, your overall strategy is hard to oversee and your work becomes prone to failure.

A good and thought-through component strategy is often found close to the end of your template development process and requires changes and refactoring on your existing codebase. Since you are already pretty deep into the systems strategy, you probably think twice of refactoring your templates in order to cleanup your code and remove redundancy.

In previous sections we talked about component based workflows for your CSS and your Javascript. But theses are nothing without their HMTL equivalent, which is most likely hard to find and to extract from your systems template files.

Furthermore it is very time consuming for your teammates to maintain or debug your templates. To do so they not just have to setup the whole system on their local machine from scratch and get it running, they also have to initalize the system with the right content to work on a certain component or recreate a situation where others discovered a bug. Doing all this in order to just fix a little to medium CSS or Javascript Bug, sounds like overkill. In that case it would be definitely easier to have templates that just run out of the box without a complicated setup process.

When it comes to testing and specifically to [automated testing](./Testing/Frontend_Testing/Automated_Testing), it makes more sense to perform this task on static files then on everchanging dynamic files.

To fix all these problems, you should separate the templates your system is using and the templates you are creating as a static blueprint. This first sounds like double the work, but here's why it's not:

### The Workflow

Just think of the workflow you usually follow. You'd probably start coding a static template integrated in the systems rendering workflow without using the systems template syntax anyways. Sure, you'll use includes to outsource files and include them later on in a loop or just one time, but you basically start with plain HTML without the use of snippets or dynamic content. Then you start writing CSS for this templates and add your Javascript. After this is done you'll head back to your HTML and add template engine syntax on order to have dynamic contents.

Well, the workflow when using static templates first doesn't differ from the previous approach that much. But instead of loosing the static character of your templates when inserting dynamic elements of your template language, you keep your static templates at a separate place, copy them over to your system's template location and start making them dynamic there.

Working that way you have to make sure that the static templates are always up to date. Whenever you need changes to me made on the template DOM, you should first do them on your static templates, test them against your CSS and Javascript and then update your dynamic templates.


### Folder Structure

To separate your static templates from the dynamaic templates we have two folders in our project root. `source` holds your systems source files plus your dynamic templates anywhere deeply nested. `templates` contains all your static templates and assets that they need to work like CSS and Javascript and Images.

	project
	|
	|-- source
	|
	|-- templates


With the help of our build script we'll still be able to outsource HTML partials and include them into other scripts. If you are in need for a little bit more logic, **you still can go with PHP files**, but make sure your static templates don't rely on any database nore ask other developers to set up a complicated system. Your static templates are meant to run out of the box.
