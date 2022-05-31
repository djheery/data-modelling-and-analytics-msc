# Identify Entity Types 

Identifying entity types can be both simple and difficult. 
To identify entity types you must address the needs of the end user. For example, you may be working for an organization and the staff may want access to staff names, staff, social security numbers, staff addresses, staff salary or they may want to access data on a department level what projects are managed by what department, department location and so on. 

You can identify an entity type if attribbutes fall within a specific category. 

For example, above, names, addresses, ssn, etc. could all be related to staff information thus making STAFF and entity type. 
Another entity type could bbe the department, and another for projects. 

Sometimes it can be difficult to discern entity types due to the use of synonyms such as branch or office, which both mean the same thing. Or Hynonyms such as program which could have different meanings, for example, program could mean TV show in one context or University course in another context. 

Determining what entity types are needed is essential when creating a conceptual data model/ schema for your database. 

Design is subjective, and different designers may produce different, but equally valid interpretations. 
This means that to a certain extent, determining entity types relies on experience and judgement of the designer. 

A database designer must take a very selective view of the UoD and catagorize the entity types they obbserve within the context of this enterprise. 

You must document entity types and assign them useful, understandable, logical names. 
It is no use naming what should be STAFF, the name of PERSON as this makes no logical sense and could end up in confusion in the logical/ implementation design of your database. 

You document names and descriptions of entites in a data dictionary. 
If possible, document the expected number of occurrences of each entity. If an entity is known by different names it may be useful to note this as an **alias** in the data dictionary. 

This could look like this: 

|Entity name    |Description                |Aliases    | Occurrence                |
|---------------|---------------------------|-----------|---------------------------|
|Staff          | employed staff.......     | Employee  | Each member at least 1... |
