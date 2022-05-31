# Sorting a relation into Sequences

A relation is sorted on the values of one or more of its attributes.
This means that any sort of attribute must contain orderable data. 

An example of this may be numbers. Numbers have a natural ordering (low => high or vice versa) as do letters and words (Alphabetically)

However, when it comes to items like images and video there may be no natural ordering.

Any orderable attributes data can be sorted into ascending or descending order. 

You should sort tuples by their first attributes values, where more than one tuple has the same first attributes value, you should then sort them by their second and so on if these values match until the last. 

This order is called the major to minor order, with the first attribute being the major and the last attribute being th minor. 

