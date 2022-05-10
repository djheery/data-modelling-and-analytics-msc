# Sequenced Relations

Although the DBMS presents a relation to the user as a set of tuples, you can retrieve a relation in any tuple sequence which depends on the values in the tuples.

Although the relation has no particular sequence when the DBMS retrieves a relation full of data for the user, its tuples can be sorted into any order you like. There fore the user or application program can see a sequence of data.

All DBMSs off this feature, as it is very useful. 
It is important for the tuples to appear in the right sequence

For example: 

Telephone directory. It is a set of entities each consisting of a name, address and telephone number. But it would be a mess if it were not sorted in alphabetical order rendering it useless.

This is an advantage of the relational approach, as it can provide any sequence of tuples.
Different users and/or applications might want the same relation but in different sequences. The relational DBMS can satisfy all of these sequences. 

The following examples are different ways that the same relation of data can be sequenced, depending  on user/ application requirements.

**Sequence 1**

In this example. the data is sequenced in ascendin gorder of 'EName' within ascending 'M-S'

| ENo   | EName     | M-S     | Sal     |
|-------|-----------|---------|---------|
| E1    | Robson    | D       | 32,500  |
| E6    | Blake     | M       | 54,000  |
| E5    | Mitchell  | M       | 21,500  |
| E3    | Smith     | S       | 12,500  |
| E8    | Jones     | W       | 68,000  |

**Sequence 2**

In this example, the data is sequenced by 'ENo'

| ENo   | EName     | M-S     | Sal     |
|-------|-----------|---------|---------|
| E1    | Robson    | D       | 32,500  |
| E3    | Smith     | S       | 12,500  |
| E5    | Mitchell  | M       | 21,500  |
| E6    | Blake     | M       | 54,000  |
| E8    | Jones     | W       | 68,000  |

**Sequence 3** 

In this example, the data is sequenced by 'Sal'

| ENo   | EName     | M-S     | Sal     |
|-------|-----------|---------|---------|
| E3    | Smith     | S       | 12,500  |
| E5    | Mitchell  | M       | 21,500  |
| E1    | Robson    | D       | 32,500  |
| E6    | Blake     | M       | 54,000  |
| E8    | Jones     | W       | 68,000  |