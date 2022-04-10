=============================
Traditional File Based System
=============================

The predecessor to the database system, was the file based system. 
  - This approach is largely obsolete 

The reason for studying it 
  - Understanding the issues with a file-based system may prevent us from repeating these problems in database systems. 
  - If you wish to convert a file based system to a database system, understanding how the file system works will be extremely useful, if not essential 

File based system: 
  - A collection of application programs that perform services for the end-users 
    - Production reports 
    - Each program defines and manages it's own data 
  
File based systems were an early attempt to computerize the manual filing system that we are familiar with. 
  - For example, an organization might have physical files, and for safety they are labeled and stored in one or more cabinets. For security, the cabinets may have locks or may be located in secure areas of the building. In our home, we probably have some sort of filing system that contains receipts, warranties, invoices, bank statements and so on. When we need to look something gup, we go to the filing system and search through the system, starting at the first entry, until we find what we want. Alternatively there is an indexing system to aid location of what we want.
    - There may be divisions for things that are logically related in the form of separate folders. 

The manual filing system works well, as long as the number of items to be stored is small. It works adequately when there are large numbers of items and we only have to store and retrieve them. However, the manual filing system breaks down when we have to cross reference or process the information in the files. 

A typical real estate agent's office might have a separate file for:
  - For each property for sale or rent 
  - Each Buyer and renter 
  - Each member of staff

Consider the effort that would be required to answer the following questions: 
  - What three-bedroom properties do you have for sale with an acre of land and a garage?
  - What apartments do you have for rent within three miles of downtown? 
  - What is the average rent for a two-bedroom apartment? 
  - What is the annual total for staff salaries? 
  - etc 

You can see how the manual system would become fairly unmanageable when trying to ask detailed questions or get insight into the companies annual/ quarterly takings/ assets in general.

The file based system was developed in response to the needs of industry for more efficient data access. 
  - However, rather than establish a centralized store for the organization's operational data, a decentralized approach was taken.
    - This required the assistance of Data Processing staff (DP) 
      - These staff stored and controlled their relative departments data. 

Dream Home Example 
  The Sales department is responsible for the selling and renting of properties. 
    - Whenever a client wishes to offer his or her property as a rental, the sales department presents them with a form 
      - This form contains details of 
        - The Address 
        - Room Number 
        - Owners contact info 
    - They also hand client enquires 
    - With the assistance of the DP department 
      - the sales department creates an information system to handle the renting of the property. 
      - The system consists of three files containing the property, owner, and client details. 

There are other similar examples of database integration into the company 
  - Contracts department for lease agreements associated with the properties rent 
    DP creats an system to handle lease agreements 
      - 3 files that store lease, property, and client details. 
      
Digaram of file based system:

Sales ==> Data Entry and Reports ==> File Handling Routines  ===> Sales Files
Sales <== Data Entry and Reports ==> File Definitions        <=== Sales Files

Contracts ==> Data Entry and Reports ==> File Handling Routines ==> Contracts Files
Contacts <== Data Entry and Reports ==> File Definitions       <== Contracts Files

Sales Files 

PropertyForRent(propertyNo, street, city, postcode, type, rooms, rent, ownerNo)
PrivateOwener(ownerNo, fName, IName, address, telNo, prefType, maxRent)


It can be seen quite clearly that there is a significant amount of duplication of data in these departments, and this is generally true in file-based systems. 

A file is simply a collection of records, which contains logically releated data. 
  - For example: PropertyForRent file contains six records, one for each property, each record contains a logically connected set of one or more fields, where each field represents some characteristic of the real world object that is being moddeled such as the number or rooms or property type.