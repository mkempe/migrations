MIGRATIONS
==========

Install
-------

    $ git clone git@github.com:foo/migrations.git migrations
    $ cd migrations
    $ bundle

Usage
-----

    $ rake db:create                       # Create the database from DATABASE_URL or config/database.yml for the current Rails.env (use db:create:all to create all dbs in the config)
    $ rake db:drop                         # Drops the database using DATABASE_URL or the current Rails.env (use db:drop:all to drop all databases)
    $ rake db:fixtures:load                # Load fixtures into the current environment's database.
    $ rake db:migrate                      # Migrate the database (options: VERSION=x, VERBOSE=false).
    $ rake db:migrate:status               # Display status of migrations
    $ rake db:new_migration[name,options]  # Creates a new migration file with the specified name
    $ rake db:rollback                     # Rolls the schema back to the previous version (specify steps w/ STEP=n).
    $ rake db:schema:dump                  # Create a db/schema.rb file that can be portably used against any DB supported by AR
    $ rake db:schema:load                  # Load a schema.rb file into the database
    $ rake db:seed                         # Load the seed data from db/seeds.rb
    $ rake db:setup                        # Create the database, load the schema, and initialize with the seed data (use db:reset to also drop the db first)
    $ rake db:structure:dump               # Dump the database structure to db/structure.sql. Specify another file with DB_STRUCTURE=db/my_structure.sql
    $ rake db:version                      # Retrieves the current schema version number

Links
-----

* [Ruby on Rails Guides: Migrations](http://guides.rubyonrails.org/migrations.html "Ruby on Rails Guides: Migrations")