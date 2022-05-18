# Special Comparators in SQL

Special comparators are used for Restriction conditions. 
They are found in every implementation of SQL:

- LIKE 
- IN 
- BETWEEN 

## LIKE 

The purpose of Like is to match character strings and as such it is much more powerful than = and <>.
The syntax of Like is:

AttributeName LIKE 'pattern'.

The Type of AttributeName must be character and the pattern is made up of character constants and/or one or more of the following wildcard characters: 

- % 
  - Represents 0, one or more occurrences of any character 
- _ (underscore)
  - Represents and character, but just one character. 

LIKE returns true when an attribute value matches the pattern, and false otherwise


### Examples of the LIKE comparator in SQL:

**WHERE Name LIKE 'Sm_th%';**

This query would find any 'Smith' or 'Smythe', including those which are the first part of a double barrelled name. 

**WHERE Name LIKE 'M%c%D';**

This query would find all names beginning with 'McD' and 'MacD', no matter the length of those names. 

**WHERE Name LIKE 'Franc_s';**

This query would find names like 'Francis', 'Frances', 'Francos', etc. 

## IN

