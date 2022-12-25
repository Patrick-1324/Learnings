/**
***** Challenge: Playlist Maker *****
1. select the title of all the songs by the artist named 'Queen'.
2. Now you'll make a 'Pop' playlist. In preparation, select the name of all of the artists from the 'Pop' genre.
3. To finish creating the 'Pop' playlist, add another query that will select the title of all the songs from the 'Pop' artists.
	It should use IN on a nested subquery that's based on your previous query.
**/
CREATE TABLE artists (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name TEXT,
    country TEXT,
    genre TEXT);

INSERT INTO artists (name, country, genre)
    VALUES ("Taylor Swift", "US", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Led Zeppelin", "US", "Hard rock");
INSERT INTO artists (name, country, genre)
    VALUES ("ABBA", "Sweden", "Disco");
INSERT INTO artists (name, country, genre)
    VALUES ("Queen", "UK", "Rock");
INSERT INTO artists (name, country, genre)
    VALUES ("Celine Dion", "Canada", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Meatloaf", "US", "Hard rock");
INSERT INTO artists (name, country, genre)
    VALUES ("Garth Brooks", "US", "Country");
INSERT INTO artists (name, country, genre)
    VALUES ("Shania Twain", "Canada", "Country");
INSERT INTO artists (name, country, genre)
    VALUES ("Rihanna", "US", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Guns N' Roses", "US", "Hard rock");
INSERT INTO artists (name, country, genre)
    VALUES ("Gloria Estefan", "US", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Bob Marley", "Jamaica", "Reggae");

CREATE TABLE songs2 (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    artist TEXT,
    title TEXT);

INSERT INTO songs2 (artist, title)
    VALUES ("Taylor Swift", "Shake it off");
INSERT INTO songs2 (artist, title)
    VALUES ("Rihanna", "Stay");
INSERT INTO songs2 (artist, title)
    VALUES ("Celine Dion", "My heart will go on");
INSERT INTO songs2 (artist, title)
    VALUES ("Celine Dion", "A new day has come");
INSERT INTO songs2 (artist, title)
    VALUES ("Shania Twain", "Party for two");
INSERT INTO songs2 (artist, title)
    VALUES ("Gloria Estefan", "Conga");
INSERT INTO songs2 (artist, title)
    VALUES ("Led Zeppelin", "Stairway to heaven");
INSERT INTO songs2 (artist, title)
    VALUES ("ABBA", "Mamma mia");
INSERT INTO songs2 (artist, title)
    VALUES ("Queen", "Bicycle Race");
INSERT INTO songs2 (artist, title)
    VALUES ("Queen", "Bohemian Rhapsody");
INSERT INTO songs2 (artist, title)
    VALUES ("Guns N' Roses", "Don't cry");
-- 1.--    
SELECT title FROM songs2 WHERE artist = "Queen";
-- 2.--
SELECT name FROM artists WHERE genre = "Pop";
-- 3.--
SELECT title FROM songs2 WHERE artist IN (SELECT name from artists WHERE genre = "Pop"); 
