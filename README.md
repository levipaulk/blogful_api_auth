# Blogful API Auth!

## Scripts

Start the application `npm start`

Start nodemon for the application `npm run dev`

Run the tests in watch mode `npm test`

## Configuring Postgres

For tests involving time to run properly, configure your Postgres database to run in the UTC timezone.

1. Locate the `postgresql.conf` file for your Postgres installation.
   1. E.g. for an OS X, Homebrew install: `/usr/local/var/postgres/postgresql.conf`
   2. E.g. on Windows, _maybe_: `C:\Program Files\PostgreSQL\11.2\data\postgresql.conf`
2. Find the `timezone` line and set it to `UTC`:

```conf
# - Locale and Formatting -

datestyle = 'iso, mdy'
#intervalstyle = 'postgres'
timezone = 'UTC'
#timezone_abbreviations = 'Default'     # Select the set of available time zone
```

## Note for Windows users

- Migration files have columns with `TIMESTAMP WITH TIME ZONE` instead of `TIMESTAMP`
  - This should hopefully allow you to pass tests involving TIMESTAMP columns

## Migration

1. Make sure you create databases call `blogful-auth` and `blogful-auth-test`

2. npm run migrate
  a. migration for main db

3. env MIGRATION_DB_NAME=blogful-auth-test npm run migrate
  a. migration for test db

## Seeds

1. In command line `psql -U <username> -d blogful-auth -f ./path/to/blogful-api-auth/seeds/seed.blogful_tables.sql`
  a. seed for main db