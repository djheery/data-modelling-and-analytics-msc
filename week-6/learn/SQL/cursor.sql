CREATE OR REPLACE PROCEDURE 
  sel_patientV2 (pat_name in CHAR) AS
    CURSOR p IS 
      SELECT * FROM patient
      WHERE pname = pat_name;
    BEGIN 
      FOR p_rec IN p LOOP
        DBMS_OUTPUT.PUT_LINE('ID is: ' || p_rec.pid || 'Address Is: ' || trim(p_rec.address));
      END LOOP;
    EXCEPTION 
      WHEN OTHERS THEN 
        DBMS_OUTPUT.PUT_LINE('Operation Failed ' || 'SQLCODE: ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('SQL Error Message: ' || SQLERRM);
        ROLLBACK;
END
/
    
