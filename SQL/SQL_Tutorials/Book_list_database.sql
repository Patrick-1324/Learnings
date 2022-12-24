/** 
***** CHALLENGE: Book list Database *****
Books List [id, name, rating :
Rich dad poor dad (4.6)
Monk who sold his ferrari (4)
Do Epic shit (4.5)
Autobiography of a Yogi (5)
Eat that frog (4.6)
Ikigai (4.7)
**/

/** Creating a table with properties**/ 
CREATE TABLE booksdata (id INTEGER PRIMARY KEY, name TEXT, rating FLOAT);

/** Insert Data to Table**/
INSERT INTO booksdata VALUES (1, "Rich Dad Poor Dad", 4.6);
INSERT INTO booksdata VALUES (2, "Monk who sold his Ferrari", 4.6);
INSERT INTO booksdata VALUES (3, "Do Epic Shit", 4.5);
INSERT INTO booksdata VALUES (4, "Autobiography of a Yogi", 5);
INSERT INTO booksdata VALUES (5, "Eat That Frog", 4.6);
INSERT INTO booksdata VALUES (6, "Ikigai", 4.7);

/** Review the table**/
SELECT * FROM booksdata;