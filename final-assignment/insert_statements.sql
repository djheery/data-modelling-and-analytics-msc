INSERT INTO CUSTOMER
  VALUES ('C1', 'Daniel Heery', 'M', 'heery@live.co.uk', '06-APR-1994');
INSERT INTO CUSTOMER
  VALUES ('C2', 'Anna Heery', 'F', 'annaheery@live.co.uk', '07-APR-1994');

INSERT INTO STAFF 
  VALUES ('S1', 'Bob Dylan', 'bobbyd@aol.com');
INSERT INTO STAFF 
  VALUES ('S2', 'Ryan Phillips', 'ryanp@aol.com');

INSERT INTO PAYROLL_DETAILS
  VALUES ('S1', 'kdfj6asdf27B', '60 Wychwood Avenue', 0604923452, 45632423);
INSERT INTO PAYROLL_DETAILS
  VALUES ('S2', 'adsfkadsasB', '60 wychwood avenue', 064832452, 4523);

SELECT * FROM STAFF, PAYROLL_DETAILS
INNER JOIN 
STAFF.payroll ON PAYROLL_DETAILS.ni;