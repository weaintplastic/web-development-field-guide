> **Two or more developers working on the same feature**

It is pretty common that more than one developer is working on the same feature. It is no problem to work on the same `feature` but you should integrate continuously and therefore commit and push changes frequently and pull from remote. Therefore merge conflicts are detected early and are easier to resolve. A better and much more solid way is to wort with sub-branches for each developer of your `feature` brancht that will be merged back every once in a while.

> **A new version is released with an unfinished feature**

This is a solid indicator that you didn't respect the rule of just merging features back to `develop` only if the work on that is finished.


> **A feature doesn't work when merging it back to develop**

If other developer worked on features and finished them before you finished your feature the `develop` branch will be more up to date then the version you branched off when creating your version. Git won't allow you to merge your feature to `develop` without merging `develop` into your feature branch anyways, but it is super important, that you are testing your feature **after** merging the most up to date version of `develop` and **before** merging your feature back to `develop`.

> **When merging I get conflicts**

Conflicts are not a bad thing, they are just annoiying but they happen from time to time and are totally natural when collaborating with other developers. Conflicts prevent you from overwriting others code or get your own code overwritten.

To solve such conflicts you probably need to use a so called merge tool. Soucetree perfectly integrates with a lot of merge tools, a free and quite proper solutions is [P4Merge](http://www.perforce.com/downloads/free/p4merge).

To avoid conflicts be sure to commit and push your changes and pull changes from others as frequently as possible and not at the end of your work.


#####*When I perform a merge, I get conflicts*

Remember that to be able to merge without conflicts, the branches to be merged
must have the same status origin. This means that the same file should not change
in different branches at the same time.

Nevertheless, to have such a problem is more often than desired because most of
times, more than one developer modifies the same file in different branches.

The most effective way to solve this is top manually resolve the conflict, selecting
the chunks of code that must be present in the final commit.

However, we can minimize the impact of this if we are always sure that the branch
to merge contains the latest changes from the branch that this one is going to be merged
to (if merging A into B, be sure that A contains also the changes from B).
