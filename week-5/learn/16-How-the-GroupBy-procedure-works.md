# How the GroupBy procedure works

There are four steps in the Group By Process

1. Remove Irrelevant Attributes 
2. Split the rest of the operand / relation into groups of tuples, such that the grouping attribbute(s) all have the same value in every tupe of a group
3. Create one result tuple per group consisting of the grouping attribute(s)
4. FOR each aggregation result append a result attribute to the result relation to hold the aggregation results.
  - For each group apply the aggregate function to the group's bag/set of values, and put the result of the appended new attribute.

## Choosing Parameters 

COUNT = Use is to count a given column 
In the example on the lecture used to COUNT the different quantity sizes

Project parameter= Gives a set of values with any duplicates removed. 
  - in this case we wanted to count up all hte different sizes of shipments 
  - If we wanted all the individual shipments then we would use a bag. 

The parameter Sizes is the name of the attribute to hold the sums of the salaries 

Avg is logically unnecessary, as it can be replaced by Sum/Count, but is of practical convenience. Note however, that mathematicians also have two other kinds of averages which could be useful. The number of aggregate functions provided with an SQL DBMS is likely to increase as time goes by.

Aggregate functions are sometimes known as Set Functions, because they operate on a set of values to produce a single result. Unfortunately this is a misleading term because, as we have seen, the functions can also act on bags of values.