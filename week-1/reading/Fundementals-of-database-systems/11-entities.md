# Entities

This is just some extra notes on entities gleemed from the reading, the rest should be in the learn task 

## Composite versus Simple (Atomic) Attributes 

Composite attributes can be divided into sub components. For example: 

21 Knowle Road, Leeds, West Yorkshire, LS4 2HY

Could be divided into: 

First line: 21 Knowle Road 
City: Leeds 
County: west Yorkshire 
Postcode: LS4 2HY 

Atomic Attributes cannot be sub divded. An example of this may be first name or age. 

## Multi valued 

Attributes where there is more than one value to be stored. 
With such attributes you may have lower and upper bounds to constrain the number of values allowed for each individual entity. 
For example, a car wmay have a colors attribute of between one and two values. 

## Stored and Derived Attributes

In some circumstances attributes can be related and rely on another attribute. For example, an age attribute may rely on a DOB attribute to work out the age of an employee on a given date. The age attribute is known as a **derived attribute** as it derives its value from another attribute. The DOB attribute is known as a stored attribute.

## Null Values.

Null values are useful when various attributes are optional, or only applicable in a specific circumstance 
For example, an Apartment or mobile number attribute, may or may not be available depending if the person lives in an apartment or if they have provided their mobile number retrospectively. 

## Complex Attributes

In general, composite and multivalued attribbutes can be nested arbitrarily. We can represent arbitrary nesting by grouping components of a composite attribute between parentheses and separating the components with commas: 

{ Address_Phone(Area_Code, Phone_Number), 
  Address(
    Street_Address(
      Number, Street, Apartment_Number
    ), 
    City, 
    State, 
    Zip) 
}

Such attribbutes are known as complex attributes

## Value Sets (Domains)

Each simple attribbute of an entity type is associated with a value set (or domain of values) which specifies the set of values that may be assigned to that attribute for each individual entity. 

For example, an age range value may be between 16 and 70.
