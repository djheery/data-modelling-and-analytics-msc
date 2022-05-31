# Week 3 Task Example 

This task wil lconsider two different examples, to get more practice of normalizing to 1NF, and to see how the slightly different meanings of the two examples result in different results. 

A normalised design depends on the meaning of the data. So, differences in meaning yield different designs 

Consider the First Example: 

| <u>Office</u>   | Dept        | Employee      | Address     |
|-----------------|-------------|---------------|-------------|
| 17              | D14         | 1046          | Newcastle   |
|                 | D18         | 1059          |             |
|                 | D23         | 1121          |             |
|                 |             | 1143          |             |
| 18              | D09         | 1064          | Durham      |
|                 | D13         | 1063          |             |
|                 |             | 1171          |             |

AssumptionsL The relation states which departments are in which office blocks, and which employees are in which office blocks but not in which department each employee works.

Assume that the relation above, which has a few sample tuples in it, refers to a large geographically distributed organization. Like the royal mail or Inland Revenue, which has numerous departments scattered all over the country located in different office blocks. 

The attributes hold the following kinds of data: 

- Office: Office block that uniquely identifies any office block in the entire country used by the organization 
- Dept: Department identifier which uniquely identifies any department in the entire country. Assume that a department can exist only in one location, i.e. in one office block; departments with teh same function in different office blocks have different identifiers 
- Emp: Employee idendity number. Assume that an employee can only work in one office block. 
- Address: Address of an office block (not a department. The sample addresses give above are greatly abbreviated

Atomic vs Non-Atomic 

The above relation is not 1NF. 
It contains both atomic and non-atomic fields. 

To satisfy 1NF all data must be atomic. 

Office and Address can be used to Uniquely identify the relation, for the purpose of this example we will use Office as the primary key due to its INT nature. 

To satisfy 1NF we will follow 4 steps: 

## Step 1 

Project out separately each set of one or more repeating attributes into its own new relation. 

In this case it would be: Employee, and Dept:

| Employee      |
|---------------|
| 1046          |
| 1059          |
| 1121          |
| 1143          |
| 1064          |
| 1063          |
| 1171          |

| Dept        |
|-------------|
| D14         |
| D18         | 
| D23         | 
| D09         |
| D13         |

In both cases there is a set of one attribute. The projections yield atomic attributes. 

## Step 2

Keep the remains of the original relation 

Both the office and address: 

| <u>**Office\***</u>   | Address         |
|-----------------------|-----------------|
| 17                    | Newcastle       |
| 18                    | Durham          |

## Step 3 

Add a foreign key that is the candidate key of the original relation to the new relations: 

| Office | Employee      |
|--------|---------------|
| 17     | 1046          |
| 17     | 1059          |
| 17     | 1121          |
| 17     | 1143          |
| 18     | 1064          |
| 18     | 1063          |
| 18     | 1171          |

| Office | Dept        |
|--------|-------------|
| 17     | D14         |
| 17     | D18         | 
| 17     | D23         | 
| 18     | D09         |
| 18     | D13         |

This allows departments and employees related to their office blocks. 

## Step 4, Part 1

Decide on a candidate key for each new relation. 

Remember that only the non repeating attributes should be the candidate keys of a relation.

This would make the dept and Employee candidate keys.

## Step 4 part 2

Extend that candidate key to include the foreign key if and only if it is possible for the foreign key to have more than one value for any possible candidate value

1. a department can only bbe located in one office block 
2. An employee can only work in one office block. 

In neither case can there be more than one 'Office' value per initial candidate key value. So, neither candidate key should be extended.

## Example 2 

| <u>Office</u>   | Dept        | Employee      | Address     |
|-----------------|-------------|---------------|-------------|
| 17              | D14         | 1046          | Newcastle   |
|                 | D18         | 1059          |             |
|                 | D23         | 1121          |             |
|                 |             | 1143          |             |
| 18              | D09         | 1064          | Durham      |
|                 | D13         | 1063          |             |
|                 |             | 1171          |             |

Assumptions: The relation states which employees, with their departments are in which office block. 

In this circumstance there is a difference to the previous example, the association between attribbutes is similar bbut not tthe same 

