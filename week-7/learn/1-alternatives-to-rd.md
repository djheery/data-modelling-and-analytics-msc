# Why do We need alternatives to Relational Databases? 

Relational databases hold around 90% of the market of database management systems.
However there are known weaknesses to Relational Databases, which have spouted alternative forms of database such as 

- Object Oriented Databases 
- Nested-Relational Databases
- Object Relational Databases

## What Weaknesses Do Nested-Relational and Object Relational Databases Address

Nested Relational Databases (NRDBs) and Object Relational Databases (ORDBs) aim to address the following Weaknesses: 

- The poor representation of the 'real-world' conceptual model 
  - Usually relational schema does not fully correspond with real world entities
- Semantic Overloading 
  - This is where the same 'relation' concept is used to represent entities (classes) as well as relationships (association, aggregation)
- Limited Support for Integrity and business rules 
- The fact that there are a Fixed number of attributes and all attributes must be Atomic 
- Limitations to Operations that can be performed on the Data
- Recursive queries can be difficult to Handle 
- Impedance Mismatch  
  - This happens when SQL is embedded in a 3rd Generation Language such as C++
  - More can be read about this here: https://www.geeksforgeeks.org/impedance-mismatch-in-dbms/ 
- Type system Mismatch, Evaluation Strategy Mismatch 
- Poor navigational access 
  - It is difficult to navigate the DBMS

## What do NRDBs and ORDBs do? 

NRDBs and ORDBs seek to:

  - retain the relational model as a subset
  - retain the strengths of the relational model and all the technologies that come with it
  - support complex data types (BLOBS, ADTs, spatial and multimedia…)
  - support object-oriented design
  - reduce impedance mismatch (type system).