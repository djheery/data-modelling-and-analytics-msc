# Applying 3NF

Now we go back to P-ORDER-1

| ord | Sno | Sname  | Saddr  | Date     |  Tot   | 
|-----|-----|--------|--------|----------|--------|
| L5  | 127 | Smith  | N'cle  | 7 May    | 12     |
| L6  | 315 | Bloggs | L'don  | 8 June   | 400    |

Before this point the diagram may show no chain of dependencies 

Ord ===> Sno
|======> Sname
|======> Saddr
|======> Date
|======> Tot

This would make it seem to be in 3NF. 
However, when we review the diagram when considering transitivity we can see that it is not 3NF.
We can clearly see there is a dependency chain between: 

Ord ==> Sno ===> Sname
        |======> Saddr

This is a clear violation of transitivity, therefore it is a violation of the requirements of 3NF.
Therefore P-ORDER-1 is not 3NF

Again to nomalize this relation we must create two separate relations.

| ord | Sno | Date     |  Tot   | 
|-----|-----|----------|--------|
| L5  | 127 | 7 May    | 12     |
| L6  | 315 | 8 June   | 400    |

|Sno  | Sname | Saddr           |
|-----|-------|-----------------|
|127  | Smith | Newcastle       |
|315  | Blogs | Duhram          |

P-Order-1 which violates the non-transitivity rule of 3NF has now been replaced with SUPPLIER-3 AND P-ORDER-3

## Benefits of 3NF

No information has been lost. A natural Join of P-ORDER-3 and SUPPLIER-3 on attribute Sno will recreate the original relation P-ORDER-1 

The following Problems are solved: 
  - Redundant Data removed
  - Update anomalies - no side effects in operations 
  - Semantic Problems - Each supplier has just one name. 

