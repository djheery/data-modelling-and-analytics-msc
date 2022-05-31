# Oracle Database Object Relational Features 

Below you will review some of the features of an Oracle Object Relational Database: 

## User-Defined Object Types (UDOTs)

Types that have attributes and Methods
Objects are instances of UDOTs

## Type Inheritance 

You can create subtypes to object types, thus specializing it. 
They could have some added feature that differentiates them such as attributes and/ or methods. 

## Object Tables

In an object table each row represents an object 

## Object Views 

An object view is a way to access relational data. 
You do this by using object relational features, this aids in developing object-oriented applications without changing the relational schema. 

## REF data type 

A REF data type can be defined as a logical pointer of reference to a row object. 
REFs and collections of REFs model associations among objects. This can particularly be seen in M:1 and M:N relationships. 
REFs provide an easy mechanism for navigating between objects. 

## Collections 

There are two collection data types: 

- varrays
- nested tables 

A varray is an ordered collection of elements.
A varray has an index number associated with each element inside it and you can use this number to access particular elements. 

Nested Tables can have any number of elements, there is no maximum size specified. 
The order of the elements is not preserved. 
Elements of a nested table are actually stored in a separate storage table. 



