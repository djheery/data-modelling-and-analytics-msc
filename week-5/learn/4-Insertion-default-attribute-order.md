# Insertion: Default Attribute Order

Although a tuple is a set of attributes, the attribute values have to be written out in a physical order.
Ideally, a match is made on the attribute name so that the physical order does not matter/

Until this point only **default** statements have been used. 
This is when the attributes appear in the sequence that was used during the CREATE TABLE statement. 

If the attribbute values are written ou tin the same phusical sequence, then they will bbe matched by position. 

When you insert with attribute order, the two revised forms of SQL syntax are:

```

INSERT into RELATION_NAME (names of the attributes in the sequence)
  values(a value for each attribute in one tuple);

INSERT into RELATION_NAME (names of the attributes in the sequence)
  SELECT ...
  FROM ...;

```

## Further Example 1

For the prior literal tupe example this would look like this: 

```

INSERT into EMP (EMP_NO, E_NAME, MARITAL_STATUS, SALARY)
  Values('E2', 'Daniel', 'S', 10);

```

## Further Example 2

For the prior second syntactical form example this would look like: 

```

INSERT into EMPLOYEE (EMP_NO, E_NAME, MARITAL_STATUS, SALARY)
  SELECT EMP_NO, E_NAME, MARITAL_STATUS, SALARY
  FROM EMP;

```



