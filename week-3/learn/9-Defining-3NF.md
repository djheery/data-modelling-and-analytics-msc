# Defining 3NF

A relation is 3NF if, and only if, it is in 2NF and every non-key attribbute is non-transitvely fully FD on the candidate key.

Note 3NF is more stringent than 2NF, as it requires that the relation not only has full functinal dependencies on the candidate key, but that these dependencies must now additionally be non-transitive

What is non-transitive?

## Transitivity 

In mathematics transitivity refers to a relation between three elements such that if it holds between the first and the second elements, and it also holds between the second and the third elements, it must therefore, hold between the first and the third elements. 

So for example, assume there are three sets of attributes A, B, and C. If A determines, B and B determines, C then logically A determines C via B transitively. 

A ===> B ===> C
A ===> B Non-Transitive 
B ===> C Non-Transitive 
A ===> C Transitive via B

A ===> C is transitive by another set of attributes to C 

## Example of Transitivity 

Suppose pilots always fly the same aircraft. If you know the pilot, you know the aircraft, so the pilot functionally determines the aircraft.

If you know the aircraft, then you know the airline that owns it, so the aircraft functionally determines the airline. 

Putting these two dependencies together, then the pilot functionally determines the airline. But the functional dependency of the airline on the pilot is transitive as it goes via the aircraft.

## Non-Transitive Full FD and 3NF 

So to be 3NF means that all attributes not in the candidate key are non-transitively (directly) fully FD onall those attributes that are in the cadidate key, and not FD on the candidate key via some other non-key attribute.

## Reviewing the Defenition of 3NF 

R1's FD diagram shows a 'chain of dependencies. Therefore it is not 3NF

R1(KEY, ==> NK1, ===> NK2, ===> NK3)
Key ===> NK1 ===> NK2 ===> NK3

NK1 is non-transitive and fully FD on the key, however the rest are transitive via one or more of the other keys.
E.g NK2 is transitive via NK1 and NK3 is transitive via NK2 and NK1

A non-transitive relation looks like this: 

Key ==> NK1
|=====> NK2
|=====> NK3