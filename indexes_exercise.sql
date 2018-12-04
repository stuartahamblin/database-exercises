show databases;

use codeup_test_db;

show tables;

describe albums;

ALTER TABLE albums
  ADD UNIQUE (name, artist);

SELECT * FROM albums;

INSERT INTO albums (ARTIST, NAME, RELEASE_DATE, GENRE, SALES)
VALUES ('Eagles', 'Their Greatest Hits (1971–1975)',	1976,	'Country rock, soft rock, folk rock', 41.2);


