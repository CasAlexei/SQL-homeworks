CREATE TABLE projects
(
    project_id           NUMBER(6)       PRIMARY KEY,
    project_description  VARCHAR2(200)   NOT NULL,
    project_investments  NUMBER(*,-3)    NOT NULL,

    CONSTRAINT description_check CHECK (length(project_description) > 10)
);

CREATE SEQUENCE projects_seq NOCACHE;

ALTER TABLE projects
    MODIFY project_id DEFAULT projects_seq.nextval;

--COMMENT ON TABLE projects IS 'Project table. Relation with table employees many-to-many throw ProjectsEmployeesRelation table';
--COMMENT ON COLUMN project_id IS 'Primary key of project table.';
--COMMENT ON COLUMN project_description IS 'the text length should be greater than 10';
--COMMENT ON COLUMN pay.project_investments IS 'investments should be measured in thousands, the number should end with at least 3 zeros';