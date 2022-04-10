=================
Database Approach
=================

All the limitations of the File-Based Approach can be attributed to two factors 
  - The definition of the data is embedded in the application programs, rather than being stored separately and independently 
  - There is no control over the access and manipulation of data beyond that imposed by the application programs 

This is where the database and Database Management System emerged. 

Database 
  - A shared collection of logically related data and its description, designed to meet the information needs of an organization.

A database is a single, usually large repository of data
  - Can be used simultaneously by many departments. 
  - Minimum amount of duplication 
  -Holds not only the organizations operational data but also a descriptor of this data 

A database is also defined as: 
  - A self-describing collection of integrated records. 

- Description of data known as the 
  - System catalog 
  - Data Dictionary 
  - Meta data 
    - "Data about data"

The approach to data definition is similar to the approach taken in modern software development 
  - External definition of an object and a separate external definition are proved. 
  - Users only see the external definition and have the schematic of the object abstracted away from them 
    - Known as Data abstraction. 
    - This is why we can change the structure of data without the user needing to know about it. 
    - If new data structures are added or existing data structures modified, then the application programs are unaffected. However, if we remove a field from a file that an application uses then that application is affected by this change and must be modified. 
  
Logically Related 
  - When we analyze the information needs of an organization we attempt to identify entities, attributes and relationships 
    - Entity 
      - A distinct object in the organization that is to be represented 
    - Attribute 
      - Property that describes some aspect of teh object that we wish to record
    - Relationship 
      - Association between entities. 

The Database Management System (DBMS)
  - A software system that enables users to define, create, maintain and control access to the database. 

The DBMS is the software that interacts with the users' application programs and the database. Typically, a DBMS provides the following facities: 
  - Alows users toe define the database 
    - usually through a Data Definition Language (DDL)
    - The DDL allows users to specify the Data Types, structures and constraints on the data to be stored. 
  - Allows users to CRUD data from the database via the use of a Data Manipulation Language (DML)
  - Query Languages facilitate custom queries to be executed on the data which fixes the fixed query/ proliferation of files issue associated with a file base approach.
  - The most common query language is the Structured Query Language (SQL).
  - Provides controlled access to the database, it may provide some of the following features: 

    - A security system which prevents unautorized users accessing the database 
    - Integrity system 
    - Concurrency control system to allowed shared access of the database 
    - A recovery control system, which restores the database to a previous consitent state following a hardware or software failure


Database - Application Programs 
  - A computer program that interacts with the database by issuing an appropriate request (typically an SQL statement to the DBMS)

Users interact with the database through a number of application programs that are used to create and maintain the database and to generate information.