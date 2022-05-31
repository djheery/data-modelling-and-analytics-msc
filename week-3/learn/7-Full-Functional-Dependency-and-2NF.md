# Full Functional Dependency and 2NF 

The definition of 2NF requires not merely functional dependency, but all full functional dependency. 

**Full Functional Dependency** (FD) refers to a set of attributes (X) that is full functionally dependent on another set of attributes (Y), if and only if, Y is functionally dependent on all attributees of X and not just a subset of them. 

Thus to be in 2NF means that all attributes not in the candidate key are full FD on all attributes in the Candidate Key

For example, purchase order relations – see the P-ORDER 1: functional dependency diagram. 

Note: a relation with a one-attribute candidate key can be safely assumed to be in 2NF. In the example, seeing as all of the non-key attributes in the P-order table are all fully functionally dependent on Ord. 

| <u>**Ord\***</u> | Sno | Sname  | Saddr  | Date     |  Tot   | 
|------------------|-----|--------|--------|----------|--------|
| L5               | 127 | Smith  | N'cle  | 7 May    | 12     |
| L6               | 315 | Bloggs | L'don  | 8 June   | 400    |

## Full Functional Dependencies

The functional Dependencies of the non-key attributes in P-Order-1 on its candidate key can be represented in the following: 


As they are not all full FD on Ord, the relation is already in 2NF 

Ord ====> Sno
          Sname
          Sadrr
          Date
          Tot

The functional dependancies of the Non key attributes in P-ITEM-1 can be represented by teh following FD diagram: 

|<u>**Ord\***</u>  | <u>Part</u>      | Pname  | Qty      | Price |
|------------------|------------------|--------|----------|-------|
| L5               | N8               | Nut    | 70       | 4     |
| L5               | B6               | Bolt   | 60       | 5     |
| L5               | L4               | Nail   | 100      | 3     |
| L6               | P3               | Pump   | 5        | 150   |
| L6               | Q7               | Motor  | 5        | 250   |

Ord
|------------> Price
|------------>  Qty
Part ========> Pname 

Attributes Price and Qty are dependent on the full key (both order and part). They depend not only on what kind of part they refer to, but also on the order itself. The quantity of a part type ordered will vary with and depend on the order, as will the price since it depends on the quantityd. however, Pname dependsd soley on the type of part. A particular kind of part will have the smae name on every order it appears. 

As they are no full FD on (Ord, part) the relation is not 2NF