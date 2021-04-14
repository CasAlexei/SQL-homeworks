CREATE TABLE pay
(
     cardNr             NUMBER(6)       PRIMARY KEY,
     employee_id        NUMBER(6),


     CONSTRAINT FK_EMPLOYEE_ID UNIQUE FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE SEQUENCE pay_seq NOCACHE;

ALTER TABLE pay
    MODIFY cardNr DEFAULT pay_seq.nextval;

COMMENT ON TABLE pay IS 'Pay table. References with employees table.';
COMMENT ON COLUMN pay.cardNr IS 'Primary key of pay table.';
COMMENT ON COLUMN pay.pay_id IS 'Unique foreign key to employees table.';
COMMENT ON COLUMN pay.salary IS 'Foreign key to employees table.';
COMMENT ON COLUMN pay.commission_pct IS 'Foreign key to employees table.';
