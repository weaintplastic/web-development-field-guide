When joining a ongoing project there are some simple steps you need to follow in order to setup the database versioning workflow on your local machine.

### Install Phinx

Joining a project that was prepared for database versioning, you'll find Phinx as a dependency in the Composer manifest file. Following the process of setting up a project, you'll install Phinx automatically when [installing all Composer dependencies](/Development/Frontend_Development/Setting_up_your_project/Setup_Dependency_Managers/Composer/Initialize_Composer_on_an_existing_Project). As a reminder, you have execute the following statement in your project root on your command line:

    composer install

Composer will install Phinx and its dependencies for you and you are good to move on.

### Build your database

You should find a `schema.sql` and a `data.sql` in the `/db` folder of the project you recently cloned on your local machine. In order to setup your database, create a new database for you project, and import first `schema.sql` and then `data.sql`. Your database fundament is now set.


### Initialize Phinx

Use your command line tool, navigate to the project root and execute the following statement

    php vendor/bin/phinx init

This comman will create a `phinx.yml` file in your project root. It is the descriptor file for Phinx holding the neccessary information to work on the databases of different environments

    paths:
        migrations: %%PHINX_CONFIG_DIR%%/migrations

    environments:
        default_migration_table: phinxlog
        default_database: development
        production:
            adapter: mysql
            host: localhost
            name: production_db
            user: root
            pass: ''
            port: 3306
            charset: utf8

        development:
            adapter: mysql
            host: localhost
            name: development_db
            user: root
            pass: ''
            port: 3306
            charset: utf8

        testing:
            adapter: mysql
            host: localhost
            name: testing_db
            user: root
            pass: ''
            port: 3306
            charset: utf8

Since we want to keep things ordered, first thing you should do is to create a directory called `db` in your project root and update the migration path of Phinx in the `phinx.yml` file:

    paths:
        migrations: %%PHINX_CONFIG_DIR%%/db/migrations

Now you should update the `development` environment database credentials in order to start working with the database of your local development environemnt.
Working with the [Vagrant Box](/Environment/Local_Development_Environment/Vagrant), your configuration might look like this:

    development:
        adapter: mysql
        host: 127.0.0.1
        name: versioning-demo
        user: root
        pass: 'root'
        port: 3306
        charset: utf8



### Upgrade your database

Depending on how many migrations were written after the last `schema.sql` and `data.sql` dumps were created, you probably need to upgrade your database. In order to get an overview of the current state of your database you should first [check the status](/Collaboration/Database_Versioning/Working_with_Database_Versioning/Working_with_migrations/Status_of_your_database) and then perform an [upgrade on your database](/Collaboration/Database_Versioning/Working_with_Database_Versioning/Working_with_migrations/Upgrade_your_database).

