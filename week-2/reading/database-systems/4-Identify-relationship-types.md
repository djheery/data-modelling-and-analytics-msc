# Identify Relationship Types 

**Objective**: To identify the important relationships that exist between the entity types. 

Having identified the entities, the next step is to identify all the the relationships between entity types. 
You can again again to the User Specification. 

"See the projects that a department manages"

From this you can gleam that the department and project entity types should be related in some way. 
You can look for verbs or verbal expressions as an identifier that a relationship type may be needed. 

In most cases relationship types are between 2 entities. However, we should be careful to look out for complex relationships that may involve more than two entity types, and recursive relationships, where that involve only one entity type. 

## Determine the Multiplicity constraints of relationship types

Multiplicity constraints are assertions about entity occurrences that can be applied when the database is updated to determine whether the updates violate the stated rules of the enterprise.

## Check for Fan and Chasm Traps 

### Chasm Traps

A chasm trap occurs when 2 "many-to-one" joins converge on a single table, and the query includes measures from both leaf tables. As a result multiple rows are returned from the tables when processing the query. 

### Fan Traps 

A fan trap occurs when two "many-to-one” joins follow one another in primary-detail form (OrderDetails), and the query includes a measure from both the leaf table (OrderDetails) and its immediate primary (Orders).

Again you must document these relationships in a data dictionary.


|Entity Name    |Multiplicity   |Relationship   |Multiplicity     | Entity Name         |
|---------------|---------------|---------------|-----------------|---------------------|
|staff          |0..1           | Manages       | 0... 100        | staff               |
|PropertyForRent|1..1           |Associated with| 0..*            | Lease               |

