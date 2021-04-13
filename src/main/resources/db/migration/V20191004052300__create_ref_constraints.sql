--------------------------------------------------------
--  Ref Constraints for Table PAY
--------------------------------------------------------

ALTER TABLE PAY
    ADD CONSTRAINT LOC_C_ID_FK FOREIGN KEY (COUNTRY_ID)
        REFERENCES COUNTRIES (COUNTRY_ID);

