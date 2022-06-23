-- Customers

INSERT INTO CUSTOMER
  VALUES ('C1', 'Daniel Heery', 'M', '06-APR-1994');
INSERT INTO CUSTOMER
  VALUES ('C2', 'Anna Heery', 'F', '07-JAN-1998');
INSERT INTO CUSTOMER
  VALUES ('C3', 'Conn Heery', 'M', '08-MAR-2004');
INSERT INTO CUSTOMER
  VALUES ('C4', 'Monique Heery', 'F', '12-OCT-1992');
INSERT INTO CUSTOMER
  VALUES ('C5', 'Elizabeth Jones', 'F', '16-DEC-1995');

-- Customer Contact Details 

INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C1', 'heery@live.co.uk', '07437519714', NULL);

INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C2', 'annaheery@live.co.uk', '07437419714', NULL);

INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C3', 'connheery@live.co.uk', '07217519714', NULL);

INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C4', 'moniqueheery@live.co.uk', '07431119714', NULL);

INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C5', 'elizjones@live.co.uk', '07437519774', NULL);



-- Staff

INSERT INTO STAFF 
  VALUES ('S1', 'Bob Dylan');
INSERT INTO STAFF 
  VALUES ('S2', 'Ryan Phillips');
INSERT INTO STAFF 
  VALUES ('S3', 'Ben Pratt');
INSERT INTO STAFF 
  VALUES ('S4', 'Fiona Clarke');
INSERT INTO STAFF 
  VALUES ('S5', 'Will Stead');

-- Payroll Details

INSERT INTO PAYROLL_DETAILS
  VALUES ('S1', 'kdfj6asdf27B', '60 Wychwood Avenue', 06043452, 45632423);
INSERT INTO PAYROLL_DETAILS
  VALUES ('S2', 'adsfkadsasB', '60 wychwood avenue', 064832452, 4523);

-- Branch

INSERT INTO BRANCH 
  VALUES('B1', 'branch1@email.com', 1234553, 'S1', '123 Made Up avenue');

INSERT INTO BRANCH 
  VALUES('B2', 'branch2@email.com', 1234553, 'S2', '14 Eat Up avenue');

-- Estate Agent 

INSERT INTO ESTATE_AGENT
  VALUES ('EA1', 'B2', 'https://mydreamhome.com', 'My Dream Home');

SELECT * FROM STAFF, PAYROLL_DETAILS
INNER JOIN 
STAFF.payroll ON PAYROLL_DETAILS.ni;