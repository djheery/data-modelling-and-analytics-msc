-- Exceptions for the procedure

SET ECHO ON 
SET VERIFY ON 

DROP TYPE branch_type FORCE;
DROP TYPE branch_ref_type FORCE; 
DROP TYPE addr_type FORCE;
DROP TYPE staff_type FORCE; 
DROP TYPE staff_ref_type FORCE; 
DROP TYPE staff_ref_table FORCE; 
DROP TABLE staff_table CASCADE CONSTRAINTS PURGE; 
DROP TABLE branch_table CASCADE CONSTRAINTS PURGE;

CREATE OR REPLACE TYPE branch_type 
/

CREATE OR REPLACE TYPE addr_type AS OBJECT (
  addr_l1 VARCHAR(20), 
  addr_l2 VARCHAR(20),
  post_code VARCHAR(8),
  area_code CHAR(5)
)
/

CREATE OR REPLACE TYPE staff_type AS OBJECT (
  staff_id CHAR(5),
  staff_fname VARCHAR(20),
  staff_lname VARCHAR(20),
  staff_email VARCHAR(40),
  staff_tel VARCHAR(14),
  staff_dob DATE,
  staff_gender CHAR(1),
  staff_addr addr_type,
  staff_branch REF branch_type 
)
/

CREATE OR REPLACE TYPE staff_ref_type AS OBJECT (
  staff_ref REF staff_type 
)
/

CREATE OR REPLACE TYPE staff_ref_table AS TABLE OF staff_ref_type 
/ 

CREATE OR REPLACE TYPE branch_type AS OBJECT (
  branch_id CHAR(5),
  ea_id CHAR(5),
  branch_email VARCHAR(40),
  branch_tel VARCHAR(14),
  branch_addr addr_type,
  branch_manager REF staff_type,
  branch_staff staff_ref_table
)
/

CREATE TABLE staff_table OF staff_type (
  PRIMARY KEY (staff_id),
  UNIQUE (staff_email),
  UNIQUE (staff_tel),
  CHECK (staff_gender IN ('M', 'F', 'O')),
  CHECK (staff_dob > '01-JAN-1930'),
  CHECK(REGEXP_LIKE(staff_id, '^S[0-9]{4}')),
  CHECK(staff_email LIKE '%@%.%' 
                    AND staff_email NOT LIKE '@%' 
                    AND staff_email NOT LIKE '%@%@%' 
                    AND staff_email NOT LIKE '%.@%')
) 
/

CREATE TABLE branch_table OF branch_type (
  PRIMARY KEY (branch_id),
  FOREIGN KEY (ea_id) REFERENCES ESTATE_AGENT)
  NESTED TABLE branch_staff STORE AS branch_staff_ref 
/

COMMIT; 

REM Staff Table Inserts 

INSERT INTO STAFF_TABLE 
  VALUES ('S0001', 'Daniel', 'Heery', 'heery@live.co.uk',
          '07437519714', '06-APR-1994', 'M', 
           addr_type ('48 Wolseley Gardens', NULL, 'NE2 1HR', 'AR001'),
           NULL);
INSERT INTO STAFF_TABLE 
  VALUES ('S0002','Elizabeth', 'Jones', 'ejones@live.co.uk',
           '07437555714', '16-DEC-1995', 'F',
            addr_type ('54 Heaton Mount', NULL, 'NE3 2PJ', 'AR003'),
           NULL);
INSERT INTO STAFF_TABLE 
  VALUES ('S0003', 'Steven', 'Gerrard', 'sgerrard@live.co.uk',
          '07437535714', '30-MAY-1980', 'M',
            addr_type ('30 Gordon Terrace', NULL, 'LS6 4HX','AR008'),
           NULL);
INSERT INTO STAFF_TABLE 
  VALUES ('S0004',  'Ben', 'Stiller', 'bstiller@live.co.uk',
          '07437550714', '16-JAN-1961', 'M',
           addr_type('50 Heaton Road', NULL, 'NE7 2PJ', 'AR003'),
           NULL);
INSERT INTO STAFF_TABLE 
  VALUES ('S0005',  'Julie', 'Andrews', 'jandrews@live.co.uk',
          '07437520714', '20-JUN-1949', 'M',
           addr_type('20 Lost Lane', NULL, 'NE3 2AJ', 'AR003'),
           NULL);
INSERT INTO STAFF_TABLE 
  VALUES ('S0006',  'John','Coltrane', 'jcoltrane@gmail.com', '07893129444',
          '23-SEP-1966', 'M',
           addr_type('38 Sunderland Road', NULL, 'NE8 3HF', 'AR009'),
           NULL);
INSERT INTO STAFF_TABLE 
  VALUES ('S0007',  'Rafa', 'Benitez', 'rafabenitez@live.co.uk',
          '0743253777', '16-APR-1960', 'M',
           addr_type('5 Smokehouse Street', NULL, 'BN42 5FS', 'AR005'),
           NULL);
INSERT INTO STAFF_TABLE 
  VALUES ('S0008',  'Beatrice', 'Potter', 'beatriceporter@live.co.uk', 
          '07421519774', '18-APR-1967', 'F',
           addr_type( '16 Pythagorus Close', NULL, 'LU3 3PJ', 'AR006'),
           NULL);
INSERT INTO STAFF_TABLE 
  VALUES ('S0009' , 'Ryan', 'Barker', 'ryanbarker@live.co.uk', 
          '07437519774', '20-SEP-1987', 'M',
           addr_type('18 Sunderland Street', NULL, 'SR22 2TT', 'AR014'),
           NULL);
INSERT INTO STAFF_TABLE 
  VALUES ('S0010', 'Edmund', 'Dijkstra', 'edijkstra@live.co.uk', 
           '07437436774', '16-DEC-1930', 'M',
           addr_type('28 Grosvenor Gardens', NULL, 'NE4 5HT', 'AR001'),
           NULL);

REM Branch Table Inserts 

INSERT INTO BRANCH_TABLE 
  VALUES('B0001', 'EA001', 'branch1@estateagent1.co.uk', '0191323588',
         addr_type('28 Gordon Terrace', NULL, 'LS6 4HX', 'AR008'),
         NULL, staff_ref_table());
INSERT INTO BRANCH_TABLE 
  VALUES('B0002', 'EA002', 'branch2@estateagent2.co.uk', '0191353588',
         addr_type('123 Heaton Road', NULL, 'NE6 2BB', 'AR003'),
         NULL, staff_ref_table());
INSERT INTO BRANCH_TABLE 
  VALUES('B0003', 'EA001', 'branch3@estateagent1.co.uk', '0191229332',
         addr_type('18 Jesmond Lane', NULL, 'NE6 2BB', 'AR001'),
         NULL, staff_ref_table());
INSERT INTO BRANCH_TABLE 
  VALUES('B0004', 'EA002', 'branch4@estateagent4.co.uk', '0191323588',
         addr_type('12 Briggate Street', NULL, 'LS10 1FB', 'AR011'),
         NULL, staff_ref_table());

REM branch_manager => staff refs 

UPDATE BRANCH_TABLE 
  SET branch_manager = (
      SELECT REF(s) FROM STAFF_TABLE s
      WHERE s.staff_id = 'S0009'
    )
    WHERE branch_id = 'B0001';

UPDATE BRANCH_TABLE 
  SET branch_manager = (
      SELECT REF(s) FROM STAFF_TABLE s
      WHERE s.staff_id = 'S0010'
    )
    WHERE branch_id = 'B0002';

UPDATE BRANCH_TABLE 
  SET branch_manager = (
      SELECT REF(s) FROM STAFF_TABLE s
      WHERE s.staff_id = 'S0002'
    )
    WHERE branch_id = 'B0003';

UPDATE BRANCH_TABLE 
  SET branch_manager = (
      SELECT REF(s) FROM STAFF_TABLE s
      WHERE s.staff_id = 'S0001'
    )
    WHERE branch_id = 'B0004';

REM staff_branch => branch refs  

UPDATE STAFF_TABLE 
  SET staff_branch = (
      SELECT REF(b) FROM BRANCH_TABLE b 
      WHERE b.branch_id = 'B0001'
    )
  WHERE staff_id IN ('S0003', 'S0009', 'S0005');

UPDATE STAFF_TABLE 
  SET staff_branch = (
      SELECT REF(b) FROM BRANCH_TABLE b 
      WHERE b.branch_id = 'B0002'
    )
  WHERE staff_id IN ('S0010', 'S0006', 'S0004');


UPDATE STAFF_TABLE 
  SET staff_branch = (
      SELECT REF(b) FROM BRANCH_TABLE b 
      WHERE b.branch_id = 'B0002'
    )
  WHERE staff_id = 'S0002';

UPDATE STAFF_TABLE 
  SET staff_branch = (
      SELECT REF(b) FROM BRANCH_TABLE b 
      WHERE b.branch_id = 'B0002'
    )
  WHERE staff_id IN ('S0001', 'S0007', 'S0008');

REM branch_staff_table => staff refs 

INSERT INTO TABLE (
    SELECT b.branch_staff
    FROM branch_table b 
    WHERE b.branch_id = 'B0001'
  ) 
  SELECT REF(s)
    FROM STAFF_TABLE s  
    WHERE s.staff_id IN ('S0003', 'S0009', 'S0005');
/

INSERT INTO TABLE (
    SELECT b.branch_staff
    FROM branch_table b 
    WHERE b.branch_id = 'B0002'
  ) 
  SELECT REF(s)
    FROM STAFF_TABLE s 
    WHERE s.staff_id IN ('S0010', 'S0006', 'S0004');
/

INSERT INTO TABLE (
    SELECT b.branch_staff
    FROM branch_table b 
    WHERE b.branch_id = 'B0003'
  ) 
  SELECT REF(s)
    FROM STAFF_TABLE s 
    WHERE s.staff_id = 'S0003';
/

INSERT INTO TABLE (
    SELECT b.branch_staff
    FROM branch_table b 
    WHERE b.branch_id = 'B0004'
  ) 
  SELECT REF(s)
    FROM STAFF_TABLE s 
    WHERE s.staff_id IN ('S0001', 'S0007', 'S0008');
/

COMMIT; 

CREATE OR REPLACE PROCEDURE ea_branch_staff (
    EA_IDENTIFIER IN CHAR 
) AS 

  CURSOR branch_search IS 
    SELECT DISTINCT ea.ea_name, b.branch_email, b.branch_tel,
           s.staff_ref.staff_fname as staff_fname, 
           s.staff_ref.staff_lname as staff_lname, 
           s.staff_ref.staff_email as staff_email,
           s.staff_ref.staff_tel as staff_tel,
           s.staff_ref.staff_addr.addr_l1 as staff_addr,
           b.branch_id,  
           b.branch_manager.staff_id as bm_ref,
           s.staff_ref.staff_id as staff_r
    FROM ESTATE_AGENT ea, BRANCH_TABLE b, TABLE(b.branch_staff) s 
    WHERE ea.ea_id = b.ea_id 
    AND ea.ea_id = EA_IDENTIFIER
    GROUP BY b.branch_id, b.branch_email, b.branch_tel,
           s.staff_ref.staff_fname,  
           s.staff_ref.staff_lname,  
           s.staff_ref.staff_email,
           s.staff_ref.staff_tel,
           s.staff_ref.staff_addr.addr_l1, 
           b.branch_id, b.branch_email,  
           b.branch_manager.staff_id,
           s.staff_ref.staff_id,
           ea.ea_name
    ORDER BY b.branch_id;

    v_count INTEGER;
    current_branch VARCHAR(40);
  BEGIN 
    v_count := 0;

    FOR bs IN branch_search LOOP
        IF v_count = 0 THEN 
          current_branch := bs.branch_id;
          DBMS_OUTPUT.PUT_LINE('===============================================');
          DBMS_OUTPUT.PUT_LINE('Showing Staff For Estate Agent: ' || bs.ea_name);  
          DBMS_OUTPUT.PUT_LINE('===============================================');
          DBMS_OUTPUT.PUT_LINE('Showing staff for branch: ' || bs.branch_id);
          DBMS_OUTPUT.PUT_LINE('===============================================');
          DBMS_OUTPUT.PUT_LINE('Branch Email: ' || bs.branch_email);
          DBMS_OUTPUT.PUT_LINE('Branch Email: ' || bs.branch_tel);
          DBMS_OUTPUT.PUT_LINE('===============================================');
        ELSIF v_count > 0 AND current_branch != bs.branch_id THEN
          current_branch := bs.branch_id;
          DBMS_OUTPUT.PUT_LINE('===============================================');
          DBMS_OUTPUT.PUT_LINE('Showing staff for branch: ' || bs.branch_id);
          DBMS_OUTPUT.PUT_LINE('===============================================');
          DBMS_OUTPUT.PUT_LINE('Branch ID: ' || bs.branch_id);
          DBMS_OUTPUT.PUT_LINE('Branch Email: ' || bs.branch_email);
          DBMS_OUTPUT.PUT_LINE('Branch Tel: ' || bs.branch_tel);
          DBMS_OUTPUT.PUT_LINE('===============================================');
        ELSE 
          DBMS_OUTPUT.PUT_LINE('-----------------------------------------------');
        END IF;

        DBMS_OUTPUT.PUT('Staff Name: ' || bs.staff_fname|| ' ' || bs.staff_lname );
        IF bs.staff_r = bs.bm_ref THEN
          DBMS_OUTPUT.PUT_LINE(' (Branch Manager)');
        ELSE 
          DBMS_OUTPUT.PUT_LINE(' ');
        END IF; 
        DBMS_OUTPUT.PUT_LINE('Staff Email: ' || bs.staff_email); 
        DBMS_OUTPUT.PUT_LINE('Staff Tel: ' || bs.staff_tel); 
        DBMS_OUTPUT.PUT_LINE('Staff Address: ' || bs.staff_addr); 
        DBMS_OUTPUT.PUT_LINE('Staff Branch: ' || bs.branch_id); 
        v_count := v_count + 1;
    END LOOP; 
    DBMS_OUTPUT.PUT_LINE(v_count || ' Staff members found at estate agent: ' || EA_IDENTIFIER);
    COMMIT;
    EXCEPTION
      WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Operation');
      DBMS_OUTPUT.PUT_LINE('Operation Failed ' || 'SQLCODE: ' || SQLCODE);
      DBMS_OUTPUT.PUT_LINE('SQL Error Message: ' || SQLERRM);
      ROLLBACK;
  END;
/

execute ea_branch_staff('EA001');
execute ea_branch_staff('EA002');