# Integrity Constraints and Making Permanent Changes to The Database 

A tuple inserted into a relation must meet all the integrity constraints for that relation. 
If it does not, it is rejected with an error message. 

An amended version of a tuple must meet all integrity constraints for that relation 
If it does not, it is rejected with an error message.

The deletion of a tuple can be rejected if the deletion breaks an integrity constraint, such as foreign key relationship. 

## Making Permanent Changes to a Database

After using INSERT, DELETE or UPDATE, you should make sure taht the changes made are applied correctly. 
You can do this via the use of a SELECT statement to query the table data. 

Oncer ready to make the changes permanent, use **COMMIT**; 

This will write all the changes since the last commit to the database.

If you are not happy with the changes, then do no use COMMIT and instead use **ROLLBACK**; 

This will restore the database to the last COMMIT status. 

