# Step 1 - Determine Entity Types 

Several techniques exist for determining entity types. They include textual analysis, a common objects list, patterns, etc. 

This session focuses on textual analysis, whereby you will examine the requirements specifications text and identify nouns and noun phrases. 

A common or improper noun implies an entity type, for example: 
  - Country 
  - City
  - Employee 

While proper noun implies an instance of an entity for example: 
  - United Kingdom 
  - London
  - Daniel Heery

**Proper Noun**
  - Usually capitalized 
  - Describes a specific person, place or thing 
    - London => City 
    - Daniel Heery => Name 

**Improper Noun**
  - A more generalized version of a proper noun
  - Usually not capitalized (When not used at the start of a sentence)
  - General: 
    - City => Generalized, the proper noun version could be London 
    - Employee => Generalized, the proper noun version could be a name such as Daniel Heery 
    - Country => Generalized, the proper noun version could be America or United Kingdom 

You should look for major object, these could be people, places and things. 
Look for objects that have physical existence in their own right
Staff would be an example of this, as they do exist in the enterprise, and would define an entity type as staff would be made up of instance of staff member entities with their own attributes. 

You should also look for objects that are abstract of conceptual for entity types. 

Some examples could be: 
  - Sales Transaction 
  - University Courses  
  - Guitar Techniques 

Alongside this you should look for multiple objects rather than a singular one

Examples of this could be:

- A video in a DVD rental company 
- A PS5 game in a video game company 
- A Stratocaster type guitar in a Music shop 

## Exercise 

Determine the entity types from the following excerpt:

A cash register serves checkout sessions. A checkout session includes all the transactions for a single customer. The system needs to know the time and date of the checkout session. Transactions are specialized into either a coded transaction (when a barcode is read) or a price-entry transaction (when a barcode is not read) or a weighed transaction. For each product purchased, the system determines its price, name and description. The system also retrieves the category related to the product from the database. A transaction includes one product. Data for each transaction is output to the database and customer’s receipt. At the end of the checkout session, the total is output, payment accepted and the change (if applicable) is computed. Acceptable payment methods that could be used by a customer include cash, credit card, debit card or a gift card. If the customer is registered with the supermarket on the loyalty point scheme, then they may use their loyalty card at the checkout to collect points on their card.

**Entity types:**

My answer: 

- Checkout Sessions
- Customer
  - Customer transactions
- Sales transactions 
  - Coded transaction 
  - Price-entry transaction 
  - Weighed transaction 
- Product 
- Payment methods 
- Loyalty points 
- Loyalty card

Given options: 

- Product 
- Cash_Register
- Cashier 
- Checkout_Session 
- Transaction 
- Customer 
- Coded_Transaction 
- Price_Entry_Transaction 
- Weighed_Transaction 
- Category 
- Receipt
- Payment_Method 
- Loyalty_Card 
- Supervisor 

Improbable Entity types (Given)

- Checkout System is the whole information system so cannot be an entity type 
- Barcode is visual representation of UPC so it is not an entity type 
- Checkout line is the physical till and so are scanner, keyboard and scale hence they are not entity types 
- Product sold by weight is a product category hence not an entity type 
- System database, supermarket, and data are general terms and do not represent any entity instances within the system
