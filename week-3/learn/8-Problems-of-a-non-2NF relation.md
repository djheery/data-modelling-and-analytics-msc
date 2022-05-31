# Problems of a non-2NF relation

There are three problems for a non-2NF relation: 

1. Redundant Data may be stored 
2. Update Anomalies - There can be problems inserting, deleting and amending some of the data
3. Semantic problems - Relation does not reflect the real-world meaning of the data, leading to problems in its use. 

You are going to look at all of these potential problems across the following slides in the lecture. 

## Redundant Data 

Look at the table below: 

|<u>**Ord\***</u>  | <u>Part</u>      | Pname  | Qty      | Price |
|------------------|------------------|--------|----------|-------|
| L5               | N8               | Nut    | 70       | 4     |
| L5               | B6               | Bolt   | 60       | 5     |
| L5               | L4               | Nail   | 100      | 3     |
| L6               | P3               | Pump   | 5        | 150   |
| L6               | Q7               | Motor  | 5        | 250   |
| L7               | Q7               | Motor  | 2        | 100   |

Every Time a part appears on an order (For example Q7), its name also appears. The part number (for example, Q7) is enough to identify the part type.

Motor is repeated in orders L6 and L7. One order is sufficient ot give us the name, so Pname is redundant information being stored. 

## Update Anomalies 

In this next example, part type details (Part and Pname) cannot always be updated.

Deletions: You cannot delete (P3, pump) as it appears on order L6, Yet when order L6 is deleted then the P3 pump data will be lost.

Amendments: you cannot change Q7's name from Motor to Engine without changing all occurrences in order to retain consistency.

Additions: You cannot add Flange, as there is no order data to complete the tuple.

|<u>**Ord\***</u>  | <u>Part</u>      | Pname      | Qty      | Price |
|------------------|------------------|------------|----------|-------|
| L5               | N8               | Nut        | 70       | 4     |
| L5               | B6               | Bolt       | 60       | 5     |
| L5               | L4               | Nail       | 100      | 3     |
| L6               | P3               | Pump       | 5        | 150   |
| L6               | Q7               | Motor      | 5        | 250   |
| L7               | Q7               | **Engine** | 2        | 100   |
| ??               | F5               | Flange     | ?        | ??    |


## Semantic Problems 

If multiple copies of a part type's Pname are inconsistently amended, the same part type could end up with two or more different names. Yet in real-life, a part type can only ever have one name. 

|<u>**Ord\***</u>  | <u>Part</u>      | Pname      | Qty      | Price |
|------------------|------------------|------------|----------|-------|
| L5               | N8               | Nut        | 70       | 4     |
| L5               | B6               | Bolt       | 60       | 5     |
| L5               | L4               | Nail       | 100      | 3     |
| L6               | P3               | Pump       | 5        | 150   |
| L6               | Q7               | Motor      | 5        | 250   |
| L7               | Q7               | **Engine** | 2        | 100   |

## Putting P-Item-1 into 2NF 

The problem is cause by 'Pname' being FD on just Part and not the whole of the candidate key. 
The solution is to separate out each determinant and its dependents.

You must create two replacement relations based on these FDs

A relation created with a determinant as its candidate key, and with non-key attributes that are fully functionally dependent on that candidate key, must be in 2NF by definition. Note that determining attribute - Part in the example on screen - can appear in more than one complete determinant. This is perfectly acceptable. It just depends what attributes form determinants

By separating the table by it's functional dependencies you would end up with two tables that look like this: 

|<u>**Ord\***</u>  | <u>**Part\***</u>      | Qty      | Price |
|------------------|------------------------|----------|-------|
| L5               | N8                     | 70       | 4     |
| L5               | B6                     | 60       | 5     |
| L5               | L4                     | 100      | 3     |
| L6               | P3                     | 5        | 150   |
| L6               | Q7                     | 5        | 250   |
| L7               | Q7                     | 2        | 100   |

| <u>Part</u>      | Pname                  |
|------------------|------------------------|
| N8               | Nut                    |
| B6               | Bolt                   |
| L4               | Nail                   |
| P3               | Pump                   |
| Q7               | Motor                  |

These tables now satisfy 2NF

## Benefits of 2NF

- No Information Lost 
  - A Natural Join of P-ITEM-2 and PART-2 on attribute Part will recreate the original relation P-ITEM-1
- Problems Solved 
  - Redundant data removed: Each Pname is listed only once
  - Update Anomalies - No side effects in updating the part names or adding/ items from the purchase order.
  - Semantic Problems - Each part type has just one name.

  