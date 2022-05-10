# Determine Attribute Domains 

**Objective**: To determine domains for the attributes in the conceptual data model. 

A domain is a pool of values from which one or more attribbutes draw their values.

For example we may define: 

- Staff number attribute as being a five character variable-length string, with the first two characters as letters and the next one to three characters as digits ranging from 1-999
- The possible values for the sex attribute of the staff entity as being either "M" or "F". The domain of this attribute is a single character string consisting of the values "M" or "F" 

A fully developed data model specifies the domains for each attribute and includes: 

- Allowable set of values for the attribute; 
- Sizes and formats of the attribute

Further information can be specified for a domain, such as the allowable operations on an attribute, and which attribbutes can be compared with other attributes ro used in combination with other attribbutes. However, implementing these characteristics of attribbute domains in a DBMS is still a subject of research 

You must document these domains. 

Record their names, characteristics and so on in the data dictionary 


