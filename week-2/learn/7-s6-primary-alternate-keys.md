# Step 6: Choose Candidate, Primary and Alternate Keys 

This step revolves around choosing the minimum set of attributes that uniquely identify each instance of an entity type. 

Each key chosen is called a candidate key. 

One of the candidate keys is designated as the primary key - the one which is used for identification in most cases. 
The others become alternate keys. 

For example, the department entity type has three potential candidate keys:
  - deptNo
  - deptName
  - deptTelNo

This is because within the company, department name and telephone numbers are unique and so is the department number (deptNo).
Given deptNo acts as a unique id as we may think of it within a computer science setting, this will be the primary key, the other two will be alternate keys. 

For each entity type choose candidate, primary and alternate keys.



| Entity Type                 | Attribute      | Domain/Data type      | Keys         | 
|-----------------------------|----------------|-----------------------|--------------|
| Checkout_Session            | coID           | INT                   | PK           |
|                             | time           | TimeStamp             |              |
|                             | date           | Date                  |              |
| product                     | pUPC           | String of 12 digits   | PK           |
|                             | prodName       | String of chars       |              |
|                             | description    | String of chars       |              |
|                             | unitPrice      | Float                 |              |
|                             | priceByWeight  | Float                 |              |
| customer                    | custID         | INT                   | PK           |
|                             | custName       | String of chars       |              |
|                             | gender         | detailed desc...      |              |
|                             | email          | detailed desc...      | AK           |