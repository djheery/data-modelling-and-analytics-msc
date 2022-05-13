# The ISO SQL Data Types 

In this section we introduce the data types defined in the SQL standard. We start by defining what constitutes a valid identifier in SQL 

## SQL Identifiers 

SQL identifiers are used to identify objects in the database, such as table names, view names and columns. The characters that can be used in a user-defined SQL identifier must appear in a character set. 

The ISO provides a default character set

- Upper case and Lowercase letters in the alphabet (A...Z, a...z)
- Digits 0...9
- Underscore _ 

It is possible to specify an alternative character set. 
The following restricions are imposed on an identifier: 

- An identifier can bbe no longer than 128 characters 
- An identifier must start with a letter 
- An identifier cannot contain spaces

## SQL Scalar Data Types 

Sometimes the data types character and bit are collectively reffered to as **string**. 
The data types exact numeric and approximate numeric are reffered to as **numeric** data types as they share similar properties.

The SQL now also defines both character large obbjects and binary large objects. 

- Boolean
  - True or false 
  - Unless specified otherwise by NOT NULL, boolean supports NULL 
- Character data
  - A sequence of characters from an implementation defined character set. 
  - ASCII and EBCDIC are two sets in common use 
  - CHAR and VARCHAR are used for defining strings 
  - If the character length is fixed, the string is padded with blanks on the right to make up the required size
  - If a string is of varying lengths, then onlyu the characters entered are stored. 
- Bit Data 
  - The Bit data is used to define bit strings, that is, a sequence of binary digits, each having either the value 0 or 1.
  The format for specifying th bit data type is similar to that of the character data type.
    - BIT [VARYING](length)
