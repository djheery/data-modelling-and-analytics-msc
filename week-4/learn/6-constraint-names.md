# Constraint Names 

Most relational DBMSs give integrity constraints a name when they store the constraint in the database. Thus, a candidate key constraint would recieve a name. If the user does not supply a name when assigning the constraint, a unique default name is created for it by the DBMS

The naming of integrity constraints can bbe great practical use because it helps users find out about what integrity constraints have been assigned to relations, and it allows more meanigful error messages to be provided to the user if there is an attempt to break an integrity constraint. 

Oracle allows the user to provide integrity constraint names and generate default names if the user does not provide them. However, Oracle default names are not meaningful. Therefore, assign your own names to integrity constraints. Constraint names must be unique within the entire users DB, not just within a single relations. 

