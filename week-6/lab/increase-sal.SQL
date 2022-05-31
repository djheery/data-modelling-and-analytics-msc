CREATE OR REPLACE PROCEDURE
  salary_increase (v_grade IN NUMBER) AS

  CURSOR emps IS 
    SELECT employee.*, grade.maxsalary 
    FROM employee, grade
    WHERE empgrade = v_grade;

  BEGIN 
    FOR emp_rec IN emps LOOP
     IF emp_rec.empsalary +
        IF emp_rec.empgrade < 4
          THEN 
            UPDATE employee
            SET empsalary = emp_rec.empsalary + 500
            WHERE emp_rec.empid = empid;
        ELSE 
            UPDATE employee
            SET empsalary = emp_rec.empsalary + 1000
            WHERE emp_rec.empid = empid;
        END IF;
    END LOOP;
    COMMIT;
    EXCEPTION 
      WHEN OTHERS THEN 
        DBMS_OUTPUT.PUT_LINE('Operation Failed ' || 'SQLCODE: ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('SQL Error Message: ' || SQLERRM);
        ROLLBACK;
END;
/

  

