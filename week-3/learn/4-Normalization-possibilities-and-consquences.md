# Normalization possibilities and Consequences 

DO FOR xNF = 1NF, ... 5NF
  DO FOR each relation that exists
    IF relation already conforms to xNF 
      Then it is in xNF, so do nothing 
    ELSE create 3 more replacement relations from it that do conform to xNF.
  END-LOOP
END-LOOP

The pseudo-code above represents the algorithm involved in normalization. 

You limit normal forms to 5 (represented by 5NF). In theory, you may reach 5NF however, in practice much of the time you will only reach 3NF.

For each of the relations that exists, if it is already in line with one of the normal forms (xNF) then you do not have to change it as it is xNF. However, if the relation does not conform to xNF then you create two or more replacement relations from it to meet the next xNF (x represents the number). You then repeat this for all relations.

if new replacement relations are created, then they must be projections of the original:

NewRelation = π set of attributes(original relation)

The π symbol denotes the projection of a set of attributes from a relation, which picks and chooses a set of columns from a table/relation and creates a new relation with the chosen attributes. 

Normalization creates new relations such that: 

Original-relation ≡ New-Rel-1 ⋈ New-Rel-2

The symbol ⋈ denotes a join between two relations to create a combined relation with attributes and data from both input relations. This ensures that no information is ever lost.
  