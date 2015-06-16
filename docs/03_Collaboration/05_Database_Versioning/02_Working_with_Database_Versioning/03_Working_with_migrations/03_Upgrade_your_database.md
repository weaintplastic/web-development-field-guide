Upgrading your database means, that you are running all available migration files provided by other developers in order to make your updated codebase work with the new state of the database.

Phinx command for this is called `migrate` which runs all of the available migrations, optionally up to a specific version.

    php vendor/bin/phinx migrate -e development

or

    php vendor/bin/phinx migrate -e development -t 20110103081132

Executing this will run all migration scripts in order and updates the related tables. Phinx hold information about the current state of your database in an additional table in your database called `phinxlog`. There Phinx saves information about which migration was executed at which time on your database and how long this process took. 

If you want to get an overview of the current state of your database before migrating, you should get the [status of your database](./Collaboration/Database_Versioning/Working_with_Database_Versioning/Working_with_migrations/Status_of_your_database)

### More information
You'll find detailed information about the migration process in the official Phinx documentation: http://docs.phinx.org/en/latest/commands.html#the-migrate-command


