/**
***** Calculating Results with CASE *****
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
-- calculating Max Heart Rate => heartrate - age
SELECT COUNT(*) FROM exercise_logs2 WHERE heart_rate > 220 - 30;
-- Calculating target heart rate Zone 50%-90% of max
SELECT COUNT(*) FROM exercise_logs2
	WHERE heart_rate > (0.50*(220-30)) AND heart_rate < (0.90*(220-30));

-- calculate and categorize the heart rates *****CASE*****
SELECT type, heart_rate, 
	CASE 
		WHEN heart_rate > 220-30 THEN "above max"
        WHEN heart_rate > ROUND(0.9*(220-30)) THEN "ABOVE Target"
        WHEN heart_rate > ROUND(0.5*(220-30)) THEN "within Target"
        ELSE "Below Target"
	END AS "HR_Zone"
FROM exercise_logs2;