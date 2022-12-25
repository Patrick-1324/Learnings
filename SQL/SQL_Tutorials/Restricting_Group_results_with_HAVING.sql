/**
***** Restricting Grouped Results with HAVING *****
**/
CREATE TABLE exercise_logs2 (id INTEGER PRIMARY KEY AUTO_INCREMENT, type TEXT, minutes INTEGER, calories INTEGER, heart_rate INTEGER);

INSERT INTO exercise_logs2(type, minutes, calories, heart_rate) VALUES ("biking", 30, 100, 110);
INSERT INTO exercise_logs2(type, minutes, calories, heart_rate) VALUES ("biking", 10, 30, 105);
INSERT INTO exercise_logs2(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 200, 120);
INSERT INTO exercise_logs2(type, minutes, calories, heart_rate) VALUES ("tree climbing", 30, 70, 90);
INSERT INTO exercise_logs2(type, minutes, calories, heart_rate) VALUES ("tree climbing", 25, 72, 80);
INSERT INTO exercise_logs2(type, minutes, calories, heart_rate) VALUES ("rowing", 30, 70, 90);
INSERT INTO exercise_logs2(type, minutes, calories, heart_rate) VALUES ("hiking", 60, 80, 85);

SELECT * FROM exercise_logs2;

-- Calories burnt for each type of activities
SELECT type, SUM(calories) AS total_calories FROM exercise_logs2 GROUP BY type;

-- Activities where more than 150 calories total across all logs for exercise type
SELECT type, SUM(calories) AS total_calories FROM exercise_logs2 GROUP BY type HAVING total_calories > 150;

-- Average calories for all exercises where burnt more than 70 calories
SELECT type, AVG(calories) AS avg_calories FROM exercise_logs2 GROUP BY type HAVING avg_calories > 70;

-- atleast two exercise of same type
SELECT type FROM exercise_logs2 GROUP BY TYPE HAVING COUNT(*) >= 2; 
