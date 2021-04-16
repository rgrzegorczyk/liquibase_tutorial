## Welcome to my Liquibase Tutorial.

You will find detailed instructions and manual at https://pretius.com/liquibase-tutorial/

Are you manually executing scripts to your database? Or maybe you’re wasting time validating database scripts received from your team?
After that, are you merging scripts into one file and executing them in every environment? How about deployment errors? Have you ever spent hours looking at who, why, and what was changed in the database? 

But what if you can’t have an entire CI/CD process right now or company policy doesn’t allow you to run scripts on specific environments? That’s not a problem for Liquibase.

Liquibase (LB) https://www.liquibase.org/ is an open source tool written in Java. It makes defining database changes easy, in a format that’s familiar and comfortable to each user. Then, it automatically generates database-specific SQL for you.
Database changes (every change is called changeset) are managed in files called changelogs.

Liquibase needs two tables at your db schema(created automatically):

DATABASECHANGELOG — a table storing information about all changes made to your database,
DATABASECHANGELOGLOCK — used to prevent users from doing changes to the database at the same time.
My examples will be based on changesets written in SQL — it’s the easiest way to start automating your Oracle database change process.

#### I wrote all instructions step by step at Pretius Blog -> https://pretius.com/liquibase-tutorial/


## How to get example files through reading my manuals?

Just switch to dedicated Git branch - branches are called and ordered like articles.
The  further you read, then you go to next branch etc.

e.g. If you just started with Liquibase and reading article number 1 ->  switch to dedicated GIT branch "1_What_is_liquibase_and_how_to_start_using_it".
You will find files needed for article 1.


