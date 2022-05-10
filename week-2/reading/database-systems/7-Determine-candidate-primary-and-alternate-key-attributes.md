# Determine candidate, primary and alternate key attributes

**Objective**: To idenditfy the candidate key(s) for each entity type and, if there is more than one candidate key, to choose one to be the primary key and others as alternate keys. 

A candidate key is a minimal set of attributes of an entity that uniquely identifies each occurrence of that entity. 

We may identify more than one candidate key, in which case we must choose one primary key; the remaining keys are called alternate keys. 

You must choose primary/ candidate/ alternate keys based on their uniqueness. For example, name is not a good primary key as there could be more than one person called Daniel in the database. Instead you should use their id or staffNo which should only occur once in the database. 

use the following guidlines when choosing a primary key from among the candidate keys: 

- The candidate key with the minimal set of attribbutes 
- The candidate key that is least likely to have its values changed 
- The candidate key with the fewest characters (for those with textual attributes)
- The candidate key with the smallest maximum value (for numerical attributes)
- The candidate key that is easiest to use from the users' point of view 

