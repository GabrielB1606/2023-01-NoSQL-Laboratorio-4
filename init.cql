CREATE KEYSPACE mtcars WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
USE mtcars;

CREATE TABLE cars (
  name text PRIMARY KEY,
  mpg float,
  cyl int,
  disp float,
  hp int,
  drat float,
  wt float,
  qsec float,
  vs int,
  am int,
  gear int,
  carb int
);

CREATE INDEX cars_name_idx ON cars (name);

COPY cars (name, mpg, cyl, disp, hp, drat, wt, qsec, vs, am, gear, carb) FROM '/mtcars.csv' WITH HEADER = true;
