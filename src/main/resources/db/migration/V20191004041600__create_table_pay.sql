CREATE TABLE pay
(
     cardNr             NUMBER(6)       PRIMARY KEY,
     salary_id          NUMBER(8,2)     FOREIGN KEY REFERENCES employees(salary),
     commission_pct_id  NUMBER(2,2)     FOREIGN KEY REFERENCES employees(commission_pct),
     pay_id             NUMBER(6)       UNIQUE FOREIGN KEY REFERENCES employees(employee_id)
);

COMMENT ON TABLE pay IS 'Pay table. References with employees table.';
COMMENT ON COLUMN pay.cardNr IS 'Primary key of pay table.';
COMMENT ON COLUMN pay.pay_id IS 'Foreign key to employees table.';
COMMENT ON COLUMN pay.salary IS 'Field in employees table.';
COMMENT ON COLUMN pay.commission_pct IS 'Field in employees table.';
