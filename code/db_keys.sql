
-- defining a single primary key
CREATE TABLE Student
(student_id INTEGER,
first_name varchar,
last_name varchar,
PRIMARY KEY (student_id));

-- using combination of primary key
CREATE TABLE weather
(zip INTEGER,
date DATE,
Temperature REAL,
History_avg_temp REAL,
PRIMARY KEY (zip,date));

-- insert query
INSERT INTO Student
VALUES
(1, 'Sam', 'Roy'),
(2, 'John', 'Lennon'),
(3, 'Mick', 'Race');

-- violation of constraint (null values)
INSERT INTO Student
VALUES
(NULL, 'Patrick', 'Lenn');

-- violation of constraint (duplicate)
INSERT INTO Student
VALUES
(1, 'Sam', 'Roy'),
(2, 'John', 'Lennon'),
(3, 'Mick', 'Race'),
(1, 'French', 'Tim');

-- defining unique key
CREATE TABLE Student
(student_id INTEGER,
first_name varchar,
last_name varchar,
UNIQUE KEY (student_id));

-- for unique key, null values can be inserted
INSERT INTO Student
VALUES
(NULL, 'Patrick', 'Lenn');

-- FOREIGN KEY
CREATE TABLE Student
(student_id INTEGER,
first_name varchar,
last_name varchar,
PRIMARY KEY (student_id));

INSERT INTO Student
VALUES
(1, 'Sam', 'Roy'),
(2, 'John', 'Lennon'),
(3, 'Mick', 'Race');

CREATE TABLE Score
(id  INTEGER,
Math INTEGER,
English INTEGER,
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES Student (student_id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO Score
VALUES
(1, 95, 100),
(2, 98, 96),
(3, 100, 99);

-- Foreign key prevents values from being inserted that are not in
-- the parent table

INSERT INTO Score VALUES
(4,66,78);

SELECT * FROM Score
JOIN Student
ON Student.Student_id=Score.id
