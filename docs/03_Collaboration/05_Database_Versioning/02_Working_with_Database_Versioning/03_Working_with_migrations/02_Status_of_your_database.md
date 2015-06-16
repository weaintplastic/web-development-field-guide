To get an overview of the current status of your database, Phinx provides a command `status` that tells you exactly which migrations you've already executed and which ones are available for execution. To get the current status of you database execute the following statement in your command line:

    php vendor/bin/phinx status

This statement will output somehting similar to the following table:

    Status  Migration ID    Migration Name 
    -----------------------------------------
         up  20141219115236  FeatureBlog
         up  20141219134559  FeatureCotactForm
         up  20141219134639  HotfixLightbox
       down  20141219134721  FeatureCareersApi
       down  20141219134850  FeatureSocialFooterMenu

This overview tells me, that my database already migrated changes up until `HotfixLightbox`, and that there are two migrations available to be executed.
In order to bring you database up to date you should follow the instructions in the chapter on [Upgrade your Database](/Collaboration/Database_Versioning/Working_with_Database_Versioning/Working_with_migrations/Upgrade_your_database).

### More information
You'll find detailed information about the status command in the official Phinx documentation: http://docs.phinx.org/en/latest/commands.html#the-status-command