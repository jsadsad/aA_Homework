# SQL

Short for Structured Query Language.

# SQL versus NoSQL

There is quite a debate about whether SQL or NoSQL is better. Speaking generally, there is not an answer; each is better suited to different purposes, so the choice of database system should depend on the project. At the most basic level, SQL and NoSQL differ in how they store data, and as a result, operations like inserting, retrieving, and updating data happen very differently.


`# Let's create a new table for users.

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  height_in_inches INTEGER
);

INSERT INTO
  users (name, height_in_inches)
VALUES
  ('Santa Claus', 72.5);`

Why will the above code throw an error? 72.5 is definitely not a whole integer - in this case you'd want to use the SQL type FLOAT.
