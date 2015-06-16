The concept of Gitflow might sound a little bit complex first, but as soon as you are working with it, you will totally understand the logic behind it and since it is very straight forward and intuitive, you shouldn't have bigger problems working with it.

The following chapter will cover most popular task when working with Gitflow.

#### Some rules and tips

* Never ever work directly on the `develop` and even less in the `master` branch.
* The `master` branch should contain ONLY stable code that is ready to be release
* Keep your repository clean and delete all the temporal branches that you don't need anymore (feature, release an hotfix branches).
* Use self-explaining names for your feature branches, so that other developers get an idea on what these branches cover
* Follow the concept of [Semantic Versioning](http://semver.org/)


#### Initialize giflow for your project

The first step is to create a `develop` branch out of the `master` branch. At thispoint, both `master` and `develop` contain the same codebase.

Once that the two historical branches have been settled, there is one golden
rule you should respect in any case:

> **A developer is not allowed to work directly against any historical branch.**

That means you should never ever work directly on `master` or `develop` except you are doing some hotfixes.

![Git workflow schema](./img/content/collaboration/create-develop-branch.svg "Git workflow schema")



#### Create features

Our example starts with two developers working on separate features. They both need to create separate branches for their respective features. Instead of basing it on `master`, they should both base their feature branches on `develop`:

![Git workflow schema](./img/content/collaboration/create-feature-branch.svg "Git workflow schema")

During the work on this features both commit their work on their branch and push it to the remote repository. After finishing their work on that feature, the feature branch now needs to be merged back into `develop`.

![Git workflow schema](./img/content/collaboration/merge-feature-branch.svg "Git workflow schema")


#### Creating a release

During development you gathered some new features on the `develop` branch and you and your team decide that you want to create a new release. While all other developers will continue working on their features, one developer will be responsible for creating a new release.

A release will be always branched off of `develop`. Your release branch will have the name `release/v0.1.0` where the version number follows the concept of [Semantic Versioning](http://semver.org/)

![Git workflow schema](./img/content/collaboration/create-release-branch.svg "Git workflow schema")

Sometimes you need to update things during the release cycle like update documentations, version-numbers or cleanup things. This tasks will be performed directly on your created release branch. You are still allowed to commit and push your changes locally an to remote.

Once a release is ready for deployment you merge it back to `master` and `develop`. It’s important to merge back into develop because critical updates may have been added to the release branch and they need to be accessible to new features right ahead.

![Git workflow schema](./img/content/collaboration/merge-release-branch.svg "Git workflow schema")

Following the concept of [Semantic Versioning](http://semver.org/) you need to apply a new tag to your merge commit and increment the *Major* or *Minor* version number `vmajor.minor.0`.

After the release is merged into our historical branches it can be deleted.



#### Applying hotfixes

After the deployment of a new release, you or a user discovers a bug that needs to be fixed immediately. You might currently work on a new feature or cover anything else. Since we have independent branches it is no problem to interrupt your work and  and switch over to create a hotfix for your project.

To address the bug, you create a maintenance branch off of master, fixes the issue with as many commits as necessary, then merges it directly back into `master` and `develop` and if available into the current `release`.

![Git workflow schema](./img/content/collaboration/create-hotfix-branch.svg "Git workflow schema")

Following the concept of [Semantic Versioning](http://semver.org/)you need to apply a new tag to your merge commit and increment the *Patch* number `v1.4.patch`

After the merge you are free to delete the hotfix branch.


### Extra: Some useful links

* [GitFlow Cheatsheet](http://danielkummer.github.io/git-flow-cheatsheet/)
* [Comparing workflows: Gitflow-workflow (Atlassian)](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
* [A successful Git branching model](http://nvie.com/posts/a-successful-git-branching-model/)
* [Gitflow cheatsheet (PDF)](http://www.marvinlabs.com/wp-content/uploads/2013/06/git-flow-cheatsheet.pdf)
