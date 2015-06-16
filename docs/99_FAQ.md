## [Writing CSS](/Development/Frontend_Development/Writing_CSS)

**What is the general recommendation here about using ids an html tags in css?**

The concept of [BEM-Class-Naming-Convention](/Development/Frontend_Development/Writing_CSS/Follow_a_Naming_Convention) automatically keeps you from using IDs for styling elements and you should defentitly avoid using IDs. Just use IDs where neccessary, like for labels for form inputs or anchor on elements.

**I see the point of [going mobile first](/Development/Frontend_Development/Writing_CSS/Go_mobile_first) but it feels more time consuming to create a desktop version first and then to find the common styles for both and move them into mobile version. On the other hand - it's hard to start with a mobile version as usually the designs are provided only for the desktop one and it's hard to predict at this stage how the site should look on mobile.**

Mobile first doesn't neccessarily mean you have to start with you mobile styles and then enhance them for desktop later on. Start with the responsive state you feel more comfortable with.
What worked you for me quite often is to start with desktop, but put your styles in the media query for mobile. Once you finished your desktop version you can test you mobile states by narrow your viewport. The styles that have to be overwritten in your mobile media query should first be copied to the desktop media query and then updated in your mobile state.

## [Writing HTML](/Development/Frontend_Development/Writing_CSS)

**I understand that [we should do static templates](/Development/Frontend_Development/Writing_HTML/Provide_static_templates) first before we start to integrate them with CMS. But how can we keep them up to date after we started to integrate them?**

The advantages of providing static templates is, that other developers that need to do hotfixes on the frontend your project don't need to setup the whole ecosystem including the database and server-side dependencies. They can simply apply theses changes to the static templates, test these, and then carefully copy things over to production. 
Of course, changes need to be applied twice. Most of the time this means replace files in the *source* folder with files of your *templates* folder. HTML structure changes need to be done by hand, which should be a simple and fast task since you already developed the changeset in you templates.

**[Modularizing HTML](/Development/Frontend_Development/Writing_HTML/Structure_your_HTML) sounds like a good idea especially in context of one-pagers or other small sites. I don't know though how it will work out with large scale sites when you will eventually be sourounded by tens or hundreds of html modules.**

The idea is to outsource modules as independet html files that can be included into you main files. For onepagers there'll probably just exist one main file, for bigger project you'll end up with different main files for different templates. You are free to structure your modules in subfolders in order to keep them organized.








