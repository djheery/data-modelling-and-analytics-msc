# Exceptions 

Exception handling is an essential part of any programme and is particularly needed for updates, thanks to their open ended nature. 
You need them when searching, as you may not find the required data.
You need them when an operation fails to perform. 
You need them in just about any situation where there is a failed or unexpected outcome. 

## When are Exceptions raised in PL/SQL? 

Exceptions are raised with input particularly, but you cannot specify all the Oracle error codes in advance, as there are simply too many. 
Some rule exceptions, though, can be emphasised and therefore need specific exceptions and general exceptions. 

Below is the template for procedures: 

CREATE OR REPLACE PROCEDURE proc_name (params)
AS **local_vars**
BEGIN 
**executable_code**
EXCEPTION
**exception_code**
END;
/

- local_vars (defines local variables)

## Complete Add_patient procedure

Take a second to look at the code in the SQL folder for add_patient. 

En explanation: 

### pid_too_high exception 

This means the variable pid_too_high is a type of exception (value true or false);

### PRAGMA EXCEPTION_INIT (pid_too_high, -20000) 

This is an instruction to the compiler which associates error code -20000 with this tyupe of error. 
Oracle reserves error codes in the range of: **-20,000 to -20,999** for user-defined errors

