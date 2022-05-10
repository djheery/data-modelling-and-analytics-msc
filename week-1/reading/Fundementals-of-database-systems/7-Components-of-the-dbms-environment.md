==================================
Components of the DBMS Environment
==================================

We can identify 5 major components in the DBMS environment 
  - Hardware
  - Software 
  - Data 
  - Procedures 
  - People

Hardware 
  - DBMS and the applications built that utilize them require hardware to run on. 
  - Hardware can range in size from a single computer to a network of computers. 
  - The particular hardware depends on the organization's requirements and the DBMS used. Some DBMSs only run on particular hardware. 
  - Simply meeting the minimum requirement for the DBMS may not be enough thus making sure the hardware has sufficient storage and memory is vital 
  - Usually there are centralized locations that store the hardware host Database and DBMS. These are then accessed remotely by clients. This is called the client-server architecture. 
    - The backend is the Server, the frontend is the clients 

Example of this architecture: 


Clients ====> WesternOffice ====> London office <==== Eastern Office <==== Clients 
                                 (Central Office)
                                 Database Server
                                    Database


Software 
  - Software components comprises the DBMS software itself and the application programs, together with the operating system, including network software if the DBMS is being used over a network. 
  - The application programs are typically written in 3rd generation programming languages such as C, C++, C#, Java, Fortran, Pascal etc..
    - Or a 4th generation language such as SQL embedded in a third generation language.
    - The use of fourth generation tools can improve productivity. 

Data 
  - Data acts as a bridge between the machine components and the human components 
  - The database contains both operational data, and meta data 
    - MetaData => data about the data.
  - The structure of the database is called the schema. 

Procedures
  - Refer to the instructions and rules that govern the design and use of the database.
  - Users of the system require documented procedures on how to use or run the system. 
  - This could consist of: 
    - Logging on the the DBMS
    - Use a particular facility of the DBMS 
    - Start and stop the DBMS 
    - Handle hardware or software failures
    - Change the structure of a table, reorganize the database across multiple disks, improve performance, or archive data to secondary storage

  