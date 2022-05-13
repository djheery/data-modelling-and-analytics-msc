# What is Normalization?

Normalization is a systematic method that takes pre-existing relations and produces a canonical set of relations.

Canonical in this context refers too:
- Well designed 
- Sound
- Recognized and lawful

Normalization can be used for both designing canonical relations and checking existing relations are canonical.

In other words, normalization is a technique to produce a set of relations with suitable and desireable properties that meet the data requirements of an enterprise. 

**systematic**: Done according to a fixed plan or system; Methodical. 
**canonical**: Orderly, standard state or behavior.

Normalization aims to identify a well-designed (suitable) set of relations that support the data requirements of an enterprise. 

The features of a suitable set of relations include:

- A minimal number of attributes, for the purpose of storing and manipulating the data requirements of an enterprise. 
- Attributes with a close logical relationship (also known as a functional dependency) are found in the same relation. 
- Minimal redundancy. Each attribute should be represented only once, with the important exception of foreign keys which are used for the purpose fo joining related relations for data manipulation/ access purposes. 

The advantage of using a database with a suitable set of relations is that the user can easily access, manipulate and maintain the data using a minimal storage space on the computer. 

