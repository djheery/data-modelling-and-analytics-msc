# Step 2: Determine Relationship Types Amongst the Entities

**Transitive Verb**: A verb that requires a *transfer* of its action to something else.

Examples of transitive verbs: 

- Please bring me a guitar 
  - bring is a transitive verb as it relies on guitar to understand what needs to be brought to someone 
- Okay, show me that guitar
  - Show can be a transitive verb as it requires knowledge of what to be shown unless there is already a sementic/ contextual knowledge of what needs to be shown 

A transitive verb implies a relationship type. A transitive verb needs an object to complete the meaning of the sentence. 
For example a student may borrow many books. 'Borrow' is an example of a transitive verb, and shows a relationship between the student and book entity types. 

A 'Having' verb implies a relationship type. Verbs or verb phrases that signify 'possession'

## Exercise 

Determine the Relationship types from the following excerpt:

A cash register serves checkout sessions. A checkout session includes all the transactions for a single customer. The system needs to know the time and date of the checkout session. Transactions are specialized into either a coded transaction (when a barcode is read) or a price-entry transaction (when a barcode is not read) or a weighed transaction. For each product purchased, the system determines its price, name and description. The system also retrieves the category related to the product from the database. A transaction includes one product. Data for each transaction is output to the database and customer’s receipt. At the end of the checkout session, the total is output, payment accepted and the change (if applicable) is computed. Acceptable payment methods that could be used by a customer include cash, credit card, debit card or a gift card. If the customer is registered with the supermarket on the loyalty point scheme, then they may use their loyalty card at the checkout to collect points on their card.

My Answers

Checkout Session => Includes => Customer 
System => Needs to Know => Time and Date 
Transaction => Needs to know => Type of transaction 
Category => Related => Product 
Transaction => Product
Checkout session => Accepted Payment methods 
Customer => Loyalty_Data 

