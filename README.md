# QUERYING-DATA-SQL-ASSIGNMENT
### 1. Country Table

- **Description:** Stores information about countries.
- **Fields:**
  - `Id` (INT, PRIMARY KEY): Unique identifier for each country.
  - `Country_name` (VARCHAR(100)): Name of the country.
  - `Population` (INT): Total population of the country.
  - `Area` (INT): Total area of the country in square kilometers.

### 2. Persons Table

- **Description:** Stores information about individuals and their country affiliations.
- **Fields:**
  - `Id` (INT, PRIMARY KEY): Unique identifier for each person.
  - `Fname` (VARCHAR(50)): First name of the person.
  - `Lname` (VARCHAR(50)): Last name of the person.
  - `Population` (INT): Population of the country the person belongs to (redundant).
  - `Rating` (DECIMAL(3,2)): Rating score for each person (up to 5.0).
  - `Country_Id` (INT, FOREIGN KEY): References the `Id` in the `Country` table.
  - `Country_name` (VARCHAR(100)): Name of the country (redundant).

## Data Insertion

The following SQL scripts are provided for inserting data into the tables:

### Insert Data into Country

```sql
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
Insert Data into Persons
sql
Copy code
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
