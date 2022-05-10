# Relations (Sets) vs Sequences vs Bags 

# Ordering Tuples 

A relation is a set of tuples. Tuples are not fixed in a particular order. 
Ordering is a sort of structure and sets have no structure. The same relation can appear with its tuples in any order. Since a relation is a set of tuples, it cannot have duplicate tuples, because duplicates do not exist in a set. 

Sometimes it is important to deal with matters of duplication and ordering, because these situations occur in reality. 
An ordered collection is called a **sequence**. A collection having duplicates is called a **bag**

**Sequence**
  - An ordered Collection 

**Bag**
  - A collection that has duplicates

# Storing a Bag in a Relation 

To store a bag the general strategy involves recording one instance of each item of data about some entity, and then with it the amount of time this item occurs. For example, books in a library, or items on a shopping list. 

This saves storage space and is generally less confusing. 
This is what manual recording systems generally do. 
Use this method when the entities whose data appear in a tuple are identical, but there can be many instances of them. 

An example of storing a bag:

| Title                 | Author      | No      |
|-----------------------|-------------|---------|
| Database Fundamentals | Connolly    | 12      |
| Harry Potter 4        | J.K.R       | 28      |
| Blue Print            | Edgely .R   | 10      | 

