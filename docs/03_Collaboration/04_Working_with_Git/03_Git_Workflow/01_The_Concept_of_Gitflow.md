Having a collaborative environment is not only about being able to share and
merge code without pain but also about being able to track versions, see _who made what_
and easily see what is deployed to production and/or should be deployed. That's the
main why we highly recommend and encourage you to use GitFlow in ALL the projects
that you're involved in.


### GitFlow model: Some concepts.

This model is based on assigning different roles to different branches inside the
repository. There are 4 types of branches in GitFlow:
* Historical branches
* Feature branches
* Release branches
* Maintenance branches

Every type of branch has a different meaning, and they are used for different things.


### Historical branches

The Git-Flow workflow uses two branches to keep track of the history of your project. While the `master` branch holds the official release history, the `develop` branch servers as the branch for integrating features. Usually all commits in the `master` branch are are taged with a proper version number. I suggest to follow the rules of [Semantic Versioning](http://semver.org/).

You'll never work directly on one of these to branches. Your workflow works pretty much around these two branches.


![Git workflow schema](/web-development-field-guide/img/content/collaboration/historical-branches.svg "Git workflow schema")



#### Feature branches

Each new feature is created in its own branch. Instead of branching off of `master`, features are branched of from `develop`. Whenever a feature is complettet, it gets merged back into `develop`. When creating new features you should never work on `master` or `develop` directly

![Git workflow schema](/web-development-field-guide/img/content/collaboration/feature-branches.svg "Git workflow schema")

So if you work an a project that already has an existing codebase in `develop` and you start working an a new feature, you have to created a new feature branch and branch of from `develop`. As long as you work on this feature, you'll work against this feature branch. This will allow you to easy switch back to the `develop` branch or stop working on a feature and start a new one without running into conflicts. Each feature should have a descriptive name like `feature/career-api` that help you and other developer to figure out what this feature brach is all about.

Feature branches don't have to be pushed to the remote repository necessarily. After finishing the development of a feature, it need's to be merged back to `develop`. For a cleaner repository you should delete the feature branch afterwards locally as well as in the remote repository.

> Feature workflow in a glimps
> 1. branch of `develop`
> 2. name feature branch `feature/feature-name`
> 4. merge back into `develop`
> 5. delete feature branch



#### Release branches

![Git workflow schema](/web-development-field-guide/img/content/collaboration/release-branches.svg "Git workflow schema")

Once your `develop` branch hold enough features ready for a release you create a new release by fork a new release branch off of `develop`. The name of your new release branch follow the rules of [Semantic Versioning](http://semver.org/) (e.g. v0.1.0). When branching for a new release from `develop` you initialize a release cycle, so no new features can be added after this point — only bug fixes, documentation generation, and other release-oriented tasks should go in this branch.

Once it's ready to ship, the release gets merged into `master` and tagged with a version number. In addition, it should be merged back into `develop`, which may has progressed with new features since the release was initiated.

Creating dedicated branches for preparing releases enables on team to polish and prepare a release while the other team is continuing working on new features. It is also nice to see release tasks like "this week we're shipping version 4.0.0" reflected in the repository

> Release workflow in a glimps
> 1. branch of `develop`
> 2. name release branch `release/v0.0.0`
> 3. tag release like `v0.0.0`
> 4. merge back into `master` and `develop`
> 5. delete release branch



#### Maintenance branches

Fixing bugs and quickly patch production releases happens on Maintenace or `hotfix` branches. This is the only branch type that is allowed to directly branch off of `master`. Once a `hotfix` is made, it should be merged back to `master` and `develop` or the current `release` branch instantly. When merging a `hotfix` back to `master` it should be tagged with an updated version number (e.g. v0.1.**1**).

![Git workflow schema](/web-development-field-guide/img/content/collaboration/maintenance-branches.svg "Git workflow schema")


> Hotfix workflow in a glimps
> 1. branch of `master`
> 2. name hotfix branch `hotfix/xyz`
> 4. merge back into `master`, `develop` and current `release`
> 3. tag master with new version number
> 5. delete hotfix branch




#### Ressources

* [GitFlow Cheatsheet](http://danielkummer.github.io/git-flow-cheatsheet/)
* [Comparing workflows: Gitflow-workflow (Atlassian)](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
* [Gitflow (Atlassian)](https://www.atlassian.com/pt/git/workflows#!workflow-gitflow)
* [A successful Git branching model](http://nvie.com/posts/a-successful-git-branching-model/)
* [Gitflow cheatsheet (PDF)](http://www.marvinlabs.com/wp-content/uploads/2013/06/git-flow-cheatsheet.pdf)
