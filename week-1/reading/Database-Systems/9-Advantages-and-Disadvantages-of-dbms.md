# The Advantages and disadvantages of DBMSs

## Advantages: 

### Control of data redundancy

- Less duplication of data entries cause by file-based systems.
- Similar data such as rent, address, can have their own columns and relationships. 
  - This does not eliminate redundancy entirely,  but controls the amount of redundancy inherent in the database. 
- Sometimes it is necessary to duplicate key data items to model relationships. Other times it is necessary to improve performance.

### Data Consistency 

- By eliminating or controlling redundancy we reduce the risk of inconsistencies occurring. If a data item is stored only once in the database, any update to its value has to be performed on only one item, and the new value is available immediately

### More Information from the Same Amount of Data 

- With the integration from of the operational data, it may be possible for the organization to derive additional information from the same data.

### Sharing Data

- A centralized database allows data from different departments to be shared, improving business operation.

### Improved Data Integrity 

- Data integrity refers to the validity and consistency of stored data
- Integrity is usually expressed in terms of constrains 
  - Constraints are also known as consistency rules. 
  - may apply to data items within a single record or to relationships between records 

### Improved Security 

- Security refers to the protection of the database from unauthorized users. 
- Without security measures, integration makes the data more vulnerable than file-based systems.
- However, integration allows the DBA to define database security and DBMS to enforce it. 
- This security could be: 
  - User Names
  - Passwords 
  - Restricted IP addresses 
  - Restricted access based on operation type, some people may only have read access 
    - Some people may not be able to access certain areas of the the Database, however, others have super admin privileges.

### Enforcement of Standards 

- Integration allows the DBA  to define and the DBMS to enforce the necessary standards. 

### Economy of Scale 

- Combining all the organization's operational data into one database and creating a set of applications that work on this one source of data can result in cost savings. In this case, the budget that would normally be allocated to each department for the development and maintenance of it's file based system can be combined.

### Balance of conflicting Requirements 

- Each user has needs that may be in conflict with the needs of other users. 
  - Because the database is under the control of the DBA, the DBA can make decisions about the design and operational use of the database that provide the best use of resources for the organization as a whole.

### Improved Data Accessibility and Responsiveness 

- Similar positives to Sharing data, in that integration allows data to cross departmental boundaries. 
- Many DBMSs provide query languages or report writers that allow sophisticated users to ask ad hoc questions and to obtain the required information almost immediately at their terminal. 

### Increased Productivity 

- DBMSs provide much of the standard functionality that the programmer would have to write in a file-based application.

### Improved Maintenance Through Data Independence 

- Due to the descriptions of the data and logic for accessing said data not being built into each application program, the data is independent in a database system, as opposed to a file-based system. 
  - This means that data structures can be manipulated without breaking any application that the client uses to interact with the DBMS/ database. 

### Increased Concurrency

- In some file-based system, if two or more users are allowed to access the same file simultaneously, it is possible that he accesses will interfere with each other, resulting in loss of information or even loss of integrity. 
  - Many DBMSs manage concurrent database access and ensure that such problems cannot occur. 

### Improved backup and recovery Services

- Modern DBMSs provide facilities to minimize the amount of processing that is lost following a failure. 
- In file-based system, this responsibility was on the user to make sure necessary protocols were in place to ensure the back up of data. 

## Disadvantages 

### Complexity

- The provision of the functionality that we expect of a good DBMS makes the DBMS an extremely complex piece of software. Database designers and developers, data, and database administrators, and end-users must understand this functionality to take full advantage. 

### Size

The DBMS is an extremely large piece of software occupying a large amount of disk space and substantial amounts of memory to run effectively. 

### Cost of DBMSs

The cost of a DBMS varies significantly depending on the environment and functionality provided. 
  - Single User DBMS for a personal computer may only cost $100. However, large mainframe multi-user DBMS servicing hundreds of users can be extremely expensive, reaching costing thousands to hundreds of thousands to millions depending on your organizations use-case. 

### Additional Hardware Costs

To achieve the performance required from a good DBMS you may have to upgrade your machine to a better one, which can be costly.

### Cost of Conversion

Converting existing applications to use the new DBMS and database can be time consuming and costly. Converting these systems results in a need for extra staff to aid this conversion and training for these staff 

The term legacy system is sometimes used to refer to an older and usually inferior system. 

### Performance

Typically, a file-based-system is written for a specific application such as invoicing. As a result performance is generally very good. However, an application that consumes a DBMS is written to be more general, to cater for many applications rather than just one. The result is that some applications may not run as fast as they used to.

### Greater Impact of Failure

Due to the centralization of the organizations data, if system failure is not accounted for correctly, in the event of a failure a business/organization could lose all data. 

