# The definition of 1NF

A relation is 1NF if, and only if, every attribute value is an **atomic value**

**Atomic Value** an attribute value that cannot meaningfully be broken down into two or more counterparts. 

Tp show the process of 1NF lets take a purchase order relation:

The following data would be held within this type of relation: 

- Ord: Order Number that uniquely identifies every purchase order 
- Sno: Supplier number, that uniquely identifies any supplier
- Sname: The name of the supplier
- Saddr: The suppliers address
- Date: the date on which the order was placed
- Part: Part number that uniquely identifies the every kind of part used by the company 
- Pname: the Name of the part 
- Qty: The quantity of a particular kind of part ordered on the purchase order 
- Price: Thew price of that quantity of that part 
- Tot: The total paid for the whole order.


| ord | Sno | Sname  | Saddr  | Date     |  Part      | Pname           | Qty        | Price    | Tot   | 
|-----|-----|--------|--------|----------|------------|-----------------|------------|----------|-------|
| L5  | 127 | Smith  | N'cle  | 7 May    | N8, B6, L4 | Nut, Bolt, Nail | 70, 60,100 | 4, 5, 3  | 12    |
| L6  | 315 | Bloggs | L'don  | 8 June   | P3, Q7     | Pump, Motor     | 5. 5       | 150, 250 | 400   |

## Applying 1NF Definition to Purchase order 

Reviewing the data above, **Ord**, Sno, Sname, Saddr, and Tot currently contain only atomic values, and can only ever contain atomic values. 

Attributes Part, Pname, Qty, and price currently contain non-atomic values, and may often contain non-atomic values. Therefore the relation is not 1NF 

To put the purchase order into 1NF we must first separate the atomic and non-atomic attributes and then put all atomic attributes in a new replacement relation, which by definition is 1NF (First normal form).

This is what we end up with: 

| ord | Sno | Sname  | Saddr  | Date     |  Tot   | 
|-----|-----|--------|--------|----------|--------|
| L5  | 127 | Smith  | N'cle  | 7 May    | 12     |
| L6  | 315 | Bloggs | L'don  | 8 June   | 400    |

The name of the new above relation is P-ORDER-1 
The one denotes that this relation is the product of 1NF 

## What happens to the non atomic attributes? 

You cannot throw away the non-atomic attributes. The values in all these attributes repeat together, if a part is removed from an order its values must be removed from all four attributes. If another part is placed on an order ther must be a value for that part in all four attributes. Thus a set of values that repeat together should become atuple in a new relation. 

Now, the attributes in these tuples can contain only atomic data. Thus, you form another new replacement relation to hold the tuples of data  that repeat together. There is no intrinsic reason why all the non-atomic attributes in an un-normalized relation should always repeat together.

The relation formed by putting the repeat-together attributes removed from the original purchase order relation is known as P-ITEM-1. Again 1 denotes 1NF (First Normal Form)

|  Part      | Pname  | Qty      | Price |
|------------|--------|----------|-------|
| N8         | Nut    | 70       | 4     |
| B6         | Bolt   | 60       | 5     |
| L4         | Nail   | 100      | 3     |
| P3         | Pump   | 5        | 150   |
| Q7         | Motor  | 5        | 250   |

## The Foreign Key 

The problem with P-Item-1 relation, is that this part of the data is no longer associated with teh order data. 

You can solve this problem by adding a foreign key to this new relation. 
In general **You must add the attribute(s) which formed a candidate key in the original relation, to this relation as a foreign key**

In this Case it is (<u>Ord*</u>). This enables the retention of the relationship information. 
Moreover, since <u>**Ord\***</u> is not going to be unique to this  table, you need to combine it with part to make it a candidate key for P-ITEM-1 relation: 

|<u>**Ord\***</u>  | <u>Part</u>      | Pname  | Qty      | Price |
|------------------|------------------|--------|----------|-------|
| L5               | N8               | Nut    | 70       | 4     |
| L5               | B6               | Bolt   | 60       | 5     |
| L5               | L4               | Nail   | 100      | 3     |
| L6               | P3               | Pump   | 5        | 150   |
| L6               | Q7               | Motor  | 5        | 250   |


