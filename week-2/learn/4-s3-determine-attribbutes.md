# Step 3: Determine Attributes for Entity and Relationship Types 

Adjective implies an attribute of an Entity Type
  - Color
  - Size 
  - Name

Adverb Implies an attribute of a Relationship type 
  - Qualifies 
  - Modifies 
  - Start of Manager

An intransitive verb may identify an Attribute
An intransitive verb is one which does not need any object or element ot complete the meaning, for example:
  - 'The train arrives every morning at 07:30'.

In the above example 'arrives' is an intransitive verb and points to the arrival time attribute. 

A noun phrase which follows 'identified by' may indicate an attribute, for example: 
  - 'A Person identified by person id and surname'.

Attributes can be identified where the noun or noun phrase is a property, quality, identifier or characteristic.

## Exercise 

Determine the attributes from the following excerpt:

A cash register serves checkout sessions. A checkout session includes all the transactions for a single customer. The system needs to know the time and date of the checkout session. Transactions are specialized into either a coded transaction (when a barcode is read) or a price-entry transaction (when a barcode is not read) or a weighed transaction. For each product purchased, the system determines its price, name and description. The system also retrieves the category related to the product from the database. A transaction includes one product. Data for each transaction is output to the database and customer’s receipt. At the end of the checkout session, the total is output, payment accepted and the change (if applicable) is computed. Acceptable payment methods that could be used by a customer include cash, credit card, debit card or a gift card. If the customer is registered with the supermarket on the loyalty point scheme, then they may use their loyalty card at the checkout to collect points on their card.

Checkout Session 
  - Time and date
  - Includes 
    - Customer Transactions 

product 
  - Price
  - Name 
  - Description 
  - UPC 

Employee 
  - Name 
  - UID 
  - Start Date 
  - Supervisor 

    cash_register(…) 
    checkout_session (time, date)
    transaction (UPC, numOfItems, price)
    customer (id, name, gender, email, phoneNumber, homeAdress)
    coded_transaction (UPC) and price_entry_transaction (price) and weighed_transaction (weight) 
    product (UPC, name, description, unitPrice, priceByWeight) 
    category (productCategory)
    receipt (total, time, date, payment, change)
    payment_method (cardNumber, expiry, securityCode, type)
    loyalty_card (cardNumber, expiryDate, points)
    supervisor (id, name, gender, email, phoneNumber, homeAddress)
    cashier (id, name, gender, email, phoneNumber, homeAddress) 
    logs_in (time, date).

