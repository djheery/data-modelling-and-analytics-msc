# Types of NOSQL Databases and Systems n

There are 5 types of NOSQL databases and systems: 

## Document Based Systems

Document-Based NOSQL systems are used to manage collections of similar documents. These include documents such as JSON and BSON.

They are generally not concerned about high performance or read and write concurrency. However, they offer good query performance and ensure big data storage. 

Documents in this type of NOSQL system are self-describing and can have different data elements. 

Examples of this type of DB system are:

MongoDB (Which we will use)
CouchDB

These two are the most popular examples.

## Key-Value Stores

Key Value NOSQL systems offer fast access to the data by the virtue of using a key to get an associated value.

This value could be a record, object, document, or so on. 

Due to their simplicity their query speed is higher than most relational databases.
They support mass storage 
They support high concurrency. 

They can store unstructued, semi-structured and structured data. 

DynamoDB, oracle NSOSQL and voldermort are examples of Key-Value stores.

## Column based or Wide Column based systems

Column-based or wide-column NOSQL systems partition a relation by column into column families. 

Data is stored in columns rather than rows. 

Each column family is stored in its own files. 

Google's BigTable and Apache HBase are examples of column-based or wide-column NOSQL systems. 

## Graph Based Systems 

Graph Based systems offer data represented in graphs. 
Data is traversed with path expressions by searching related nodes via their edges. 

Neo4J and Graph base are examples of this type of NOSQL system. 

## Hybrid NOSQL Systems 

These types of systems are a combination of the above systems. 

Cassandra (Facebook) and Orient DB are examples of Hybrid Systems. 

