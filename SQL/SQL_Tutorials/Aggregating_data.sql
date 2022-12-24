/** 
***** Aggregating Data *****
Grocery List:
Bananas (6) (7)
Peanut Butter (1) (2)
Dark Chocolate Bars (3) (2)
Ice Cream (1) (12)
Cherries (6) (2)
Chocolate Syrup (1) (4)
**/

/** create table and define properties **/
CREATE TABLE groceries2(id INTEGER primary KEY, name TEXT, quantity INTEGER, aisle INTEGER);

/** insert data to tables **/
INSERT INTO groceries2 VALUES (1, "Bananas", 6, 7);
INSERT INTO groceries2 VALUES (2, "Peanut Butter", 1, 2);
INSERT INTO groceries2 VALUES (3, "Chocolate Bars", 3, 2);
INSERT INTO groceries2 VALUES (4, "Ice Cream", 1, 12);
INSERT INTO groceries2 VALUES (5, "Cherries", 6, 2);
INSERT INTO groceries2 VALUES (6, "Chocolate Syrup", 1, 4);

/** run querry to view table groceries**/
/** SELECT name FROM table_name**/
SELECT * FROM groceries2;

/**Filter the querry for Aggregate Functions**/
SELECT SUM(quantity) FROM groceries2;
SELECT MAX(quantity) FROM groceries2;

/** Filter the querryfor SUM according to Asile**/
SELECT SUM(quantity) FROM groceries2 GROUP BY aisle;

/** Filter the querry for SUM according to Asile with name**/
SELECT aisle, SUM(quantity) FROM groceries2 GROUP BY aisle;