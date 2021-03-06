# MSDS 610 Section 2: Database Keys
Professor Michael Ruddy

Group members:
- Zhipeng Hong
- Lawrence Lin
- Nishi Mehta

## A Primer on Relational Databases
When we talk about relational databases the first question that arises is why do we need one? A database can store the data in an organized way and operations such as sort can be performed efficiently. There are five main advantages of using a database which is listed below:

- Categorizing the data
- Accuracy
- Security
- Collaboration
- Easy to use

One of the most common programming languages called SQL can be used to fetch the data from the database, and hence it is very easy to use. Multiple people can be given access to the same database. We can even limit the access to database thereby maintaining security. The database will always contain data that is consistent.

There are two different types of database, relational database, and non-relational database. The major difference between both of them is relational database stores the structured data as before storing the data in tables we know what are the columns, on the other hand, the non-relational database stores the unstructured data.

A relational database is a collection of tables of data, related by a common field. Every table has a name for itself and each of its columns. The data type for each column is also specified.
e.g. A student's name would be a string.

Each relation is a collection of tuples.

## Entity-relationship model
When designing a relational database, one of the steps is the Conceptual Database Design. This is when we develop a high-level description of the data to be stored. This is done through the Entity-Relationship (ER) model, where we describe the objects in the database and their relationsihps. An entity is an object that is described using a set of values. A relationship is how entities act upon each other. For example, in the ER diagram below shows students and classes. Their relationship is that every student is enrolled in classes.

![](img/er.svg)


# Database Keys
Database keys are used to establish and identify relationships between 
tables, uniquely identify tuples within the table, and enforce their integrity constraints. 

- `PRIMARY KEY`: Minimal set of column(s) that uniquely identifies each tuple within a table. Primary keys must be unique and not null. There can only be one primary key in a table
- `FOREIGN KEY`: The column(s) in a table that is the primary key of another table. Used to establish a relationship between two tables. Foreign keys can be null and there may be multiple foreign keys.
- `UNIQUE KEY`: Like a primary key, but accepts null values.


![](img/ex.svg)



