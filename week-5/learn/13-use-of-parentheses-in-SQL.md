# Use of Parentheses in SQL 

Parentheses can be used to alter and order in which comparisons are combined. 
For example: 

WHERE *comparison1* AND NOT 
                    (*comparison2* OR *comparison3*);

There is no limit to the scale / complexity in which comparisons may be combined by AND, OR and NOT.
SQL acts the same as other programming languages in this respect. 

## Handling Priorities in SQL 

The higher priority NOT means that each NOT is applied to its (right hand) operand before going through the condition from left to right applying AND and OR to their operands.

Use of parentheses is reccomended even when not logically necessary in order to make completely clear how the complete Boolean condition is evaluated. 

