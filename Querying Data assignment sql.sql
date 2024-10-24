##Step 1: Create Tables
CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area INT);

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 2),
    Country_Id INT,
    Country_name VARCHAR(100),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id));
    
    ##Step 2: Insert Data
    INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9833517),
(2, 'Canada', 37742154, 9984670),
(3, 'UK', 67886011, 243610),
(4, 'India', 1380004385, 3287263),
(5, 'Australia', 25499884, 7692024),
(6, 'Germany', 83783942, 357022),
(7, 'France', 65273511, 551695),
(8, 'Brazil', 212559417, 8515767),
(9, 'Mexico', 128932753, 1964375),
(10, 'Japan', 126476461, 377975);

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331000000, 4.5, 1, 'USA'),
(2, 'Jane', 'Smith', 37742154, 4.8, 2, 'Canada'),
(3, 'Emily', 'Jones', 67886011, 3.9, 3, 'UK'),
(4, 'Michael', 'Brown', 1380004385, 5.0, 4, 'India'),
(5, 'Linda', 'Davis', 25499884, 4.7, 5, 'Australia'),
(6, 'James', 'Wilson', 83783942, 4.1, 6, 'Germany'),
(7, 'Patricia', 'Taylor', 65273511, 4.9, 7, 'France'),
(8, 'Robert', 'Anderson', 212559417, 4.3, 8, 'Brazil'),
(9, 'David', 'Thomas', 128932753, 3.5, 9, 'Mexico'),
(10, 'Jessica', 'White', 126476461, 4.2, 10, 'Japan');
##Step 3: List the distinct country names from the Persons table:
SELECT DISTINCT Country_name FROM Persons;
##Select first names and last names with aliases:
SELECT Fname AS First_Name, Lname AS Last_Name FROM Persons;
##Find all persons with a rating greater than 4.0:
SELECT * FROM Persons WHERE Rating > 4.0;
##Find countries with a population greater than 10 lakhs (1,000,000):
SELECT * FROM Country WHERE Population > 1000000;
##Find persons from 'USA' or with a rating greater than 4.5:
SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;

##Find all persons where the country name is NULL:
##Find all persons from the countries 'USA', 'Canada', and 'UK':
SELECT * FROM Persons WHERE Country_name IS NULL;
SELECT * FROM Persons WHERE Country_name IN ('USA', 'Canada', 'UK');
## Find all persons not from 'India' and 'Australia':
SELECT * FROM Persons WHERE Country_name NOT IN ('India', 'Australia');
##Find all countries with a population between 5 lakhs and 20 lakhs (500,000 and 2,000,000):
SELECT * FROM Country WHERE Population BETWEEN 500000 AND 2000000;
##Find all countries whose names do not start with 'C':
SELECT * FROM Country WHERE Country_name NOT LIKE 'C%';


    
