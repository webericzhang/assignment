-- clean up
DROP SEQUENCE coursesSeq IF EXISTS;
DROP TABLE courses IF EXISTS;
DROP SEQUENCE teachersSeq IF EXISTS;
DROP TABLE teachers IF EXISTS;

-- sequences
CREATE SEQUENCE teachersSeq;
CREATE SEQUENCE coursesSeq;

-- teachers table
CREATE TABLE teachers (
    idTeacher INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name VARCHAR(255));

-- courses table
CREATE TABLE courses (
    idCourse INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, 
    title VARCHAR(255), 
    idTeacher INTEGER, 
    level VARCHAR(32), 
    hoursLong FLOAT, 
    active BOOLEAN);
ALTER TABLE courses
    ADD FOREIGN KEY (idTeacher)
    REFERENCES teachers(idTeacher)