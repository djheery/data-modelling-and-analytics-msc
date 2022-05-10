===============
Database Design 
===============

The structure of the database is determined during the database design. 
  - This can be extremely complex. 
  - The designer must consider the organizations data needs first and the application second. 
  - For an acceptable end user experience the database design is crucial.
    - A poorly designed database will generate errors, that may lead to bad decisions, which may have serious repercussions for the organization.

=================================
Roles in the Database Environment
=================================

We now consider the people that interact with the DBMSs and the roles of those people within the DBMSs environment 

Data and Database Administrators
  - A Data Administrator (DA) is responsible for the management of the data resource.
    - This includes: 
      - Database Planning
      - Development and Maintenance of Standards 
      - Policies and procedures 
      - Conceptual/ logical database design. 
      - Ensures direction of database development will ultimately support corporate objectives.
  - The Database Administrator (DBA) is responsible for the physical realization of the database
    - Including:
    - Physical database design and implementation
    - Security and integrity control,
    - Maintenance of the operational system
    - Ensuring satisfactory performance of the applications for users 
    - The DBA is more technically oriented than the role of a Data Administrator
      - In some organizations there is no distinction between these two roles, in others, the importance of the corporate resources is reflected in the allocation of teams of staff dedicated to each of these roles. 
    

Database Designers 

  - In large database design projects we can distinguish between two types of designer:  

    - Logical Database designer
      - Concerned with identifying the data entities, attributes and relationships along with their constraints that are to be stored in the database. 
      - They must have thorough and complete understanding of the organization's data and any constraints on this data.
        - The constraints are sometimes refereed to as business rules, for example a member of staff cannot manage more than 100 properties at the same time
        - A member of staff cannot handle the sale or rental of his or her own property. 
      - To be effective the logical database designer musty involve all prospective database users in the development of the data model.
      - There are two stages: 
        - Conceptual database design, independent of the implementation details such as the targe DBMS, application programs, programming languages or other physical considerations 
        - Logical database design, which targets a specific data model, such as relational network, hierarchical, or object-oriented 

    - Physical Database Designer 
      - Responsibilities include:
        - Mapping the logical database design into a set of tables and integrity constraints 
        - Selecting specific storage structures and access methods for the data to achieve good performance 
        - Designing any security measures required on the data. 
      - Much of this job is dependent on the target DBMS and the ways of implementing a mechanism.
      - They must be fully aware of the functionality of the target DBMS and must understand teh advantages and disadvantages of each alternative implementation. 
      - Must be capable of selecting a suitable storage strategy that takes account of usage.

Logical Database Designer -> How can we do this 
Physical Database Designer -> What can we do. 

Application developers
  - The developers of the programs that interact with the database for the end users. 
  - Work from a specification produced by System managers.
  - Each program contains statements that request the DBMS to perform some CRUD operation on the database

End Users 
  - The clients of the Database
  - They can be classified according the how they use the system: 
    - Naive users 
      - Users unaware of the DBMS.
      - They access the database through specifically written application programs that attempt to make the operations as simple as possible. 
      - They invoke database operations by entering simple commands and choosing options from a menu
      - The do not need tyo know anything about the database or DBMS 
      - Example: Checkout assistant, unaware that when they scan an item the program reads the barcode, performs a lookup and alters stock levels. 
    - Sophisticated users
      - Familiar with teh structure of the DBMS 
      - May use a high-level query language such as SQL to perform required operations 


