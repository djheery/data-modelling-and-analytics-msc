=====
Views
=====

DBMSs provide another facility known as a view machanisim, which allows each user to have his or her own view of the database.
  - A view is a subset of the database. 
  - For example, we could set up a view for the accounts department so that they can only see employee data. 
  - Reduces complexity as users only see the data they need to see. 

Vies provide a level of security 
  - You can limit or maximise the amount of data an employee may see. For example, general employees may not have access to the Payroll data. 

Views provide a mechanism to customize the apperance of the database 
  - For example, the contacts department may wish to call the monthly rent field (rent) the more obvious name of monthly rent 

A view can present a consistent, unchanging picture of the structure of the database
  - Even if the underlying database has changed.
  - If fields/ relationships change that are not required by the current view of the user, they will percieve no change to the database. Which is a good thing as this is data being abstracted away from them. 