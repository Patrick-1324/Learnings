/**
***** Challenge: TO-DO list database stats *****
1. Step 1
	Here's a table containing a TODO list with the number of minutes it will take to complete each item. 
	Insert another item to your todo list with the estimated minutes it will take.

2. Select the SUM of minutes it will take to do all of the items on your TODO list. 
	You should only have one SELECT statement.
**/
CREATE TABLE todo_list (id INTEGER PRIMARY KEY, task TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "ROS Programming", 90);
INSERT INTO todo_list VALUES (2, "Linkedin post review", 20);
INSERT INTO todo_list VALUES (3, "OOPS basics", 30);
INSERT INTO todo_list VALUES (4, "DIY Projects", 50);
INSERT INTO todo_list VALUES (5, "Tea Break", 10);
INSERT INTO todo_list VALUES (6, "Tableu/Power Bi Introduction", 60);

SELECT SUM(minutes) FROM todo_list;
SELECT * FROM todo_list WHERE minutes > 40 ;