# Nesting and Un-Nesting of Data#

Relational Database Design enforces Normal forms, of which the 3NF is usually acceptable. 
However, Normalization achieves flat structures and often more relations than envisaged by users. 

On the other hand, real-world data is intuitively nested, which means the non-first normal form (NFNF or NF(2)).

This means there are two more operators to the standard relational algebra: 

  - 1NF → Nest → NF(2)
  - NF(2) → Unnest → 1NF

**(2) Denotes a Squared symbol** 

Consider the family data below: 

|   Father      |     Mother    |    Child       |
|---------------|---------------|----------------|
| David         | Victoria      | Brooklyn       |
| David         | Victoria      | Romeo          |
| Charles       | Diana         | William        |
| Charles       | Diana         | Harry          | 
| Waseem        | Fauzia        | Danyal         | 
| Waseem        | Fauzia        | Honiya         | 
| Waseem        | Fauzia        | Moiz           |

By nesting on the basis of: **1NF → Nest → NF(2)** returns family data in NF(2)
This is shown below: 

|   Father      |     Mother    |    Child               |
|---------------|---------------|------------------------|
| David         | Victoria      | { Brooklyn, Romeo }    |
| Charles       | Diana         | { William, Harry }     | 
| Waseem        | Fauzia        | { Danyal,Honiya, Moiz }|

Unnesting on the basis of : **NF(2)  → Un-Nest → 1NF** returns the initial relation


