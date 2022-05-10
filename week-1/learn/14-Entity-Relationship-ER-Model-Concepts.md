# Entity Relationship (ER) Model Concepts 

An entity is a basic concept for the ER model. Entities are specific things or objects in the UoD. 

Attributes are the properties used to describe an entity. 
An entity will have a specific value for each of its attributes. 

All attributes have a data type or value set associated with it 
This could be INT, STRING, DATE etc, 

Attributes can fall into any of the following catagories: 

- Simple Attribute
  - An attribute composed of a single component with independent existence.
- Composite Attribute 
  - An attribute composed of multiple components, each with each attribute being orthogonal 
- Single-valued Attribute
  - An attribute that holds a single value for each occurrence of an entity type. 
- Multi-Valued Attribute
  - An attribute that holds multiple values for each occurrence of an entity type 
- Derived Attribute 
  - An attribute that represents a value that is derivable from the value of a related attribute or set of attributes, not necessarily in the same type. 

## Entity Types and Key Attributes

Entities that share the same basic attributes are grouped together into an **Entity type**.
Entity Types can have key attributes which are attributes that contain unique values for each entity within the entity type. 

A key attribute may be a composite. An entity type may have more than one key. Each key is underlined.
This is different in relational schema where only the primary key is underlined.

## Entity Set 

An entity set is a collection based on an entity type. 
"An entity set will have a collection of entities stored in a database. This is called the entity set or sometimes entity collection" 

An entity set is the current state of the entities of that type that are stored in a database. 

## Value Sets (Domains) of Attributes 

Value sets are similar to data types in most programming languages. For example integer, char, real, bit. 
Each simple attribute has an associate value set. For example, first name may be a string and date may be a value like: 'MM-DD-YYYY' each letter corresponding to an integer. 

## Notation For Diagrams 

In ER diagrams, it is important to be aware of notation. 

**Entity Type** => Normally displayed in a rectangular box 
**Attributes** => Displayed as ovals
- Each attribute is connected to a type. 
- Components of a composite attribute are connected to the oval (representing a composite attribute)
**Key Attributes** => These are underlined 
**Multi-valued Attributes** => These are represented by double ovals 
**Weak Entity Type** => Represented by a double-lined rectangular box 
**Relationship type** => Represented by a diamond box 
- A relationship type that connects an entity type (strong entity) with a weak entity is called an **Identifying Relationship**
**Derived Attribute** => shown in a dashed-line oval 

A relationship type **R** between entity *E1* and *E2* is shown with single lines on both sides if it is optional for instances of *E1* an *E2* to participate in the relationship.

If participation is mandatory for either *E1* or *E2* to R, then it is shown with **Double Lines**

When one instance of *E1* participates with one, two or many instances of *E2* then a **1** is pot on the *E1* side and **N** is put on the *E2* side of the relationship **R**