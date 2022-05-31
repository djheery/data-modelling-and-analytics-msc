# Identify and Associate Attributes with Entity or Relationship Types

**Objective** To associate attributes with the appropriate entity or relationship types. 

This step is similar to other steps, in that we refer to the user specifications to gather the information. 

The attributes can be identified where the noun or noun phrase is a property, quality, or characteristic of one of these entities or relationships 

For example, eye color for a person, or number of bedrooms for a property. These could both be attributes. 

## Simple/ Composite Attributes

It is important to identify if an attribute is atomic (simple) or composite. 

For example the attribute eye color is simple, as it can only be one value of type string (You could add constraints as to allowed eye color).

However, with an attribute such as address it would make more sense to make it a composite. 
This is because an address can be made up of many simple attributes, for example: 

Address: 
  - First line
    - Apartment Number
    - House Number 
  - Street
  - County
  - Post code 

The option to represent attributes as simple or composite is based on the user requirements
If a user needs access to a post code or apartment number or post code, then it should be a composite, if not it is okay for it to be a simple attribute. 

## Multi Valued Attributes

In addition to being simple or composite, an attribbute can also be single-valued or multi-valued.

Most attributes will be single valued, but occasionally a multi-valued attribute may be encountered. 

For example, mobile number. This could be listed as a multi valued attribute. As you may want the area code and the rest of the number separate. It would be equally valid to make it one simple attribute, depending on user requirements. 

## Derived Attributes

Attributes whose values are based on the values of other attributes are known as derived attributes. 

Often these attributes are not represented in the conceptual data model
However sometimes the value of the attribute or attributes on which the derived attribute is based may bbe deleted or modified. In this case, the derived attribute must be shown in the data model to avoid potential loss of information.

If it is shown in the model we must idicate it as derived.

For example, age could be a derived attribute from DOB or rental deposit could be derived from the total of the monthly rent.

## Potential Problems 

It is not uncommon for attributes or relationships to be ommited from the data model, if they are simply alter the model. 
A good practice is to work from an attribute list derived from the User Specification, and then cross the attribbutes off the list as they are added. 

Some potential problems 

Sometimes we may need to make a decision on whether an entity should be generalized or form a specialized entity type. For example, supervisor or assistant status for a member of staff. These entites will provide many of the same attributes such as an ID, name, DOB attributes. But could have more specific roles. We would need to make a decession whether to keep it general or abstract it into its own type. 

This is a design descision to bbe discussed later bbut one to be aware of.

Relationships. 
If a relationship is identified between entity tipes, we must associate the attribute with only one entity, the parent entity, and ensure that the relationship was previously identified. If this is not the case the documentation should be updated. 

For example: 

Staff 
  - staffNo
  - name
  - position
  - sex
  - DOB 

Property for Rent 
  - PropertyNo
  - Street 
  - City 
  - postcode 
  - type 
  - rooms
  - rent 
  - managerName 

In the above example, the manager name in Property For Rent is intended to represent a relationship between staff and propertyForRent to dictate who manages the property. In this case a new relationship called Manages should be added to the model, with the attribute of the employee who manges the property. We should then remove managerName from propertyForRent 

You should also document the attributes with:

- Entity Name 
- Attributes
- Descriuption 
- Data type and length 
- Nulls
  - Are they allowed (boolean)
- Multi valued 
  - boolean 


