# Characteristics of the Database Approach 

The database approach consists of: 
  - A single repository that maintains data 
  - Data is generally defined once
  - Data is accessed by various users 
    - Through queries, transactions and application programs 
  
Main characteristics of the database approach versus the file-processing approach: 
  - Self Describing nature of a database system
    - The associated metadata 
    - Data constraints 
    - File Structure 
    - The type 
    - etc
  - Insulation between programs and data, and data abstraction 
    - Generally applications that rely on DBMS, access programs do not require structural changes when data structures change
      - Known as program data independence 
    - In some  types of database systems, such as object-oriented and object relational systems, users can define operations on data as part of the database definitions (Basically methods/ functions)
    - Data independence is allowed due to data abstraction. the DBMS provides users with a conceptual representation of the data that does not include many of th edetails of how the data is stored or how the operations are implemented. 
  - Support of multiple data views 
  - Sharing of data and multi use transaction processing

It is worth noting that some newer types of data-base systems, known as NOSQL systems, do not require meta-data. Rather the data is stored as self-describing data that includes the data item names and data values together in one structure. 

DBMS utilize a catalog that defines how data stored in the database is constructed. An example in the book is given using the number of bytes a specific datatype needs (Page 43)

To design a database your have to understand the requirements of the end user
  - Naive 
  - Sophisticated
  - Standalone 

Other types of behind the scenes workers 
  - DBMS system designers and implementers 
    - Design and implement  DBMS modules and interfaces as a software package. 
    - DBMSs are complex pieces of software with many components/ modules.
  - Tool Developers design and implement tools 
    - Software packages that facilitate database modeling and Design 
      - Performance monitoring 
      - GUIs
      - Test data generation 
  - Operators and maintenance personnel 
    - Sys admin, responsible for the running and maintenance of the hardware and software 

