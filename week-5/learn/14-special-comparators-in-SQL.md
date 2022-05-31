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

IN is used for comparison, namely to compare one value (x) to a set of values (y) to see if x exists in y.
All values within the set of values are separated by a comma. 
This can be used as a query or SQL sub query. 

IN returns true when an attribute value is equal to one of the values in y. 

For example: 

WHERE MyNumber IN (3, 4, 5, 13, 20)

IN would return true if MyNumber === 3, say. 

The values in the set to check have to be of the same data type as the attribute (MyNumber).

IN is particulary useful if the set of values in large. 

## BETWEEN 

BETWEEN is uesful to determine if an attribute lies within a given range of values

The awttribute selected must be of a numeric or orderabble type, while value 1 and value 2 denote the min and max values respectively. 

BETWEEN again returns true of false depending on whether the attribute is within the given range of value 1 and value 2. 

Example: 

WHERE MyNumber BETWEEN 10 AND 50;

This would be true if my number was 25, but false if it was 1 or 51.

## Negating the Special Comparators in SQL 

Some negatives include: 

AttributeName NOT LIKE '*Pattern*'
AttributeName NOT IN (set_of_values)'
AttributeName NOT BETWEEN value1 AND value2

Also Equivilant: 

NOT AttributeName LIKE 'pattern';
NOT AttributeName IN (set_of_values)
NOT AttributeName BETWEEN value1 AND value2.


