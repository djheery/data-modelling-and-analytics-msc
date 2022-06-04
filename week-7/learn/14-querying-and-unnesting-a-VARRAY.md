# Querying and Unnesting of a VARRAY

The following query simply lists the contents of the dept_phone_list table including the instances of the varray: 

SELECT * FROM dept_phone_list 

This will return something like this: 

 DEPT_NO PHONE_LIST(COUNTRY_CODE, AREA_CODE, PH_NUMBER)
---------- ----------------------------------------------------
100 PHONE_VARRAY_TYP(PHONE_TYP(‘44', ‘0191', '5061111'),
    PHONE_TYP(‘44', ‘0191', '5062222'), 

    PHONE_TYP(‘44', '0191', '5062525’))

I feel this is messy, the following query will unnest the embedded VARRAY: 

SELECT d.dept, p.ph_number,
FROM dept_phone_list d, TABLE (phone_list) p;

This will be alot more readable returning something like this: 

| DEPT_NO     | Phone_Num   |
|-------------|-------------|
| 100         | 01239821    |

etc
