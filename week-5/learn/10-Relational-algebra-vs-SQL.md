# Relational Algebra Vs SQL

All relational Algebra (RA) operations are shown here in SQL SELECT statements only to help understand how to write SQL queries when you know its basic building blocks. 

For this purpose, the following variations of different parameters in the SELECT clauses can bbe used:

- The list of attributes to be selected / shown in the SELECT clause 
- The name of tables to be queried in the FROM clause 
- The conditions on columns specified in the WHERE clause. 

There is no structural correspondence between the expressions of relational algebra and the SQL queries because in a single SQL statement the following combinations are possible: 

- Single Unary Operator applied to a single relation 
- Single Binary Operator applied to a pair of relations 
- Sequence of Unary operators applied inner-side out to one relation and all the intermediate results
- Combinations of bbinary and Unary operators applied to several relations and the intermediate results according to nesting rules. 

## SELECT Statement and Relational Algebra: General Form and an Example

The general form of a select statement is this: 

SELECT *list of columns*
FROM *list of relations*
WHERE *conditions to be placed on relations*

For example to display names of employees from the EMP table and their addresses from the ADDR table, you will have to specify a **JOIN** of the two tables such that the 'ENo' column common in both tables agree on having the same values. 

The symbol π denotes the PROJECT  (Show) operator of RA (Relational Algebra), which picks given columns of its operand, in this case, the result of EMP * ADDR where '*' denotes a natural join between the two tables - by equating common columns in both tables. 

In SQL the SELECT clause states the column names, the FROM clause states the relation names to be queried, and the WHERE clause states conditions to be staisfied by the tuples / rows selected by teh query' in this case EMP.Emp_no and ADDR.Address

Below is an example of an SQL statement then proceeding this is the equivilant Relational Algebra statement: 

### SQL

SELECT Name, Address
FROM EMP, ADDR
WHERE EMP.Emp_no = Addr.Emp_no;

## Relational Algebra 

πName.Address(EMP * ADDR);

Both of the above do the same thing. 

They Project/ show the Name and Address Attributes from the EMP and ADDR tables in a logical manner by joining the tables on the equivalent Employee numbers which is a primary key in the employee table and a foreign key in the ADDR table. 
