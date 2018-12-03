Create a file called update_exercises.sql.
USE codeup_test_db;
-- Create a file called update_exercises.sql.
-- Write SELECT statements to output each of the following with a caption:
-- -All albums in your table.
SELECT * FROM albums;
-- -All albums released before 1980
SELECT name FROM albums where RELEASE_DATE < 1980;
-- -All albums by Michael Jackson
SELECT name FROM albums where ARTIST = 'Michael Jackson';
-- After each SELECT add an UPDATE statement to:
-- -Make all the albums 10 times more popular (sales * 10)
UPDATE albums SET sales = sales * 10
SELECT sales from albums;
-- -Move all the albums before 1980 back to the 1800s.
UPDATE albums SET RELEASE_DATE = RELEASE_DATE - 100;
SELECT RELEASE_DATE from albums;
-- -Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * from albums WHERE artist = 'Peter Jackson';
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.