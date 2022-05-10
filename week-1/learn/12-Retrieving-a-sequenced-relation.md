# Retrieving a Sequenced Relation

Below is an SQL example of how to retrieve the EMPLOYEE in the order of increasing employee salary. 

SELECT * FROM EMPLOYEE
ORDER BY Sal Asc 

**SELECT** => Indicates Retrieval 
**\*** => Indicates All Attributes need to be retrieved 
**FROM** => The word following this word indicates the relation you wish to retrieve data from 
**ORDER BY** => The information following is: the attribute you want to order the retrieved data by, and the ordering preference


## Definition of Tuple and order of Columns

**Tuple** => A set of attributes 

As a relation is a set of tuples, the relation has that same set of attributes. 
When relations are depicted as a table, the attributes for the table are always shown in the same sequence for simplicity. 

This means a columns or attributes ordering does not matter. 

# Attributes Order in Retrieval 

In a basic retrieval, the attribute ordering will be the default ordering. 

SELECT * FROM EMPLOYEE

The default ordering is typically determined by the relations physical storage and/or the order in which the attributes were written upon creation of the table. 

You can create custom queries to list the relation in a bespoke ordering. 
Every SQL retrieval statement must include the SELECT and FROM phrases. Other phrases are optional. 

An example of some custom queries: 

**SELECT** ENo, EName, M_S, Sal **FROM** EMPLOYEE 

**SELECT** EName, ENo, Sal **FROM** EMPLOYEE

Note that the EMPLOYEE relation seen so far shows 'M-S' for marital status. 
But in SQL, it has become M_S because the hyphen '-' is regarderd as minus or subtraction operator. 

