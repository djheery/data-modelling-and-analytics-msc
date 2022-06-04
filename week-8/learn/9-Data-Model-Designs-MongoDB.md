# Data Model Designs In MongoDB

There are two data models in MongoDB: 

1. Embedded Data Model
2. Normalized Data Model 

## Embedded Data Model:

In this form of data model, you can embed related data in a single document. This creates a kind of sub document. It is also known as the de-normalized model. 

It would look something like this: 

{
  _id: <\ObjectID1>
  username: "DanielHeery221",
  address: {
    street: "123 Pipe Lane",
    postCode: "LU34 7BS"
  },
  access: {
    level: 5,
    group: "dev"
  }
}

Address and access could be seen as a sub-document. 

## Normalized Data Model

In a normalized data model, you can model relationships by using a reference between documents. This is used to represent more complex hierarchical data and relationships. 

It also avoids data duplication

It would look something like this: 

User Document: 

{
  _id: <\ObjectID1>
  username: "DanielHeery221",
}

Address Document 

{
  _id: <\ObjectID2>
  username: "DanielHeery221",
  street: "123 Pipe Lane",
  postCode: "LU34 7BS"
}

Access Document: 

{
  _id: <\ObjectID3>
  username: "DanielHeery221",
  level: 5,
  group: "dev"
}


Note how the username exists in every document. This is what they use to reference each other

