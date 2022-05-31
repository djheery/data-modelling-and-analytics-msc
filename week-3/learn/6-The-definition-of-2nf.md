# The Definition of 2NF and Functional Dependency

A relation is in 2NF if, and only if, it is in 1NF and every non-key attribute is fully functionally dependant on the candidate key (This extra constraint applied by 2NF).

Note 2NF is stricter than 1NF because it requires the relation to conform to the additional 'full functional dependency' constraint.

## Definition of Functional Dependency 

A set of attributes (Y) in a relation is functionally dependent on a set of attribute (X) in the same relation  if, and only if, a given set of attribute values in X determines a specific set of attribute values in Y for every instant of time.

## Example of Functional Dependency 

Assume some kind of loan account where payments of a certain amount have to be made on a regular basis to pay off the loan as shown in the figure. 

A given account number determines what payment is due.

Account Number =====> Payment Due 

The type of arrow indicates a functional dependency 

The account number in the example you just saw is said to functionally determine the payment due. The payment due is said to be functionally dependent on the account number. Both are equally good means of expression, and convenience and emphasis usually determine which of the two is preffered in any particular situation.

## Relationship X:Y in FD is Many:1

For any given set of values (X) there is just one corresponding set of values (Y)

It is possible that there may be many sets of values (X) for which there is just one set of values (Y). 
A functional dependency is permanent association between attributes.

Further examples could include:

Supplier number ===> {Supplier Name, Supplier Address, Supplier Phone No.}
{ Customer Name, Customer Address } ===> Customer Telephone Number

