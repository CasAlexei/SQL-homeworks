--------------------------------------------------------
--  Ref Constraints for Table PAY
--------------------------------------------------------

ALTER TABLE PAY
    ADD CONSTRAINT LOC_C_ID_FK FOREIGN KEY (COUNTRY_ID)
        REFERENCES COUNTRIES (COUNTRY_ID);

ALTER TABLE FOREIGN KEY (pay_id) REFERENCES pay(pay_id),
FOREIGN KEY (project_id) REFERENCES projects(project_id),
UNIQUE (pay_id, project_id);