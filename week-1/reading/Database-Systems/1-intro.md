# Databases and Database Users

Databases and database systems are an essential component of life in modern society
Most of us encounter several activities every day that involve some interaction with a database. 

Traditional Database Applications 
- Information is accessed is either textual or numeric.

New types of database systems have emerged in the advent of big data.
These new types of databases are called 
  - NOSQL systems
  - They manage big data for social media applications 
  - They are also used by companies such as Google and Amazon to manage the data required in their web search engines. 
    - They also offer their own web storage in the form of cloud storage. 
  
Due to the increased use of phones and audio clips there has been a rise in multimedia databases. 

Geographic Information Systems (GIS) can store and analyze maps, weather data, and satellite images. 

Data warehouses and online analytical processing systems are used by companies to extract and analyze useful business information from very large databases to support decision making. 

Real Time and Active database technology techniques are being applied to the web to improve seach information. 

**Database**
  - A collection of related data. 
  - By data we mean known facts that can be recorded and that have implicit meaning.
  - Represents some aspect of the real world, changes in this UoD are reflected in the database
    - Also known as the universe of discourse (UoD)
  - Logically coherent collection of data with some inherent meaning
  - Designed, built and populated with data for a specific purpose

### Database Management System

- A DBMS is a computerized system that enables users to create and maintain a database. 
  - A general purpose software that facilitates the process of CRUD actions. 
- Defining a database involves specifying the data types, structures and constraints of the data to be stored in the database. 
- Descriptive information about the data is known as meta data 
- Constructing is the process of storing the data in some storage medium that is controlled by the DBMS 
- Manipulating a database includes functions such as querying the database to retrive specific data 
  - Updating the data 
  - Generating reports based on the data. 
- Sharing a database allows multiple users and programs to access the database concurrently 

### Application Program 

An application program accesses the database by sending queries or requests for data to the DBMS then will often display the results 

### Protection 

Database Management Systems often include functionality to protect the database and maintain it over long periods of time. 
Protection includes: 
  - Protection against hardware malfunction 
  - Protection against unauthorized users/ malicious access. 


### Designing an Application 

Design of a new application for an existing database or design of a brand new database starts off with a phase called **requirements specification and analysis**
  - These requirements are documented in detail and transformed into **Conceptual Design**

This is then transformed into a **logical design** that can be expressed in the data model implemented in a commercial DBMS 

Then finally **Physical Design**. This is where further specifications are provided for storing and accessing the database. 
  - The database design is implemented, populated with actual data, and continuously maintained to reflect the state of the Universe of Discourse

