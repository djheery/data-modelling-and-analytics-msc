# What does functional Incompleteness Mean? 

The slide asks me to write what I think it may mean: 

Functional Incompleteness means that SQL cannot define the implementation for the way a Query is carried out. Instead you are provided with set statements that the Database Management System knows how to handle with the implementation abstracted away from the user.

The slides Answer: 

SQL has not control statements such as Repeat, if, while, for loop etc. 
There is also little substitution at runtime (for example, you cannot use variables apart from alias' defined by yourself when creating the statements)

You can address this functional problem by implementing SQL within other languages such as Java or C++.
For this course we are going to us PL/SQL for implementation as it goes hand-in-hand with the Oracle SQL Plus environment and requires no further configuration or installation. 

## Why use a Functionally Complete Database Programming Language? 

The need for a database programming is as follows: 

- The need to implement business rules/ procedures in the application controlled by the DB admin
- Users need permission to apply rules which are granted/revoked by the DBA

This is discouraged by DBA's:

- Duplicated, potentially inconsistent, rules in the form of scripts access by users to anything they like 

