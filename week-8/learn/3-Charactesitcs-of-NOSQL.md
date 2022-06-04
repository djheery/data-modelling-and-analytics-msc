# Characteristics of NOSQL Databases and Systems

There are 7 Characteristics mentioned in the slide: 

## 1: Scalability 

NOSQL databases have the potential to be scaled "horizontally as well as vertically"

Horizontal Scaling is the addition of more nodes for storage and computing power (I am assuming this refers to Servers operating in different locations and the sheer amount of servers to aid in computation)

Vertical Scaling Enables expanded storage and computing power of the existing nodes.

Im assuming vertical scaling represents the upgrading of the severs used to aid in storage and computing power. 

## 2: Availability, Replication and Consistency 

Because NOSQL systems offer continuous availability, this means it is a necessity to replicate data and needs to be maintained consistently with updates. 

This does mean that come data inconsistencies may occur, but eventually will achieve consistency with time and updates. 

## 3: Replication Models 

NOSQL Databases have two replication models:

- Master - Slave Model 
- Master - Master Model

In the **Master => Slave** model the writes/ updates are done first to the master and then to all of the slaves. 

In the **Master => Master** model, the read and write can be made to any of the replicas at any time (All are considered the master).

## 4: Sharding of Files 

NOSQL database systems enable the break-up of large files and storage across multiple nodes. This improves Load-balancing and availability. 

**Load Balancing** Is the process of distributing network traffic across multiple servers to stop one server slowing down due to too much traffic. 

## 5: High Performance Data Access 

NOSQL database systems provide high-performance data access. 

They do this by applying techinques called: 

Hashing 
Range- Partitioning 

(Not full understood as of yet)

They do these techinques instead of complex query conditions. 

## 6: No Schema Requirement 

NOSQL Database systems allow flexible and free-format data storage and searching. 

JSON or XML can be used to describe the structure of the data. 

## 7: No general Purpose query language

They forgo languages such as SQL for more general CRUD applications. 

CREATE, READ, UPDATE, DELETE.

