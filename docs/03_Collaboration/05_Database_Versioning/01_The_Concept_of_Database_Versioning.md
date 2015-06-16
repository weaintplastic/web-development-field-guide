Versioning a database means sharing all changes of a database that are neccessary for other team members in order to get the project running properly. Database versioning starts with a settled database schema (skeleton) and optionally with some data.
To track and share changes of a database, we are working with a quite common concept, which is based on delta-scripts. So called migration- or patch-files allow to perform changes on an existing database instead of starting from scratch with an updated dump. A patch-file describes how to transform an exisiting database to a new state and how to revert them in order to get back to the old state.


### Folder Structure

Everything that is related to the database of a project can be found in the `db` folder located in the project root. 

    project
    |
    |-- db
        |-- schema.sql
        |-- data.sql
        |-- migrations
            |-- patch-1.*
            |-- patch-2.*

`schema.sql` represents the most up to date dump of a database structure (skeleton) without containing any data. `data.sql` holds a series of `INSERT` statements in order to seed data for you database. This can be data for others to set up the project initially with default data, or enable others to bootstrap the project from an advanced state when they join later in the development cycle. The `migrations` folder holds seqentially ordered patch files. 


### Versioning Workflow

At some point in your development process you have to decide to set a settled codebase which you and others will update and extend. This usually happens once you are not working alone on a project and you have to share a common codebase with others, or at least when you create your first release.

Same thing happens with the database. Once you're defining a common codebase you are creating a snapshot of your current database, which will act as the base for all further database manipulations.

![Database Patching](./img/content/collaboration/db-versioning-01.svg "Database Patching")

After creating your first release, you and your teammates will start working on new features in your dedicated feature branches. Some of this features may rely on database changes, like introducing new tables, alter existing table structures or adding critical data to a certain tables.
Once your feature code is ready to share it with the others, you'll merge it to the develop branch. At this point your changes to the database become relevant for other developers. To tell them what changes need to be performed, you are going to create a patch file.
Every patch has it's own file, so a project probably ends up with a bunch of patch files in your migrations folder.

![Database Patching](./img/content/collaboration/db-versioning-02.svg "Database Patching")

Once your patches are shared within the `develop` branch, every teammate is able to update his database corresponding to the current codebase. [A migration manager tool]() will help to decide which patches are waiting to be applied and which patches have already been applied to your database.

This basic workflow will exist throughout the whole project. For each database change based on a new feature implementation a patch file will be created and shared throughout the team. So everytime you are going to update your codebase and pull or merge the newest version of develop into your local repository, be sure to check on new patch files that need to be executed.

![Database Patching](./img/content/collaboration/db-versioning-03.svg "Database Patching")

Imagine you start working on a project that lives since years and the current version is v4.22.0. Following the suggested approach, you'll start setting up your database using the `schema.sql` and `data.sql` that were created during the first release cycle and start executing all patch files that were created during the development process until today.

The risks are pretty high, that the migration will fail at some point an you'll never reach the neccessary database state that is neccessary to make the current codebase work on your local environment.

To avoid scenarios like this, we suggest to create an up to date dump of your schema and date for at least every minor and major release.

![Database Patching](./img/content/collaboration/db-versioning-04.svg "Database Patching")

A developer who starts working on a project at this state will initilize his local project environment with the database dumps that were provided with the release of version `v4.22.0`. Since these dumps already contain all the affects of previous patches, he only has to execute the migration file `patch-86` in order to update his database to work with the current codebase of the `develop` branch.

So we covered working with features and related database changes, but even hotfixes can cause changes that need to be shared. Same as for features, changes that need to be performed during the process of a hotfix.

![Database Patching](./img/content/collaboration/db-versioning-05.svg "Database Patching")

Applying all these concepts to your workflow, the result of your database versioning should look like this.

![Database Patching](./img/content/collaboration/db-versioning.svg "Database Patching")

