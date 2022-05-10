# Step 4: Revise and Rationalize Entity and Relationship Types attributes 

This step involves revisiting the ER model contents that you determined from steps 1, 2 & 3.
You may identify new entity types while looking for attributes or determining relationships, so it is important you revisit the model again. 

This step often involves domain experts, people who are well-versed with the particular system/industry/scenario/business problem. 
The findings of steps 1-3 are shared with domain experts who are expected to fill any gaps in the conceptual model. 

There are more details needed for specifying structural constraints of relationships thatn what you could determine at step 2. 
For example, is the relationship type of cardinality (1:1), 1:N or M:N and is the nature of the participating entity types mandatory or optional. 

SOmetimes you may have duplicate relationships: 

A <---> B <----> C <----> A 

This means that you could revise the relationship to 

A <---> B <----> C

## Entity Types 

There is no need to add new entity types. However, a transaction entity type depends for existence on checkout_session, hence should be treated as a 'weak entity type' 

## Relationship Types

In the previous relationship type section it was established 

Transaction => is For => Customer 

However, this will have storage implications as if a customer buys 10 items in one checkout session, it will require creating 10 relationship instances between 10 transactions and one customer. There for it is better to link the checkout_session type to the customer so there is just one relationship. 

Also you need to define the structural constraints of the relationship. 

For example: 

Checkout Session (N) - if for ==> (1) Customer

Optional relationship shown with one line (-)
Mandatory relationship shown with "==>"

In other words it is optional for a checkout session to have a customer, but for a customer to be a customer they must have a checkout session. 

Over a period of time 1 customer may have N (many) checkout sessions. 

Cash Register (1) - server ==> (N) Checkout sessions

A cash register may serve many checkout sessions, however, a checkout session must be associated with one cash register. 

Transaction - includes ==> product OR product - sold in ==> transaction 

Every transaction must include products whereas a product may be sold in many transactions. 

## Attributes 

The cash register entity type has currently no attributes. 
It will need:
  - ID
  - total_cash
  - Possibly: 
    - 50Notes
    - 20Notes
    - 10Notes
    - 5 Notes
    - 2 Pounds 
    - 1 Pounds 
    - etc...

There are some entity types without a UID so we need to introduce these into the model as:

- category (catID)
- receipt (rID)

Where the same attribute appears in more than one entity type, it is bbetter to prefix it with the entity type name or initial to make it easily distinguishable: 

- customer.id ==> customer.custID
- transaction.UPC ==> transaction.tUPC
- product.UPC ===> product.pUPC

