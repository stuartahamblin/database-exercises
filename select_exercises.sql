USE codeup_test_db;
-- The name of all albums by Pink Floyd.
SELECT name FROM albums WHERE artist = 'Pink floyd';
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT RELEASE_DATE FROM albums where name = 'Sgt. Pepper`s Lonely Hearts Club Band';
-- The genre for Nevermind
SELECT genre FROM albums where name = 'Nevermind';
-- Which albums were released in the 1990s
SELECT NAME FROM albums WHERE 1990 <= RELEASE_DATE < 2000;
-- Which albums had less than 20 million certified sales
SELECT NAME FROM albums WHERE sales < 20;
-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT NAME FROM albums WHERE GENRE = 'rock';