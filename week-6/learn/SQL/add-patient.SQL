CREATE OR REPLACE PROCEDURE add_patient (pat_id in char, pat_name in char, pat_address in char, pat_dob in date, pat_reg in date)
AS pid_too_high EXCEPTION;
PRAGMA EXCEPTION_INIT(pid_too_high, -20000)
BEGIN 
DBMS_OUTPUT.PUT_LINE('Insert Attempted');
INSERT INTO PATIENT(PID, PNAME, ADDRESS, DOB, DATE_REG)
VALUES (pat_id, pat_name, pat_address,);
IF pat_id > '500'
  THEN
    RAISE pid_too_high;
END IF;
DBMS_OUTPUT.PUT_LINE('Insert Successful');
COMMIT 
EXCEPTION 
WHEN pid_too_high THEN 
  DBMS_OUTPUT.PUT_LINE('Patient ID too high');
  DBMS_OUTPUT.PUT_LINE('Insert Rejected');
  ROLLBACK;
WHEN others THEN 
  DBMS_OUTPUT.PUT_LINE('Insert Rejected');
  DBMS_OUTPUT.PUT_LINE('Operation Failed due to the SQL CODE: '|| SQLCODE);
  DBMS_OUTPUT.PUT_LINE('The SQL Error Message is: '|| SQLEERM);
  ROLLBACK;
END;
/


