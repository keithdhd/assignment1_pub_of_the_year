DROP TABLE IF EXISTS votes;
DROP TABLE IF EXISTS pubs;
DROP TABLE IF EXISTS areas;

CREATE TABLE areas(
  id serial4 PRIMARY KEY,
  area_name VARCHAR(255)
);

CREATE TABLE pubs(
  id serial4 PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  area_id int4 references areas(id) ON DELETE CASCADE
);

CREATE TABLE votes(
  id serial4 PRIMARY KEY,
  voted_by int4 references pubs(id) ON DELETE CASCADE,
  first int4 references pubs(id) ON DELETE CASCADE,
  second int4 references pubs(id) ON DELETE CASCADE,
  third int4 references pubs(id) ON DELETE CASCADE
);



