DROP TABLE exhibits;
DROP TABLE artists;

CREATE TABLE artists(
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE exhibits(
  id SERIAL4 PRIMARY KEY,
  exhibit_name VARCHAR(255),
  category VARCHAR(255),
  artist_id INT4 REFERENCES artists(id) ON DELETE CASCADE,
  image TEXT
);
