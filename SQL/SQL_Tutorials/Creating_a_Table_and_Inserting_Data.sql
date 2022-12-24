
/** 
***** CREATING A TABLE AND INSTERTING DATA *****
Grocery List:
Bananas (6)
Peanut Butter (1)
Dark Chocolate Bars (5)
**/
/** create table and define properties **/
CREATE TABLE groceries(id INTEGER primary KEY, name TEXT, quantity INTEGER);
/** insert data to tables **/
INSERT INTO groceries VALUES (1, "Bananas", 6);
INSERT INTO groceries VALUES (2, "Peanut Butter", 1);
INSERT INTO groceries VALUES (3, "Chocolate Bars", 3);
/** run querry to view table groceries**/
SELECT * FROM groceries;