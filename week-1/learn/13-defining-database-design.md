# Defining Database Design 

"Database Design is the process of creating a design for a database that will satisfy the requirements of a system. 

There are 3 phrases to database design 

- Data Modelling 
- Logical Database Design 
- Physical Database Design 

## Data Modelling 

This is also known as the conceptual database design, data modelling produces a model that represents the requirements in a format and notation free from any logical implementation and physical considerations. 

- Analyze the requirements and produce an entity relationship diagram (ERD) or UML class diagram (UML-CD)

## Logical Database Design 

Logical database design coverts a conceptual model into a logical model based on the data model of the targe database system but otherwise neutral to any physical considerations. (Concerned with the implementation)

- Apply mapping rules to convert ERD or UML-CD into a logical model (for example, a set of relations)

## Physical Database Design 

Physical Database design converts a logical model into a physical model that describes how the database will be implemented on secondary storage. 

- Convert the logical model into physical structures: 
  - Tables
  - Indexes
  - Partitions
  - Files