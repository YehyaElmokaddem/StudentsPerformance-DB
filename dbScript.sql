sqlite3 dashboard-db.db


CREATE TABLE students_performance (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    gender TEXT,
    race_ethnicity TEXT,
    parental_level_of_education TEXT,
    lunch TEXT,
    test_preparation_course TEXT,
    math_score INTEGER,
    reading_score INTEGER,
    writing_score INTEGER
);


-- Import data from CSV, specifying columns
.mode csv
.import StudentsPerformance.csv students_performance (gender, race_ethnicity, parental_level_of_education, lunch, test_preparation_course, math_score, reading_score, writing_score)