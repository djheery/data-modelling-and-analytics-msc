# Conceptual Data Models for Database Design 

The procedure for creating a database design is as follows: 

## Requirements Collections and Analysis 

This step involves gathering the needs and requirements of the database. This can be done by speaking to prospective users to understand and document their data requirements. 

This could also be seen as the user requirements 

## Functional Requirements 

In parallel with specifying the data requirements, it is useful to specify the known functional requirements.
This consists of the user defined operations/ transactions that will be applied to the database. 

This could be the retrievals and updates that need to be added.

It is common to use **data flow** diagrams, **sequence diagrams** and other techniques to specify functional requirements. 

## Conceptual Design

Using a high level conceptual data model, you will create a conceptual schema for the database. Also known as the conceptual design phases. 
This is a concise description of the data requirements of the users, and includes detailed descriptions of the entity types, relationships, and constraints.

They are usually easy to understand as they do not include implementation details, and should be used to communicate with nontechnical users. 

During or after the conceptual schema design, the basic data model operations can be used to specify the high-level user queries and operations identified during functional analysis. This also serves as confirmation that all user requirements are met in the model. Modifications to the conceptual schema can be introduced if some functional requirements cannot be specified using the initial schema. 

## Implementation (Logical Design/ Data Model Mapping)

The next step in the database design is the actual implementation of the database, using a commercial DBMS. 
Most commercial DBMSs use an implementation data model - such as SQL model. So the conceptual schema is transformed from the high level data model into the implementation data model. 

Data model mapping is often automated or semiautomated within the database design tools. 

## Physical Design 

This phase is used to identify the physical needs of the database. Internal storage, file structures indexes, access paths, and physical design aparameters should be considered and specified





