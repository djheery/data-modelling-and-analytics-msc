SET ECHO ON 
SET VERIFY ON 

DROP TYPE staff_type FORCE;
DROP TYPE staff_ref_type FORCE;
DROP TYPE staff_ref_table FORCE;
DROP TYPE addr_type FORCE;
DROP TYPE addr_table FORCE;
DROP TYPE contact_details_type FORCE;
DROP TYPE contact_details_table FORCE;
DROP TYPE branch_type FORCE;
DROP TYPE branch_ref_type FORCE;
DROP TYPE branch_ref_table FORCE;
DROP TABLE branch_table CASCADE CONSTRAINTS PURGE;
DROP TABLE staff_table CASCADE CONSTRAINTS PURGE;

REM Question 7

CREATE OR REPLACE TYPE staff_type 
/

CREATE OR REPLACE TYPE staff_ref_type AS OBJECT (
  staff_ref REF staff_type
)
/

CREATE OR REPLACE TYPE staff_ref_table AS TABLE of staff_ref_type
/

CREATE OR REPLACE TYPE addr_type AS OBJECT (
  addr_l1 VARCHAR(20), 
  addr_l2 VARCHAR(20),
  post_code VARCHAR(8)
)
/

CREATE OR REPLACE TYPE addr_table AS TABLE OF addr_type
/

CREATE OR REPLACE TYPE contact_details_type AS OBJECT (
  email VARCHAR(30),
  tel VARCHAR(30)
)
/

CREATE OR REPLACE TYPE contact_details_table AS TABLE OF contact_details_type
/

CREATE OR REPLACE TYPE branch_type AS OBJECT (
  branch_id CHAR(3),
  branch_name VARCHAR(30),
  branch_addr addr_table,
  branch_contact_details contact_details_table,
  manager staff_ref_type,
  staff staff_ref_table
)
/

CREATE OR REPLACE TYPE Branch_ref_type AS OBJECT (
  branch_ref REF branch_type
)
/

CREATE OR REPLACE TYPE Branch_ref_table AS TABLE OF branch_ref_type 
/

CREATE OR REPLACE TYPE staff_type AS OBJECT (
  staff_id CHAR(3),
  staff_fname VARCHAR(15),
  staff_lname VARCHAR(15),
  staff_addr addr_table, 
  staff_contact_details contact_details_table,
  works_for branch_ref_table 
)
/

CREATE TABLE branch_table OF branch_type (
    PRIMARY KEY (branch_id),
    CHECK (branch_name IS NOT NULL)
  )
  NESTED TABLE branch_addr STORE AS BRANCH_ADDRESSES
  NESTED TABLE branch_contact_details STORE AS branch_contact_de 
  NESTED TABLE staff STORE AS STAFF_REF_BRANCH 
/

CREATE TABLE staff_table OF staff_type (
  PRIMARY KEY (staff_id),
  CHECK (staff_fname IS NOT NULL),
  CHECK (staff_lname IS NOT NULL)
)
  NESTED TABLE staff_addr STORE AS STAFF_ADDRESSES 
  NESTED TABLE staff_contact_details STORE AS STAFF_C 
  NESTED TABLE works_for STORE AS STAFF_BRANCH
/

REM Creating staff Objects 

INSERT INTO STAFF_TABLE 
  VALUES ('S01', 'Daniel', 'Heery',
          addr_table(addr_type('48 Wolseley Gardens', NULL, 'NE2 1HR')),
          contact_details_table(contact_details_type(
                    'dheery@branch1.co.uk',                                          
                    '07437519714'
                    )),
          branch_ref_table()
         );

INSERT INTO STAFF_TABLE 
  VALUES ('S02', 'Elizabeth', 'Jones',
          addr_table(addr_type('41 Grosvoner Gardens', NULL, 'NE3 1HP')),
          contact_details_table(contact_details_type(
                    'ejones@branch1.co.uk',                                          
                    '07437517714'
                    )),
          branch_ref_table()
         );

INSERT INTO STAFF_TABLE 
  VALUES ('S03', 'Conor', 'Magi',
          addr_table(addr_type('21 Knowle Road', NULL, 'LS4 2PJ')),
          contact_details_table(contact_details_type(
                'conormagic@branch2.co.uk',                                          
                '07437519714'
              )),
          branch_ref_table()
         );

INSERT INTO STAFF_TABLE 
  VALUES ('S04', 'Avashi', 'Cohen',
          addr_table(addr_type('20 Gordon Terrace', NULL, 'LS6 4HX')),
          contact_details_table(contact_details_type(
                    'acohen@branch2.co.uk',                                          
                    '07437519714'
                    )),
           branch_ref_table()
         );

INSERT INTO STAFF_TABLE 
  VALUES ('S05', 'Mark', 'Guiliana',
          addr_table(addr_type('1 Heaton Road', NULL, 'NE4 2PJ')),
          contact_details_table(contact_details_type(
                'mgulliana@branch3.co.uk',                                          
                '07437519714'
              )),
          branch_ref_table()
         );

INSERT INTO STAFF_TABLE 
  VALUES ('S06', 'Gretchen', 'Parlato',
          addr_table(addr_type('123 Sunderland road', NULL, 'NE24 3JR')),
          contact_details_table(contact_details_type(
                'gparlato@branch3.co.uk',                                          
                '07437519714'
                )),
          branch_ref_table()
         );

INSERT INTO BRANCH_TABLE VALUES (
  'B1',
  'I Like to Move it',
  addr_table(addr_type('20 Springwell Gardens','Flat 2', 'NE4 2PR')),
  contact_details_table(contact_details_type('info@branch1.co.uk', '0191 747 6655')),
  staff_ref_type(SELECT REF(s) 
                  FROM STAFF_TABLE s
                  WHERE s.staff_id = 'S01'),
  staff_ref_table()
);

INSERT INTO BRANCH_TABLE VALUES (
  'B2',
  'Move Me Leeds',
  addr_table(addr_type('123 Briggate','Flat 1', 'LS23 1PW')),
  contact_details_table(contact_details_type('info@branch2.co.uk', '0133 854 4433')),
  staff_ref_table()
);

INSERT INTO BRANCH_TABLE VALUES (
  'B3',
  'Jesmond Properties',
  addr_table(addr_type('123 Osbourne Road', NULL, 'NE3 1HR')),
  contact_details_table(contact_details_type('info@branch3.co.uk', '0191 747 6342')),
  staff_ref_table()
);
