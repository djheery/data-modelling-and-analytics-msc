======================================
Limitations to the File Based Approach
======================================

There are 5 key issues with a file based approach 

The separation and isolation of data
  - When data is isolated into separate files, the overhead to query that data can become fairly large. If we want to find all properties of a given house type, we would have to create a temporary file of those clients who have the type house. Then we would have to search for each property of that type in the PropertyForRentFile and make sure that it is less than the max rent for the client. 
    - The application developer must synchronize the processing of two files to ensure that the correct data is extracted. This difficulty is compounded if we require data from more than two files. 

Duplication of Data 
  - Due to the decentralized approach, their is a lot of duplication of data in each file. The file based approach, necessitated and encouraged this. 
    - There will be files referencing the same client details in both the contracts and sales department 
  - This is wasteful 
    - Costs time and money to enter the data more than once 
    - Takes up additional storage with associated costs. 
    - Can lead to loss in Data Integrity; in other words, the data is no longer consistent. 
      - For example, the duplication of data between Payroll and HR departments. 
      - If a member of staff moves and changes address, and this is not effectively communicated to both departments a person's paycheck could be sent to the wrong address. 

Data Dependence 
  - The physical structure and storage of the data files and records are defined in the application code. This means that changes to an existing structure are difficult to make. 
    - For example, increasing the size of the PropertyForRent address fields from 40 to 41 chars sounds like a simple change but requires a one off program that converts the PropertyForRent file to the new format. 
    - This program has to 
      - Open the original file 
      - Open a temporary file with the new structure 
      - Read a record from the original file 
        - Convert the data to conform to the new structure 
        - Write it to the temporary file 
        - Repeat the steps for all records 
      - Delete the original file 
      - Rename the temporary file 

In addition, all programs that access the PropertyForRent file must be modified to conform to the new file structure
  - Thus the programmer needs to identify all the affected programs, modify them, and retest them.

This is call program data dependence, and is an issue as it can be difficult to change, time consuming and error prone when your program handles files systems like this. 

Incompatible File Formats
  -Because the structure of files is embedded in teh application programs, the structures are dependent on the application programming language. 
  - If two files a processed in a different language it can lead to compatibility issues. and makes them difficult to process jointly. 
  - For example, the sales department has a file with information that the contracts department needs. However, one is written in C the Other in Java, to query the data from Java to C the programmer has to write a program that is able to convert the Java file to a C file. 

Fixed Queries/Proliferation 
  - Due to the reliance on an application developer to write the queries, they became fixed and not flexible. Each query required the developer to write code to facilitate that query. No facility for asking unplanned queries. 
  - In other organizations there was a proliferation of files and application programs due to too many custom queries. This leaves the DP department with too much work to handle resulting in inadequate of inefficient programs. Oftn certain types of functionality were ommitted: 
    - There was no provision for security or integrity 
    - Recovery in the even of a hardware or software failure was limited or non-existent 
    - Access to the files was restricted to one user at a time. There was no provision for shared access by staff in the same department. 




