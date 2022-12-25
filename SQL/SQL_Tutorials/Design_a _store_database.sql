/**
***** Project: Design a store database *****
1. Create your own store! Your store should sell one type of things, like clothing or bikes,
	whatever you want your store to specialize in. You should have a table for all the items 
    in your store, and at least 5 columns for the kind of data you think you'd need to store.
    You should sell at least 15 items, and use select statements to order your items by price 
    and show at least one statistic about the items.
**/
-- Create the table inventory
CREATE TABLE inventry(id INTEGER PRIMARY KEY, NAME TEXT, category TEXT, quantity INTEGER, price INTEGER);
-- Insert Data into table
INSERT INTO inventry VALUES(1, "bo_motor_30rpm", "motors", 5, 100);
INSERT INTO inventry VALUES(2, "bo_motor_100rpm", "motors", 5, 120);
INSERT INTO inventry VALUES(3, "resistor 5k", "resistors", 10, 3);
INSERT INTO inventry VALUES(4, "resistor 10k", "resistors", 15, 3);
INSERT INTO inventry VALUES(5, "pot 10k", "potentiometer", 5, 10);
INSERT INTO inventry VALUES(6, "pot 5k", "potentiometer", 5, 10);
INSERT INTO inventry VALUES(7, "capacitor 100uf 25V", "capacitors", 5, 4);
INSERT INTO inventry VALUES(8, "capacitor 220uf 16V", "capacitors", 5, 4);
INSERT INTO inventry VALUES(9, "Soldering Bit 25W", "Soldering", 5, 50);
INSERT INTO inventry VALUES(10, "Soldering Iron 25W", "Soldering", 5, 300);
INSERT INTO inventry VALUES(11, "Soldering Wire 50g", "Soldering", 5, 80);
INSERT INTO inventry VALUES(12, "Soldering Iron Stand", "Soldering", 5, 60);
INSERT INTO inventry VALUES(13, "bo_Smart_wheels", "Wheels", 5, 55);
INSERT INTO inventry VALUES(14, "Arduino Uno", "Arduino", 5, 550);
INSERT INTO inventry VALUES(15, "Arduino Nano", "Arduino", 5, 300);


CREATE TABLE stock_status (id INTEGER PRIMARY KEY, name TEXT, status TEXT);
INSERT INTO stock_status VALUES(1, "Soldering Bit 25W", "Not updated");
INSERT INTO stock_status VALUES(2, "Soldering Iron 25W", "Updated");
INSERT INTO stock_status VALUES(3, "Soldering Wire 50g", "Updated");
INSERT INTO stock_status VALUES(4, "Soldering Iron Stand", "Not updated");

SELECT * FROM inventry 
ORDER BY price DESC;
SELECT * FROM stock_status;