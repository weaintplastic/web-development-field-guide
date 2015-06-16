> ### Good reasons why you should workout a styleguide
> * Nice tool for making collaborating of multiple frontend developers easy
> * Fast way of continuously testing your components visually
> * Good documentation of your projects ecosystem of components and styles

You probably heard about styleguides before in the context of design. But what has frontend development todo with styleguides? Well, imagine you are working on a large scale project and you've created lots of lots of components based on HTML, CSS and Javascript. You most likely created a good strategy to reuse as many styles as possible following the principles of Object Oriented CSS. While this is a good way to automatically document the scope of your websites component, it is still hard for somebody else to exactly get an overview of which components are already existing, how to use them and what different states they can get.

For simplification, think of a button framework you've created for your website. There are solid colored buttons, buttons that can be rounded, buttons with just an underline and buttons with just a border. Each of this buttons can be used in 3 different sizes and you support a wide range of different colors for each of them. In addition each button has a selected and disabled state. In short: There are a bunch of variations that are pretty hard to overlook for others if they are not specified at a certain place.

The best way to show off what components are already existing and how they can be used is to create a styleguide for your teammates. The styleguide is just one simple static html file that covers all the different components of your website. From basics like typography, icons and text styling to custom components like teasers, sliders, buttons as well as the usage of your grid system.

Every time you are happy with a newly created component, simply add it to your styleguide. Your teammates will get a super simple, nice and easy introduction to the ecosystem of your website whenever they are new to the project and have to make changes.

On the other hand, styleguide driven development will help you to visually test your components continuously without the need of clicking through every single page of your website.

If you follow the principles of [writing CSS](./Development/Frontend_Development/Writing_CSS/Write_Object_Oriented_CSS) and [Javascript](./Development/Frontend_Development/Writing_Javascript/Write_Object_Oriented_Javascript), setting up a styleguide should be no big deal.

### A basic example

A basic example of how a styleguide can look like can be found in the [examples section](./examples/04_Styleguide/styleguide.html).

<img src="/docs/img/content/styleguide.png" width="100%" height="auto" />
