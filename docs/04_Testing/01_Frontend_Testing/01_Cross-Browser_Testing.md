Cross Browser Testing can be a pretty painful job. Different versions of different browsers on different platforms can make testing a complex thing. Here we want to share some strategies and tools that will help you to choose the right testing environment.

I usually test on the following Browsers:

* IE8
* IE9
* IE10
* IE11
* Firefox (latest Version)
* Safari (latest Version)
* Chrome (latest Version)

In more detail we aim to support theses browsers at the following level:

**Support level 1**
* Windows: IE 10+, Chrome (latest), Firefox (latest), Safari (latest)
* Mac OS: Chrome (latest), Firefox (latest), Safari (latest)

**Support level 2**
* Windows: IE8, IE9, Chrome (latest), Firefox (latest)

**Support level 3**
* anything else


### Native IE Versions
Since the feature to select different rendere engine versions on the developer tools in Internet Explorer are gone with version 11, and testing on a non-native version of IE is in general not the best choice, you should try to test on native IE installations. Microsoft provides a bunch of native environments for your virtual machine. Since you are already using VirtualBox for the setup of your local Vagrant environment, all you have to do is to visit [modern.ie](https://www.modern.ie/de-de/virtualization-tools) and grab an image of the browser and operating system you need. Basically you should have IE11, IE10, IE9 and IE8 available for testing.
After you've installed and setup your testing environments following the instructions on *mondern.ie* you can start your virtual machine and access your local host, [using xip.io]() and your IP address. This is the most powerful way to test your website on a native development environment.


### Multiple Firefox Versions
You can install multiple Firefox Versions on your system. A complete list of of Firefox realeases can be found here: https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/. To work with different versions of Firefox it is neccessary to run these versions with different Firefox profiles.

Mozilla itself provided a pretty complete guide on how to do that on Windows: https://developer.mozilla.org/en-US/docs/Mozilla/Multiple_Firefox_Profiles

On MacOS there is a pretty handy tool for that which is called [MultiFirefox](http://davemartorana.com/multifirefox/)


### Multiple Chrome Versions
It is also possible to install multiple Google Chrome Versions if needed. Older versions can be found here http://www.oldapps.com/google_chrome.php

A guide on how to install multiple versions can be found here: https://borttsvetkov.wordpress.com/2011/07/15/running-multiple-versions-of-google-chrome-on-windows/
