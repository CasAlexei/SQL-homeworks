--------------------------------------------------------
--  Ref Constraints for Table PAY
--------------------------------------------------------

ALTER TABLE PAY
    ADD CONSTRAINT FK_PAY FOREIGN KEY (PAY_ID)
        REFERENCES  EMPLOYEES (EMPLOYEE_ID);

