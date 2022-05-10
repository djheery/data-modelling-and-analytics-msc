# Mapping an ERD into a Set of Relations

This session has explored how to turn data requirements of the supermarket checkout system into a conceptual model and an example ERD.

Here you will discover step bby step how to map each concept and element from the ERD into a set of relations. Furthermore, you shall provide the complete set of relations that represent the ERD of the supermarket checkout system. 

Mapping is visually showing the entity types with their relations (Relations in this context means their associated attribbute pool)
View this information in the penultimate slide of week 2

Steps: 

1. Map Strong Entity Types to Relations 
  - First map strong entity types with their relations 
  - Underline primary Keys 
2. Map Weak entity types to Relations 
  - The primary key of the owner entity type is copied into the eak entity type as a foreign key 
    - This is shown by a "*" next tot he key 
    - Example, The checkout session has a coID as a primary key, the transaction weak entity type relies on this key as a foregin key. Thus in the map you would enter "*coID" underlined then ad a uni directional arrow from the FK in transaction entity type to the primary key of the owner entity type, in this case checkout_session 
3. Map Binary 1:1 relations
  - Identical attributes have a 1:1 relation, this could be seen in a supervisor, and cashier entity type as the only difference would be the supervisorID and the cashierID, instead it would be better to merge these two entity types and a a staffType attribute to the relation which is constrained to either "supervisor" or "cashier" for example. 
4. Map 1:N relationships
  - The primary key of the category entity type, which is on the one side of the relationship, is copied as a foreign key into the product relation. this represents the entity type on the N side. This means that every product instance will point to or refer to the corresponding category id.
5. Map M:N relationships 
  - Both participating entity types are copied as foreign keys along with the attributes of the logs_in relation, and then make a composite primary key by combining these foreign keys.