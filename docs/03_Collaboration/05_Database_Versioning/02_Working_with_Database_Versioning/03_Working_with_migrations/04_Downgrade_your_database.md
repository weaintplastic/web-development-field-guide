Downgrading your database means, that you undo migrations that were executed before in order to put your database into a older state. This is something that you probably don't need that much during local development, but think of failed deployment to a server which requries not just a rollback of the codebase but also of the database.

Phinx command for doing rollbacks is called `rollback`. The Rollback command is used to undo previous migrations executed by Phinx. It is the opposite of the Migrate command.

You can rollback to the previous migration by using the rollback command with no arguments.

    php vendor/bin/phinx rollback -e development

To rollback all migrations to a specific version then use the --target parameter or -t for short.

    php vendor/bin/phinx rollback -e development -t 20120103083322

Specifying 0 as the target version will revert all migrations.

    php vendor/bin/phinx rollback -e development -t 0


### More information
You'll find detailed information about the rollback process in the official Phinx documentation: http://docs.phinx.org/en/latest/commands.html#the-migrate-command