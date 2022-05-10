# Step 5: Determine Domains/ Data Types for Attributes 

A domain is a set of permissible values from which an attribute takes its values; more than one attribute may have the same domain. For example, for the employee entity type: 

- The gender attribute can be defined as a char string having limited permissible values, such as 'Male' or 'Female' 
- The title attribute can be defined as a string of up to four characters having permissible values like 'Mr', 'Mrs', 'Miss', 'Dr' and so on. 
- The employeeNumber attribute can be defined as a string of seven fixed characters with the first character, being 'E' followed by six digits (E120556)

An attribute domain is usually defined in terms of a set of permissible 
  - Values 
  - Size
  - Length of values
  - Format/ structure of the values 

Attribute domains are usually not included in an ER diagram, instead a tabular structure of attributes, and their corresponding domains is used for documenting this information, known as a data dictionary or data catalogue.

An example may be: 

| Entity Type                 | Attribute      | Domain/Data type      | 
|-----------------------------|----------------|-----------------------|
| Checkout_Session            | cold           | INT                   |
|                             | time           | TimeStamp             |
|                             | date           | Date                  |
| product                     | pUPC           | String of 12 digits   |
|                             | prodName       | String of chars       |
|                             | description    | String of chars       |
|                             | unitPrice      | Float                 |
|                             | priceByWeight  | Float                 |
| customer                    | custID         | INT                   |
|                             | custName       | String of chars       |
|                             | gender         | detailed desc...      |
|                             | email          | detailed desc...      |
