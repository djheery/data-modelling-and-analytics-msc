# Subsets and Equality

## Example

Set A is a subset of Set B if every element of A is also an element of B.

This is notated as follows: 

A ⊆ B

**{ Paul, Andy } ⊆  { Dave, Heather, Paul, Andy }**
**{ 1, 2 } ⊆  { 1, 2, 3, 4 }** 
**{ Red, Green, Blue } ⊆ { Green, Blue, Red }**

Formally ⊆ means an improper subset. 
In other words the sets may be equal. You can think of ⊆ as being similar to <= in that if: 

**x <= y && x >= y then x === y

If ever member of Set A is a member of Set B, but B has other members which are not in A, then A is a proper subset of B 

Proper subsets are notated using: 

**⊂**

Examples: 

{Paul, Andy} ⊂ {Dave, Heather, Paul, Andy}
{1, 2} ⊂ {1, 2, 3, 4}
{Red, Green, Blue} ⊄ {Green, Blue, Red}

## Empty Sets 

The empty set is a subset of very set

{} ⊆ {1, 2, 3}
{} ⊂ {1, 2, 3}

The empty set is therefore an improper subset of itself 

{} ⊆ ∅ ⊆ {}

Two sets are only equal if, and only if they have exactly the same elements 

This would normally be written like this: 

A = B 

Or you could write it like this: 

A ⊆ B and B ⊆ A


## More on Sets 

A ⊂ B is the statement that value A **is** a **proper subset** of B
A ⊆ B is the statement that value A **is** an **improper subset** of B
A ⊄ B is the statement that value A **is not** a **proper subset** of B 
A ⊈ B is the statement that value A **is not** an **improper subset** of B

All of the subsets below are subsets of **{a, b, c}**

{}, {a}, {b}, {c}, {a, b}, {a, c}, {b, c}, {a, b, c}

All except for the last are proper subsets, as they are all elements contained in the **powerset** (the set of all possible subsets)