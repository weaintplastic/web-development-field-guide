A migration file holds information about the things that need to be done in order to transform a database from one state into another and how to revert this transformation. So a patch file always provides update and rollback statements for the transformation.

Using Phinx, a patch file is a PHP file located in `db/migrations` of your project. Creating such a migration file you have to execute the following statement on your command line:

    php vendor/bin/phinx create <name>

`<name>` is the name of your patch file written in `CamelCaseSyntax`. You can either create a path file for each table, while the `<name>` is the name of your branch or the name of the affected table.

> We recommend to name your patch file after the branch you are working in.

Imagine you are working on a feature that adds a blog functionality to our website. You'll probably create at least one new page template that needs to be shared with your coworkers. Since our feature branch is called `feature/blog`, the statement to create a new patch file will look like this:

    php vendor/bin/phinx create FeatureBlog

The created patch file `YYYYMMDDHHMMSS_feature_blog.php` (YYYYMMDDHHMMSS will be replaced by the current time) will look like this:

    <?php
     
    use Phinx\Migration\AbstractMigration;

    class FeatureBlog extends AbstractMigration
    {
        /**
         * Change Method.
         *
         * More information on this method is available here:
         * http://docs.phinx.org/en/latest/migrations.html#the-change-method
         *
         * Uncomment this method if you would like to use it.
         *
        public function change() {
        }
        */
        
        /**
         * Migrate Up.
         */
        public function up() {
        }

        /**
         * Migrate Down.
         */
        public function down() {
        }
    }


The patch file skeleton provides you two functions `up` and `down` and a commented one, the `change` function.

- **The Up Method**<br>
The up method is automatically run by Phinx when you are migrating up and it detects the given migration hasn’t been executed previously. You should use the up method to transform the database with your intended changes.
- **The Down Method**<br>
The down method is automatically run by Phinx when you are migrating down and it detects the given migration has been executed in the past. You should use the down method to reverse/undo the transformations described in the up method.
- **The Change Method**<br>
Phinx 0.2.0 introduced a new feature called reversible migrations. With reversible migrations you only need to define the up logic and Phinx can figure out how to migrate down automatically for you. To define a reversible migration you must uncomment the change method in your migration file. Please note that this only works if you use a specific subset of Phinx' built in commands for performing changes on a database. You'll find more that in the [Phinx documentation](http://docs.phinx.org/en/latest/migrations.html#the-change-method)


Phinx provides built in command in order to perform changes on the schema of a database. Since our changes need to insert data in an existing table, we need to execute plain SQL statements and therefore use the `execute()` command. Our patch file for inserting new templates into the `cms_templates` table will look like this:

    /**
     * Migrate Up.
     */
    public function up()
    {
        $this->execute("INSERT INTO `cms_template` (`id`, `parent_id`, `site`, `name`, `file`, `creation`, `type`, `selectable_all_users`, `snippet_names`) VALUES (NULL, '0', '1', 'Page Blog', 'versioning-demo.local/page_blog.php', '2014-10-13', '1', '0', '');");
    }

    /**
     * Migrate Down.
     */
    public function down()
    {
        $this->execute("DELETE FROM `cms_template` WHERE `name` = 'Page Blog'");
    }

Appart from the `execute` command there are a lot of other commands available to perform any sorts of database transformations. You'll find a complete list here: http://docs.phinx.org/en/latest/migrations.html   

> Don't make your hands dirty, work with migration files, everytime you need to transform you database!

Following the concept of database versioning you won't do any changes to the database by hand anymore. You are going to work with patch-files yourself. Everytime you are in need to change relevant things on the database, you'll create a patch file and work out the neccessary statements until they do the right thing for you.
Creating the right statements you'll use the update and rollback functionality of `Phinx` until everything looks good. Only then it is guaranteed your teammates are able to succesfully migrate their database to the needed state once they execute your migrations scripts.

Sometimes it is neccessary to put changes, that were automated by a system, into a migrations file by hand (e.g. when you create a template using the LOOP box backend). Since this violates the concept of database versioning and usually interupts the workflow of your migration manager you need to take care of a few things:

When putting changes that hve already been performed into a migration file, your migration manager will by out of sync. Since the migration file wasn't exectued by `Phinx` before, checking the `phinx status` will tell you, that you need to migrate to a newer version. Executing `phinx migrate` is the only way to get your `Phinx` environment up to data again, but this will also apply changes again and will cause errors and wrong results. Think of the migration script above. After migrating your database you'll end up with a duplicate entry in your `cms_template` table.

To avoid this you should add a new status to the `phinxlog` table with the current migration version ID, while the version ID are the first 14 characters of the created migration file (e.g. 20141219115236).

     version            start_time          end_time 
    ---------------------------------------------------------
     20141219115236     CURRENT_TIMESTAMP   CURRENT_TIMESTAMP

After doing that you can [check the status of your database](./Collaboration/Database_Versioning/Working_with_Database_Versioning/Working_with_migrations/Status_of_your_database), which should tell you that everything is up to date.


### More information
You'll find detailed information about the process of creating migrations in the official Phinx documentation: http://docs.phinx.org/en/latest/migrations.html











