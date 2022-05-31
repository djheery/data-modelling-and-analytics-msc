# GroupBy

It is usefule if a database system can do some form of calculations and manipultions of data as it is retrieved from the DB.
There are two possible kinds of calculations/manipulations:

1. Those that take individual data values and return individual data values (In other words a scalar calculation)
2. Those that take a group of data values and return and individual data value (in other words, an aggregate calculation)

The purpose of **GroupBy** is to allow aggregate calculations to be carried out
  - These are also called summaries. 

Because an aggregation can only logically apply to a group (or collection) of data all of the same type, each aggregation is applied to a group of data from one attribute. Thus, GroupBy is said to work 'down attributes', in other words 'vertically' as opposed to 'horizontally' (along tuples.)

Database management systems do not usually provide the full power of a programming language that alows arbitrary processing of any kind of complexity. 
They do provide the more commonly useful kinds of processing. 

A **'scalar'** is defined as an individual, atomic, indivisible value.

An example could be, 357 and 'Julie'.
They are considered scalars because the number and name are single values despite the fact they could be manipulated (number removed, letter removed)

The terms aggregation and summary focus on the fact that one scalar value is produeced from a group or collection of scalar values, even though, not all aggregations/ summaries are what might traditionally be called by that name. 

In the example on this screen, the algebra operation expresses the fact that:

  - groups or collections are formed using the M_S attribute, and specifically each group must have only one M_S value
  - in each group the Sal attribute values are summed, without getting rid of any duplicate Sal values, to yield a Total for each group.

RA: R(M_S,Total) ←  M_S ℑ SUM Sal (EMPLOYEE)

## Parameters of GroupBy 

There are two main aspects of GroupBy 

RA: R(M_S,Total) ←  M_S ℑ SUM Sal (EMPLOYEE)

M_S is how you splint the operand into groups, while SUM sal is how you get the aggregate ('total salary paid')

Then, there are four individual parameters: R(M_S,Total) ← M_S ℑ SUM Sal (EMPLOYEE)

1. The grouping attribute ("Each marital-status"): M_S
2. The attribute to aggregated ("Sal")
3. The type of aggregate ("SUM Sal")
4. The new attribute to hold the result: Total

## The Operand of GroupBy 

The operand is considered to consist of three disjoint sets of attributes

1. grouping attribute(s) - attributes used to split the operand into groups of tuples 
2. aggregate attribute(s) - Attributes whose values are aggregated of summarised
3. Irrelevant attribute(s) - Attribbutes not used by the GroupBy operator

These sets are specified by two of GroupBy's parameters.

Disjoint sets are sets that have no members in common. So in this case, any attribute in the operand can only be in one of three sets, not in all of them.

**Irrelevant Attribute** are, by a process of elimination, any other attributes left in the relation which are not members of either two sets.

It is not uncommon for there to be only one attribute in any of these sets; for example there may well be just one grouping attribute or aggregate attribute.

It is possible for any of the three sets to be empty: 

- The case where there are no grouping attributes will be considered further on 
- While there could theoretically be no aggregate attribute(s), there would be no point in this, sincer there would bbe no aggregations or summaries, which is the whole point of using the operator 
- There could be no irrelevant attribute(s) because the grouping attribute(s) and aggregate attribute(s) could just happen to fill the relation completly. 

