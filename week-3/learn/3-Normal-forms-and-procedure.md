# Normal Forms and Procedure

The normalization technique involves a series of rules to test individual relations so that a database can be normalized to any degree. 
When a requirement is not met, the relation violation the requirement must be decomposed into relations that individually meet the requirements of normalization. 

Three normal forms were initially proposed:

- First Normal Form (1NF)
- Second Normal Form (2NF)
- Third Normal Form (3NF)

Normalization uses this concept of normal forms. 
They are organized in a sequence with each successive normal form being higher than the one before.

Each Normal Form has two parts: 

1. A **Definition** that specifies exactly what constraints apply to a relation in that normal form - This is used to check whether any given relation is already in that normal form or no. 
2. A **Method** to be used to replace the relation with two or more replacement relations that will be in that normal form - the method assumes that the relation to be replaced is in the previous normal form. 

A normal form is higher because it applies more stringent constraints to a relation than a lower normal form. A relation is said to be in a certain 'normal form' if it conforms to the constraints of that normal form. 

Normalization is also applied as a relational design tool for designing relations. 
For example, when ER modelling is not feasible or if you are dealing with a small number of attributes. 

The constraints of a particular normal form are those of the previous normal form, plus the additional constraint(s) perculiar to this particular normal form. 

The normalization process starts with a set of relations, for each of which, it is presumed to be an un-normalized form. 
