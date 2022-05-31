# Set Comprehension 

A set comprehension is a way of defining a set without listing all the elements.
In Imperative programming terms, a set comprehension is a while or a for loop.

In other words you are accessing set members without specifically targeting them. 

You have seen set comprehension before: 

Evens = {2, 4, 6, 8, ...}

More Formally you could write it like this:

Evens {y | y % 2 == 0 && y > 0}

Note: | is read as 'such that' 

Both notations are acceptable depending on how formal you wish to be in a particular case. 

## Ven Diagrams 

It is said that a picture is worth a thousand words. 
A Ven Diagram is a pictorial representation of a set. 

U
  A     B
    v x   y
          C
            z


Although I cannot draw a venn diagram in this software above you can see that U stands for a universal set. 

**Universal Set**
- The set of everything you are interested in at the moment 

Within the example :
- A, B, and C are sets and they have member elements 
- The diagram shows that B has a Subset of C and also shares a member element with A (v)

By convention words starting with a Captial letter are used to name sets, lower case letteres denote members/ elements of a set.

From the above diagram you can denote that 

A = {v, x}
B = {x, y, z}
C = {z}

C ⊂ B
z ∈ C
x ⊄ C
x ∈ B
x ∈ A

Remember that **∈** denotes that a specific member is a member of a set or exists within a set