CREATE TABLE pay
(
     cardNr          NUMBER(6)       PRIMARY KEY,
     salary          VARCHAR2(20)    NOT NULL,
     commission_pct  NUMBER(2,2)     NOT NULL
);

COMMENT ON TABLE pay IS 'Pay table. References with employees table.';
COMMENT ON COLUMN pay.cardNr IS 'Primary key of pay table.';
COMMENT ON COLUMN pay.salary IS 'Field in employees table.';
COMMENT ON COLUMN pay.commission_pct IS 'Field in employees table.';