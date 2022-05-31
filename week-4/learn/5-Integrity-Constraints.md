# Integrity Constraints

An integrity Constraint is a constraint on the values that a given database relation is permitted to hold. The purpose of ICs is to try to ensure that the relations in the database only hold data that is true, accurate and up to date. 

A constraint is a validation check that the DBMS automatically applies when a relation's value is altered. 
The requirement that a data type must be assigned to every attribute is itself an integrity constraint. However, more integrity constraints are possible.

 ## Defining Constraints in SQL

 In SQL, integrity constraints are usually defined when the relation table is created using the CREATE TABLE statement, but in practice, tables evolve and need to change later on. Changes to table definition/ structure can still be defined using the ALTER TABLE statement. 

## Categories of Integrity Constraints

Below are some example integrity constraints. 
Note: This is not the only possible categorization of integrity constraints, but it is a convenient and practical one

- Attribute Type Constraints: These apply to individual Attributes 
- Candidate key constraints: These apply to individual relations 
- Referential Integrity Constraints: These usually correlate two relations but can also apply to one relation (In the case of a recursive relationships)
- Ad hoc constraints: These apply to one or more relations

## Attribute Type Constraints 

Each attribute must have a data type (a constraint in itself by the DBMS):

City VARCHAR(30)

Each attribute may or may not be NULL. For example: 

ENo CHAR(2) NOT NULL

Each attribute may put restrictions on legitimate values: 

M_S CHAR CHECK(M_S IN('S', 'M', 'W', 'D'))
Sal NUMBER CHECK(Sal > 999 AND Sal < 100000)

Note the **CHECK** Keyword is used to validate and check the values to be inserted. 
It will prompt an error if the condition is not fulfilled (not true)

## Candidate Keys 

There are no duplicate tuples in a relation because it is a set of tuples. So every tuple must be unique.

Often, indeed typically, the values of only one attribute, or a small number of attributes, in a relations are sufficient to make each tuple in it unique. Whether it requires one attribute, several attributes or all the attributes in a relation to make each tuple unique, that set of one or more attributes is called a candidate key. 

## Candidate Keys for Identification

The candidate key attribute(s) can also be considered as uniquely identifying in each tuple in the relation. 

A relation may contain, one, two or more candidate keys. Often, a candidate key consists of just one attribute. 
For example: passportNumber, empID.

Nevertheless, it is quite normal for a candidate key to consist of two or more attributes. For example: studentNumber + moduleNumber in the marks table. 

Occasionally, in an extreme case, all of a relation's attributes form the candidate key, even if there is only one key, it is still called the candidate key. 

## Properties of a Candidate Key

When it comes to the properties of a candidate key, you should be aware of uniqueness and irreducibility. 
Uniqueness refers to the fact that no two distinct tuples may contain the smae key value, while irreducibility details the notion that no attribute can be removed from the set forming the key, and the remaining attributes still possess the uniqueness properties. 

Candidate keys provide (the only) guaranteed way to find a particular uple. Checks on the uniquenss of the tuples can be limited to the candidate key attribute(s), giving greater efficiency. 

For example: 

**Relation** (A, B, C, E, F, G)

This relation's candidate key (<u>A</u>, <u>B</u>, <u>C</u>) is reducible if (A, B) are unique per tuple. Underlining attributes is a common way of specifying a candidate key.

## Candidate Keys: Examples

### Example 1

EMPLOYEE(<u>Eno</u>, EName, M-S, Sal)

The relation has just one candidate key in 'ENo'

### Example 2

CAR holds the dtails of employee's cars that are entitled to park in the company's car park 

CAR(<u>RegNo</u>, <u>Owner</u>, Type)

Each car could equally well be identified by its 'RegNo' or 'Owner', so they each individually form a candidate key.

### Candidate Keys: More examples

Reconsider the previous CAR example. Change the assumptions. The company now has a share and park scheme whereby a group of emplyees can share a car to work; a group may use several of the members' cars.

CAR(<u>RegNo</u>, <u>Owner</u>, Type)

One two-attribute key idicated by both attributes having the same level of underlining. 

Now neither RegNo nor ENo on its own is sufficient to identify the tuple in CAR

However, both together will identify any tuype. Therefore, they jointly become the only candidate key. 
The 'ENo' attribute did not represent the owner of the car in question; they may not even own a car.

You simply need to know which cars each emplyee may come to work in or, which employees may be allowed to come to work in each car.

Therefore it is essential to be able to distinguish: 

- Two one-attribute candidate keys
- One two-attribute candidate key. 

## Candidate Keys in SQL 

SQL has primary and alternate keys. If there is only one candidate key, it becomes the primary key; there are no alternate keys. 

If there is more than one candidate key, choose one a s the primary key; the rest become alternate keys. 

Any candidate key can become the primary key, so choose one that makes the most practical sense, which is usually the shortest; easiest for the user, most efficient for the computer. 

SQL requires that a PK is never NULL and by definition it should have a value and this value should be unique. However, it will let an alternate key be NULL, thereby permitting duplicate NULL keys - a contradiction in terms. To prevent this, a 'not NULL' constraint can be added to an alternate key. It is desirable to specify any other candidate keys that happen to exist as alternate keys. 

While SQL defines a primary key using the phrase **primary key**, it defines an alternate key using the word **unique**! Errors will occur if you do not define a primary key. Therefore, you should ensure every SQL table has at least a PK. 

Syntax: 

**primary key** :: The key word that defines the primary key
**unique**  :: The key word that defines an alternate keys. 

## Entity Integrity

This is an additional constraint for relational databases that allow nulls. Entity integrity requires that no attribute in a primary key can ever be null. Each tuple represents an entity instance in the real world and each entity instance must bbe identifiable by definition. 

Primary keys seve as identifiers of tuples. Therefore, a primary key can never be partly or wholly null, to ensure that it does identify each tuple. Note: entity integrity does not apply to alternate keys, which can be null, either wholly or in part. 



