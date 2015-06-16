Phinx should be installed using [Composer](https://getcomposer.org/). [Composer](https://getcomposer.org/) is a tool for dependency management in PHP. If you haven't read about how to setup Composer for your project yet, please visit the [Composer section](/Development/Frontend_Development/Setting_up_your_project/Setup_Dependency_Managers/Composer) in this documentation.

### Install Phinx

> Phinx requires at least PHP 5.3.2 (or later).

To install Phinx for your project navigate to your projects root folder and install Phinx using Composer:

    composer require robmorgan/phinx

This command will install all dependencies in order to run `phinx` on your computer. 

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


### Initalize Database Versioning

As mentioned in the [concepts of putting a database under version control](/Collaboration/Database_Versioning/The_Concept_of_Database_Versioning), you decide on your own, when you want to start database versioning. A good reason to begin versioning is, when teammates are joining the project or when you are going to release your first version.

To begin the process of versioning your database you first need to create a dump of your current database state. Therfore dump the schema and the data of your database separately and save them in the `/db` folder of your project.
MySQL Clients like SequelPro or HeidiSQL help you to export the skelton of your tables as `schema.sql` and the neccessary data scripts `data.sql`.

As long as you or any other developer is creating a new version of the schema and data sripts, all newcomming developers will start their project using the intially created `schema.sql` and `data.sql`.

Your project's state should then look something like this:

![Database Patching](/img/content/collaboration/db-versioning-01.svg "Database Patching")

### What's up next?

Phinx is now correctly set up to [create, execute and rollback migrations](/Collaboration/Database_Versioning/Versioning_with_Phinx/Working_with_migrations).

