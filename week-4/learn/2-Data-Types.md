# Data Types: Definition and Operators

**Definition** A data type has a set of permissible values. Each attribute value must be drawn from the set of permissible values of the data type specified for that attribbute. More than one attribute in a relation may draw its values from the same data type. 

A data type also has a set of permissible operators, examples of which include: 

- Number: +, -, /, *, <, >
- Text: length(), sub(), concat, ||

Every attribute must ahve a data type as shown in the following figure, just as every variable in a program must have  type. 

## Example of using data types: 

Every Data type can bring more specifications to be respected while filling in tables with the appropriate data. 

For example, consider the table below 

| Eno (Text 2)    | EName (Any Text)  | M_S ({S, M, W, D})  | Sal (No > 999 AND No < 100,000) |
|-----------------|-------------------|---------------------|---------------------------------|
| E3              | Smith             | S                   | 12,500                          |
| E51             | X47/35            | A                   | 500                             |

Text(2) indicates that the data should be text and composed of 2 characters at most. 
Therefore E51 should be dissallowed as it is too long for the specific data type 

Text means any alphanumeric characters. Attribute values can be among a set of specific characters such as 'M' or 'S'
This means A should be disallowed from the 2nd row 3rd column 

Further conditions (constraints) can be imposed to attributs' values such as a number < 999 or number > 100,000
This would make 2nd row 4th column invalid as the numbebr is less than the permissabble amount. 

Concerning this example, all of the attribbute values in the top tuple are drawn from their respective data types. They would not be acceptable otherwise. Only one out of four values in the bottom tuple are drawn from their respective data types, so that the typle cannot bbe stored in the relation. If even one attribute value that is not drawn from its type's set of permissible values, that tuple cannot be held in the relation. 

## Built in Data Types

Now consider some of the built in data types: 

### CHAR(n) 

A fixed-length character of length n, where values are enclosed in single quotes, such as 'Rose' or 'E2'. 
Examples include CHAR(10), CHAR(1) or CHAR. 

### VARCHAR(n)

A variable-length character of max length n, where values are enclosed in single quotes. 
An Example is VARCHAR(30). An attribute conforming to the prior constraint must be less than 30 characters and is again contained in single quotes.

### DATE

A date with default format of 'DD-MON-YYY, where values are enclosed in single quotes such as '29-OCT-2022'

### NUMBER(P, S)

A number having a precision (p) and scale (s), where 1≤ p ≤ 38, and –84 ≤ s ≤127
Default : p=38, s=0;

Examples include NUMBER(6) and Number(10, 2).

