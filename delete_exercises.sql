-- Write SELECT statements for:
-- -Albums released after 1991
DELETE FROM albums where RELEASE_DATE > 1991;
-- -Albums with the genre 'disco'
DELETE FROM albums where genre = 'disco';
-- -Albums by 'Whitney Houston' (...or maybe an artist of your choice)
DELETE FROM albums where artist = 'Whitney Houston';
-- Make sure to put appropriate captions before each SELECT.
-- Convert the SELECT statements to DELETE.
-- Use the MySQL command line client to make sure your records really were removed.