SourceTree is a GUI for Git offered for free by [Atlassian](https://www.atlassian.com/) and it perfectly integrates Gitflow. Therefore the following chapter covers the basic task of Gitflow and how to perform them with the use of Sourcetree.

The first thing to do is to download and install SourceTree from their [official page](http://sourcetreeapp.com/).



### Clone a Git repository

Creating a new local repository form a remote source in Sourchtree you have to clone a project. To do so, click on the `Clone / New` button (top-left corner), select the 'Clone Repository' tab.

![Clone a git repository](/web-development-field-guide/img/collaboration/clone-repo.png "Cloning a git repo")  

The Form will ask you for a source path (most likely an URL) which points to the remote repository and a destination path where to initialize the repository locally on your machine. Just give it a name and you should be done.


### Actions: Stage, commit and push.

It's really important to know the difference between staging, do a commit and
push commits. Let's define these 3 concepts:
* **Staging** is the process where you can select which changes should be committed afterwards. This gives you the chance of bundle changes to have logical commit packages. You can select files or even chunks of code in files to be committed.
* **Commit** is the process when your staged changes will be added to the git history. By providing a commit message you are able to describe your commits for others. It is important that you use descriptive commit messages and commit changes in logical packages. Choose many commits with small changes before less commits with a lot of bundled commits. A commit just happens locally, the remote repository didn't notice anything yet.
* **Push** With a push, all the commits are sent to the remote server, so other users
can access and get these changes.

If you want to know more about this, please visit the [official documentation](http://git-scm.com/docs)


### Merging branches

Merging needs to be performed everytime you need to to get updates of another branch to be applied to your branch.

To merge one branch into your current branch, just click on `Merge`

![Merging branches](.//img/collaboration/merge.png "Merging branches")  

In that dialog you need to choose the commit of a branch you want to merge into the current branch. Usually this causes some changes to your code since it get's updated. Sourcetree automatically commits theses changes, all you have to do is push them to the remote server.

If conflicts happen you need to solve them first before being able to commit and push merge changes.


### Initializing GitFlow

As mentioned, Sourcetree prefectly integrates Gitflow. To initialize a repository for Gitflow you just need to click on the `Git Flow` button.

![Init Gitflow in SourceTree](.//img/collaboration/init-gitflow.png "Init Gitflow in SourceTree")  

You should leave the names of the branches as they are and just hit `OK`. Sourcetree will then create an additional `develop` branch off of `master`.


#### Adding new features

To create a new feature click on `Git Flow` and then in `Start New Feature`. You
should see a dialog like this:  

![New feature](.//img/collaboration/new-feature.png "New feature")  

Add a descriptive name and hit `OK`. Sourcetree automatically creates the feature brachen following the naming convention `feature/feature-name` and you are atomatically switching to that branch.

** Note that this branch is just visible for you at this point. To open this branch for collaboration you first need to push the branch to remote **


You can work on this branch until you finish your feature. At that point and after
testing everything, you should merge this feature into the `develop` branch. But
Click again in the `Git Flow`, you'll see a `Finish feature` button. Clicking this button is all you need to do. Sourcetree automatically merges your feature branch with `develop`.


**_NOTE: You may find problems during this process, as sometimes other people
release versions, or there are simply conflicts between files. It's not possible
to cover all those cases in this guide, but the Git error log is explicative, so
please check the error that Git returns and do what they require you do to (most
likely resolve conflicts or commit/discard changes)_**


#### Releasing a new version

To create a new release click on `Git Flow` again, and then on the `Start New Release` button. A dialog like this will be opened:  

![New release](.//img/collaboration/new-release.png "New release")

By adding a new version nummber for the name of the release following the version name guideliens will create a new release branch and opens a reales cycle. You can now start performing deployment-oriented task like rewriting documentations, cleanup things or increment versioning numbers throughout your code.  

Once that everything has been tested and it's ready to go live, you can finish
the release by clicking again on `Git Flow` > `Finish release`. SourceTree will
merge all branches automatically. You don't need to add a name for the tag since Sourcetree is automatically applying the release branch name as the tagname. Sourcetree will automatically merge your release into `master` and `develop`.


#### Applying a hotfix

When a bug in production is discovered, you have to create a hot fix for it. By
now you can probably guess what do to. And yes: Click on `Git Flow` > `Start New Hotfix`,
and select the name for your hot fix branch:  

![Hotfixes](.//img/collaboration/new-hotfix.png "Hotfixes")  

As it should be familiar for you already: Fix the bug, and when it's finished,
just finish the hot fix but clicking again in `Git Flow` > `Finish Hotfix`. SourceTree
will (once again!) merge all the branches, delete the hotfix branch, etc.


#### An Example

If you follow all this rules your project should look something like this

![Gitflow overview in SourceTree](.//img/collaboration/gitflow-overview.png "Gitflow overview in SourceTree")




### Some useful links

* [Git cheatseet](https://training.github.com/kit/downloads/github-git-cheat-sheet.pdf)
* [Git visual cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
* [Git official docs](http://git-scm.com/docs)
