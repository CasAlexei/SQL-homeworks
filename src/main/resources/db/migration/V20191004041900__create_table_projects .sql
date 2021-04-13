CREATE TABLE projects
(
    project_id           NUMBER(6)       PRIMARY KEY,
    project_description  VARCHAR2(200)   NOT NULL,
    project_investments  NUMBER(6)       NOT NULL

    --CONSTRAINT description_check CHECK (length(project_description) > 10)
);

COMMENT ON TABLE projects IS 'Pay table. References with employees table.';
COMMENT ON COLUMN project_id IS 'Primary key of pay table.';
COMMENT ON COLUMN project_description IS 'the text length should be greater than 10';
COMMENT ON COLUMN pay.project_investments IS 'investments should be measured in thousands, the number should end with at least 3 zeros';