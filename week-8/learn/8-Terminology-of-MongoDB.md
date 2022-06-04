# Terminology of MongoDB

In this section we will discuss terminology in MongoDB.
In SQL and MongoDB we have the same concepts. However they are called different names in some cases

Below are 8 Examples: 

| SQL                                | MongoDB                       |
|------------------------------------|-------------------------------|
| Database                           | Database                      |
| Table/ Relation                    | Collection                    |
| Row                                | BSON or Document              |
| Column                             | Field                         |
| Index                              | Index                         |
| Table Joins                        | $lookup/ embedded document    |
| Primary Key                        | Primary Key                   |
| Specify column or col combo as PK  | Primary Key auto-set to '_id' |

## SQL vs MongoDB Example

Review the following:

SQL 

CREATE TABLED people (
  id       INT NOT NULL AUTO,
  username VARCHAR(30),
  age      NUMBER(3),
  status   CHAR(1),
  PRIMARY KEY (id)
);

MONGO DB: 

db.createCollection("people");

db.people.insert({
  username: "123122132",
  age: 25,
  status: "A"
})

Notice how in the mongoDB example you do not need to specify an ID, you automatically expect MongoDB to assign that for you in the '_id' field.

Also MongoDB seems to translate your Collection/Table/Relation name to a variable.

## Adding a New Field

SQL: 

ALTER TABLE people 
ADD dateJoined DATE;

MongoDB: 

db.people.updateMany(
  {},
  {
    $set: { 
      dateJoined: new Date() 
    }
  }
)

In the case of SQL, after the ALTER TABLE statement all we need to do is run UPDATE statement to assign suitable values for the new 'dateJoined' column. 

However in the case of MongoDB, in the pervious code, the function call to new Date(), will add a new value to each record. You can view a record by using the find() call: 

db.people.find()

something like this would be returned: 

{
  "_id": ObjectId("5fa98a0dc6119277078853ae"), 
  "username" : "w1234567", 
  "age" : 25, 
  "status" : "A", 
  "dateJoined" : ISODate("2020-11-09T18:27:34.067Z")
}

It returns a JSON Object.

## Drop an Existing field: 

SQL: 

ALTER TABLE people
DROP COLUMN dateJoined;

MongoDB: 

db.people.updateMany(
  {},
  {
    $unset: {
      "dateJoined": ""
    }
  }

);

The mongo db code will remove the dateJoined document.

## Drop table: 

SQL 

DROP TABLE people;

MongoDB: 

db.people.drop();

This simply drops the table and the output will return true if successful. 

