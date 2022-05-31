# What are Transactions? 

A transaction is a logical unit of work on a database, a group of related relations that typically comprises a collection of individual actions, such as :

- INSERT
- UPDATE
- DELETE
- SELECT 

A transaction must be performed successfully before any changes can be finalized.

Variable Size: 

- Entire run on SQL*PLUS, for example, spend two hours inserting data 
- Single Command in SQL*Plus, for example, one insert command
- One execution of a procedure, for example, one run on add_patient


## Use of Transaction Commands 

COMMIT/ ROLLBACK is explicitly entered in SQL*Plus window interactively and the PL/SQL code including procedures 

It is also implicitly entered in the following circumstances:

- On normal EXIT from Oracle (via commit)
- On abnormal exit from Oracle forexample dismiss (ROLLBACK )
- After each DML (except SELECT command) in SQL*Plus (COMMIT) but only when AUTOCOMMIT is ON
- After a DDL command, for example, ALTER/DROP/CREATE TABLE (COMMIT), whatever the autocommot setting is. 

