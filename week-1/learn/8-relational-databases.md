# Relational Databases

Relations are based on simple mathematical principles. 
They can be manipulated by users in conceptually simple ways.

A relations heading or **intension** is its type, which is a composite type based on that of its attributes. 

A relations **body** or **extension** is its value, which is a composite being the value of all of its attributes in all of its tuples 

**tuples** == In mathematics a tuple is a finite ordered list of elements.

Technically data types are orthogonal to relations. This means they are independent of relations and therefore datatypes do not constrain relations and vice versa

**Orthogonal** == statistically independent 

Commercial Database Management Systems (DBMS) that apply the orthogonality are typically called **object-relational** DBMSs because they can hold any kind of object as a data type relation 

Orthogonal DBMSs are also known as **object-relational** DBMss 
- They can hold any kind of object as a data type relation 

Relations are just structures, they can hold any kind of data. 
They can hold any of the different kind of data mentioned in the other slides without a limit. 

## What is a Relational Database?

A relational database is a database in which data is stored in the form of relations. 
In computing, a way of looking at data and thinking about handling it is called a **model**.

A relation is a simple logical structure that contains related data 

A relational database is perceived and used as a collection of relations. 

Relational data can be shown in a table like below: 

| ENo   | EName     | M-S     | Sal     |
|-------|-----------|---------|---------|
| E3    | Smith     | S       | 12,500  |
| E5    | Mitchell  | M       | 21,100  |
| E1    | Robson    | D       | 32,500  |
| E6    | Blake     | M       | 54,000  |

## The purpose of a relation 

A relation not only holds a collection of data, but also relates together the data items that it holds. 

This is important. You need to ensure data is related together in a way that is meaningful to you and your company. 

A relation consists of a set of tuples (List of items). Each tuple must hold the same kinds of data. In the example above, each tuple represents one employee. 

Employee = (E3, Smith, S, 12,500) 

This relates to the first employee in the relational database above. 

## Tuples/ Types 

Each Tuple consists of a set of attributes. The data in each attribute is related to a tupele, which represents an object. In this case an Employee. 

Each attribute can contain data of any type. In this example each attribute contains with textual or numerical data. 
There are no duplicate tuples, therefore this cannot be a relation as some tuples appear more than once.???? Slide 3 

## Relational Data Model 

Unsurprisingly a Relational Database uses a relational data model. The relational data model raises the level of abbstraction compared to the normal third generation language (3GL) level of programming with its use of files to store data

This enables the database programmer to think about the database in a way that is further removed from the way that the hardware actually works and nearer to the way that the outside world is percieved. This makes it easier ofr the programmer to solve problems, and hence makes them more productive. 

## SQL and Relational Databases 

This module uses Oracle SQL, because it is popular in the database market, bbut note that it does not adhere completely to SQL standards. 

**Important Terminology**

Because relations are usually depicted as tabbles, the word table is used in SQL instead of relation. 
Consequently, as tables have columns and rows, the following tabular names are used in SQL

- Table instead of Relation 
- Column instead of Attribute 
- Row instead of Tuple

